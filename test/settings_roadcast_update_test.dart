import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:capy_energy/l10n/app_localizations.dart';
import 'package:capy_energy/screens/settings_screen.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  testWidgets('Roadcast updater panel fits a compact settings viewport', (
    tester,
  ) async {
    PackageInfo.setMockInitialValues(
      appName: 'Eaglemetry',
      packageName: 'com.timhss.capy',
      version: '0.4.3',
      buildNumber: '43',
      buildSignature: '',
    );
    tester.view.physicalSize = const Size(800, 600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: SettingsScreen()),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('Roadcast'), findsOneWidget);
    expect(find.text('App updates'), findsOneWidget);
    expect(find.text('CHECK'), findsOneWidget);
    expect(find.text('UPDATE'), findsNWidgets(2));
    expect(find.text('RESTART'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('app updater shows release notes before installation', (
    tester,
  ) async {
    PackageInfo.setMockInitialValues(
      appName: 'Eaglemetry',
      packageName: 'com.timhss.capy',
      version: '0.8.0',
      buildNumber: '99',
      buildSignature: '',
    );
    const channel = MethodChannel('com.timhss.capyenergy/telemetry');
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, (
      call,
    ) async {
      if (call.method == 'checkAppUpdate') {
        return <String, Object?>{
          'checked': true,
          'updateAvailable': true,
          'compatible': true,
          'installedVersionName': '0.8.0',
          'installedVersionCode': 99,
          'availableVersionName': '0.9.0',
          'availableVersionCode': 100,
          'requiresReflash': false,
          'installScheduled': false,
          'changelog': [
            {
              'versionName': '0.9.0',
              'versionCode': 100,
              'notes': {
                'en': ['Fixes DC charging power.'],
                'pt': ['Corrige a potência de carga DC.'],
                'ru': ['Исправлена мощность зарядки DC.'],
              },
            },
          ],
        };
      }
      return <String, Object?>{};
    });
    addTearDown(
      () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        channel,
        null,
      ),
    );

    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: SettingsScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text("What's new"), findsOneWidget);
    expect(find.text('Fixes DC charging power.'), findsOneWidget);

    final updateButton = find.widgetWithText(FilledButton, 'UPDATE').last;
    await tester.ensureVisible(updateButton);
    await tester.pumpAndSettle();
    await tester.tap(updateButton);
    await tester.pumpAndSettle();

    expect(find.text('Update to 0.9.0?'), findsOneWidget);
    expect(find.text('INSTALL'), findsOneWidget);
    expect(
      find.textContaining('update the Roadcast service before it installs'),
      findsOneWidget,
    );
    expect(find.text('Fixes DC charging power.'), findsNWidgets(2));
    expect(tester.takeException(), isNull);
  });
}
