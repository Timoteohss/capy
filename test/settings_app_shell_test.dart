import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:capy_energy/core/app_experience_controller.dart';
import 'package:capy_energy/l10n/app_localizations.dart';
import 'package:capy_energy/screens/settings_screen.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await AppExperienceController.instance.reset();
    PackageInfo.setMockInitialValues(
      appName: 'Eaglemetry',
      packageName: 'com.timhss.capy',
      version: '0.9.0',
      buildNumber: '90',
      buildSignature: '',
    );
  });

  tearDown(() async {
    await AppExperienceController.instance.reset();
  });

  testWidgets('the shell picker is always available, no unlock required', (
    tester,
  ) async {
    await tester.pumpWidget(_app());
    await tester.pump();

    await tester.ensureVisible(find.text('Previous'));
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text('New'), findsOneWidget);
    expect(find.text('Previous'), findsOneWidget);
  });

  testWidgets('picking a shell switches the app and persists the choice', (
    tester,
  ) async {
    await tester.pumpWidget(_app());
    await tester.pump();
    await tester.ensureVisible(find.text('Previous'));
    await tester.pump(const Duration(milliseconds: 500));

    await tester.tap(find.text('Previous'));
    await tester.pump();
    expect(AppExperienceController.instance.newUiEnabled, isFalse);

    await AppExperienceController.instance.load();
    expect(AppExperienceController.instance.newUiEnabled, isFalse);

    await tester.tap(find.text('New'));
    await tester.pump();
    expect(AppExperienceController.instance.newUiEnabled, isTrue);
  });
}

Widget _app() {
  return const MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: Scaffold(body: SettingsScreen()),
  );
}
