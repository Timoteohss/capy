import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:capy_energy/core/app_experience_controller.dart';
import 'package:capy_energy/core/developer_tools_gate.dart';
import 'package:capy_energy/core/telemetry_api.dart';
import 'package:capy_energy/l10n/app_localizations.dart';
import 'package:capy_energy/screens_v2/settings/charge_pane.dart';
import 'package:capy_energy/screens_v2/settings/data_pane.dart';
import 'package:capy_energy/screens_v2/settings/developer_pane.dart';
import 'package:capy_energy/screens_v2/settings/displays_pane.dart';
import 'package:capy_energy/screens_v2/settings/system_pane.dart';
import 'package:capy_ui/capy_ui.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Answers the platform reads without a channel, so the panes reach the state
/// they reach on the car.
class _FakeTelemetryApi extends TelemetryApi {
  bool gpsEnabled = false;
  bool keepBluetoothOn = false;
  bool autoStartOnBoot = true;
  bool debugEventFileEnabled = false;
  bool continuousModeEnabled = false;
  double? defaultChargeCostPerKwh;

  int setGpsCalls = 0;
  int setKeepBluetoothOnCalls = 0;
  int setContinuousModeCalls = 0;
  int clearCalls = 0;

  /// Holds the first settings read open, so a test can observe the state a
  /// switch is in before the collector has answered. A method that returns
  /// immediately is already complete by the first pump, which would make that
  /// state unobservable rather than absent.
  final firstRead = Completer<void>();

  /// Set to make every read fail, the way an unavailable collector does.
  bool failReads = false;

  @override
  Future<TelemetrySettingsResult> getTelemetrySettings() async {
    if (!firstRead.isCompleted) await firstRead.future;
    if (failReads) throw StateError('collector unavailable');
    return _settings();
  }

  @override
  Future<TelemetrySettingsResult> setGpsEnabled(bool enabled) async {
    setGpsCalls++;
    gpsEnabled = enabled;
    return _settings();
  }

  @override
  Future<TelemetrySettingsResult> setKeepBluetoothOnEnabled(
    bool enabled,
  ) async {
    setKeepBluetoothOnCalls++;
    keepBluetoothOn = enabled;
    return _settings();
  }

  @override
  Future<TelemetrySettingsResult> setAutoStartOnBoot(bool enabled) async {
    autoStartOnBoot = enabled;
    return _settings();
  }

  /// Set to make the next write fail, the way a collector that rejects the
  /// request does.
  bool failContinuousModeWrite = false;

  @override
  Future<TelemetrySettingsResult> setContinuousModeEnabled(bool enabled) async {
    setContinuousModeCalls++;
    if (failContinuousModeWrite) throw StateError('collector refused');
    continuousModeEnabled = enabled;
    return _settings();
  }

  int markHistoryCalls = 0;

  @override
  Future<int> markCloudHistoryDirty() async {
    markHistoryCalls++;
    return 40321;
  }

  @override
  Future<TelemetrySettingsResult> setDebugEventFileEnabled(bool enabled) async {
    debugEventFileEnabled = enabled;
    return _settings();
  }

  @override
  Future<TelemetrySettingsResult> setDefaultChargeCostPerKwh(
    double? value,
  ) async {
    defaultChargeCostPerKwh = value;
    return _settings();
  }

  double packCapacityWh = kDefaultPackCapacityWh;
  int applyCostCalls = 0;

  @override
  Future<TelemetrySettingsResult> setPackCapacityWh(double? value) async {
    packCapacityWh = value ?? kDefaultPackCapacityWh;
    return _settings();
  }

  @override
  Future<DefaultChargeCostApplication>
  applyDefaultChargeCostToUnpriced() async {
    applyCostCalls++;
    return const DefaultChargeCostApplication(
      ok: true,
      updatedRows: 4,
      costPerKwh: 0.95,
      currency: 'BRL',
      error: null,
    );
  }

  @override
  Future<ClearTelemetryDatabaseResult> clearTelemetryDatabase() async {
    clearCalls++;
    return const ClearTelemetryDatabaseResult(
      ok: true,
      telemetryEventsDeleted: 4,
      tripSessionsDeleted: 1,
      chargeSessionsDeleted: 2,
      telemetryFramesDeleted: 3,
      sessionAggregatesDeleted: 0,
      timestampMillis: 0,
    );
  }

  @override
  Future<AppUpdateStatus> getAppUpdateStatus() async => const AppUpdateStatus(
    checked: true,
    updateAvailable: false,
    compatible: true,
    installedVersionName: '1.2.3',
    installedVersionCode: 42,
    availableVersionName: null,
    availableVersionCode: null,
    requiresReflash: false,
    installScheduled: false,
    changelog: [],
    error: null,
  );

  @override
  Future<RoadcastStatus> getRoadcastStatus() async => const RoadcastStatus(
    running: true,
    signalCount: 120,
    frameCount: 40,
    hz: 60,
    startedByApp: true,
    error: null,
  );

  @override
  Future<RoadcastUpdateStatus> getRoadcastUpdateStatus() async =>
      const RoadcastUpdateStatus(
        checked: true,
        channel: 'edge',
        updateAvailable: false,
        compatible: true,
        installedSha256: 'abcdef0123456789',
        installedVersion: '0.9',
        installedCommit: 'abcdef0123456789',
        availableVersion: null,
        availableCommit: null,
        availableSha256: null,
        error: null,
      );

  bool externalChargeControlEnabled = false;
  ChargeControlAppStatus chargeControlAppStatus = const ChargeControlAppStatus(
    installed: false,
  );
  final downloadProgressController = StreamController<double>.broadcast();

  @override
  Stream<double> chargeControlDownloadProgress() =>
      downloadProgressController.stream;

  @override
  Future<ChargeControlAppStatus> getChargeControlAppStatus() async =>
      chargeControlAppStatus;

  Completer<ChargeControlAppStatus>? installCompleter;

  @override
  Future<ChargeControlAppStatus> installChargeControlApp() async {
    downloadProgressController.add(0.45);
    if (installCompleter != null) {
      return await installCompleter!.future;
    }
    return const ChargeControlAppStatus(
      installed: true,
      installedVersionName: '1.0.0',
      installScheduled: true,
    );
  }

  TelemetrySettingsResult _settings() => TelemetrySettingsResult(
    autoStartOnBoot: autoStartOnBoot,
    gpsEnabled: gpsEnabled,
    keepBluetoothOn: keepBluetoothOn,
    debugEventFileEnabled: debugEventFileEnabled,
    temperatureModeHelperEnabled: false,
    replaceOemChargingEnabled: false,
    externalChargeControlEnabled: externalChargeControlEnabled,
    continuousModeEnabled: continuousModeEnabled,
    defaultChargeCostPerKwh: defaultChargeCostPerKwh,
    packCapacityWh: packCapacityWh,
    chargeCostCurrency: 'BRL',
  );
}

Widget _host(Widget pane) {
  return MaterialApp(
    theme: AppTheme.light(),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: Scaffold(body: SingleChildScrollView(child: pane)),
  );
}

/// Finds the toggle row for a setting by the label the user reads.
SettingToggleRow _toggle(WidgetTester tester, String label) {
  return tester.widget<SettingToggleRow>(
    find.widgetWithText(SettingToggleRow, label),
  );
}

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await AppExperienceController.instance.reset();
  });
  tearDown(() async {
    DeveloperToolsGate.instance.reset();
    await AppExperienceController.instance.reset();
  });

  testWidgets('Displays puts appearance in a card of its own', (tester) async {
    await tester.pumpWidget(_host(const DisplaysPane()));
    await tester.pumpAndSettle();

    expect(find.text('Appearance'), findsOneWidget);
    expect(find.text('App theme'), findsOneWidget);
    // The picker offers every theme in the catalogue, so the pane grows on its
    // own when one is added.
    expect(find.byType(ThemePicker), findsOneWidget);
    expect(AppThemeId.values.length, 9);
    expect(find.text('Light'), findsOneWidget);
    expect(find.text('Midnight'), findsOneWidget);
    expect(find.text('Daylight'), findsOneWidget);
    expect(find.text('Tokyo Neon'), findsOneWidget);
  });

  testWidgets('Data carries operation, retention, and erase as sections', (
    tester,
  ) async {
    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(DataPane(telemetryApi: api)));
    await tester.pumpAndSettle();

    expect(find.text('Operation'), findsOneWidget);
    expect(find.text('Retention'), findsOneWidget);
    expect(find.text('Erase'), findsOneWidget);
    expect(find.text('Auto-start telemetry on boot'), findsOneWidget);
    expect(find.text('GPS collection during trips'), findsOneWidget);
    expect(find.text('Raw data retention'), findsOneWidget);
  });

  testWidgets(
    'Charge carries disclaimer, external charge control, and pricing',
    (tester) async {
      final api = _FakeTelemetryApi()..firstRead.complete();
      await tester.pumpWidget(_host(ChargePane(telemetryApi: api)));
      await tester.pumpAndSettle();

      expect(find.text('Disclaimer'), findsOneWidget);
      expect(find.text('Charging'), findsOneWidget);
      expect(
        find.text('External Charge Control (Geely Charge Control)'),
        findsOneWidget,
      );
      expect(find.text('Replace factory charging screen'), findsOneWidget);
      expect(find.text('Battery capacity'), findsWidgets);
      expect(find.text('Default charge price'), findsOneWidget);
    },
  );

  testWidgets(
    'Charge shows download progress and percentage when downloading APK',
    (tester) async {
      tester.view.physicalSize = const Size(1920, 1080);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);

      final completer = Completer<ChargeControlAppStatus>();
      final api = _FakeTelemetryApi()
        ..externalChargeControlEnabled = true
        ..installCompleter = completer
        ..firstRead.complete();
      await tester.pumpWidget(_host(ChargePane(telemetryApi: api)));
      await tester.pumpAndSettle();

      expect(find.text('Download and Install APK'), findsOneWidget);

      await tester.tap(find.text('Download and Install APK'));
      await tester.pump();
      await tester.pump();

      expect(find.text('Downloading... 45%'), findsOneWidget);
      expect(find.byType(LinearProgressIndicator), findsOneWidget);

      api.chargeControlAppStatus = const ChargeControlAppStatus(
        installed: true,
        installedVersionName: '1.0.0',
      );
      completer.complete(
        const ChargeControlAppStatus(
          installed: true,
          installedVersionName: '1.0.0',
          installScheduled: true,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Open App'), findsOneWidget);
    },
  );

  testWidgets('the default charge price is typed on the keypad', (
    tester,
  ) async {
    // The head unit, so the whole keypad is on screen.
    tester.view.physicalSize = const Size(1920, 1080);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(ChargePane(telemetryApi: api)));
    await tester.pumpAndSettle();

    expect(find.text('Default charge price'), findsOneWidget);
    // Nothing saved is a state of its own, not a price of zero.
    expect(find.text('No default price saved'), findsOneWidget);

    await tester.tap(find.text('No default price saved'));
    await tester.pumpAndSettle();

    for (final digit in ['9', '5']) {
      await tester.tap(find.widgetWithText(InkWell, digit));
      await tester.pump();
    }
    await tester.tap(find.byKey(const Key('money-keypad-save')));
    await tester.pumpAndSettle();

    expect(api.defaultChargeCostPerKwh, 0.95);
    // The host runs in English, so the price is printed with that locale's
    // symbol and decimal mark.
    expect(find.text(r'$ 0.95'), findsWidgets);
  });

  testWidgets('the pack capacity is stated by the reader, not by the car', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1920, 1080);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(ChargePane(telemetryApi: api)));
    await tester.pumpAndSettle();

    // The default pack, shown before anything is typed. There is no "unknown"
    // state: every energy figure needs a capacity.
    expect(find.text('39.60 kWh'), findsOneWidget);

    await tester.tap(find.text('39.60 kWh'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('money-keypad-clear')));
    await tester.pump();
    for (final digit in ['6', '0', '0', '0']) {
      await tester.tap(find.widgetWithText(InkWell, digit));
      await tester.pump();
    }
    await tester.tap(find.byKey(const Key('money-keypad-save')));
    await tester.pumpAndSettle();

    // Typed in kWh, stored in Wh.
    expect(api.packCapacityWh, 60000);
    expect(find.text('60.00 kWh'), findsOneWidget);
  });

  testWidgets('pricing the past charges needs a default rate first', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1920, 1080);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(ChargePane(telemetryApi: api)));
    await tester.pumpAndSettle();

    final disabled = tester.widget<SoftActionTile>(
      find.widgetWithText(SoftActionTile, 'Apply to unpriced charges'),
    );
    expect(disabled.onPressed, isNull);

    // A new pane, so it reads the rate the collector now holds. The same
    // widget would keep the state it loaded with.
    api.defaultChargeCostPerKwh = 0.95;
    await tester.pumpWidget(
      _host(ChargePane(key: UniqueKey(), telemetryApi: api)),
    );
    await tester.pumpAndSettle();

    await tester.ensureVisible(find.text('Apply to unpriced charges'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Apply to unpriced charges'));
    await tester.pumpAndSettle();

    expect(api.applyCostCalls, 1);
    expect(find.text('4 charges now carry the default rate.'), findsOneWidget);
  });

  testWidgets('the switches wait for the collector before they can be used', (
    tester,
  ) async {
    final api = _FakeTelemetryApi();
    await tester.pumpWidget(_host(DataPane(telemetryApi: api)));
    // Deliberately not settled: the first read has not landed yet.
    await tester.pump();

    expect(_toggle(tester, 'GPS collection during trips').onChanged, isNull);
    expect(_toggle(tester, 'Auto-start telemetry on boot').onChanged, isNull);

    api.firstRead.complete();
    await tester.pumpAndSettle();

    expect(_toggle(tester, 'GPS collection during trips').onChanged, isNotNull);
    expect(_toggle(tester, 'GPS collection during trips').value, isFalse);
    expect(_toggle(tester, 'Auto-start telemetry on boot').value, isTrue);

    await tester.tap(find.text('GPS collection during trips'));
    await tester.pumpAndSettle();

    expect(api.setGpsCalls, 1);
    expect(api.gpsEnabled, isTrue);
  });

  testWidgets('the keep-Bluetooth-on switch starts off and writes the car', (
    tester,
  ) async {
    final api = _FakeTelemetryApi();
    await tester.pumpWidget(_host(DataPane(telemetryApi: api)));
    await tester.pump();

    // Inoperable until the collector answers, like every other switch here.
    expect(_toggle(tester, 'Keep Bluetooth on').onChanged, isNull);

    api.firstRead.complete();
    await tester.pumpAndSettle();

    // Off by default: the app does not take the car radio unasked.
    expect(_toggle(tester, 'Keep Bluetooth on').value, isFalse);

    await tester.tap(find.text('Keep Bluetooth on'));
    await tester.pumpAndSettle();

    expect(api.setKeepBluetoothOnCalls, 1);
    expect(api.keepBluetoothOn, isTrue);
    expect(_toggle(tester, 'Keep Bluetooth on').value, isTrue);
  });

  testWidgets('the continuous mode switch starts off and writes the car', (
    tester,
  ) async {
    final api = _FakeTelemetryApi();
    await tester.pumpWidget(_host(DataPane(telemetryApi: api)));
    await tester.pump();

    // Inoperable until the collector answers, like every other switch here.
    expect(_toggle(tester, 'Continuous recording').onChanged, isNull);

    api.firstRead.complete();
    await tester.pumpAndSettle();

    // Off by default: nothing about recording changes until asked.
    expect(_toggle(tester, 'Continuous recording').value, isFalse);

    await tester.tap(find.text('Continuous recording'));
    await tester.pumpAndSettle();

    expect(api.setContinuousModeCalls, 1);
    expect(api.continuousModeEnabled, isTrue);
    expect(_toggle(tester, 'Continuous recording').value, isTrue);
  });

  testWidgets(
    'the continuous mode switch shows the read-back, not a write the car rejected',
    (tester) async {
      final api = _FakeTelemetryApi();
      await tester.pumpWidget(_host(DataPane(telemetryApi: api)));
      api.firstRead.complete();
      await tester.pumpAndSettle();

      api.failContinuousModeWrite = true;

      await tester.tap(find.text('Continuous recording'));
      await tester.pumpAndSettle();

      // The optimistic flip is reverted to what the collector last confirmed.
      expect(_toggle(tester, 'Continuous recording').value, isFalse);
    },
  );

  testWidgets('a collector that never answers leaves the switches inoperable', (
    tester,
  ) async {
    final api = _FakeTelemetryApi()
      ..failReads = true
      ..firstRead.complete();
    await tester.pumpWidget(_host(DataPane(telemetryApi: api)));
    await tester.pumpAndSettle();

    expect(_toggle(tester, 'GPS collection during trips').onChanged, isNull);
    expect(tester.takeException(), isNull);
  });

  testWidgets('erasing the database asks first, and a refusal erases nothing', (
    tester,
  ) async {
    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(DataPane(telemetryApi: api)));
    await tester.pumpAndSettle();

    await tester.ensureVisible(find.text('WIPE HISTORY'));
    await tester.tap(find.text('WIPE HISTORY'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('confirm-dialog')), findsOneWidget);

    await tester.tap(find.text('CANCEL'));
    await tester.pumpAndSettle();
    expect(api.clearCalls, 0);

    await tester.ensureVisible(find.text('WIPE HISTORY'));
    await tester.tap(find.text('WIPE HISTORY'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('WIPE ALL'));
    await tester.pumpAndSettle();

    expect(api.clearCalls, 1);
    expect(find.textContaining('Erased:'), findsOneWidget);
  });

  testWidgets('System reports the app, the daemon, and the version', (
    tester,
  ) async {
    final api = _FakeTelemetryApi();
    await tester.pumpWidget(
      _host(
        SystemPane(
          telemetryApi: api,
          packageInfo: PackageInfo(
            appName: 'Eaglemetry',
            packageName: 'com.timhss.capy',
            version: '1.2.3',
            buildNumber: '42',
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('App updates'), findsOneWidget);
    expect(find.text('Eaglemetry is up to date'), findsOneWidget);
    expect(find.text('Roadcast'), findsOneWidget);
    expect(find.text('120 signals, 40 frames @ 60 Hz'), findsOneWidget);
    expect(find.text('ABOUT'), findsOneWidget);
    expect(find.text('Version 1.2.3 (build 42)'), findsOneWidget);
  });

  testWidgets('the engineering screens appear only with developer mode on', (
    tester,
  ) async {
    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(DeveloperPane(telemetryApi: api)));
    await tester.pumpAndSettle();

    // The switch is what reveals them, so with it off they must be absent —
    // otherwise the switch is a label with no effect.
    expect(find.text('Engineering screens'), findsNothing);
    expect(find.text('Debug event log file'), findsNothing);
    expect(DeveloperToolsGate.instance.unlocked, isFalse);

    await tester.tap(find.text('Developer mode'));
    await tester.pumpAndSettle();

    expect(DeveloperToolsGate.instance.unlocked, isTrue);
    expect(find.text('Engineering screens'), findsOneWidget);
    expect(find.text('Debug event log file'), findsOneWidget);
    expect(find.text('Motion sensor lab'), findsOneWidget);
    // Signal Lab reached the new menu when the old settings screen was
    // deleted; it must not be lost with the screen that used to host it.
    expect(find.text('Signal Lab'), findsOneWidget);

    await tester.tap(find.text('Debug event log file'));
    await tester.pumpAndSettle();
    expect(api.debugEventFileEnabled, isTrue);
  });

  testWidgets('resend history appears only with developer mode on', (
    tester,
  ) async {
    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(DeveloperPane(telemetryApi: api)));
    await tester.pumpAndSettle();

    // Re-sending the whole database is a test tool, never a user action.
    expect(find.byKey(const Key('settings-resend-history')), findsNothing);

    await tester.tap(find.text('Developer mode'));
    await tester.pumpAndSettle();

    final tile = find.byKey(const Key('settings-resend-history'));
    await tester.ensureVisible(tile);
    await tester.tap(tile);
    await tester.pumpAndSettle();

    expect(api.markHistoryCalls, 1);
    // The count the car reported, not a guess.
    expect(
      find.text('40321 records marked. They upload on the next sync.'),
      findsOneWidget,
    );
  });

  testWidgets('Developer keeps the experiments reachable', (tester) async {
    final api = _FakeTelemetryApi()..firstRead.complete();
    await tester.pumpWidget(_host(DeveloperPane(telemetryApi: api)));
    await tester.pumpAndSettle();

    expect(find.text('Experiments'), findsOneWidget);
    expect(find.text('CarPlay / Android Auto (Beta)'), findsOneWidget);
    expect(find.text('Use the previous interface'), findsOneWidget);

    await tester.tap(find.text('CarPlay / Android Auto (Beta)'));
    await tester.pumpAndSettle();

    expect(AppExperienceController.instance.projectionEnabled, isTrue);
  });
}
