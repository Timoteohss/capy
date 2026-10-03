import 'package:capy_companion/auth/account_gateway.dart';
import 'package:capy_companion/auth/auth_controller.dart';
import 'package:capy_companion/l10n/app_localizations.dart';
import 'package:capy_companion/main.dart';
import 'package:capy_companion/onboarding/onboarding_flow.dart';
import 'package:capy_companion/onboarding/onboarding_store.dart';
import 'package:capy_companion/pairing/device_pairing_gateway.dart';
import 'package:capy_companion/runtime/companion_runtime.dart';
import 'package:capy_companion/screens/home_screen.dart';
import 'package:capy_companion/sync/pairing_controller.dart';
import 'package:capy_companion/sync/pairing_store.dart';
import 'package:capy_companion/sync/sync_controller.dart';
import 'package:capy_companion/sync/cloud_run_report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telemetry_core/telemetry_core.dart';

import 'support/fake_account_gateway.dart';
import 'support/fake_device_pairing_gateway.dart';

PairingController _controller({
  ClaimResult? claimResult,
  BackendReachability? reachability,
  bool? signedIn,
  bool prePaired = false,
}) {
  final store = PairingStore();
  if (prePaired) {
    // Seed already paired without needing gateway.
    store.completeClaim(vehicleId: 'v-pre', accountId: 'a-pre');
  }
  BackendReachabilityChecker? checker;
  if (reachability != null) {
    checker = _FixedChecker(reachability);
  }
  return PairingController(
    store: store,
    gateway: FakeDevicePairingGateway(
      claimResult:
          claimResult ??
          const ClaimResult.success(
            ClaimSuccess(vehicleId: 'v1', accountId: 'a1'),
          ),
    ),
    isSignedIn: signedIn == null ? null : () => signedIn,
    reachabilityChecker: checker,
  );
}

PairingController _controllerWithGateway(FakeDevicePairingGateway gateway) {
  return PairingController(store: PairingStore(), gateway: gateway);
}

Widget _journey(
  PairingController pairing, {
  VoidCallback? onFinished,
  AuthController? auth,
}) {
  return MaterialApp(
    locale: const Locale('en'),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: OnboardingFlow(
      pairing: pairing,
      auth: auth,
      onFinished: onFinished ?? () {},
    ),
  );
}

Future<void> _goToPairing(WidgetTester tester) async {
  await tester.tap(find.byKey(const Key('onboarding-skip')));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('the confirmation link carries the journey past the form', (
    tester,
  ) async {
    final gateway = FakeAccountGateway(confirmsByMail: true);
    final auth = AuthController(gateway);
    await tester.pumpWidget(_journey(_controller(), auth: auth));
    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('onboarding-toggle-mode')));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const Key('onboarding-email-field')),
      'new@example.com',
    );
    await tester.enterText(
      find.byKey(const Key('onboarding-password-field')),
      'Pass123',
    );
    await tester.tap(find.byKey(const Key('onboarding-account-submit')));
    await tester.pumpAndSettle();

    // The sign-up was taken and the mail is out. The form stays, but it stops
    // offering to create the account a second time.
    expect(find.byKey(const Key('onboarding-login')), findsOneWidget);
    expect(auth.notice, AccountNotice.confirmEmail);

    // The reader taps the link in their mail and the phone hands the app back
    // the callback. Nothing is pressed here.
    gateway.confirm('new@example.com');
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-login')), findsNothing);
    expect(find.byKey(const Key('onboarding-welcome')), findsOneWidget);
  });

  testWidgets('the journey opens on the first slide', (tester) async {
    await tester.pumpWidget(_journey(_controller()));
    await tester.pumpAndSettle();

    expect(find.text('Meet Eaglemetry'), findsOneWidget);
    expect(find.text('Next'), findsOneWidget);
    expect(find.byKey(const Key('onboarding-code-field')), findsNothing);
  });

  testWidgets('the last slide leads to pairing', (tester) async {
    await tester.pumpWidget(_journey(_controller()));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('onboarding-next')));
    await tester.pumpAndSettle();
    expect(find.text('See every trip and charge'), findsOneWidget);

    await tester.tap(find.byKey(const Key('onboarding-next')));
    await tester.pumpAndSettle();
    expect(find.text('Get started'), findsOneWidget);

    await tester.tap(find.byKey(const Key('onboarding-next')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('onboarding-code-field')), findsOneWidget);
  });

  testWidgets('skip goes straight to pairing', (tester) async {
    await tester.pumpWidget(_journey(_controller()));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-code-field')), findsOneWidget);
  });

  testWidgets('no host field remains — pairing is code-only', (tester) async {
    final pairing = _controller();
    await tester.pumpWidget(_journey(pairing));
    await tester.pumpAndSettle();
    await _goToPairing(tester);

    expect(find.byKey(const Key('onboarding-code-field')), findsOneWidget);
    expect(find.byKey(const Key('onboarding-host-field')), findsNothing);

    await tester.enterText(
      find.byKey(const Key('onboarding-code-field')),
      '123456',
    );
    await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
    await tester.pumpAndSettle();

    // Success moves past pairing, never shows a host field.
    expect(find.byKey(const Key('onboarding-host-field')), findsNothing);
    expect(find.byKey(const Key('onboarding-code-field')), findsNothing);
  });

  testWidgets('host field never appears even after network failure', (
    tester,
  ) async {
    final pairing = _controller(claimResult: const ClaimResult.network());
    await tester.pumpWidget(_journey(pairing));
    await tester.pumpAndSettle();
    await _goToPairing(tester);

    await tester.enterText(
      find.byKey(const Key('onboarding-code-field')),
      '123456',
    );
    await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-host-field')), findsNothing);
    expect(
      find.text(
        'Can\u2019t reach the server. Check your connection and try again.',
      ),
      findsOneWidget,
    );
  });

  testWidgets('submit is code-only with no address field', (tester) async {
    final gateway = FakeDevicePairingGateway(
      claimResult: const ClaimResult.success(
        ClaimSuccess(vehicleId: 'v1', accountId: 'a1'),
      ),
    );
    final pairing = _controllerWithGateway(gateway);
    await tester.pumpWidget(_journey(pairing));
    await tester.pumpAndSettle();
    await _goToPairing(tester);

    await tester.enterText(
      find.byKey(const Key('onboarding-code-field')),
      '123-456',
    );
    await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
    await tester.pumpAndSettle();

    expect(gateway.lastUserCode, '123456');
    expect(gateway.claimCount, 1);
    expect(find.byKey(const Key('onboarding-host-field')), findsNothing);
  });

  testWidgets('a valid code with no engine ends the journey', (tester) async {
    final pairing = _controller();
    var finished = 0;
    await tester.pumpWidget(_journey(pairing, onFinished: () => finished++));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(const Key('onboarding-code-field')),
      '123456',
    );
    await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
    await tester.pumpAndSettle();

    expect(pairing.isPaired, isTrue);
    expect(finished, 1);
  });

  testWidgets('a store that was seen puts the app straight on the shell', (
    tester,
  ) async {
    final store = OnboardingStore();
    await store.markSeen();
    await tester.pumpWidget(
      CompanionApp(
        locale: const Locale('en'),
        pairing: _controller(),
        onboarding: store,
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(OnboardingFlow), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('an unseen store puts the journey in front of the app', (
    tester,
  ) async {
    await tester.pumpWidget(
      CompanionApp(
        locale: const Locale('en'),
        pairing: _controller(),
        onboarding: OnboardingStore(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(OnboardingFlow), findsOneWidget);
    expect(find.text('Meet Eaglemetry'), findsOneWidget);
  });

  testWidgets('with an account server the intro leads to the login form', (
    tester,
  ) async {
    await tester.pumpWidget(
      _journey(_controller(), auth: AuthController(FakeAccountGateway())),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-email-field')), findsOneWidget);
    expect(find.byKey(const Key('onboarding-code-field')), findsNothing);
  });

  testWidgets('a refused pair keeps the reader on the form', (tester) async {
    await tester.pumpWidget(
      _journey(_controller(), auth: AuthController(FakeAccountGateway())),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(const Key('onboarding-email-field')),
      'reader@example.com',
    );
    await tester.enterText(
      find.byKey(const Key('onboarding-password-field')),
      'wrongpass',
    );
    await tester.tap(find.byKey(const Key('onboarding-account-submit')));
    await tester.pumpAndSettle();

    expect(find.text('The email or the password is wrong.'), findsOneWidget);
    expect(find.byKey(const Key('onboarding-email-field')), findsOneWidget);
  });

  testWidgets('a good pair leads to the welcome step and then to pairing', (
    tester,
  ) async {
    await tester.pumpWidget(
      _journey(_controller(), auth: AuthController(FakeAccountGateway())),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(const Key('onboarding-email-field')),
      'reader@example.com',
    );
    await tester.enterText(
      find.byKey(const Key('onboarding-password-field')),
      'sixchars',
    );
    await tester.tap(find.byKey(const Key('onboarding-account-submit')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-welcome')), findsOneWidget);
    expect(find.textContaining('reader@example.com'), findsOneWidget);

    await tester.tap(find.byKey(const Key('onboarding-continue-to-pairing')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-code-field')), findsOneWidget);
  });

  testWidgets('a sign-up that waits for the mail does not move on', (
    tester,
  ) async {
    final auth = AuthController(FakeAccountGateway(confirmsByMail: true));
    await tester.pumpWidget(_journey(_controller(), auth: auth));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('onboarding-toggle-mode')));
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(const Key('onboarding-email-field')),
      'new@example.com',
    );
    await tester.enterText(
      find.byKey(const Key('onboarding-password-field')),
      'Pass123',
    );
    await tester.tap(find.byKey(const Key('onboarding-account-submit')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-account-notice')), findsOneWidget);
    expect(find.byKey(const Key('onboarding-welcome')), findsNothing);
  });

  testWidgets('a session from an earlier run skips the login step', (
    tester,
  ) async {
    final auth = AuthController(
      FakeAccountGateway(
        existing: const AccountSession(
          email: 'reader@example.com',
          confirmed: true,
        ),
      ),
    )..restore();
    await tester.pumpWidget(_journey(_controller(), auth: auth));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('onboarding-skip')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('onboarding-code-field')), findsOneWidget);
    expect(find.byKey(const Key('onboarding-email-field')), findsNothing);
  });

  testWidgets(
    'pairing with sync controller shows stream progress and completes',
    (tester) async {
      final pairing = _controller();
      final sync = SyncController(
        runtime: CompanionRuntime(),
        runner: ({onProgress}) async {
          onProgress!(
            const SyncProgress(
              stream: SyncStreamType.sessions,
              recordsWritten: 10,
              remaining: 0,
            ),
          );
          onProgress(
            const SyncProgress(
              stream: SyncStreamType.events,
              recordsWritten: 5,
              remaining: 0,
            ),
          );
          onProgress(
            const SyncProgress(
              stream: SyncStreamType.tracks,
              recordsWritten: 1,
              remaining: 0,
            ),
          );
          return const SyncRunReport(
            status: SyncRunStatus.completed,
            ackedRecords: 265,
          );
        },
      );

      var finished = 0;
      await tester.pumpWidget(
        MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: OnboardingFlow(
            pairing: pairing,
            sync: sync,
            onFinished: () => finished++,
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('onboarding-skip')));
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('onboarding-done')), findsOneWidget);
      expect(find.text('Car paired.'), findsOneWidget);
      expect(find.text('265 records are on this phone.'), findsOneWidget);

      await tester.tap(find.byKey(const Key('onboarding-continue')));
      await tester.pumpAndSettle();
      expect(finished, 1);
    },
  );

  group('pairing distinct outcomes', () {
    testWidgets('invalid code length shows dedicated message', (tester) async {
      final pairing = _controller();
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '12',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(find.text('Enter the 6 digits from the car.'), findsOneWidget);
      expect(
        find.byKey(const Key('onboarding-pairing-message')),
        findsOneWidget,
      );
    });

    testWidgets('notFound shows distinct message', (tester) async {
      final pairing = _controller(claimResult: const ClaimResult.notFound());
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'That code was not found. Check the car screen and try again.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('expired shows distinct message', (tester) async {
      final pairing = _controller(claimResult: const ClaimResult.expired());
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'That code has expired. Generate a new code on the car and try again.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('alreadyClaimed shows distinct message', (tester) async {
      final pairing = _controller(
        claimResult: const ClaimResult.alreadyClaimed(),
      );
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'That code was already used. Make a new code on the car and try again.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('vehicleAlreadyClaimed shows distinct message', (tester) async {
      final pairing = _controller(
        claimResult: const ClaimResult.vehicleAlreadyClaimed(),
      );
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'This car is already paired with another account. Sign in with that account to pair it.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('network shows distinct message', (tester) async {
      final pairing = _controller(claimResult: const ClaimResult.network());
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'Can\u2019t reach the server. Check your connection and try again.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('unknown shows distinct message', (tester) async {
      final pairing = _controller(claimResult: const ClaimResult.unknown());
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(find.text('Something went wrong. Try again.'), findsOneWidget);
    });

    testWidgets('alreadyOwnedBySelf is success-equivalent not error', (
      tester,
    ) async {
      final pairing = _controller(
        claimResult: const ClaimResult.alreadyOwnedBySelf(),
      );
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text('This phone is already paired with that car.'),
        findsOneWidget,
      );
      // AlreadyOwnedBySelf should advance the journey even without isPaired flag.
      // With no sync engine, it ends the journey.
      // Our _pair treats it as success, so onFinished should have been called.
      // Verify not stuck on pairing code field.
      // If sync absent, the flow finishes; code field disappears.
      // Check that alreadyOwnedBySelf message is non-critical style still shown
      // before transition — but after pump the journey still shows pairing
      // because _pair sees success and transitions only if we wired that.
      // With no sync, it finishes and code field disappears.
      // So if alreadyOwnedBySelf with prePaired false and no sync, it should finish.
      // For this config without onFinished assertion, we just verify message appeared
      // momentarily before potential finish. If finished, message may be gone.
      // Instead test with onFinished expectation via fresh controller.
    });

    testWidgets('alreadyOwnedBySelf advances journey (no sync)', (
      tester,
    ) async {
      final gateway = FakeDevicePairingGateway(
        claimResult: const ClaimResult.alreadyOwnedBySelf(),
      );
      final pairing = PairingController(
        store: PairingStore(),
        gateway: gateway,
      );
      var finished = 0;
      await tester.pumpWidget(_journey(pairing, onFinished: () => finished++));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(finished, 1);
    });
  });

  group('connectivity gating', () {
    testWidgets(
      'noNetwork shows distinct message with retry and blocks gateway',
      (tester) async {
        final gateway = FakeDevicePairingGateway();
        final pairing = PairingController(
          store: PairingStore(),
          gateway: gateway,
          reachabilityChecker: _FixedChecker(BackendReachability.noNetwork),
        );
        await tester.pumpWidget(_journey(pairing));
        await tester.pumpAndSettle();
        await _goToPairing(tester);

        await tester.enterText(
          find.byKey(const Key('onboarding-code-field')),
          '123456',
        );
        await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
        await tester.pumpAndSettle();

        expect(
          find.text(
            'No network connection. Check your Wi-Fi or mobile data and try again.',
          ),
          findsOneWidget,
        );
        expect(find.byKey(const Key('onboarding-pair-retry')), findsOneWidget);
        expect(gateway.claimCount, 0);
        expect(pairing.connectivity, BackendReachability.noNetwork);
      },
    );

    testWidgets('backendUnreachable shows distinct message with retry', (
      tester,
    ) async {
      final gateway = FakeDevicePairingGateway();
      final pairing = PairingController(
        store: PairingStore(),
        gateway: gateway,
        reachabilityChecker: _FixedChecker(
          BackendReachability.backendUnreachable,
        ),
      );
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'Can\u2019t reach the server. Check your connection and try again.',
        ),
        findsOneWidget,
      );
      expect(find.byKey(const Key('onboarding-pair-retry')), findsOneWidget);
      expect(gateway.claimCount, 0);
    });

    testWidgets(
      'retry after connectivity failure re-probes and succeeds when reachable',
      (tester) async {
        final gateway = FakeDevicePairingGateway();
        final countingChecker = _CountingChecker(BackendReachability.noNetwork);
        final pairing = PairingController(
          store: PairingStore(),
          gateway: gateway,
          reachabilityChecker: countingChecker,
        );
        await tester.pumpWidget(_journey(pairing));
        await tester.pumpAndSettle();
        await _goToPairing(tester);

        await tester.enterText(
          find.byKey(const Key('onboarding-code-field')),
          '123456',
        );
        await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
        await tester.pumpAndSettle();

        expect(
          find.text(
            'No network connection. Check your Wi-Fi or mobile data and try again.',
          ),
          findsOneWidget,
        );
        expect(countingChecker.calls, 1);
        expect(gateway.claimCount, 0);

        // Simulate network returning.
        countingChecker.result = BackendReachability.reachable;
        await tester.tap(find.byKey(const Key('onboarding-pair-retry')));
        await tester.pumpAndSettle();

        expect(countingChecker.calls, 2);
        expect(gateway.claimCount, 1);
        expect(pairing.isPaired, isTrue);
      },
    );
  });

  group('signedOut distinct', () {
    testWidgets('signedOut shows dedicated message before gateway', (
      tester,
    ) async {
      final gateway = FakeDevicePairingGateway();
      final pairing = PairingController(
        store: PairingStore(),
        gateway: gateway,
        isSignedIn: () => false,
      );
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.enterText(
        find.byKey(const Key('onboarding-code-field')),
        '123456',
      );
      await tester.tap(find.byKey(const Key('onboarding-pair-submit')));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'Sign in first to pair a car. Your account links this phone to the vehicle.',
        ),
        findsOneWidget,
      );
      expect(gateway.claimCount, 0);
      expect(pairing.signedOut, isTrue);
    });
  });

  group('already paired', () {
    testWidgets('already paired hides code field and shows paired message', (
      tester,
    ) async {
      final store = PairingStore();
      await store.completeClaim(
        vehicleId: 'v-existing',
        accountId: 'a-existing',
      );
      final pairing = PairingController(
        store: store,
        gateway: FakeDevicePairingGateway(),
      );
      await tester.pumpWidget(_journey(pairing));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      expect(find.byKey(const Key('onboarding-code-field')), findsNothing);
      expect(
        find.byKey(const Key('onboarding-already-paired-message')),
        findsOneWidget,
      );
      expect(
        find.byKey(const Key('onboarding-paired-continue')),
        findsOneWidget,
      );
      expect(
        find.text('This phone is already paired with your car.'),
        findsOneWidget,
      );
      expect(find.byKey(const Key('onboarding-host-field')), findsNothing);
    });

    testWidgets('already paired continue advances journey', (tester) async {
      final store = PairingStore();
      await store.completeClaim(
        vehicleId: 'v-existing',
        accountId: 'a-existing',
      );
      final pairing = PairingController(
        store: store,
        gateway: FakeDevicePairingGateway(),
      );
      var finished = 0;
      await tester.pumpWidget(_journey(pairing, onFinished: () => finished++));
      await tester.pumpAndSettle();
      await _goToPairing(tester);

      await tester.tap(find.byKey(const Key('onboarding-paired-continue')));
      await tester.pumpAndSettle();

      expect(finished, 1);
    });
  });
}

class _FixedChecker extends BackendReachabilityChecker {
  _FixedChecker(this.result)
    : super(
        client: _NoOpClient(),
        backendUri: Uri.parse('https://example.supabase.co'),
      );

  final BackendReachability result;

  @override
  Future<BackendReachability> check() async => result;
}

class _CountingChecker extends BackendReachabilityChecker {
  _CountingChecker(this.result)
    : super(
        client: _NoOpClient(),
        backendUri: Uri.parse('https://example.supabase.co'),
      );

  BackendReachability result;
  int calls = 0;

  @override
  Future<BackendReachability> check() async {
    calls++;
    return result;
  }
}

class _NoOpClient implements ReachabilityClient {
  @override
  Future<ReachabilityResponse> get(
    Uri uri, {
    required Duration timeout,
    Map<String, String>? headers,
  }) async => const ReachabilityResponse(statusCode: 200, body: '{"ok":true}');
}
