import 'package:capy_energy/core/mock_telemetry_data.dart';
import 'package:capy_energy/core/mock_telemetry_store.dart';
import 'package:capy_energy/core/mock_telemetry_source.dart';
import 'package:capy_energy/core/telemetry_api.dart';
import 'package:capy_energy/l10n/app_localizations.dart';
import 'package:capy_energy/screens_v2/sync/sync_v2_screen.dart';
import 'package:capy_ui/capy_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_flutter/qr_flutter.dart';

class _NoopClient implements ReachabilityClient {
  @override
  Future<ReachabilityResponse> get(
    Uri uri, {
    required Duration timeout,
    Map<String, String>? headers,
  }) async => const ReachabilityResponse(statusCode: 200, body: '{"ok":true}');
}

class _FakeChecker extends BackendReachabilityChecker {
  _FakeChecker({required this.result, this.delay = Duration.zero})
    : super(
        client: _NoopClient(),
        backendUri: Uri.parse('https://example.supabase.co'),
      );

  final BackendReachability result;
  final Duration delay;
  int calls = 0;

  @override
  Future<BackendReachability> check() async {
    calls++;
    if (delay != Duration.zero) {
      await Future<void>.delayed(delay);
    }
    return result;
  }
}

class _SequencedChecker extends BackendReachabilityChecker {
  _SequencedChecker(this.sequence)
    : super(
        client: _NoopClient(),
        backendUri: Uri.parse('https://example.supabase.co'),
      );
  final List<BackendReachability> sequence;
  int calls = 0;
  @override
  Future<BackendReachability> check() async {
    final idx = calls++;
    if (idx < sequence.length) return sequence[idx];
    return sequence.last;
  }
}

class _FakeTelemetryApi extends TelemetryApi {
  _FakeTelemetryApi()
    : super(
        source: MockTelemetrySource(),
        store: buildMockTelemetryStore(MockTelemetryData()),
      );

  List<DevicePairingState?> getResponses = [];
  int _getIndex = 0;
  int getCalls = 0;
  int startCalls = 0;
  int cancelCalls = 0;
  DevicePairingState? startResult;
  DevicePairingState? cancelResult;
  List<CompanionDevice> devices = const [];
  final revoked = <String>[];
  int startThrowCount = 0;
  Object? startThrowException;

  CloudSyncResult forceResult = const CloudSyncResult(
    cloudReady: true,
    movedRows: 12,
    failed: false,
  );
  int forceCalls = 0;
  bool bleStreamActive = false;
  SyncProgressData syncProgress = const SyncProgressData(
    totalCount: 100,
    dirtyCount: 0,
  );

  void queueGetResponses(List<DevicePairingState?> responses) {
    getResponses = responses;
    _getIndex = 0;
  }

  @override
  Future<DevicePairingState> startDevicePairing() async {
    startCalls++;
    if (startThrowCount > 0) {
      startThrowCount--;
      throw startThrowException ??
          Exception('SUPABASE_FUNCTIONS_URL not configured');
    }
    if (startResult != null) return startResult!;
    return DevicePairingPending(
      vehicleId: 'mock-vehicle',
      userCode: '123-456',
      expiresAt: DateTime.now()
          .toUtc()
          .add(const Duration(minutes: 5))
          .toIso8601String(),
    );
  }

  @override
  Future<DevicePairingState?> getDevicePairingState() async {
    getCalls++;
    if (_getIndex < getResponses.length) {
      return getResponses[_getIndex++];
    }
    if (getResponses.isNotEmpty) return getResponses.last;
    return const DevicePairingIdle();
  }

  @override
  Future<DevicePairingState?> cancelDevicePairing() async {
    cancelCalls++;
    if (cancelResult != null) return cancelResult;
    return const DevicePairingIdle(cancelled: true);
  }

  @override
  Future<List<CompanionDevice>> getPairedCompanionDevices() async => devices;

  @override
  Future<bool> revokeCompanionDevice(String deviceId) async {
    revoked.add(deviceId);
    devices = devices.where((d) => d.deviceId != deviceId).toList();
    return true;
  }

  @override
  Future<CloudSyncResult> forceCloudSync() async {
    forceCalls++;
    return forceResult;
  }

  @override
  Future<bool> isBleStreamActive() async => bleStreamActive;

  @override
  Future<SyncProgressData> getCloudSyncProgress() async => syncProgress;
}

/// The car screen is a wide, tall dashboard. The 800x600 default viewport puts
/// the lower cards outside the render tree, where a tap cannot reach them.
Future<void> _carSurface(WidgetTester tester) async {
  await tester.binding.setSurfaceSize(const Size(1280, 1600));
  addTearDown(() => tester.binding.setSurfaceSize(null));
}

Widget _host(Widget child) {
  return MaterialApp(
    theme: AppTheme.light(),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: Scaffold(body: child),
  );
}

String _fiveMinExpiry() =>
    DateTime.now().toUtc().add(const Duration(minutes: 5)).toIso8601String();

DevicePairingPending _pending(String code) => DevicePairingPending(
  vehicleId: 'mock-vehicle',
  userCode: code,
  expiresAt: _fiveMinExpiry(),
);

void main() {
  testWidgets('idle state shows no code and offers to create one', (
    tester,
  ) async {
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()]);
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Pairing code'), findsOneWidget);
    expect(find.text('No code is open'), findsOneWidget);
    expect(find.text('------'), findsOneWidget);
    expect(find.text('NEW CODE'), findsOneWidget);
  });

  testWidgets('checks connectivity before calling startDevicePairing', (
    tester,
  ) async {
    final pending = _pending('123-456');
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle(), pending, pending]);
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();

    expect(checker.calls, 1);
    expect(api.startCalls, 1);
    expect(find.text('123-456'), findsOneWidget);
    expect(find.textContaining('Expires in'), findsWidgets);
  });

  testWidgets('no network shows distinct message and does not start pairing', (
    tester,
  ) async {
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()]);
    final checker = _FakeChecker(result: BackendReachability.noNetwork);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();

    expect(checker.calls, 1);
    expect(api.startCalls, 0);
    expect(find.textContaining('No network connection'), findsOneWidget);
    expect(find.text('RETRY'), findsOneWidget);
    expect(find.text('123-456'), findsNothing);
  });

  testWidgets('retry after no network succeeds when reachable', (tester) async {
    final pending = _pending('999-111');
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()])
      ..queueGetResponses([const DevicePairingIdle(), pending, pending]);
    api.startResult = pending;
    final checker = _SequencedChecker([
      BackendReachability.noNetwork,
      BackendReachability.reachable,
    ]);
    // Need to re-queue correctly after first tap: we set queue with idle only initially, but after retry we need pending stay.
    // Use single queue that covers both attempts: first get is idle for restore, second attempt's poll will need pending.
    // Simpler: start with idle, and after first failure we replace queue before retry.
    final api2 = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()]);
    api2.startResult = pending;
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api2,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();
    expect(find.textContaining('No network'), findsOneWidget);
    expect(api2.startCalls, 0);

    // Re-queue to keep pending after retry
    api2.queueGetResponses([pending, pending]);
    await tester.tap(find.text('RETRY'));
    await tester.pumpAndSettle();

    expect(checker.calls, 2);
    expect(api2.startCalls, 1);
    expect(find.text('999-111'), findsOneWidget);
  });

  testWidgets('backend unreachable shows distinct message', (tester) async {
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()]);
    final checker = _FakeChecker(
      result: BackendReachability.backendUnreachable,
    );
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();

    expect(checker.calls, 1);
    expect(api.startCalls, 0);
    expect(find.textContaining('Cannot reach the server'), findsOneWidget);
    expect(find.text('RETRY'), findsOneWidget);
  });

  testWidgets('pending shows code with expiry and can be cancelled', (
    tester,
  ) async {
    final pending = _pending('482-910');
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle(), pending, pending]);
    api.startResult = pending;
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();

    expect(find.text('482-910'), findsOneWidget);
    expect(find.textContaining('Expires in'), findsWidgets);

    await tester.tap(find.text('CANCEL CODE'));
    await tester.pumpAndSettle();

    expect(api.cancelCalls, 1);
    expect(find.text('482-910'), findsNothing);
    expect(find.text('------'), findsOneWidget);
  });

  testWidgets(
    'polling reaches approved shows paired success distinct from others',
    (tester) async {
      final expiry = _fiveMinExpiry();
      final pending = DevicePairingPending(
        vehicleId: 'v1',
        userCode: '111-222',
        expiresAt: expiry,
      );
      final api = _FakeTelemetryApi();
      api.queueGetResponses([
        const DevicePairingIdle(),
        pending,
        const DevicePairingApproved(vehicleId: 'v1', accountId: 'acct-1'),
      ]);
      api.startResult = pending;
      final checker = _FakeChecker(result: BackendReachability.reachable);
      await tester.pumpWidget(
        _host(
          SyncV2Screen(
            title: 'Sync',
            telemetryApi: api,
            reachabilityChecker: checker,
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('NEW CODE'));
      await tester.pumpAndSettle();
      expect(find.text('111-222'), findsOneWidget);

      await tester.pump(const Duration(seconds: 1));
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 1));
      await tester.pumpAndSettle();

      expect(find.text('Phone paired. Connected.'), findsOneWidget);
      expect(find.text('PAIRED'), findsOneWidget);
      expect(find.textContaining('Code expired'), findsNothing);
      expect(find.text('Phone declined the pairing.'), findsNothing);
    },
  );

  testWidgets('polling reaches expired shows timeout and offers new code', (
    tester,
  ) async {
    final expiry = _fiveMinExpiry();
    final pending = DevicePairingPending(
      vehicleId: 'v1',
      userCode: '333-444',
      expiresAt: expiry,
    );
    final api = _FakeTelemetryApi();
    api.queueGetResponses([
      const DevicePairingIdle(),
      pending,
      const DevicePairingExpired(reason: 'expired'),
    ]);
    api.startResult = pending;
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();
    expect(find.text('333-444'), findsOneWidget);

    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();

    expect(find.text('The code expired. Make a new one.'), findsOneWidget);
    expect(find.textContaining('Generate a new one'), findsOneWidget);
    expect(find.text('NEW CODE'), findsOneWidget);
    expect(find.text('333-444'), findsNothing);
  });

  testWidgets('polling reaches rejected shows declined distinct', (
    tester,
  ) async {
    final expiry = _fiveMinExpiry();
    final pending = DevicePairingPending(
      vehicleId: 'v1',
      userCode: '555-666',
      expiresAt: expiry,
    );
    final api = _FakeTelemetryApi();
    api.queueGetResponses([
      const DevicePairingIdle(),
      pending,
      const DevicePairingRejected(reason: 'rejected'),
    ]);
    api.startResult = pending;
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();

    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();

    expect(find.text('Phone declined the pairing.'), findsOneWidget);
    expect(find.text('NEW CODE'), findsOneWidget);
    expect(find.text('The code expired. Make a new one.'), findsNothing);
  });

  testWidgets('polling reaches invalidCode shows error distinct', (
    tester,
  ) async {
    final expiry = _fiveMinExpiry();
    final pending = DevicePairingPending(
      vehicleId: 'v1',
      userCode: '777-888',
      expiresAt: expiry,
    );
    final api = _FakeTelemetryApi();
    api.queueGetResponses([
      const DevicePairingIdle(),
      pending,
      const DevicePairingInvalidCode(reason: 'invalid_code'),
    ]);
    api.startResult = pending;
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();

    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();

    expect(find.text('Something went wrong.'), findsOneWidget);
    expect(find.text('NEW CODE'), findsOneWidget);
    expect(find.text('The code expired. Make a new one.'), findsNothing);
    expect(find.text('Phone declined the pairing.'), findsNothing);
  });

  testWidgets('checking state is visible while connectivity probe runs', (
    tester,
  ) async {
    final pending = _pending('123-456');
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle(), pending, pending]);
    final checker = _FakeChecker(
      result: BackendReachability.reachable,
      delay: const Duration(milliseconds: 300),
    );
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pump();

    expect(find.textContaining('Checking connection'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();

    expect(find.text('123-456'), findsOneWidget);
  });

  testWidgets('shows bluetooth status badge on the code card', (tester) async {
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()])
      ..bleStreamActive = true;
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await _carSurface(tester);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.bluetooth_connected), findsOneWidget);
  });

  testWidgets('companion beta card displays title, platforms, and QR code', (
    tester,
  ) async {
    await _carSurface(tester);
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()]);
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
          androidBetaUrl: 'https://example.com/companion-android',
          iosBetaUrl: 'https://example.com/companion-ios',
          forbiddenApkUrl: 'https://example.com/companion-direct.apk',
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Eaglemetry Companion'), findsOneWidget);
    expect(find.text('Beta available'), findsOneWidget);
    expect(
      find.text("Can't sync? Download the new version of the companion!"),
      findsOneWidget,
    );
    expect(find.text('Android'), findsOneWidget);
    expect(find.text('iOS'), findsOneWidget);
    expect(find.byType(QrImageView), findsOneWidget);

    final qrWidget = tester.widget<QrImageView>(find.byType(QrImageView));
    expect(qrWidget.size, isNotNull);
    expect(qrWidget.size!, lessThanOrEqualTo(180.0));

    await tester.tap(find.text('iOS'));
    await tester.pump();

    expect(find.byType(QrImageView), findsOneWidget);
    final qrWidgetIos = tester.widget<QrImageView>(find.byType(QrImageView));
    expect(qrWidgetIos.size, isNotNull);
    expect(qrWidgetIos.size!, lessThanOrEqualTo(180.0));

    // A tester whose invite answers 403 gets the direct APK link.
    await tester.tap(find.text('403?'));
    await tester.pump();

    const driveUrl = 'https://example.com/companion-direct.apk';
    expect(find.byKey(const ValueKey(driveUrl)), findsOneWidget);
    final qrForbidden = tester.widget<QrImageView>(find.byType(QrImageView));
    expect(qrForbidden.size!, lessThanOrEqualTo(180.0));
  });

  testWidgets('after expired can generate a new code again', (tester) async {
    final expiry = _fiveMinExpiry();
    final pending1 = DevicePairingPending(
      vehicleId: 'v1',
      userCode: '000-111',
      expiresAt: expiry,
    );
    final api = _FakeTelemetryApi();
    api.queueGetResponses([
      const DevicePairingIdle(),
      pending1,
      const DevicePairingExpired(reason: 'expired'),
    ]);
    api.startResult = pending1;
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(find.text('The code expired. Make a new one.'), findsOneWidget);

    final pending2 = DevicePairingPending(
      vehicleId: 'v1',
      userCode: '999-999',
      expiresAt: _fiveMinExpiry(),
    );
    api.startResult = pending2;
    api.queueGetResponses([pending2, pending2]);
    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();
    expect(api.startCalls, 2);
    expect(find.text('999-999'), findsOneWidget);
  });

  testWidgets(
    'startDevicePairing failure shows retry instead of silently reverting to idle',
    (tester) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..startThrowCount = 1
        ..startThrowException = Exception(
          'SUPABASE_FUNCTIONS_URL not configured',
        );
      final checker = _FakeChecker(result: BackendReachability.reachable);
      await tester.pumpWidget(
        _host(
          SyncV2Screen(
            title: 'Sync',
            telemetryApi: api,
            reachabilityChecker: checker,
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('No code is open'), findsOneWidget);

      await tester.tap(find.text('NEW CODE'));
      await tester.pumpAndSettle();

      expect(api.startCalls, 1);
      expect(checker.calls, 1);
      // Not silently idle — shows generic failure.
      expect(find.text("Couldn't start pairing. Try again."), findsWidgets);
      expect(find.text('RETRY'), findsOneWidget);
      expect(find.text('No code is open'), findsNothing);
      expect(find.text('------'), findsOneWidget);
      // No code shown.
      expect(find.text('123-456'), findsNothing);
    },
  );

  testWidgets('retry after start failure re-invokes startDevicePairing', (
    tester,
  ) async {
    final pending = _pending('321-654');
    final api = _FakeTelemetryApi()
      ..queueGetResponses([const DevicePairingIdle()])
      ..startThrowCount = 1
      ..startThrowException = Exception('SUPABASE_FUNCTIONS_URL not configured')
      ..startResult = pending;
    final checker = _FakeChecker(result: BackendReachability.reachable);
    await tester.pumpWidget(
      _host(
        SyncV2Screen(
          title: 'Sync',
          telemetryApi: api,
          reachabilityChecker: checker,
        ),
      ),
    );
    await tester.tap(find.text('NEW CODE'));
    await tester.pumpAndSettle();
    expect(find.text("Couldn't start pairing. Try again."), findsWidgets);
    expect(api.startCalls, 1);
    expect(checker.calls, 1);

    // Next attempt succeeds.
    api.startThrowCount = 0;
    // startResult remains pending; keep get responses pending for polling.
    api.queueGetResponses([pending, pending]);
    await tester.tap(find.text('RETRY'));
    await tester.pumpAndSettle();

    expect(checker.calls, 2);
    expect(api.startCalls, 2);
    expect(find.text('321-654'), findsOneWidget);
    expect(find.text("Couldn't start pairing. Try again."), findsNothing);
    expect(find.textContaining('Expires in'), findsWidgets);
  });

  group('SyncV2Screen.buildReachabilityChecker', () {
    test('with key probes /auth/v1/health with apikey header', () {
      final checker = SyncV2Screen.buildReachabilityChecker(
        urlEnv: 'https://myproj.supabase.co',
        publishableKey: 'test-anon-key',
      );
      expect(
        checker.backendUri.toString(),
        'https://myproj.supabase.co/auth/v1/health',
      );
      expect(checker.headers, {'apikey': 'test-anon-key'});
    });

    test('without key keeps bare base URL and no headers', () {
      final checker = SyncV2Screen.buildReachabilityChecker(
        urlEnv: 'https://myproj.supabase.co',
        publishableKey: '',
      );
      expect(checker.backendUri.toString(), 'https://myproj.supabase.co');
      expect(checker.headers, isNull);
    });

    test('with key but no url falls back to placeholder bare url', () {
      final checker = SyncV2Screen.buildReachabilityChecker(
        urlEnv: '',
        publishableKey: 'some-key',
      );
      // No base URI to attach /auth/v1/health to - keeps today's placeholder
      // behaviour (bare URL) rather than throwing.
      expect(checker.backendUri.toString(), 'https://example.supabase.co');
      expect(checker.headers, {'apikey': 'some-key'});
    });

    test('with empty url and empty key uses placeholder bare url', () {
      final checker = SyncV2Screen.buildReachabilityChecker(
        urlEnv: '',
        publishableKey: '',
      );
      expect(checker.backendUri.toString(), 'https://example.supabase.co');
      expect(checker.headers, isNull);
    });

    test('trailing slash is handled correctly', () {
      final checker = SyncV2Screen.buildReachabilityChecker(
        urlEnv: 'https://myproj.supabase.co/',
        publishableKey: 'k',
      );
      expect(
        checker.backendUri.toString(),
        'https://myproj.supabase.co/auth/v1/health',
      );
    });
  });

  group('cloud force sync', () {
    Future<void> pumpScreen(WidgetTester tester, _FakeTelemetryApi api) async {
      await _carSurface(tester);
      await tester.pumpWidget(
        _host(
          SyncV2Screen(
            title: 'Sync',
            telemetryApi: api,
            reachabilityChecker: _FakeChecker(
              result: BackendReachability.reachable,
            ),
          ),
        ),
      );
      await tester.pump();
      await tester.pump();
    }

    testWidgets('FORCE SYNC states the rows the car moved', (tester) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..forceResult = const CloudSyncResult(
          cloudReady: true,
          movedRows: 12,
          failed: false,
        );
      await pumpScreen(tester, api);

      await tester.tap(find.text('FORCE SYNC'));
      await tester.pump();
      await tester.pump();

      expect(api.forceCalls, 1);
      expect(find.text('Uploaded 12 records.'), findsOneWidget);
    });

    testWidgets('FORCE SYNC states an empty pass as up to date', (
      tester,
    ) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..forceResult = const CloudSyncResult(
          cloudReady: true,
          movedRows: 0,
          failed: false,
        );
      await pumpScreen(tester, api);

      await tester.tap(find.text('FORCE SYNC'));
      await tester.pump();
      await tester.pump();

      expect(
        find.text('Already up to date. Nothing to upload.'),
        findsOneWidget,
      );
    });

    testWidgets('FORCE SYNC states the failure instead of a guess', (
      tester,
    ) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..forceResult = const CloudSyncResult(
          cloudReady: true,
          movedRows: 0,
          failed: true,
        );
      await pumpScreen(tester, api);

      await tester.tap(find.text('FORCE SYNC'));
      await tester.pump();
      await tester.pump();

      expect(find.text('Upload failed. Try again.'), findsOneWidget);
    });

    testWidgets('FORCE SYNC says the car is not paired, never a failure', (
      tester,
    ) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..forceResult = const CloudSyncResult(
          cloudReady: true,
          paired: false,
          movedRows: 0,
          failed: false,
        );
      await pumpScreen(tester, api);

      await tester.tap(find.text('FORCE SYNC'));
      await tester.pump();
      await tester.pump();

      expect(
        find.text('Pair this car with your phone first. Nothing was uploaded.'),
        findsOneWidget,
      );
      expect(find.text('Upload failed. Try again.'), findsNothing);
    });

    testWidgets('FORCE SYNC says plainly when cloud sync is off', (
      tester,
    ) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..forceResult = const CloudSyncResult(
          cloudReady: false,
          movedRows: 0,
          failed: false,
        );
      await pumpScreen(tester, api);

      await tester.tap(find.text('FORCE SYNC'));
      await tester.pump();
      await tester.pump();

      expect(
        find.text('Cloud sync is off in this build. Nothing was uploaded.'),
        findsOneWidget,
      );
    });

    testWidgets('displays cloud sync progress bar when progress is available', (
      tester,
    ) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..syncProgress = const SyncProgressData(
          totalCount: 200,
          dirtyCount: 20,
        );
      await pumpScreen(tester, api);

      expect(find.byType(SyncProgressBar), findsOneWidget);
      expect(find.text('Cloud sync progress'), findsOneWidget);
      expect(find.text('20 pending'), findsOneWidget);
      expect(find.text('180 of 200 records in the cloud'), findsOneWidget);
    });

    testWidgets(
      'displays waiting for car clock when only pendingCount is present',
      (tester) async {
        final api = _FakeTelemetryApi()
          ..queueGetResponses([const DevicePairingIdle()])
          ..syncProgress = const SyncProgressData(
            totalCount: 200,
            dirtyCount: 0,
            pendingCount: 15,
          );
        await pumpScreen(tester, api);

        expect(find.byType(SyncProgressBar), findsOneWidget);
        expect(find.text('Cloud sync progress'), findsOneWidget);
        expect(find.text('15 waiting for car clock'), findsOneWidget);
        expect(find.text('185 of 200 records in the cloud'), findsOneWidget);
      },
    );

    testWidgets('names both waiting counts in one localized line', (
      tester,
    ) async {
      final api = _FakeTelemetryApi()
        ..queueGetResponses([const DevicePairingIdle()])
        ..syncProgress = const SyncProgressData(
          totalCount: 200,
          dirtyCount: 1,
          pendingCount: 15,
        );
      await pumpScreen(tester, api);

      expect(find.text('1 pending, 15 waiting for car clock'), findsOneWidget);
      expect(find.text('184 of 200 records in the cloud'), findsOneWidget);
    });
  });
}
