import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('pt'),
    Locale('ru'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Eaglemetry'**
  String get appTitle;

  /// No description provided for @navBrand.
  ///
  /// In en, this message translates to:
  /// **'AUTO'**
  String get navBrand;

  /// No description provided for @navTrips.
  ///
  /// In en, this message translates to:
  /// **'Trips'**
  String get navTrips;

  /// No description provided for @navCharging.
  ///
  /// In en, this message translates to:
  /// **'Charging'**
  String get navCharging;

  /// No description provided for @navHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get navHistory;

  /// No description provided for @navRoadcastTrace.
  ///
  /// In en, this message translates to:
  /// **'Trace'**
  String get navRoadcastTrace;

  /// No description provided for @navHelpers.
  ///
  /// In en, this message translates to:
  /// **'Helpers'**
  String get navHelpers;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @navCarplay.
  ///
  /// In en, this message translates to:
  /// **'CarPlay'**
  String get navCarplay;

  /// No description provided for @navAndroidAuto.
  ///
  /// In en, this message translates to:
  /// **'Android Auto'**
  String get navAndroidAuto;

  /// No description provided for @appBarTitle.
  ///
  /// In en, this message translates to:
  /// **'GEELY TELEMETRY'**
  String get appBarTitle;

  /// No description provided for @gearD.
  ///
  /// In en, this message translates to:
  /// **'D'**
  String get gearD;

  /// No description provided for @gearP.
  ///
  /// In en, this message translates to:
  /// **'P'**
  String get gearP;

  /// No description provided for @gearR.
  ///
  /// In en, this message translates to:
  /// **'R'**
  String get gearR;

  /// No description provided for @gearN.
  ///
  /// In en, this message translates to:
  /// **'N'**
  String get gearN;

  /// No description provided for @plugNone.
  ///
  /// In en, this message translates to:
  /// **'NONE'**
  String get plugNone;

  /// No description provided for @plugAc.
  ///
  /// In en, this message translates to:
  /// **'AC'**
  String get plugAc;

  /// No description provided for @plugDc.
  ///
  /// In en, this message translates to:
  /// **'DC'**
  String get plugDc;

  /// No description provided for @plugIntegration.
  ///
  /// In en, this message translates to:
  /// **'INTEGRATION'**
  String get plugIntegration;

  /// No description provided for @unitKmh.
  ///
  /// In en, this message translates to:
  /// **'km/h'**
  String get unitKmh;

  /// No description provided for @unitKm.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get unitKm;

  /// No description provided for @unitKw.
  ///
  /// In en, this message translates to:
  /// **'kW'**
  String get unitKw;

  /// No description provided for @unitKwh.
  ///
  /// In en, this message translates to:
  /// **'kWh'**
  String get unitKwh;

  /// No description provided for @unitWatt.
  ///
  /// In en, this message translates to:
  /// **'W'**
  String get unitWatt;

  /// No description provided for @unitPercent.
  ///
  /// In en, this message translates to:
  /// **'%'**
  String get unitPercent;

  /// No description provided for @changeModeStatic.
  ///
  /// In en, this message translates to:
  /// **'STATIC'**
  String get changeModeStatic;

  /// No description provided for @changeModeOnChange.
  ///
  /// In en, this message translates to:
  /// **'ON_CHANGE'**
  String get changeModeOnChange;

  /// No description provided for @changeModeContinuous.
  ///
  /// In en, this message translates to:
  /// **'CONTINUOUS'**
  String get changeModeContinuous;

  /// No description provided for @changeModeUnknown.
  ///
  /// In en, this message translates to:
  /// **'UNKNOWN({value})'**
  String changeModeUnknown(Object value);

  /// No description provided for @helpersTitle.
  ///
  /// In en, this message translates to:
  /// **'HELPERS'**
  String get helpersTitle;

  /// No description provided for @helpersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Temperature mode'**
  String get helpersSubtitle;

  /// No description provided for @helpersTemperatureSection.
  ///
  /// In en, this message translates to:
  /// **'Temperature Mode'**
  String get helpersTemperatureSection;

  /// No description provided for @helpersTemperatureModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Temperature mode'**
  String get helpersTemperatureModeTitle;

  /// No description provided for @helpersTemperatureModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Enable or disable media button interception for AC temperature and fan control.'**
  String get helpersTemperatureModeDesc;

  /// No description provided for @helpersRetry.
  ///
  /// In en, this message translates to:
  /// **'RETRY'**
  String get helpersRetry;

  /// No description provided for @helpersHvacControlTitle.
  ///
  /// In en, this message translates to:
  /// **'HVAC write test'**
  String get helpersHvacControlTitle;

  /// No description provided for @helpersHvacControlDesc.
  ///
  /// In en, this message translates to:
  /// **'Direct climate writes from the geelycontrol path: HVAC_TEMPERATURE_SET on left seat and HVAC_FAN_SPEED on area 5.'**
  String get helpersHvacControlDesc;

  /// No description provided for @helpersHvacRefresh.
  ///
  /// In en, this message translates to:
  /// **'READ HVAC'**
  String get helpersHvacRefresh;

  /// No description provided for @helpersHvacTempDown.
  ///
  /// In en, this message translates to:
  /// **'TEMP -'**
  String get helpersHvacTempDown;

  /// No description provided for @helpersHvacTempUp.
  ///
  /// In en, this message translates to:
  /// **'TEMP +'**
  String get helpersHvacTempUp;

  /// No description provided for @helpersHvacFanDown.
  ///
  /// In en, this message translates to:
  /// **'FAN -'**
  String get helpersHvacFanDown;

  /// No description provided for @helpersHvacFanUp.
  ///
  /// In en, this message translates to:
  /// **'FAN +'**
  String get helpersHvacFanUp;

  /// No description provided for @helpersHvacNotTested.
  ///
  /// In en, this message translates to:
  /// **'NOT TESTED'**
  String get helpersHvacNotTested;

  /// No description provided for @helpersHvacOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get helpersHvacOk;

  /// No description provided for @helpersHvacFailed.
  ///
  /// In en, this message translates to:
  /// **'FAILED'**
  String get helpersHvacFailed;

  /// No description provided for @helpersHvacNoResult.
  ///
  /// In en, this message translates to:
  /// **'No HVAC command result yet'**
  String get helpersHvacNoResult;

  /// No description provided for @helpersHvacDetailsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No native details'**
  String get helpersHvacDetailsEmpty;

  /// No description provided for @helpersFeedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Detector feedback'**
  String get helpersFeedbackTitle;

  /// No description provided for @helpersFeedbackDisabled.
  ///
  /// In en, this message translates to:
  /// **'DISABLED'**
  String get helpersFeedbackDisabled;

  /// No description provided for @helpersFeedbackStandby.
  ///
  /// In en, this message translates to:
  /// **'STANDBY'**
  String get helpersFeedbackStandby;

  /// No description provided for @helpersFeedbackActivated.
  ///
  /// In en, this message translates to:
  /// **'ACTIVATED'**
  String get helpersFeedbackActivated;

  /// No description provided for @helpersFeedbackLastTrigger.
  ///
  /// In en, this message translates to:
  /// **'Last trigger'**
  String get helpersFeedbackLastTrigger;

  /// No description provided for @helpersFeedbackNever.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get helpersFeedbackNever;

  /// No description provided for @helpersKnobTrigger.
  ///
  /// In en, this message translates to:
  /// **'Headlight knob'**
  String get helpersKnobTrigger;

  /// No description provided for @helpersSimulateKnob.
  ///
  /// In en, this message translates to:
  /// **'SIM KNOB'**
  String get helpersSimulateKnob;

  /// No description provided for @helpersKnobDetectorTitle.
  ///
  /// In en, this message translates to:
  /// **'Headlight knob trigger'**
  String get helpersKnobDetectorTitle;

  /// No description provided for @helpersKnobSequence.
  ///
  /// In en, this message translates to:
  /// **'Sequence'**
  String get helpersKnobSequence;

  /// No description provided for @helpersKnobTransitions.
  ///
  /// In en, this message translates to:
  /// **'Transitions'**
  String get helpersKnobTransitions;

  /// No description provided for @helpersKnobWindow.
  ///
  /// In en, this message translates to:
  /// **'Knob window'**
  String get helpersKnobWindow;

  /// No description provided for @helpersSafetyTitle.
  ///
  /// In en, this message translates to:
  /// **'Fail-safes'**
  String get helpersSafetyTitle;

  /// No description provided for @helpersIdleTimeout.
  ///
  /// In en, this message translates to:
  /// **'Idle timeout'**
  String get helpersIdleTimeout;

  /// No description provided for @helpersHardCap.
  ///
  /// In en, this message translates to:
  /// **'Hard cap'**
  String get helpersHardCap;

  /// No description provided for @helpersSafetyDesc.
  ///
  /// In en, this message translates to:
  /// **'These limits define when the future active mode must restore the media keyserver.'**
  String get helpersSafetyDesc;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsDescription.
  ///
  /// In en, this message translates to:
  /// **'Data maintenance for the local vehicle telemetry log.'**
  String get settingsDescription;

  /// No description provided for @settingsSectionSystem.
  ///
  /// In en, this message translates to:
  /// **'SYSTEM CONFIGURATION'**
  String get settingsSectionSystem;

  /// No description provided for @settingsSectionGeneral.
  ///
  /// In en, this message translates to:
  /// **'General Operation'**
  String get settingsSectionGeneral;

  /// No description provided for @settingsSectionData.
  ///
  /// In en, this message translates to:
  /// **'Data & Retention'**
  String get settingsSectionData;

  /// No description provided for @settingsAppTheme.
  ///
  /// In en, this message translates to:
  /// **'App theme'**
  String get settingsAppTheme;

  /// No description provided for @settingsThemeDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose the palette the app wears. Each tile shows the page, a card, and its text.'**
  String get settingsThemeDesc;

  /// No description provided for @settingsDark.
  ///
  /// In en, this message translates to:
  /// **'DARK'**
  String get settingsDark;

  /// No description provided for @settingsLight.
  ///
  /// In en, this message translates to:
  /// **'LIGHT'**
  String get settingsLight;

  /// No description provided for @settingsThemeNameLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeNameLight;

  /// No description provided for @settingsThemeNameDark.
  ///
  /// In en, this message translates to:
  /// **'Petrol'**
  String get settingsThemeNameDark;

  /// No description provided for @settingsThemeNameMidnight.
  ///
  /// In en, this message translates to:
  /// **'Midnight'**
  String get settingsThemeNameMidnight;

  /// No description provided for @settingsThemeNameSepia.
  ///
  /// In en, this message translates to:
  /// **'Sepia'**
  String get settingsThemeNameSepia;

  /// No description provided for @settingsThemeNameNordic.
  ///
  /// In en, this message translates to:
  /// **'Nordic'**
  String get settingsThemeNameNordic;

  /// No description provided for @settingsThemeNameDaylight.
  ///
  /// In en, this message translates to:
  /// **'Daylight'**
  String get settingsThemeNameDaylight;

  /// No description provided for @settingsThemeNameTokyoNeon.
  ///
  /// In en, this message translates to:
  /// **'Tokyo Neon'**
  String get settingsThemeNameTokyoNeon;

  /// No description provided for @settingsThemeNameSunsetDrive.
  ///
  /// In en, this message translates to:
  /// **'Sunset Drive'**
  String get settingsThemeNameSunsetDrive;

  /// No description provided for @settingsThemeNameBubblegum.
  ///
  /// In en, this message translates to:
  /// **'Bubblegum'**
  String get settingsThemeNameBubblegum;

  /// No description provided for @settingsEfficiencyUnit.
  ///
  /// In en, this message translates to:
  /// **'Efficiency unit'**
  String get settingsEfficiencyUnit;

  /// No description provided for @settingsEfficiencyUnitDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose how the app shows driving efficiency. Tap the reading itself anywhere in the app to cycle the same choice.'**
  String get settingsEfficiencyUnitDesc;

  /// No description provided for @settingsRetention.
  ///
  /// In en, this message translates to:
  /// **'Raw data retention'**
  String get settingsRetention;

  /// No description provided for @settingsRetentionDesc.
  ///
  /// In en, this message translates to:
  /// **'Keeps trip and charging history, compacts ended sessions, and removes raw frames/events older than 30 days.'**
  String get settingsRetentionDesc;

  /// No description provided for @settingsRetentionRunning.
  ///
  /// In en, this message translates to:
  /// **'RUNNING'**
  String get settingsRetentionRunning;

  /// No description provided for @settingsRetentionRun.
  ///
  /// In en, this message translates to:
  /// **'RUN RETENTION'**
  String get settingsRetentionRun;

  /// No description provided for @settingsAutoStart.
  ///
  /// In en, this message translates to:
  /// **'Auto-start telemetry on boot'**
  String get settingsAutoStart;

  /// No description provided for @settingsAutoStartDesc.
  ///
  /// In en, this message translates to:
  /// **'Starts the native collector after vehicle boot or package replacement.'**
  String get settingsAutoStartDesc;

  /// No description provided for @settingsGps.
  ///
  /// In en, this message translates to:
  /// **'GPS collection during trips'**
  String get settingsGps;

  /// No description provided for @settingsGpsDesc.
  ///
  /// In en, this message translates to:
  /// **'Stores latitude, longitude, altitude, and GPS accuracy on telemetry frames when native location is available.'**
  String get settingsGpsDesc;

  /// No description provided for @settingsKeepBluetoothOnTitle.
  ///
  /// In en, this message translates to:
  /// **'Keep Bluetooth on'**
  String get settingsKeepBluetoothOnTitle;

  /// No description provided for @settingsKeepBluetoothOnDesc.
  ///
  /// In en, this message translates to:
  /// **'Switches the car radio back on when it goes off, so the phone keeps receiving the live stream. The car stops it on its own.'**
  String get settingsKeepBluetoothOnDesc;

  /// No description provided for @settingsKeepBluetoothOnFailed.
  ///
  /// In en, this message translates to:
  /// **'KEEP BLUETOOTH ON FAILED: {error}'**
  String settingsKeepBluetoothOnFailed(Object error);

  /// No description provided for @settingsContinuousMode.
  ///
  /// In en, this message translates to:
  /// **'Continuous recording'**
  String get settingsContinuousMode;

  /// No description provided for @settingsContinuousModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Records one minute of energy for every minute the car is awake, even when parked or idle. Turning it off keeps what was already recorded.'**
  String get settingsContinuousModeDesc;

  /// No description provided for @settingsContinuousModeFailed.
  ///
  /// In en, this message translates to:
  /// **'CONTINUOUS RECORDING FAILED: {error}'**
  String settingsContinuousModeFailed(Object error);

  /// No description provided for @settingsEventFile.
  ///
  /// In en, this message translates to:
  /// **'Debug event log file'**
  String get settingsEventFile;

  /// No description provided for @settingsEventFileDesc.
  ///
  /// In en, this message translates to:
  /// **'Mirrors telemetry events to a JSONL file for debugging. Uses extra storage; existing files are removed when disabled.'**
  String get settingsEventFileDesc;

  /// No description provided for @settingsWipe.
  ///
  /// In en, this message translates to:
  /// **'Erase local telemetry database'**
  String get settingsWipe;

  /// No description provided for @settingsWipeDesc.
  ///
  /// In en, this message translates to:
  /// **'Permanently removes all trip sessions, charging sessions, telemetry frames, and telemetry events in one operation.'**
  String get settingsWipeDesc;

  /// No description provided for @settingsWiping.
  ///
  /// In en, this message translates to:
  /// **'WIPING'**
  String get settingsWiping;

  /// No description provided for @settingsWipeHistory.
  ///
  /// In en, this message translates to:
  /// **'WIPE HISTORY'**
  String get settingsWipeHistory;

  /// No description provided for @settingsWipeDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'WIPE HISTORY'**
  String get settingsWipeDialogTitle;

  /// No description provided for @settingsWipeDialogContent.
  ///
  /// In en, this message translates to:
  /// **'This permanently deletes all local telemetry database rows. Charging logs cannot be deleted individually and this action cannot be undone.'**
  String get settingsWipeDialogContent;

  /// No description provided for @settingsCancel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get settingsCancel;

  /// No description provided for @settingsWipeAll.
  ///
  /// In en, this message translates to:
  /// **'WIPE ALL'**
  String get settingsWipeAll;

  /// No description provided for @settingsLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'SETTINGS LOAD FAILED: {error}'**
  String settingsLoadFailed(Object error);

  /// No description provided for @settingsAutoStartEnabled.
  ///
  /// In en, this message translates to:
  /// **'AUTO-START ON BOOT ENABLED'**
  String get settingsAutoStartEnabled;

  /// No description provided for @settingsAutoStartDisabled.
  ///
  /// In en, this message translates to:
  /// **'AUTO-START ON BOOT DISABLED'**
  String get settingsAutoStartDisabled;

  /// No description provided for @settingsAutoStartError.
  ///
  /// In en, this message translates to:
  /// **'AUTO-START UPDATE FAILED: {error}'**
  String settingsAutoStartError(Object error);

  /// No description provided for @settingsGpsEnabled.
  ///
  /// In en, this message translates to:
  /// **'GPS COLLECTION ENABLED'**
  String get settingsGpsEnabled;

  /// No description provided for @settingsGpsDisabled.
  ///
  /// In en, this message translates to:
  /// **'GPS COLLECTION DISABLED'**
  String get settingsGpsDisabled;

  /// No description provided for @settingsGpsError.
  ///
  /// In en, this message translates to:
  /// **'GPS UPDATE FAILED: {error}'**
  String settingsGpsError(Object error);

  /// No description provided for @settingsClearFailed.
  ///
  /// In en, this message translates to:
  /// **'DATABASE CLEAR FAILED: {error}'**
  String settingsClearFailed(Object error);

  /// No description provided for @settingsRetentionFailed.
  ///
  /// In en, this message translates to:
  /// **'RETENTION FAILED: {error}'**
  String settingsRetentionFailed(Object error);

  /// No description provided for @roadcastTraceTitle.
  ///
  /// In en, this message translates to:
  /// **'ROADCAST TRACE'**
  String get roadcastTraceTitle;

  /// No description provided for @roadcastTraceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Live CAN activity'**
  String get roadcastTraceSubtitle;

  /// No description provided for @roadcastTraceRunning.
  ///
  /// In en, this message translates to:
  /// **'RUNNING'**
  String get roadcastTraceRunning;

  /// No description provided for @roadcastTraceStopped.
  ///
  /// In en, this message translates to:
  /// **'STOPPED'**
  String get roadcastTraceStopped;

  /// No description provided for @roadcastTraceStart.
  ///
  /// In en, this message translates to:
  /// **'START'**
  String get roadcastTraceStart;

  /// No description provided for @roadcastTraceStop.
  ///
  /// In en, this message translates to:
  /// **'STOP'**
  String get roadcastTraceStop;

  /// No description provided for @roadcastTraceBaseline.
  ///
  /// In en, this message translates to:
  /// **'BASELINE'**
  String get roadcastTraceBaseline;

  /// No description provided for @roadcastTraceClear.
  ///
  /// In en, this message translates to:
  /// **'CLEAR'**
  String get roadcastTraceClear;

  /// No description provided for @roadcastTraceChangedOnly.
  ///
  /// In en, this message translates to:
  /// **'CHANGED ONLY'**
  String get roadcastTraceChangedOnly;

  /// No description provided for @roadcastTraceValidOnly.
  ///
  /// In en, this message translates to:
  /// **'VALID ONLY'**
  String get roadcastTraceValidOnly;

  /// No description provided for @roadcastTraceSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Filter signal, CAN id, signal id'**
  String get roadcastTraceSearchHint;

  /// No description provided for @roadcastTraceMetricSignals.
  ///
  /// In en, this message translates to:
  /// **'SIGNALS'**
  String get roadcastTraceMetricSignals;

  /// No description provided for @roadcastTraceMetricChanged.
  ///
  /// In en, this message translates to:
  /// **'CHANGED'**
  String get roadcastTraceMetricChanged;

  /// No description provided for @roadcastTraceMetricSnapshots.
  ///
  /// In en, this message translates to:
  /// **'SNAPSHOTS'**
  String get roadcastTraceMetricSnapshots;

  /// No description provided for @roadcastTraceMetricSamples.
  ///
  /// In en, this message translates to:
  /// **'SAMPLES'**
  String get roadcastTraceMetricSamples;

  /// No description provided for @roadcastTraceMetricBaseline.
  ///
  /// In en, this message translates to:
  /// **'BASELINE'**
  String get roadcastTraceMetricBaseline;

  /// No description provided for @roadcastTraceNoBaseline.
  ///
  /// In en, this message translates to:
  /// **'--'**
  String get roadcastTraceNoBaseline;

  /// No description provided for @roadcastTraceEmpty.
  ///
  /// In en, this message translates to:
  /// **'Start capture or adjust filters.'**
  String get roadcastTraceEmpty;

  /// No description provided for @roadcastTraceHeaderSignal.
  ///
  /// In en, this message translates to:
  /// **'SIGNAL'**
  String get roadcastTraceHeaderSignal;

  /// No description provided for @roadcastTraceHeaderNow.
  ///
  /// In en, this message translates to:
  /// **'NOW'**
  String get roadcastTraceHeaderNow;

  /// No description provided for @roadcastTraceRaw.
  ///
  /// In en, this message translates to:
  /// **'RAW'**
  String get roadcastTraceRaw;

  /// No description provided for @roadcastTraceHeaderBaseline.
  ///
  /// In en, this message translates to:
  /// **'BASELINE'**
  String get roadcastTraceHeaderBaseline;

  /// No description provided for @roadcastTraceHeaderDelta.
  ///
  /// In en, this message translates to:
  /// **'DELTA'**
  String get roadcastTraceHeaderDelta;

  /// No description provided for @roadcastTraceHeaderChanges.
  ///
  /// In en, this message translates to:
  /// **'CHANGES'**
  String get roadcastTraceHeaderChanges;

  /// No description provided for @roadcastTraceHeaderLast.
  ///
  /// In en, this message translates to:
  /// **'LAST'**
  String get roadcastTraceHeaderLast;

  /// No description provided for @roadcastTraceHeaderId.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get roadcastTraceHeaderId;

  /// No description provided for @roadcastTraceSelectSignal.
  ///
  /// In en, this message translates to:
  /// **'Select a signal to inspect its timeline.'**
  String get roadcastTraceSelectSignal;

  /// No description provided for @roadcastTraceChartEmpty.
  ///
  /// In en, this message translates to:
  /// **'Waiting for more samples'**
  String get roadcastTraceChartEmpty;

  /// No description provided for @traceModeCan.
  ///
  /// In en, this message translates to:
  /// **'CAN'**
  String get traceModeCan;

  /// No description provided for @traceModeMigration.
  ///
  /// In en, this message translates to:
  /// **'MIGRATION'**
  String get traceModeMigration;

  /// No description provided for @migrationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'15 properties to be replaced'**
  String get migrationSubtitle;

  /// No description provided for @migrationPhaseATitle.
  ///
  /// In en, this message translates to:
  /// **'PHASE A · DIRECT READ'**
  String get migrationPhaseATitle;

  /// No description provided for @migrationPhaseADesc.
  ///
  /// In en, this message translates to:
  /// **'Same number on both sides. Migrate once one real trip and one real charge show no divergence.'**
  String get migrationPhaseADesc;

  /// No description provided for @migrationPhaseBTitle.
  ///
  /// In en, this message translates to:
  /// **'PHASE B · NEEDS MEASURING'**
  String get migrationPhaseBTitle;

  /// No description provided for @migrationPhaseBDesc.
  ///
  /// In en, this message translates to:
  /// **'In the store, but what the raw value means has not been observed on the car yet. Needs one observation, not code.'**
  String get migrationPhaseBDesc;

  /// No description provided for @migrationPhaseCTitle.
  ///
  /// In en, this message translates to:
  /// **'PHASE C · DOES NOT MIGRATE'**
  String get migrationPhaseCTitle;

  /// No description provided for @migrationPhaseCDesc.
  ///
  /// In en, this message translates to:
  /// **'Either the store has no address for it (car_service builds the value), or it never produced a reading.'**
  String get migrationPhaseCDesc;

  /// No description provided for @migrationNoteDirect.
  ///
  /// In en, this message translates to:
  /// **'Direct read'**
  String get migrationNoteDirect;

  /// No description provided for @migrationNoteTranslated.
  ///
  /// In en, this message translates to:
  /// **'Store speaks PRND, the app speaks the AOSP bitmask — translated'**
  String get migrationNoteTranslated;

  /// No description provided for @migrationNoteChargerAc.
  ///
  /// In en, this message translates to:
  /// **'Charger AC input (211 V), not the 395 V pack'**
  String get migrationNoteChargerAc;

  /// No description provided for @migrationNoteEncodingUnknown.
  ///
  /// In en, this message translates to:
  /// **'In the store, raw encoding not deciphered'**
  String get migrationNoteEncodingUnknown;

  /// No description provided for @migrationNoteSynthetic.
  ///
  /// In en, this message translates to:
  /// **'Built by car_service; no address in the store'**
  String get migrationNoteSynthetic;

  /// No description provided for @migrationColumnRaw.
  ///
  /// In en, this message translates to:
  /// **'RAW'**
  String get migrationColumnRaw;

  /// No description provided for @migrationRamAddress.
  ///
  /// In en, this message translates to:
  /// **'RAM {address}'**
  String migrationRamAddress(Object address);

  /// No description provided for @migrationNoteDead.
  ///
  /// In en, this message translates to:
  /// **'No reading in 90,347 recorded frames'**
  String get migrationNoteDead;

  /// No description provided for @migrationStatusMatching.
  ///
  /// In en, this message translates to:
  /// **'MATCH'**
  String get migrationStatusMatching;

  /// No description provided for @migrationStatusDiverging.
  ///
  /// In en, this message translates to:
  /// **'DIVERGES'**
  String get migrationStatusDiverging;

  /// No description provided for @migrationStatusRamOnly.
  ///
  /// In en, this message translates to:
  /// **'RAM ONLY'**
  String get migrationStatusRamOnly;

  /// No description provided for @migrationStatusStoreOnly.
  ///
  /// In en, this message translates to:
  /// **'STORE ONLY'**
  String get migrationStatusStoreOnly;

  /// No description provided for @migrationStatusRejected.
  ///
  /// In en, this message translates to:
  /// **'REJECTED'**
  String get migrationStatusRejected;

  /// No description provided for @migrationStatusWaiting.
  ///
  /// In en, this message translates to:
  /// **'WAITING'**
  String get migrationStatusWaiting;

  /// No description provided for @migrationColumnRam.
  ///
  /// In en, this message translates to:
  /// **'RAM'**
  String get migrationColumnRam;

  /// No description provided for @migrationColumnStore.
  ///
  /// In en, this message translates to:
  /// **'STORE'**
  String get migrationColumnStore;

  /// No description provided for @migrationColumnDiff.
  ///
  /// In en, this message translates to:
  /// **'DIFF'**
  String get migrationColumnDiff;

  /// No description provided for @migrationShadowMode.
  ///
  /// In en, this message translates to:
  /// **'Shadow mode: RAM is read without writing to history.'**
  String get migrationShadowMode;

  /// No description provided for @migrationPublishing.
  ///
  /// In en, this message translates to:
  /// **'Publishing to the store — the migration already happened.'**
  String get migrationPublishing;

  /// No description provided for @migrationBridgeOffline.
  ///
  /// In en, this message translates to:
  /// **'The CAN bridge daemon is not serving.'**
  String get migrationBridgeOffline;

  /// No description provided for @migrationLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not read the bridge status: {error}'**
  String migrationLoadFailed(Object error);

  /// No description provided for @migrationEcarxWarning.
  ///
  /// In en, this message translates to:
  /// **'Store value comes from the ECARX-resolved property: the two sides read different addresses.'**
  String get migrationEcarxWarning;

  /// No description provided for @chargingTitle.
  ///
  /// In en, this message translates to:
  /// **'GEELY TELEMETRY'**
  String get chargingTitle;

  /// No description provided for @chargingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Charging Sessions'**
  String get chargingSubtitle;

  /// No description provided for @chargingDbRows.
  ///
  /// In en, this message translates to:
  /// **'DB ROWS'**
  String get chargingDbRows;

  /// No description provided for @chargingRunWrites.
  ///
  /// In en, this message translates to:
  /// **'RUN WRITES'**
  String get chargingRunWrites;

  /// No description provided for @chargingRefreshTooltip.
  ///
  /// In en, this message translates to:
  /// **'Refresh charging sessions'**
  String get chargingRefreshTooltip;

  /// No description provided for @chargeMergeTitle.
  ///
  /// In en, this message translates to:
  /// **'INTERRUPTED CONTINUOUS SESSIONS'**
  String get chargeMergeTitle;

  /// No description provided for @chargeMergeDescription.
  ///
  /// In en, this message translates to:
  /// **'One or more charging sessions ended with removed_while_charging and look continuous. Review the breakdown before merging.'**
  String get chargeMergeDescription;

  /// No description provided for @chargeMergeSessionsLabel.
  ///
  /// In en, this message translates to:
  /// **'SESSIONS'**
  String get chargeMergeSessionsLabel;

  /// No description provided for @chargeMergeGapLabel.
  ///
  /// In en, this message translates to:
  /// **'GAP'**
  String get chargeMergeGapLabel;

  /// No description provided for @chargeMergeSocLabel.
  ///
  /// In en, this message translates to:
  /// **'SOC'**
  String get chargeMergeSocLabel;

  /// No description provided for @chargeMergeFramesLabel.
  ///
  /// In en, this message translates to:
  /// **'FRAMES'**
  String get chargeMergeFramesLabel;

  /// No description provided for @chargeMergeBreakLabel.
  ///
  /// In en, this message translates to:
  /// **'BREAK'**
  String get chargeMergeBreakLabel;

  /// No description provided for @chargeMergeConfirm.
  ///
  /// In en, this message translates to:
  /// **'MERGE SESSIONS'**
  String get chargeMergeConfirm;

  /// No description provided for @chargeMergeMerging.
  ///
  /// In en, this message translates to:
  /// **'MERGING'**
  String get chargeMergeMerging;

  /// No description provided for @chargeMergeSuccess.
  ///
  /// In en, this message translates to:
  /// **'Charging sessions merged.'**
  String get chargeMergeSuccess;

  /// No description provided for @chargeMergeError.
  ///
  /// In en, this message translates to:
  /// **'Could not merge sessions.'**
  String get chargeMergeError;

  /// No description provided for @chartPackVoltage.
  ///
  /// In en, this message translates to:
  /// **'PACK VOLTAGE'**
  String get chartPackVoltage;

  /// No description provided for @chartVoltageUnit.
  ///
  /// In en, this message translates to:
  /// **'V'**
  String get chartVoltageUnit;

  /// No description provided for @chartWaitingVoltage.
  ///
  /// In en, this message translates to:
  /// **'WAITING FOR LIVE VOLTAGE'**
  String get chartWaitingVoltage;

  /// No description provided for @chartPackCurrent.
  ///
  /// In en, this message translates to:
  /// **'PACK CURRENT'**
  String get chartPackCurrent;

  /// No description provided for @chartCurrentUnit.
  ///
  /// In en, this message translates to:
  /// **'A'**
  String get chartCurrentUnit;

  /// No description provided for @chartWaitingCurrent.
  ///
  /// In en, this message translates to:
  /// **'WAITING FOR LIVE CURRENT'**
  String get chartWaitingCurrent;

  /// No description provided for @chartChargePower.
  ///
  /// In en, this message translates to:
  /// **'CHARGE POWER'**
  String get chartChargePower;

  /// No description provided for @chartPowerUnit.
  ///
  /// In en, this message translates to:
  /// **'kW'**
  String get chartPowerUnit;

  /// No description provided for @chartWaitingPower.
  ///
  /// In en, this message translates to:
  /// **'WAITING FOR LIVE POWER'**
  String get chartWaitingPower;

  /// No description provided for @historySectionTitle.
  ///
  /// In en, this message translates to:
  /// **'CHARGING SESSION HISTORY'**
  String get historySectionTitle;

  /// No description provided for @historyRows.
  ///
  /// In en, this message translates to:
  /// **'ROWS'**
  String get historyRows;

  /// No description provided for @historyHeadersStatus.
  ///
  /// In en, this message translates to:
  /// **'STATUS'**
  String get historyHeadersStatus;

  /// No description provided for @historyHeadersWindow.
  ///
  /// In en, this message translates to:
  /// **'SESSION WINDOW'**
  String get historyHeadersWindow;

  /// No description provided for @historyHeadersPlug.
  ///
  /// In en, this message translates to:
  /// **'PLUG'**
  String get historyHeadersPlug;

  /// No description provided for @historyHeadersSoc.
  ///
  /// In en, this message translates to:
  /// **'SOC START/END'**
  String get historyHeadersSoc;

  /// No description provided for @historyHeadersOdometer.
  ///
  /// In en, this message translates to:
  /// **'ODOMETER'**
  String get historyHeadersOdometer;

  /// No description provided for @historyHeadersPower.
  ///
  /// In en, this message translates to:
  /// **'POWER'**
  String get historyHeadersPower;

  /// No description provided for @historyHeadersEndReason.
  ///
  /// In en, this message translates to:
  /// **'END REASON'**
  String get historyHeadersEndReason;

  /// No description provided for @historyHeadersId.
  ///
  /// In en, this message translates to:
  /// **'ID / UPDATED'**
  String get historyHeadersId;

  /// No description provided for @historySampleBadge.
  ///
  /// In en, this message translates to:
  /// **'SAMPLE DATA'**
  String get historySampleBadge;

  /// No description provided for @detailBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get detailBack;

  /// No description provided for @detailTitle.
  ///
  /// In en, this message translates to:
  /// **'CHARGE DETAIL'**
  String get detailTitle;

  /// No description provided for @detailFrames.
  ///
  /// In en, this message translates to:
  /// **'FRAMES'**
  String get detailFrames;

  /// No description provided for @detailStatus.
  ///
  /// In en, this message translates to:
  /// **'STATUS'**
  String get detailStatus;

  /// No description provided for @detailRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh charge frames'**
  String get detailRefresh;

  /// No description provided for @detailDuration.
  ///
  /// In en, this message translates to:
  /// **'DURATION'**
  String get detailDuration;

  /// No description provided for @detailSocRange.
  ///
  /// In en, this message translates to:
  /// **'SOC RANGE'**
  String get detailSocRange;

  /// No description provided for @detailSocDelta.
  ///
  /// In en, this message translates to:
  /// **'SOC DELTA'**
  String get detailSocDelta;

  /// No description provided for @detailEnergyEst.
  ///
  /// In en, this message translates to:
  /// **'ENERGY EST'**
  String get detailEnergyEst;

  /// No description provided for @detailEnergyUnit.
  ///
  /// In en, this message translates to:
  /// **'kWh'**
  String get detailEnergyUnit;

  /// No description provided for @chargeCostLabel.
  ///
  /// In en, this message translates to:
  /// **'COST'**
  String get chargeCostLabel;

  /// No description provided for @detailAvgPower.
  ///
  /// In en, this message translates to:
  /// **'AVG POWER'**
  String get detailAvgPower;

  /// No description provided for @detailAvgPowerUnit.
  ///
  /// In en, this message translates to:
  /// **'kW'**
  String get detailAvgPowerUnit;

  /// No description provided for @detailPlug.
  ///
  /// In en, this message translates to:
  /// **'PLUG'**
  String get detailPlug;

  /// No description provided for @detailOdometer.
  ///
  /// In en, this message translates to:
  /// **'ODOMETER'**
  String get detailOdometer;

  /// No description provided for @detailEndReason.
  ///
  /// In en, this message translates to:
  /// **'END REASON'**
  String get detailEndReason;

  /// No description provided for @detailAmbientTemp.
  ///
  /// In en, this message translates to:
  /// **'OUTSIDE TEMP'**
  String get detailAmbientTemp;

  /// No description provided for @chartSocTrace.
  ///
  /// In en, this message translates to:
  /// **'SOC TRACE'**
  String get chartSocTrace;

  /// No description provided for @chartSocUnit.
  ///
  /// In en, this message translates to:
  /// **'%'**
  String get chartSocUnit;

  /// No description provided for @chartNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough frames for chart.'**
  String get chartNotEnough;

  /// No description provided for @chargeMapLocation.
  ///
  /// In en, this message translates to:
  /// **'Charging Location'**
  String get chargeMapLocation;

  /// No description provided for @chargeMapNoGps.
  ///
  /// In en, this message translates to:
  /// **'No GPS point recorded for this charging session.'**
  String get chargeMapNoGps;

  /// No description provided for @statusCharging.
  ///
  /// In en, this message translates to:
  /// **'CHARGING'**
  String get statusCharging;

  /// No description provided for @statusConnected.
  ///
  /// In en, this message translates to:
  /// **'CONNECTED'**
  String get statusConnected;

  /// No description provided for @statusDisconnected.
  ///
  /// In en, this message translates to:
  /// **'DISCONNECTED'**
  String get statusDisconnected;

  /// No description provided for @statusComplete.
  ///
  /// In en, this message translates to:
  /// **'COMPLETE'**
  String get statusComplete;

  /// No description provided for @endReasonInProgress.
  ///
  /// In en, this message translates to:
  /// **'IN_PROGRESS'**
  String get endReasonInProgress;

  /// No description provided for @endReasonWaitingCharge.
  ///
  /// In en, this message translates to:
  /// **'WAITING_FOR_CHARGE'**
  String get endReasonWaitingCharge;

  /// No description provided for @endReasonPlugDisconnected.
  ///
  /// In en, this message translates to:
  /// **'PLUG_DISCONNECTED'**
  String get endReasonPlugDisconnected;

  /// No description provided for @endReasonWaitingPower.
  ///
  /// In en, this message translates to:
  /// **'WAITING_FOR_POWER'**
  String get endReasonWaitingPower;

  /// No description provided for @endReasonCompleted.
  ///
  /// In en, this message translates to:
  /// **'COMPLETED'**
  String get endReasonCompleted;

  /// No description provided for @liveError.
  ///
  /// In en, this message translates to:
  /// **'LIVE ERROR'**
  String get liveError;

  /// No description provided for @bridgeError.
  ///
  /// In en, this message translates to:
  /// **'BRIDGE_ERROR'**
  String get bridgeError;

  /// No description provided for @noDbRows.
  ///
  /// In en, this message translates to:
  /// **'NO_DB_ROWS_YET / SAMPLE_VIEW'**
  String get noDbRows;

  /// No description provided for @roomChargeSessions.
  ///
  /// In en, this message translates to:
  /// **'ROOM_CHARGE_SESSIONS'**
  String get roomChargeSessions;

  /// No description provided for @historyPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Battery History'**
  String get historyPageTitle;

  /// No description provided for @historyHeaderSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Battery History'**
  String get historyHeaderSubtitle;

  /// No description provided for @historyPageDesc.
  ///
  /// In en, this message translates to:
  /// **'Combined view of trips, charging sessions, and validated battery metrics.'**
  String get historyPageDesc;

  /// No description provided for @historyRangeChip.
  ///
  /// In en, this message translates to:
  /// **'RANGE'**
  String get historyRangeChip;

  /// No description provided for @historySessionsChip.
  ///
  /// In en, this message translates to:
  /// **'SESSIONS'**
  String get historySessionsChip;

  /// No description provided for @historyRefreshTooltip.
  ///
  /// In en, this message translates to:
  /// **'Refresh history'**
  String get historyRefreshTooltip;

  /// No description provided for @rangeToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get rangeToday;

  /// No description provided for @range24h.
  ///
  /// In en, this message translates to:
  /// **'24h'**
  String get range24h;

  /// No description provided for @range7d.
  ///
  /// In en, this message translates to:
  /// **'7d'**
  String get range7d;

  /// No description provided for @range30d.
  ///
  /// In en, this message translates to:
  /// **'30d'**
  String get range30d;

  /// No description provided for @historyTrips.
  ///
  /// In en, this message translates to:
  /// **'TRIPS'**
  String get historyTrips;

  /// No description provided for @historyTripsUnit.
  ///
  /// In en, this message translates to:
  /// **'sessions'**
  String get historyTripsUnit;

  /// No description provided for @historyCharges.
  ///
  /// In en, this message translates to:
  /// **'CHARGES'**
  String get historyCharges;

  /// No description provided for @historyChargesUnit.
  ///
  /// In en, this message translates to:
  /// **'sessions'**
  String get historyChargesUnit;

  /// No description provided for @historyDistance.
  ///
  /// In en, this message translates to:
  /// **'DISTANCE'**
  String get historyDistance;

  /// No description provided for @historyDistanceUnitOdometer.
  ///
  /// In en, this message translates to:
  /// **'km ODOMETER'**
  String get historyDistanceUnitOdometer;

  /// No description provided for @historyDistanceUnitSpeed.
  ///
  /// In en, this message translates to:
  /// **'km SPEED EST'**
  String get historyDistanceUnitSpeed;

  /// No description provided for @historyDistanceUnitMissing.
  ///
  /// In en, this message translates to:
  /// **'km MISSING'**
  String get historyDistanceUnitMissing;

  /// No description provided for @historyChargedEnergy.
  ///
  /// In en, this message translates to:
  /// **'CHARGED ENERGY'**
  String get historyChargedEnergy;

  /// No description provided for @historyEnergyUnit.
  ///
  /// In en, this message translates to:
  /// **'kWh estimate'**
  String get historyEnergyUnit;

  /// No description provided for @historySocDelta.
  ///
  /// In en, this message translates to:
  /// **'SOC DELTA'**
  String get historySocDelta;

  /// No description provided for @historySocDeltaUnit.
  ///
  /// In en, this message translates to:
  /// **'%'**
  String get historySocDeltaUnit;

  /// No description provided for @historyParkedDrain.
  ///
  /// In en, this message translates to:
  /// **'PARKED DRAIN'**
  String get historyParkedDrain;

  /// No description provided for @historyDrainUnit.
  ///
  /// In en, this message translates to:
  /// **'kWh deferred'**
  String get historyDrainUnit;

  /// No description provided for @historyEfficiency.
  ///
  /// In en, this message translates to:
  /// **'EFFICIENCY'**
  String get historyEfficiency;

  /// No description provided for @historyEfficiencyUnit.
  ///
  /// In en, this message translates to:
  /// **'Wh/km'**
  String get historyEfficiencyUnit;

  /// No description provided for @historyRegen.
  ///
  /// In en, this message translates to:
  /// **'REGEN'**
  String get historyRegen;

  /// No description provided for @timelineTitle.
  ///
  /// In en, this message translates to:
  /// **'ACTIVE TIMELINE'**
  String get timelineTitle;

  /// No description provided for @timelineTrip.
  ///
  /// In en, this message translates to:
  /// **'TRIP'**
  String get timelineTrip;

  /// No description provided for @timelineCharge.
  ///
  /// In en, this message translates to:
  /// **'CHARGE'**
  String get timelineCharge;

  /// No description provided for @timelineEmpty.
  ///
  /// In en, this message translates to:
  /// **'No sessions in selected period.'**
  String get timelineEmpty;

  /// No description provided for @timelineParkedFor.
  ///
  /// In en, this message translates to:
  /// **'Parked for {duration}'**
  String timelineParkedFor(Object duration);

  /// No description provided for @timelineTick0000.
  ///
  /// In en, this message translates to:
  /// **'00:00'**
  String get timelineTick0000;

  /// No description provided for @timelineTick0600.
  ///
  /// In en, this message translates to:
  /// **'06:00'**
  String get timelineTick0600;

  /// No description provided for @timelineTick1200.
  ///
  /// In en, this message translates to:
  /// **'12:00'**
  String get timelineTick1200;

  /// No description provided for @timelineTick1800.
  ///
  /// In en, this message translates to:
  /// **'18:00'**
  String get timelineTick1800;

  /// No description provided for @timelineTick2359.
  ///
  /// In en, this message translates to:
  /// **'23:59'**
  String get timelineTick2359;

  /// No description provided for @sessionLogTitle.
  ///
  /// In en, this message translates to:
  /// **'SESSION LOG'**
  String get sessionLogTitle;

  /// No description provided for @sessionLogEmpty.
  ///
  /// In en, this message translates to:
  /// **'No trip or charging sessions yet.'**
  String get sessionLogEmpty;

  /// No description provided for @sessionLogHeaderSession.
  ///
  /// In en, this message translates to:
  /// **'SESSION'**
  String get sessionLogHeaderSession;

  /// No description provided for @sessionLogHeaderStart.
  ///
  /// In en, this message translates to:
  /// **'START'**
  String get sessionLogHeaderStart;

  /// No description provided for @sessionLogHeaderDuration.
  ///
  /// In en, this message translates to:
  /// **'DURATION'**
  String get sessionLogHeaderDuration;

  /// No description provided for @sessionLogHeaderSoc.
  ///
  /// In en, this message translates to:
  /// **'SOC'**
  String get sessionLogHeaderSoc;

  /// No description provided for @sessionLogHeaderEnergy.
  ///
  /// In en, this message translates to:
  /// **'ENERGY / DISTANCE'**
  String get sessionLogHeaderEnergy;

  /// No description provided for @sessionLogHeaderStatus.
  ///
  /// In en, this message translates to:
  /// **'STATUS'**
  String get sessionLogHeaderStatus;

  /// No description provided for @sessionTypeCharging.
  ///
  /// In en, this message translates to:
  /// **'Charging'**
  String get sessionTypeCharging;

  /// No description provided for @sessionTypeTrip.
  ///
  /// In en, this message translates to:
  /// **'Trip'**
  String get sessionTypeTrip;

  /// No description provided for @historyEmptyPanel.
  ///
  /// In en, this message translates to:
  /// **'No history data available yet.'**
  String get historyEmptyPanel;

  /// No description provided for @tripHeaderSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Trip Sessions'**
  String get tripHeaderSubtitle;

  /// No description provided for @tripPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Automatic Trip Detection'**
  String get tripPageTitle;

  /// No description provided for @tripDbRows.
  ///
  /// In en, this message translates to:
  /// **'DB ROWS'**
  String get tripDbRows;

  /// No description provided for @tripRunWrites.
  ///
  /// In en, this message translates to:
  /// **'RUN WRITES'**
  String get tripRunWrites;

  /// No description provided for @tripRefreshTooltip.
  ///
  /// In en, this message translates to:
  /// **'Refresh trip sessions'**
  String get tripRefreshTooltip;

  /// No description provided for @tripHistoryBadge.
  ///
  /// In en, this message translates to:
  /// **'TRIP HISTORY'**
  String get tripHistoryBadge;

  /// No description provided for @tripEmptyLatest.
  ///
  /// In en, this message translates to:
  /// **'Trip rows exist in the database, but the latest-session query returned no rows.'**
  String get tripEmptyLatest;

  /// No description provided for @tripEmptyNone.
  ///
  /// In en, this message translates to:
  /// **'No trip sessions have been detected yet.'**
  String get tripEmptyNone;

  /// No description provided for @bridgeErrorStatus.
  ///
  /// In en, this message translates to:
  /// **'BRIDGE_ERROR'**
  String get bridgeErrorStatus;

  /// No description provided for @roomTripSessions.
  ///
  /// In en, this message translates to:
  /// **'ROOM_TRIP_SESSIONS'**
  String get roomTripSessions;

  /// No description provided for @dbCountMismatch.
  ///
  /// In en, this message translates to:
  /// **'DB_COUNT_LIST_MISMATCH'**
  String get dbCountMismatch;

  /// No description provided for @noTripRows.
  ///
  /// In en, this message translates to:
  /// **'NO_TRIP_ROWS_YET'**
  String get noTripRows;

  /// No description provided for @tripMetricDistance.
  ///
  /// In en, this message translates to:
  /// **'DISTANCE'**
  String get tripMetricDistance;

  /// No description provided for @tripMetricAvgSpeed.
  ///
  /// In en, this message translates to:
  /// **'AVG SPEED'**
  String get tripMetricAvgSpeed;

  /// No description provided for @tripMetricGearStart.
  ///
  /// In en, this message translates to:
  /// **'GEAR START'**
  String get tripMetricGearStart;

  /// No description provided for @tripMetricSocRange.
  ///
  /// In en, this message translates to:
  /// **'SOC RANGE'**
  String get tripMetricSocRange;

  /// No description provided for @tripMetricEndReason.
  ///
  /// In en, this message translates to:
  /// **'END REASON'**
  String get tripMetricEndReason;

  /// No description provided for @tripMetricUpdated.
  ///
  /// In en, this message translates to:
  /// **'UPDATED'**
  String get tripMetricUpdated;

  /// No description provided for @dischargeActive.
  ///
  /// In en, this message translates to:
  /// **'REAL-TIME DISCHARGE'**
  String get dischargeActive;

  /// No description provided for @dischargeEnded.
  ///
  /// In en, this message translates to:
  /// **'TRIP DISCHARGE'**
  String get dischargeEnded;

  /// No description provided for @tripDetailHint.
  ///
  /// In en, this message translates to:
  /// **'Trip detail and per-frame telemetry drilldown will use session-linked frames in a later slice.'**
  String get tripDetailHint;

  /// No description provided for @tripDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'TRIP DETAIL'**
  String get tripDetailTitle;

  /// No description provided for @tripDetailFrames.
  ///
  /// In en, this message translates to:
  /// **'FRAMES'**
  String get tripDetailFrames;

  /// No description provided for @tripDetailRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh trip frames'**
  String get tripDetailRefresh;

  /// No description provided for @tripDetailDuration.
  ///
  /// In en, this message translates to:
  /// **'DURATION'**
  String get tripDetailDuration;

  /// No description provided for @tripDetailOdometerDist.
  ///
  /// In en, this message translates to:
  /// **'ODOMETER DIST'**
  String get tripDetailOdometerDist;

  /// No description provided for @tripDetailSpeedEstDist.
  ///
  /// In en, this message translates to:
  /// **'SPEED EST DIST'**
  String get tripDetailSpeedEstDist;

  /// No description provided for @tripDetailEfficiency.
  ///
  /// In en, this message translates to:
  /// **'EFFICIENCY'**
  String get tripDetailEfficiency;

  /// No description provided for @tripDetailRange.
  ///
  /// In en, this message translates to:
  /// **'RANGE'**
  String get tripDetailRange;

  /// No description provided for @tripDetailNetEnergy.
  ///
  /// In en, this message translates to:
  /// **'NET ENERGY'**
  String get tripDetailNetEnergy;

  /// No description provided for @tripDetailRegen.
  ///
  /// In en, this message translates to:
  /// **'REGEN'**
  String get tripDetailRegen;

  /// No description provided for @tripDetailSummary.
  ///
  /// In en, this message translates to:
  /// **'TRIP SUMMARY'**
  String get tripDetailSummary;

  /// No description provided for @tripDetailEstimatedCost.
  ///
  /// In en, this message translates to:
  /// **'ESTIMATED COST'**
  String get tripDetailEstimatedCost;

  /// No description provided for @tripDetailCostBasedOnLastCharge.
  ///
  /// In en, this message translates to:
  /// **'Based on the {price}/kWh rate from the latest priced charge.'**
  String tripDetailCostBasedOnLastCharge(Object price);

  /// No description provided for @tripDetailCostBasedOnSocAndLastCharge.
  ///
  /// In en, this message translates to:
  /// **'Estimated from the SOC change and the {price}/kWh rate from the latest priced charge.'**
  String tripDetailCostBasedOnSocAndLastCharge(Object price);

  /// No description provided for @tripDetailCostUnavailable.
  ///
  /// In en, this message translates to:
  /// **'No earlier charge has a price per kWh.'**
  String get tripDetailCostUnavailable;

  /// No description provided for @tripDetailEnergyAccounting.
  ///
  /// In en, this message translates to:
  /// **'ENERGY ACCOUNTING'**
  String get tripDetailEnergyAccounting;

  /// No description provided for @tripDetailMeasuredPack.
  ///
  /// In en, this message translates to:
  /// **'NET BATTERY ENERGY'**
  String get tripDetailMeasuredPack;

  /// No description provided for @tripDetailMeasuredPackDescription.
  ///
  /// In en, this message translates to:
  /// **'Total energy drawn from the battery during the trip.'**
  String get tripDetailMeasuredPackDescription;

  /// No description provided for @tripDetailMeasuredTraction.
  ///
  /// In en, this message translates to:
  /// **'VEHICLE MOTION'**
  String get tripDetailMeasuredTraction;

  /// No description provided for @tripDetailMeasuredTractionDescription.
  ///
  /// In en, this message translates to:
  /// **'Energy used to move the vehicle.'**
  String get tripDetailMeasuredTractionDescription;

  /// No description provided for @tripDetailMeasuredRecovered.
  ///
  /// In en, this message translates to:
  /// **'REGENERATIVE RECOVERY'**
  String get tripDetailMeasuredRecovered;

  /// No description provided for @tripDetailMeasuredRecoveredDescription.
  ///
  /// In en, this message translates to:
  /// **'Energy returned during regenerative braking.'**
  String get tripDetailMeasuredRecoveredDescription;

  /// No description provided for @tripDetailMeasuredAuxiliary.
  ///
  /// In en, this message translates to:
  /// **'AUXILIARY SYSTEMS'**
  String get tripDetailMeasuredAuxiliary;

  /// No description provided for @tripDetailMeasuredAuxiliaryDescription.
  ///
  /// In en, this message translates to:
  /// **'Estimated climate, electronics, and 12 V consumption.'**
  String get tripDetailMeasuredAuxiliaryDescription;

  /// No description provided for @tripDetailMeasuredVerified.
  ///
  /// In en, this message translates to:
  /// **'MEASURED'**
  String get tripDetailMeasuredVerified;

  /// No description provided for @tripDetailMeasuredUnavailable.
  ///
  /// In en, this message translates to:
  /// **'No measured energy split is available for this trip.'**
  String get tripDetailMeasuredUnavailable;

  /// No description provided for @tripDetailMeasuredDisagrees.
  ///
  /// In en, this message translates to:
  /// **'Measured energy conflicts with the SOC estimate. Values are hidden.'**
  String get tripDetailMeasuredDisagrees;

  /// No description provided for @tripChartSpeed.
  ///
  /// In en, this message translates to:
  /// **'Speed Trace'**
  String get tripChartSpeed;

  /// No description provided for @tripChartNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough speed frames for chart.'**
  String get tripChartNotEnough;

  /// No description provided for @tripChartPower.
  ///
  /// In en, this message translates to:
  /// **'Measured Power'**
  String get tripChartPower;

  /// No description provided for @tripChartPackPower.
  ///
  /// In en, this message translates to:
  /// **'BATTERY'**
  String get tripChartPackPower;

  /// No description provided for @tripChartDrivePower.
  ///
  /// In en, this message translates to:
  /// **'TRACTION'**
  String get tripChartDrivePower;

  /// No description provided for @tripChartPowerNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough measured power frames for chart.'**
  String get tripChartPowerNotEnough;

  /// No description provided for @tripChartPowerDisagrees.
  ///
  /// In en, this message translates to:
  /// **'Measured power is hidden because it conflicts with the SOC estimate.'**
  String get tripChartPowerDisagrees;

  /// No description provided for @tripChartElevationDistance.
  ///
  /// In en, this message translates to:
  /// **'Elevation Profile by Distance'**
  String get tripChartElevationDistance;

  /// No description provided for @tripChartElevationDistanceNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough GPS altitude points for the distance profile.'**
  String get tripChartElevationDistanceNotEnough;

  /// No description provided for @tripChartAltitude.
  ///
  /// In en, this message translates to:
  /// **'Altitude Trace'**
  String get tripChartAltitude;

  /// No description provided for @tripChartAltitudeNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough altitude frames for chart.'**
  String get tripChartAltitudeNotEnough;

  /// No description provided for @tripChartAmbientTemp.
  ///
  /// In en, this message translates to:
  /// **'Outside Temperature Trace'**
  String get tripChartAmbientTemp;

  /// No description provided for @tripChartAmbientTempNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough temperature frames for chart.'**
  String get tripChartAmbientTempNotEnough;

  /// No description provided for @tripDetailAmbientTemp.
  ///
  /// In en, this message translates to:
  /// **'OUTSIDE TEMP'**
  String get tripDetailAmbientTemp;

  /// No description provided for @tripChartSoc.
  ///
  /// In en, this message translates to:
  /// **'Battery Level Trace'**
  String get tripChartSoc;

  /// No description provided for @tripChartSocNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough battery frames for chart.'**
  String get tripChartSocNotEnough;

  /// No description provided for @tripChartExpandTooltip.
  ///
  /// In en, this message translates to:
  /// **'Expand chart'**
  String get tripChartExpandTooltip;

  /// No description provided for @tripChartPointCount.
  ///
  /// In en, this message translates to:
  /// **'{count} points'**
  String tripChartPointCount(int count);

  /// No description provided for @tripMapRoute.
  ///
  /// In en, this message translates to:
  /// **'Route Map'**
  String get tripMapRoute;

  /// No description provided for @tripMapNoGps.
  ///
  /// In en, this message translates to:
  /// **'No GPS points recorded for this trip.'**
  String get tripMapNoGps;

  /// No description provided for @mapSpeedSlow.
  ///
  /// In en, this message translates to:
  /// **'Slow {speed}'**
  String mapSpeedSlow(Object speed);

  /// No description provided for @mapSpeedFast.
  ///
  /// In en, this message translates to:
  /// **'Fast {speed}'**
  String mapSpeedFast(Object speed);

  /// No description provided for @tripStatusActive.
  ///
  /// In en, this message translates to:
  /// **'ACTIVE'**
  String get tripStatusActive;

  /// No description provided for @tripStatusPendingEnd.
  ///
  /// In en, this message translates to:
  /// **'PENDING END'**
  String get tripStatusPendingEnd;

  /// No description provided for @tripEndReasonInProgress.
  ///
  /// In en, this message translates to:
  /// **'IN_PROGRESS'**
  String get tripEndReasonInProgress;

  /// No description provided for @tripEndReasonWaitingIdle.
  ///
  /// In en, this message translates to:
  /// **'WAITING_FOR_IDLE'**
  String get tripEndReasonWaitingIdle;

  /// No description provided for @mockChargeState.
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get mockChargeState;

  /// No description provided for @mockPlugLabel.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get mockPlugLabel;

  /// No description provided for @mockSourceDetails.
  ///
  /// In en, this message translates to:
  /// **'Web mock telemetry'**
  String get mockSourceDetails;

  /// No description provided for @dayMon.
  ///
  /// In en, this message translates to:
  /// **'MON'**
  String get dayMon;

  /// No description provided for @dayTue.
  ///
  /// In en, this message translates to:
  /// **'TUE'**
  String get dayTue;

  /// No description provided for @dayWed.
  ///
  /// In en, this message translates to:
  /// **'WED'**
  String get dayWed;

  /// No description provided for @dayThu.
  ///
  /// In en, this message translates to:
  /// **'THU'**
  String get dayThu;

  /// No description provided for @dayFri.
  ///
  /// In en, this message translates to:
  /// **'FRI'**
  String get dayFri;

  /// No description provided for @daySat.
  ///
  /// In en, this message translates to:
  /// **'SAT'**
  String get daySat;

  /// No description provided for @daySun.
  ///
  /// In en, this message translates to:
  /// **'SUN'**
  String get daySun;

  /// No description provided for @settingsAppVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version} (build {build})'**
  String settingsAppVersion(Object build, Object version);

  /// No description provided for @settingsAppUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'App updates'**
  String get settingsAppUpdateTitle;

  /// No description provided for @settingsAppUpdateDescription.
  ///
  /// In en, this message translates to:
  /// **'Checks the public Eaglemetry releases and installs a verified APK without erasing telemetry or settings. It also updates the Roadcast service.'**
  String get settingsAppUpdateDescription;

  /// No description provided for @settingsAppUpdateInstalled.
  ///
  /// In en, this message translates to:
  /// **'Installed: {version} (build {build})'**
  String settingsAppUpdateInstalled(Object build, Object version);

  /// No description provided for @settingsAppUpdateNotChecked.
  ///
  /// In en, this message translates to:
  /// **'Updates have not been checked'**
  String get settingsAppUpdateNotChecked;

  /// No description provided for @settingsAppUpdateUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Update status unavailable'**
  String get settingsAppUpdateUnavailable;

  /// No description provided for @settingsAppUpdateChecking.
  ///
  /// In en, this message translates to:
  /// **'CHECKING'**
  String get settingsAppUpdateChecking;

  /// No description provided for @settingsAppUpdateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Version {version} (build {build}) is available'**
  String settingsAppUpdateAvailable(Object build, Object version);

  /// No description provided for @settingsAppUpdateUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Eaglemetry is up to date'**
  String get settingsAppUpdateUpToDate;

  /// No description provided for @settingsAppUpdateIncompatible.
  ///
  /// In en, this message translates to:
  /// **'This update cannot be installed automatically: {reason}'**
  String settingsAppUpdateIncompatible(Object reason);

  /// No description provided for @settingsAppUpdateCheck.
  ///
  /// In en, this message translates to:
  /// **'CHECK'**
  String get settingsAppUpdateCheck;

  /// No description provided for @settingsAppUpdateInstall.
  ///
  /// In en, this message translates to:
  /// **'UPDATE'**
  String get settingsAppUpdateInstall;

  /// No description provided for @settingsAppUpdateInstalling.
  ///
  /// In en, this message translates to:
  /// **'UPDATING'**
  String get settingsAppUpdateInstalling;

  /// No description provided for @settingsAppUpdateScheduled.
  ///
  /// In en, this message translates to:
  /// **'UPDATE VERIFIED. THE APP WILL RESTART AUTOMATICALLY.'**
  String get settingsAppUpdateScheduled;

  /// No description provided for @settingsAppUpdateCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'APP UPDATE CHECK FAILED: {reason}'**
  String settingsAppUpdateCheckFailed(Object reason);

  /// No description provided for @settingsAppUpdateInstallFailed.
  ///
  /// In en, this message translates to:
  /// **'APP UPDATE FAILED: {reason}'**
  String settingsAppUpdateInstallFailed(Object reason);

  /// No description provided for @settingsAppUpdateReleaseNotes.
  ///
  /// In en, this message translates to:
  /// **'What\'s new'**
  String get settingsAppUpdateReleaseNotes;

  /// No description provided for @settingsAppUpdateConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Update to {version}?'**
  String settingsAppUpdateConfirmTitle(Object version);

  /// No description provided for @settingsAppUpdateConfirmDescription.
  ///
  /// In en, this message translates to:
  /// **'The app will download and verify the update. It will update the Roadcast service before it installs the APK. The app will then restart.'**
  String get settingsAppUpdateConfirmDescription;

  /// No description provided for @settingsAppUpdateConfirmCancel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get settingsAppUpdateConfirmCancel;

  /// No description provided for @settingsAppUpdateConfirmInstall.
  ///
  /// In en, this message translates to:
  /// **'INSTALL'**
  String get settingsAppUpdateConfirmInstall;

  /// No description provided for @settingsUpdateAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'UPDATE ERROR'**
  String get settingsUpdateAlertTitle;

  /// No description provided for @settingsUpdateAlertDismiss.
  ///
  /// In en, this message translates to:
  /// **'DISMISS'**
  String get settingsUpdateAlertDismiss;

  /// No description provided for @settingsSectionAbout.
  ///
  /// In en, this message translates to:
  /// **'ABOUT'**
  String get settingsSectionAbout;

  /// No description provided for @settingsAboutDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Developed by {handle}'**
  String settingsAboutDeveloper(Object handle);

  /// No description provided for @settingsAboutTagline.
  ///
  /// In en, this message translates to:
  /// **'Made with love and coffee'**
  String get settingsAboutTagline;

  /// No description provided for @settingsAppShellTitle.
  ///
  /// In en, this message translates to:
  /// **'App interface'**
  String get settingsAppShellTitle;

  /// No description provided for @settingsAppShellDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose which interface opens when the app starts. Your choice is saved.'**
  String get settingsAppShellDescription;

  /// No description provided for @settingsAppShellNew.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get settingsAppShellNew;

  /// No description provided for @settingsAppShellPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get settingsAppShellPrevious;

  /// No description provided for @v2Overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get v2Overview;

  /// No description provided for @v2Context.
  ///
  /// In en, this message translates to:
  /// **'Context'**
  String get v2Context;

  /// No description provided for @v2AppShellTitle.
  ///
  /// In en, this message translates to:
  /// **'Interface'**
  String get v2AppShellTitle;

  /// No description provided for @v2AppShellDescription.
  ///
  /// In en, this message translates to:
  /// **'You are on the new interface, which the app opens by default. Trips and Settings have not migrated yet, so the previous interface still owns them. Switching back is saved and applies to the next launch too.'**
  String get v2AppShellDescription;

  /// No description provided for @v2AppShellAction.
  ///
  /// In en, this message translates to:
  /// **'Use the previous interface'**
  String get v2AppShellAction;

  /// No description provided for @v2CarplayBetaOn.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get v2CarplayBetaOn;

  /// No description provided for @v2CarplayBetaOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get v2CarplayBetaOff;

  /// No description provided for @v2MigrationPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Ready for feature migration'**
  String get v2MigrationPlaceholder;

  /// No description provided for @v2SettingsClose.
  ///
  /// In en, this message translates to:
  /// **'Close settings'**
  String get v2SettingsClose;

  /// No description provided for @v2SettingsSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get v2SettingsSearch;

  /// No description provided for @v2SettingsSearchEmpty.
  ///
  /// In en, this message translates to:
  /// **'No category has this name.'**
  String get v2SettingsSearchEmpty;

  /// No description provided for @v2HistoryTrips.
  ///
  /// In en, this message translates to:
  /// **'Trips'**
  String get v2HistoryTrips;

  /// No description provided for @v2HistoryCharges.
  ///
  /// In en, this message translates to:
  /// **'Charging'**
  String get v2HistoryCharges;

  /// No description provided for @v2HistoryExpand.
  ///
  /// In en, this message translates to:
  /// **'Expand the session detail'**
  String get v2HistoryExpand;

  /// No description provided for @v2HistoryCollapse.
  ///
  /// In en, this message translates to:
  /// **'Collapse the session detail'**
  String get v2HistoryCollapse;

  /// No description provided for @v2HistoryExpandHint.
  ///
  /// In en, this message translates to:
  /// **'Select a session to open it.'**
  String get v2HistoryExpandHint;

  /// No description provided for @v2HistoryCollapseHint.
  ///
  /// In en, this message translates to:
  /// **'Drag down to close'**
  String get v2HistoryCollapseHint;

  /// No description provided for @v2HistorySelectPrompt.
  ///
  /// In en, this message translates to:
  /// **'Select a session to see its detail.'**
  String get v2HistorySelectPrompt;

  /// No description provided for @v2HistoryFactsTitle.
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get v2HistoryFactsTitle;

  /// No description provided for @v2HistoryChartEmpty.
  ///
  /// In en, this message translates to:
  /// **'This session has no chart data.'**
  String get v2HistoryChartEmpty;

  /// No description provided for @v2TimeNotSynced.
  ///
  /// In en, this message translates to:
  /// **'Time not synced yet. Bars show measured energy.'**
  String get v2TimeNotSynced;

  /// No description provided for @energyAxisRelativeMinutes.
  ///
  /// In en, this message translates to:
  /// **'+{minutes} min'**
  String energyAxisRelativeMinutes(int minutes);

  /// No description provided for @v2HistoryStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get v2HistoryStart;

  /// No description provided for @v2HistoryEnd.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get v2HistoryEnd;

  /// No description provided for @v2HistoryDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get v2HistoryDuration;

  /// No description provided for @v2HistoryDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get v2HistoryDistance;

  /// No description provided for @v2HistorySoc.
  ///
  /// In en, this message translates to:
  /// **'SOC'**
  String get v2HistorySoc;

  /// No description provided for @v2HistoryTemperature.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get v2HistoryTemperature;

  /// No description provided for @v2HistoryAltitude.
  ///
  /// In en, this message translates to:
  /// **'Climb'**
  String get v2HistoryAltitude;

  /// No description provided for @insightNameStart.
  ///
  /// In en, this message translates to:
  /// **'Name start'**
  String get insightNameStart;

  /// No description provided for @insightNameEnd.
  ///
  /// In en, this message translates to:
  /// **'Name end'**
  String get insightNameEnd;

  /// No description provided for @insightPlaceTitle.
  ///
  /// In en, this message translates to:
  /// **'Name this place'**
  String get insightPlaceTitle;

  /// No description provided for @insightPlaceHint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get insightPlaceHint;

  /// No description provided for @insightPlaceSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get insightPlaceSave;

  /// No description provided for @insightPlaceCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get insightPlaceCancel;

  /// No description provided for @insightRouteTrips.
  ///
  /// In en, this message translates to:
  /// **'{count} trips'**
  String insightRouteTrips(int count);

  /// No description provided for @insightRouteVariants.
  ///
  /// In en, this message translates to:
  /// **'{count} ways'**
  String insightRouteVariants(int count);

  /// No description provided for @insightVariantNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough compared trips of this route yet ({count}).'**
  String insightVariantNotEnough(int count);

  /// No description provided for @insightVariantNotDistinguishable.
  ///
  /// In en, this message translates to:
  /// **'These two ways to {place} cannot yet be told apart ({count} compared).'**
  String insightVariantNotDistinguishable(String place, int count);

  /// No description provided for @insightVariantUsedLess.
  ///
  /// In en, this message translates to:
  /// **'This way used {difference} Wh/km less than the other way to {place} ({count} compared).'**
  String insightVariantUsedLess(String difference, String place, int count);

  /// No description provided for @insightVariantUsedMore.
  ///
  /// In en, this message translates to:
  /// **'This way used {difference} Wh/km more than the other way to {place} ({count} compared).'**
  String insightVariantUsedMore(String difference, String place, int count);

  /// No description provided for @v2HistoryConsumed.
  ///
  /// In en, this message translates to:
  /// **'Consumed'**
  String get v2HistoryConsumed;

  /// No description provided for @v2HistoryRegen.
  ///
  /// In en, this message translates to:
  /// **'Regenerated'**
  String get v2HistoryRegen;

  /// No description provided for @v2HistoryEfficiency.
  ///
  /// In en, this message translates to:
  /// **'Efficiency'**
  String get v2HistoryEfficiency;

  /// No description provided for @v2HistoryEnergyAdded.
  ///
  /// In en, this message translates to:
  /// **'Energy added'**
  String get v2HistoryEnergyAdded;

  /// No description provided for @v2HistoryAvgPower.
  ///
  /// In en, this message translates to:
  /// **'Avg power'**
  String get v2HistoryAvgPower;

  /// No description provided for @v2HistoryPeakPower.
  ///
  /// In en, this message translates to:
  /// **'Peak power'**
  String get v2HistoryPeakPower;

  /// No description provided for @v2HistoryPlug.
  ///
  /// In en, this message translates to:
  /// **'Plug'**
  String get v2HistoryPlug;

  /// No description provided for @v2HistoryCost.
  ///
  /// In en, this message translates to:
  /// **'Est. cost'**
  String get v2HistoryCost;

  /// No description provided for @v2HistoryMapExpand.
  ///
  /// In en, this message translates to:
  /// **'Enlarge the map'**
  String get v2HistoryMapExpand;

  /// No description provided for @v2HistoryMapCollapse.
  ///
  /// In en, this message translates to:
  /// **'Shrink the map'**
  String get v2HistoryMapCollapse;

  /// No description provided for @v2HistoryEmpty.
  ///
  /// In en, this message translates to:
  /// **'The car has recorded no session yet.'**
  String get v2HistoryEmpty;

  /// No description provided for @v2HistoryBattery.
  ///
  /// In en, this message translates to:
  /// **'Battery'**
  String get v2HistoryBattery;

  /// No description provided for @v2CycleOrdinal.
  ///
  /// In en, this message translates to:
  /// **'#{ordinal}'**
  String v2CycleOrdinal(int ordinal);

  /// No description provided for @v2CycleSemantics.
  ///
  /// In en, this message translates to:
  /// **'Battery {ordinal}, {percent} percent used'**
  String v2CycleSemantics(int ordinal, String percent);

  /// No description provided for @v2CycleOpen.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get v2CycleOpen;

  /// No description provided for @v2CyclePartial.
  ///
  /// In en, this message translates to:
  /// **'Partial'**
  String get v2CyclePartial;

  /// No description provided for @v2CycleFrozen.
  ///
  /// In en, this message translates to:
  /// **'Final'**
  String get v2CycleFrozen;

  /// No description provided for @v2CycleNoCapacity.
  ///
  /// In en, this message translates to:
  /// **'Capacity unknown'**
  String get v2CycleNoCapacity;

  /// No description provided for @v2CycleMixedCurrency.
  ///
  /// In en, this message translates to:
  /// **'Two currencies'**
  String get v2CycleMixedCurrency;

  /// No description provided for @v2CyclePartlyPriced.
  ///
  /// In en, this message translates to:
  /// **'{percent}% priced'**
  String v2CyclePartlyPriced(String percent);

  /// No description provided for @v2CycleDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get v2CycleDistance;

  /// No description provided for @v2CycleEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get v2CycleEnergy;

  /// No description provided for @v2CycleEfficiency.
  ///
  /// In en, this message translates to:
  /// **'Efficiency'**
  String get v2CycleEfficiency;

  /// No description provided for @v2CycleEfficiencyUnitAction.
  ///
  /// In en, this message translates to:
  /// **'Change efficiency unit'**
  String get v2CycleEfficiencyUnitAction;

  /// No description provided for @v2CycleCost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get v2CycleCost;

  /// No description provided for @v2CycleCostPerKwh.
  ///
  /// In en, this message translates to:
  /// **'Per kWh'**
  String get v2CycleCostPerKwh;

  /// No description provided for @v2CycleCapacity.
  ///
  /// In en, this message translates to:
  /// **'Usable'**
  String get v2CycleCapacity;

  /// No description provided for @v2CycleEmpty.
  ///
  /// In en, this message translates to:
  /// **'The car has not used a whole battery yet.'**
  String get v2CycleEmpty;

  /// No description provided for @v2CycleSelectPrompt.
  ///
  /// In en, this message translates to:
  /// **'Select a battery to see what it ran.'**
  String get v2CycleSelectPrompt;

  /// No description provided for @v2CycleTimelineTitle.
  ///
  /// In en, this message translates to:
  /// **'What this battery ran'**
  String get v2CycleTimelineTitle;

  /// No description provided for @v2CycleTimelineEmpty.
  ///
  /// In en, this message translates to:
  /// **'The sessions of this battery were deleted.'**
  String get v2CycleTimelineEmpty;

  /// No description provided for @v2CycleTimelineDrive.
  ///
  /// In en, this message translates to:
  /// **'Drive'**
  String get v2CycleTimelineDrive;

  /// No description provided for @v2CycleTimelineCharge.
  ///
  /// In en, this message translates to:
  /// **'Charge'**
  String get v2CycleTimelineCharge;

  /// No description provided for @v2CycleTimelineParked.
  ///
  /// In en, this message translates to:
  /// **'Parked'**
  String get v2CycleTimelineParked;

  /// No description provided for @v2CycleTimelineDeleted.
  ///
  /// In en, this message translates to:
  /// **'Session deleted'**
  String get v2CycleTimelineDeleted;

  /// No description provided for @v2CycleTimelineShare.
  ///
  /// In en, this message translates to:
  /// **'{percent}% of this battery'**
  String v2CycleTimelineShare(String percent);

  /// No description provided for @v2CycleTimelineSessions.
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get v2CycleTimelineSessions;

  /// No description provided for @v2SettingsDisplays.
  ///
  /// In en, this message translates to:
  /// **'Displays'**
  String get v2SettingsDisplays;

  /// No description provided for @v2SettingsCharge.
  ///
  /// In en, this message translates to:
  /// **'Charging'**
  String get v2SettingsCharge;

  /// No description provided for @settingsChargeDisclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'Disclaimer'**
  String get settingsChargeDisclaimerTitle;

  /// No description provided for @settingsChargeDisclaimerDesc.
  ///
  /// In en, this message translates to:
  /// **'Use of this feature is at your own risk. External charge control interacts directly with vehicle charging and actively controls vehicle functions.'**
  String get settingsChargeDisclaimerDesc;

  /// No description provided for @v2ChargeLimitLevel.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get v2ChargeLimitLevel;

  /// No description provided for @v2ChargeLimitGraph.
  ///
  /// In en, this message translates to:
  /// **'Graph'**
  String get v2ChargeLimitGraph;

  /// No description provided for @v2ChargeLimitCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get v2ChargeLimitCustom;

  /// No description provided for @v2ChargeLimitDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get v2ChargeLimitDaily;

  /// No description provided for @v2ChargeLimitExtended.
  ///
  /// In en, this message translates to:
  /// **'Extended'**
  String get v2ChargeLimitExtended;

  /// No description provided for @v2ChargeLimitMax.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get v2ChargeLimitMax;

  /// No description provided for @v2ChargeLimitProjection.
  ///
  /// In en, this message translates to:
  /// **'EST · {range} {unit} projected'**
  String v2ChargeLimitProjection(String range, String unit);

  /// No description provided for @v2ChargeLimitSemantics.
  ///
  /// In en, this message translates to:
  /// **'Charge limit'**
  String get v2ChargeLimitSemantics;

  /// No description provided for @v2ChargeLimitSemanticsValue.
  ///
  /// In en, this message translates to:
  /// **'{percent} percent'**
  String v2ChargeLimitSemanticsValue(int percent);

  /// No description provided for @v2ChargeLimitInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Which charge limit should I pick?'**
  String get v2ChargeLimitInfoTitle;

  /// No description provided for @v2ChargeLimitInfoDaily.
  ///
  /// In en, this message translates to:
  /// **'For daily driving and shorter charging times.'**
  String get v2ChargeLimitInfoDaily;

  /// No description provided for @v2ChargeLimitInfoExtended.
  ///
  /// In en, this message translates to:
  /// **'Travel an extended distance on one charge.'**
  String get v2ChargeLimitInfoExtended;

  /// No description provided for @v2ChargeLimitInfoMax.
  ///
  /// In en, this message translates to:
  /// **'For maximum range and longer charging times.'**
  String get v2ChargeLimitInfoMax;

  /// No description provided for @v2ChargeLimitInfoTooltip.
  ///
  /// In en, this message translates to:
  /// **'About charge limits'**
  String get v2ChargeLimitInfoTooltip;

  /// No description provided for @v2ChargeLimitInfoClose.
  ///
  /// In en, this message translates to:
  /// **'Close charge limit information'**
  String get v2ChargeLimitInfoClose;

  /// No description provided for @helpersChargeLimitValue.
  ///
  /// In en, this message translates to:
  /// **'{percent}%'**
  String helpersChargeLimitValue(int percent);

  /// No description provided for @v2SettingsData.
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get v2SettingsData;

  /// No description provided for @v2SettingsDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get v2SettingsDeveloper;

  /// No description provided for @v2SettingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get v2SettingsAppearance;

  /// No description provided for @v2SettingsImmersive.
  ///
  /// In en, this message translates to:
  /// **'Full screen'**
  String get v2SettingsImmersive;

  /// No description provided for @v2SettingsImmersiveDesc.
  ///
  /// In en, this message translates to:
  /// **'Hides the system bars of the head unit. Turn it off to show the status bar and the navigation bar. The screens are made for full screen, thus some layouts can look wrong when it is off.'**
  String get v2SettingsImmersiveDesc;

  /// No description provided for @v2SettingsHideStatusBar.
  ///
  /// In en, this message translates to:
  /// **'Hide the status bar'**
  String get v2SettingsHideStatusBar;

  /// No description provided for @v2SettingsHideStatusBarDesc.
  ///
  /// In en, this message translates to:
  /// **'Keeps the status bar hidden while full screen is off. The navigation bar stays, because it is how you leave the app.'**
  String get v2SettingsHideStatusBarDesc;

  /// No description provided for @v2SettingsClimateBar.
  ///
  /// In en, this message translates to:
  /// **'Climate bar'**
  String get v2SettingsClimateBar;

  /// No description provided for @v2SettingsClimateBarDesc.
  ///
  /// In en, this message translates to:
  /// **'Shows a temperature strip along the bottom edge, on every screen. It stays there when a card opens full screen. It is not connected to the vehicle yet, so the values are a preview.'**
  String get v2SettingsClimateBarDesc;

  /// No description provided for @climateBarDriverDecrease.
  ///
  /// In en, this message translates to:
  /// **'Decrease driver temperature'**
  String get climateBarDriverDecrease;

  /// No description provided for @climateBarDriverIncrease.
  ///
  /// In en, this message translates to:
  /// **'Increase driver temperature'**
  String get climateBarDriverIncrease;

  /// No description provided for @climateBarPassengerDecrease.
  ///
  /// In en, this message translates to:
  /// **'Decrease passenger temperature'**
  String get climateBarPassengerDecrease;

  /// No description provided for @climateBarPassengerIncrease.
  ///
  /// In en, this message translates to:
  /// **'Increase passenger temperature'**
  String get climateBarPassengerIncrease;

  /// No description provided for @nowPlayingIdle.
  ///
  /// In en, this message translates to:
  /// **'Nothing playing'**
  String get nowPlayingIdle;

  /// No description provided for @v2SettingsOperation.
  ///
  /// In en, this message translates to:
  /// **'Operation'**
  String get v2SettingsOperation;

  /// No description provided for @v2SettingsRetention.
  ///
  /// In en, this message translates to:
  /// **'Retention'**
  String get v2SettingsRetention;

  /// No description provided for @v2SettingsDeveloperMode.
  ///
  /// In en, this message translates to:
  /// **'Developer mode'**
  String get v2SettingsDeveloperMode;

  /// No description provided for @v2SettingsDeveloperModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Shows the engineering screens: Roadcast Trace and Signal Lab.'**
  String get v2SettingsDeveloperModeDesc;

  /// No description provided for @v2SettingsRetentionDone.
  ///
  /// In en, this message translates to:
  /// **'Retention complete: {frames} frames removed, raw data kept for {days} days.'**
  String v2SettingsRetentionDone(int frames, int days);

  /// No description provided for @v2SettingsSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get v2SettingsSystem;

  /// No description provided for @v2SettingsDanger.
  ///
  /// In en, this message translates to:
  /// **'Erase'**
  String get v2SettingsDanger;

  /// No description provided for @v2SettingsEngineering.
  ///
  /// In en, this message translates to:
  /// **'Engineering screens'**
  String get v2SettingsEngineering;

  /// No description provided for @v2SettingsResendHistory.
  ///
  /// In en, this message translates to:
  /// **'Resend history to the cloud'**
  String get v2SettingsResendHistory;

  /// No description provided for @v2SettingsResendHistoryDesc.
  ///
  /// In en, this message translates to:
  /// **'Marks all trips and charges on this car for upload again. Use it after you delete the cloud data for a test. Upload starts on the next sync.'**
  String get v2SettingsResendHistoryDesc;

  /// No description provided for @v2SettingsResendHistoryAction.
  ///
  /// In en, this message translates to:
  /// **'MARK FOR UPLOAD'**
  String get v2SettingsResendHistoryAction;

  /// No description provided for @v2SettingsResendHistoryDone.
  ///
  /// In en, this message translates to:
  /// **'{count} records marked. They upload on the next sync.'**
  String v2SettingsResendHistoryDone(int count);

  /// No description provided for @v2SettingsResendHistoryFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not mark the history: {error}'**
  String v2SettingsResendHistoryFailed(String error);

  /// No description provided for @v2SettingsExperience.
  ///
  /// In en, this message translates to:
  /// **'Experiments'**
  String get v2SettingsExperience;

  /// No description provided for @v2SettingsNotMigrated.
  ///
  /// In en, this message translates to:
  /// **'Not available yet'**
  String get v2SettingsNotMigrated;

  /// No description provided for @v2SettingsTraceDesc.
  ///
  /// In en, this message translates to:
  /// **'Reads the negotiated CAN schema and the live value of each signal.'**
  String get v2SettingsTraceDesc;

  /// No description provided for @v2SettingsAutoStartFailed.
  ///
  /// In en, this message translates to:
  /// **'Auto-start update failed: {error}'**
  String v2SettingsAutoStartFailed(String error);

  /// No description provided for @v2SettingsEventFileFailed.
  ///
  /// In en, this message translates to:
  /// **'Event log update failed: {error}'**
  String v2SettingsEventFileFailed(String error);

  /// No description provided for @v2SettingsWipeDone.
  ///
  /// In en, this message translates to:
  /// **'Erased: {trips} trips, {charges} charges, {frames} frames.'**
  String v2SettingsWipeDone(int trips, int charges, int frames);

  /// No description provided for @v2SettingsWipeFailed.
  ///
  /// In en, this message translates to:
  /// **'Erase failed: {error}'**
  String v2SettingsWipeFailed(String error);

  /// No description provided for @v2CarplayTitle.
  ///
  /// In en, this message translates to:
  /// **'CarPlay'**
  String get v2CarplayTitle;

  /// No description provided for @v2AndroidAutoTitle.
  ///
  /// In en, this message translates to:
  /// **'Android Auto'**
  String get v2AndroidAutoTitle;

  /// No description provided for @v2CarplayStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get v2CarplayStatusTitle;

  /// No description provided for @v2AndroidAutoStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get v2AndroidAutoStatusTitle;

  /// No description provided for @v2CarplayUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This head unit does not expose the CarPlay service.'**
  String get v2CarplayUnavailable;

  /// No description provided for @v2AndroidAutoUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This head unit does not expose the Android Auto service.'**
  String get v2AndroidAutoUnavailable;

  /// No description provided for @v2CarplayConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting to the CarPlay renderer…'**
  String get v2CarplayConnecting;

  /// No description provided for @v2AndroidAutoConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting to the Android Auto renderer…'**
  String get v2AndroidAutoConnecting;

  /// No description provided for @v2CarplayBlackScreenHint.
  ///
  /// In en, this message translates to:
  /// **'If the picture stays black, no CarPlay session is active. Connect your iPhone and the video starts on its own.'**
  String get v2CarplayBlackScreenHint;

  /// No description provided for @v2AndroidAutoBlackScreenHint.
  ///
  /// In en, this message translates to:
  /// **'If the picture stays black, no Android Auto session is active. Connect your Android phone and the video starts on its own.'**
  String get v2AndroidAutoBlackScreenHint;

  /// No description provided for @v2ProjectionTouchTitle.
  ///
  /// In en, this message translates to:
  /// **'Touch calibration'**
  String get v2ProjectionTouchTitle;

  /// No description provided for @v2ProjectionTouchHelp.
  ///
  /// In en, this message translates to:
  /// **'Touch the projected screen and nudge until the touch lands where you look. The value is saved.'**
  String get v2ProjectionTouchHelp;

  /// No description provided for @v2ProjectionTouchStepFine.
  ///
  /// In en, this message translates to:
  /// **'Fine'**
  String get v2ProjectionTouchStepFine;

  /// No description provided for @v2ProjectionTouchStepCoarse.
  ///
  /// In en, this message translates to:
  /// **'Coarse'**
  String get v2ProjectionTouchStepCoarse;

  /// No description provided for @v2ProjectionTouchOffsetY.
  ///
  /// In en, this message translates to:
  /// **'Vertical shift'**
  String get v2ProjectionTouchOffsetY;

  /// No description provided for @v2ProjectionTouchScaleY.
  ///
  /// In en, this message translates to:
  /// **'Vertical scale'**
  String get v2ProjectionTouchScaleY;

  /// No description provided for @v2ProjectionTouchOffsetX.
  ///
  /// In en, this message translates to:
  /// **'Horizontal shift'**
  String get v2ProjectionTouchOffsetX;

  /// No description provided for @v2ProjectionTouchScaleX.
  ///
  /// In en, this message translates to:
  /// **'Horizontal scale'**
  String get v2ProjectionTouchScaleX;

  /// No description provided for @v2ProjectionTouchReset.
  ///
  /// In en, this message translates to:
  /// **'Reset calibration'**
  String get v2ProjectionTouchReset;

  /// No description provided for @v2CarplayDragHandle.
  ///
  /// In en, this message translates to:
  /// **'Drag to resize the CarPlay card'**
  String get v2CarplayDragHandle;

  /// No description provided for @v2AndroidAutoDragHandle.
  ///
  /// In en, this message translates to:
  /// **'Drag to resize the Android Auto card'**
  String get v2AndroidAutoDragHandle;

  /// No description provided for @v2CarplayReattach.
  ///
  /// In en, this message translates to:
  /// **'Reconnect'**
  String get v2CarplayReattach;

  /// No description provided for @v2AndroidAutoReattach.
  ///
  /// In en, this message translates to:
  /// **'Reconnect'**
  String get v2AndroidAutoReattach;

  /// No description provided for @v2CarplayBuffer.
  ///
  /// In en, this message translates to:
  /// **'Buffer'**
  String get v2CarplayBuffer;

  /// No description provided for @v2AndroidAutoBuffer.
  ///
  /// In en, this message translates to:
  /// **'Buffer'**
  String get v2AndroidAutoBuffer;

  /// No description provided for @v2CarplayStateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Service found'**
  String get v2CarplayStateAvailable;

  /// No description provided for @v2AndroidAutoStateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Service found'**
  String get v2AndroidAutoStateAvailable;

  /// No description provided for @v2CarplayStateBound.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get v2CarplayStateBound;

  /// No description provided for @v2AndroidAutoStateBound.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get v2AndroidAutoStateBound;

  /// No description provided for @v2CarplayStateAttached.
  ///
  /// In en, this message translates to:
  /// **'Rendering'**
  String get v2CarplayStateAttached;

  /// No description provided for @v2AndroidAutoStateAttached.
  ///
  /// In en, this message translates to:
  /// **'Rendering'**
  String get v2AndroidAutoStateAttached;

  /// No description provided for @v2CarplayErrorUnreachable.
  ///
  /// In en, this message translates to:
  /// **'The CarPlay service could not be reached.'**
  String get v2CarplayErrorUnreachable;

  /// No description provided for @v2AndroidAutoErrorUnreachable.
  ///
  /// In en, this message translates to:
  /// **'The Android Auto service could not be reached.'**
  String get v2AndroidAutoErrorUnreachable;

  /// No description provided for @v2CarplayErrorRenderer.
  ///
  /// In en, this message translates to:
  /// **'The CarPlay renderer refused the request.'**
  String get v2CarplayErrorRenderer;

  /// No description provided for @v2AndroidAutoErrorRenderer.
  ///
  /// In en, this message translates to:
  /// **'The Android Auto renderer refused the request.'**
  String get v2AndroidAutoErrorRenderer;

  /// No description provided for @v2CarplayErrorBuffer.
  ///
  /// In en, this message translates to:
  /// **'The render buffer size is invalid.'**
  String get v2CarplayErrorBuffer;

  /// No description provided for @v2AndroidAutoErrorBuffer.
  ///
  /// In en, this message translates to:
  /// **'The render buffer size is invalid.'**
  String get v2AndroidAutoErrorBuffer;

  /// No description provided for @v2CarplayErrorGeneric.
  ///
  /// In en, this message translates to:
  /// **'CarPlay reported an error.'**
  String get v2CarplayErrorGeneric;

  /// No description provided for @v2AndroidAutoErrorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Android Auto reported an error.'**
  String get v2AndroidAutoErrorGeneric;

  /// No description provided for @v2CarplayExpand.
  ///
  /// In en, this message translates to:
  /// **'Expand CarPlay to fill the screen'**
  String get v2CarplayExpand;

  /// No description provided for @v2AndroidAutoExpand.
  ///
  /// In en, this message translates to:
  /// **'Expand Android Auto to fill the screen'**
  String get v2AndroidAutoExpand;

  /// No description provided for @v2CarplayCollapse.
  ///
  /// In en, this message translates to:
  /// **'Collapse CarPlay'**
  String get v2CarplayCollapse;

  /// No description provided for @v2AndroidAutoCollapse.
  ///
  /// In en, this message translates to:
  /// **'Collapse Android Auto'**
  String get v2AndroidAutoCollapse;

  /// No description provided for @v2ChargingEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get v2ChargingEnergy;

  /// No description provided for @v2ChargingAmperageTitle.
  ///
  /// In en, this message translates to:
  /// **'Charging amperage'**
  String get v2ChargingAmperageTitle;

  /// No description provided for @v2ChargingAmperageDescription.
  ///
  /// In en, this message translates to:
  /// **'Reduce the current when you use a shared or unfamiliar circuit.'**
  String get v2ChargingAmperageDescription;

  /// No description provided for @v2ChargingAmperageRange.
  ///
  /// In en, this message translates to:
  /// **'Vehicle range {min}–{max} A'**
  String v2ChargingAmperageRange(int min, int max);

  /// No description provided for @v2ChargingCommandFailed.
  ///
  /// In en, this message translates to:
  /// **'The car did not accept the charge command.'**
  String get v2ChargingCommandFailed;

  /// No description provided for @v2ChargingAmperageUnit.
  ///
  /// In en, this message translates to:
  /// **'A'**
  String get v2ChargingAmperageUnit;

  /// No description provided for @v2ChargingAmperageValue.
  ///
  /// In en, this message translates to:
  /// **'{amps} A'**
  String v2ChargingAmperageValue(int amps);

  /// No description provided for @v2ChargingAmperageDecrease.
  ///
  /// In en, this message translates to:
  /// **'Decrease charging amperage'**
  String get v2ChargingAmperageDecrease;

  /// No description provided for @v2ChargingAmperageIncrease.
  ///
  /// In en, this message translates to:
  /// **'Increase charging amperage'**
  String get v2ChargingAmperageIncrease;

  /// No description provided for @v2ChargingAmperageClose.
  ///
  /// In en, this message translates to:
  /// **'Close charging amperage control'**
  String get v2ChargingAmperageClose;

  /// No description provided for @v2ChargingStopButton.
  ///
  /// In en, this message translates to:
  /// **'Stop Charging'**
  String get v2ChargingStopButton;

  /// No description provided for @v2ChargingForceButton.
  ///
  /// In en, this message translates to:
  /// **'Force Charging'**
  String get v2ChargingForceButton;

  /// No description provided for @v2ChargingForceActive.
  ///
  /// In en, this message translates to:
  /// **'Force Charging Active'**
  String get v2ChargingForceActive;

  /// No description provided for @v2RangeVehicleRange.
  ///
  /// In en, this message translates to:
  /// **'Vehicle range'**
  String get v2RangeVehicleRange;

  /// No description provided for @v2RangeEstimateCaption.
  ///
  /// In en, this message translates to:
  /// **'Estimate from closed trips'**
  String get v2RangeEstimateCaption;

  /// No description provided for @v2RangeEstimateDelayed.
  ///
  /// In en, this message translates to:
  /// **'Estimate delayed · history update pending'**
  String get v2RangeEstimateDelayed;

  /// No description provided for @v2RangeEstimateReadDelayed.
  ///
  /// In en, this message translates to:
  /// **'Estimate delayed · range read failed'**
  String get v2RangeEstimateReadDelayed;

  /// No description provided for @v2RangeEstimateUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Estimate unavailable'**
  String get v2RangeEstimateUnavailable;

  /// No description provided for @v2RangeEstimateReadFailed.
  ///
  /// In en, this message translates to:
  /// **'Estimate unavailable · read failed'**
  String get v2RangeEstimateReadFailed;

  /// No description provided for @v2ChargeGraphLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'The charge session did not load.'**
  String get v2ChargeGraphLoadFailed;

  /// No description provided for @v2ChargeGraphEmpty.
  ///
  /// In en, this message translates to:
  /// **'No charge session is available.'**
  String get v2ChargeGraphEmpty;

  /// No description provided for @v2ChargeGraphNoData.
  ///
  /// In en, this message translates to:
  /// **'This charge session has no chart data.'**
  String get v2ChargeGraphNoData;

  /// No description provided for @v2ChargeGraphPowerTick.
  ///
  /// In en, this message translates to:
  /// **'{power}'**
  String v2ChargeGraphPowerTick(int power);

  /// No description provided for @v2ChargeGraphSemantics.
  ///
  /// In en, this message translates to:
  /// **'Charge session SOC and power over time'**
  String get v2ChargeGraphSemantics;

  /// No description provided for @v2ChargeGraphRangeGainedEstimate.
  ///
  /// In en, this message translates to:
  /// **'Range gained · EST'**
  String get v2ChargeGraphRangeGainedEstimate;

  /// No description provided for @v2ChargeGraphEnergyAdded.
  ///
  /// In en, this message translates to:
  /// **'Energy added'**
  String get v2ChargeGraphEnergyAdded;

  /// No description provided for @v2ChargeGraphCostEstimate.
  ///
  /// In en, this message translates to:
  /// **'Cost · EST'**
  String get v2ChargeGraphCostEstimate;

  /// No description provided for @v2ChargeGraphDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get v2ChargeGraphDuration;

  /// No description provided for @v2ChargeGraphTargetReached.
  ///
  /// In en, this message translates to:
  /// **'Limit reached'**
  String get v2ChargeGraphTargetReached;

  /// No description provided for @v2ChargeGraphDurationMinutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String v2ChargeGraphDurationMinutes(int minutes);

  /// No description provided for @v2ChargeGraphDurationHoursMinutes.
  ///
  /// In en, this message translates to:
  /// **'{hours} hr {minutes} min'**
  String v2ChargeGraphDurationHoursMinutes(int hours, int minutes);

  /// No description provided for @v2LastChargeSession.
  ///
  /// In en, this message translates to:
  /// **'Last charge session'**
  String get v2LastChargeSession;

  /// No description provided for @v2ChargeSummaryNoEnergy.
  ///
  /// In en, this message translates to:
  /// **'This charge session has no measured energy.'**
  String get v2ChargeSummaryNoEnergy;

  /// No description provided for @v2ChargeClimateWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'Climate is using your charge'**
  String get v2ChargeClimateWarningTitle;

  /// No description provided for @v2ChargeClimateWarningHigh.
  ///
  /// In en, this message translates to:
  /// **'The climate system draws {climate} kW of the {charging} kW coming in. The battery gains much less than the charger shows.'**
  String v2ChargeClimateWarningHigh(String climate, String charging);

  /// No description provided for @v2ChargeClimateWarningOutweighs.
  ///
  /// In en, this message translates to:
  /// **'The climate system draws {climate} kW, as much as the charger delivers. The battery is gaining almost nothing.'**
  String v2ChargeClimateWarningOutweighs(String climate);

  /// No description provided for @v2ChargeSummaryBatteryEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy delivered to the battery'**
  String get v2ChargeSummaryBatteryEnergy;

  /// No description provided for @v2ChargeSummaryClimateEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy used by the climate system during charging'**
  String get v2ChargeSummaryClimateEnergy;

  /// No description provided for @v2ChargeSummarySemantics.
  ///
  /// In en, this message translates to:
  /// **'Charge-session energy split between the battery and the climate system'**
  String get v2ChargeSummarySemantics;

  /// No description provided for @actionSave.
  ///
  /// In en, this message translates to:
  /// **'SAVE'**
  String get actionSave;

  /// No description provided for @actionClear.
  ///
  /// In en, this message translates to:
  /// **'CLEAR'**
  String get actionClear;

  /// No description provided for @settingsChargeCostTitle.
  ///
  /// In en, this message translates to:
  /// **'Default charge price'**
  String get settingsChargeCostTitle;

  /// No description provided for @settingsChargeCostDesc.
  ///
  /// In en, this message translates to:
  /// **'Rate per kWh used to estimate charging cost. Type the value on the keypad.'**
  String get settingsChargeCostDesc;

  /// No description provided for @settingsChargeCostSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved: {value}'**
  String settingsChargeCostSaved(Object value);

  /// No description provided for @settingsChargeCostNotSaved.
  ///
  /// In en, this message translates to:
  /// **'No default price saved'**
  String get settingsChargeCostNotSaved;

  /// No description provided for @settingsChargeCostEdit.
  ///
  /// In en, this message translates to:
  /// **'Set price'**
  String get settingsChargeCostEdit;

  /// No description provided for @v2MoneyKeypadSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get v2MoneyKeypadSave;

  /// No description provided for @v2MoneyKeypadClear.
  ///
  /// In en, this message translates to:
  /// **'Clear the amount'**
  String get v2MoneyKeypadClear;

  /// No description provided for @v2MoneyKeypadDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete the last digit'**
  String get v2MoneyKeypadDelete;

  /// No description provided for @v2MoneyKeypadClose.
  ///
  /// In en, this message translates to:
  /// **'Close the price keypad'**
  String get v2MoneyKeypadClose;

  /// No description provided for @v2ChargeCostTitle.
  ///
  /// In en, this message translates to:
  /// **'Charge price'**
  String get v2ChargeCostTitle;

  /// No description provided for @v2ChargeCostDescription.
  ///
  /// In en, this message translates to:
  /// **'Applies to this charge only. Type a price per kWh, or the total you paid.'**
  String get v2ChargeCostDescription;

  /// No description provided for @v2ChargeCostFieldRate.
  ///
  /// In en, this message translates to:
  /// **'Price/kWh'**
  String get v2ChargeCostFieldRate;

  /// No description provided for @v2ChargeCostFieldTotal.
  ///
  /// In en, this message translates to:
  /// **'Total paid'**
  String get v2ChargeCostFieldTotal;

  /// No description provided for @v2ChargeCostUnitRate.
  ///
  /// In en, this message translates to:
  /// **'/kWh'**
  String get v2ChargeCostUnitRate;

  /// No description provided for @v2ChargeCostEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit the price of this charge'**
  String get v2ChargeCostEdit;

  /// No description provided for @v2ChargeCostFailed.
  ///
  /// In en, this message translates to:
  /// **'The charge price was not saved'**
  String get v2ChargeCostFailed;

  /// No description provided for @settingsRoadcastTitle.
  ///
  /// In en, this message translates to:
  /// **'Roadcast'**
  String get settingsRoadcastTitle;

  /// No description provided for @settingsRoadcastUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Daemon status unavailable'**
  String get settingsRoadcastUnavailable;

  /// No description provided for @settingsRoadcastRunning.
  ///
  /// In en, this message translates to:
  /// **'{signalCount} signals, {frameCount} frames @ {hz} Hz'**
  String settingsRoadcastRunning(
    Object frameCount,
    Object hz,
    Object signalCount,
  );

  /// No description provided for @settingsRoadcastStopped.
  ///
  /// In en, this message translates to:
  /// **'Daemon is not serving'**
  String get settingsRoadcastStopped;

  /// No description provided for @settingsRoadcastInstalled.
  ///
  /// In en, this message translates to:
  /// **'Installed: {commit}'**
  String settingsRoadcastInstalled(Object commit);

  /// No description provided for @settingsRoadcastNotChecked.
  ///
  /// In en, this message translates to:
  /// **'Edge updates have not been checked'**
  String get settingsRoadcastNotChecked;

  /// No description provided for @settingsRoadcastUpdateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Edge update available: {commit}'**
  String settingsRoadcastUpdateAvailable(Object commit);

  /// No description provided for @settingsRoadcastUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Roadcast edge is up to date'**
  String get settingsRoadcastUpToDate;

  /// No description provided for @settingsRoadcastIncompatible.
  ///
  /// In en, this message translates to:
  /// **'Incompatible update: {reason}'**
  String settingsRoadcastIncompatible(Object reason);

  /// No description provided for @settingsRoadcastCheck.
  ///
  /// In en, this message translates to:
  /// **'CHECK'**
  String get settingsRoadcastCheck;

  /// No description provided for @settingsRoadcastChecking.
  ///
  /// In en, this message translates to:
  /// **'CHECKING'**
  String get settingsRoadcastChecking;

  /// No description provided for @settingsRoadcastUpdate.
  ///
  /// In en, this message translates to:
  /// **'UPDATE'**
  String get settingsRoadcastUpdate;

  /// No description provided for @settingsRoadcastUpdating.
  ///
  /// In en, this message translates to:
  /// **'UPDATING'**
  String get settingsRoadcastUpdating;

  /// No description provided for @settingsRoadcastRestart.
  ///
  /// In en, this message translates to:
  /// **'RESTART'**
  String get settingsRoadcastRestart;

  /// No description provided for @settingsRoadcastRestarting.
  ///
  /// In en, this message translates to:
  /// **'RESTARTING'**
  String get settingsRoadcastRestarting;

  /// No description provided for @settingsRoadcastRestartSuccess.
  ///
  /// In en, this message translates to:
  /// **'ROADCAST DAEMON RESTARTED'**
  String get settingsRoadcastRestartSuccess;

  /// No description provided for @settingsRoadcastRestartFailed.
  ///
  /// In en, this message translates to:
  /// **'ROADCAST RESTART FAILED: {reason}'**
  String settingsRoadcastRestartFailed(Object reason);

  /// No description provided for @settingsRoadcastCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'ROADCAST UPDATE CHECK FAILED: {reason}'**
  String settingsRoadcastCheckFailed(Object reason);

  /// No description provided for @settingsRoadcastUpdateSuccess.
  ///
  /// In en, this message translates to:
  /// **'ROADCAST UPDATED TO {commit}'**
  String settingsRoadcastUpdateSuccess(Object commit);

  /// No description provided for @settingsRoadcastUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'ROADCAST UPDATE FAILED: {reason}'**
  String settingsRoadcastUpdateFailed(Object reason);

  /// No description provided for @chargeCostDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'CHARGE COST'**
  String get chargeCostDialogTitle;

  /// No description provided for @chargeCostPerKwhLabel.
  ///
  /// In en, this message translates to:
  /// **'PRICE PER kWh'**
  String get chargeCostPerKwhLabel;

  /// No description provided for @chargeCostPerKwhHint.
  ///
  /// In en, this message translates to:
  /// **'Set to zero to leave blank — used when the paid amount is empty.'**
  String get chargeCostPerKwhHint;

  /// No description provided for @chargeCostPaidLabel.
  ///
  /// In en, this message translates to:
  /// **'PAID AMOUNT'**
  String get chargeCostPaidLabel;

  /// No description provided for @chargeCostPaidHint.
  ///
  /// In en, this message translates to:
  /// **'Takes priority over the price per kWh.'**
  String get chargeCostPaidHint;

  /// No description provided for @settingsSensorLab.
  ///
  /// In en, this message translates to:
  /// **'Motion sensor lab'**
  String get settingsSensorLab;

  /// No description provided for @settingsSensorLabDesc.
  ///
  /// In en, this message translates to:
  /// **'Watch the car\'s tilt and feel bumps live while driving.'**
  String get settingsSensorLabDesc;

  /// No description provided for @settingsSensorLabOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get settingsSensorLabOpen;

  /// No description provided for @sensorLabTitle.
  ///
  /// In en, this message translates to:
  /// **'Sensor lab'**
  String get sensorLabTitle;

  /// No description provided for @sensorLabCalibrate.
  ///
  /// In en, this message translates to:
  /// **'Zero here'**
  String get sensorLabCalibrate;

  /// No description provided for @sensorLabReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get sensorLabReset;

  /// No description provided for @sensorLabUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Motion sensors unavailable'**
  String get sensorLabUnavailable;

  /// No description provided for @sensorLabWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting for sensors…'**
  String get sensorLabWaiting;

  /// No description provided for @sensorLabLevel.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get sensorLabLevel;

  /// No description provided for @sensorLabPitch.
  ///
  /// In en, this message translates to:
  /// **'Pitch'**
  String get sensorLabPitch;

  /// No description provided for @sensorLabRoll.
  ///
  /// In en, this message translates to:
  /// **'Roll'**
  String get sensorLabRoll;

  /// No description provided for @sensorLabForces.
  ///
  /// In en, this message translates to:
  /// **'Forces'**
  String get sensorLabForces;

  /// No description provided for @sensorLabVertical.
  ///
  /// In en, this message translates to:
  /// **'Vertical (bumps)'**
  String get sensorLabVertical;

  /// No description provided for @sensorLabHorizontal.
  ///
  /// In en, this message translates to:
  /// **'Braking / cornering'**
  String get sensorLabHorizontal;

  /// No description provided for @sensorLabPeak.
  ///
  /// In en, this message translates to:
  /// **'peak'**
  String get sensorLabPeak;

  /// No description provided for @sensorLabRoadTrace.
  ///
  /// In en, this message translates to:
  /// **'Road trace (vertical)'**
  String get sensorLabRoadTrace;

  /// No description provided for @sensorLabBumps.
  ///
  /// In en, this message translates to:
  /// **'Bumps'**
  String get sensorLabBumps;

  /// No description provided for @sensorLabSessionPeak.
  ///
  /// In en, this message translates to:
  /// **'Peak jolt'**
  String get sensorLabSessionPeak;

  /// No description provided for @sensorLabRate.
  ///
  /// In en, this message translates to:
  /// **'Sample rate'**
  String get sensorLabRate;

  /// No description provided for @canLiveMute.
  ///
  /// In en, this message translates to:
  /// **'Mute'**
  String get canLiveMute;

  /// No description provided for @canLiveUnmute.
  ///
  /// In en, this message translates to:
  /// **'Unmute'**
  String get canLiveUnmute;

  /// No description provided for @canLiveMutedList.
  ///
  /// In en, this message translates to:
  /// **'Muted'**
  String get canLiveMutedList;

  /// No description provided for @canLiveSortRecency.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get canLiveSortRecency;

  /// No description provided for @canLiveSortRate.
  ///
  /// In en, this message translates to:
  /// **'Busiest'**
  String get canLiveSortRate;

  /// No description provided for @canLiveSortName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get canLiveSortName;

  /// No description provided for @canLiveMetricActive.
  ///
  /// In en, this message translates to:
  /// **'Moving now'**
  String get canLiveMetricActive;

  /// No description provided for @canLiveMetricRate.
  ///
  /// In en, this message translates to:
  /// **'Changes/s'**
  String get canLiveMetricRate;

  /// No description provided for @canLiveWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the CAN bridge daemon'**
  String get canLiveWaiting;

  /// No description provided for @canLiveStale.
  ///
  /// In en, this message translates to:
  /// **'Daemon stopped publishing'**
  String get canLiveStale;

  /// No description provided for @canLiveNeverChanged.
  ///
  /// In en, this message translates to:
  /// **'never changed'**
  String get canLiveNeverChanged;

  /// No description provided for @canLiveShowSilent.
  ///
  /// In en, this message translates to:
  /// **'Show silent'**
  String get canLiveShowSilent;

  /// No description provided for @liveTripTitle.
  ///
  /// In en, this message translates to:
  /// **'LIVE TRIP'**
  String get liveTripTitle;

  /// No description provided for @liveTripRowTitle.
  ///
  /// In en, this message translates to:
  /// **'ACTIVE TRIP SESSION'**
  String get liveTripRowTitle;

  /// No description provided for @liveTripOpen.
  ///
  /// In en, this message translates to:
  /// **'OPEN LIVE TRIP'**
  String get liveTripOpen;

  /// No description provided for @tripNoCompletedSessions.
  ///
  /// In en, this message translates to:
  /// **'No completed trips yet.'**
  String get tripNoCompletedSessions;

  /// No description provided for @liveTripStatusLive.
  ///
  /// In en, this message translates to:
  /// **'LIVE'**
  String get liveTripStatusLive;

  /// No description provided for @liveTripSpeed.
  ///
  /// In en, this message translates to:
  /// **'SPEED'**
  String get liveTripSpeed;

  /// No description provided for @liveTripVehicleSpeedUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Vehicle speed stream unavailable'**
  String get liveTripVehicleSpeedUnavailable;

  /// No description provided for @liveTripCanSpeedRaw.
  ///
  /// In en, this message translates to:
  /// **'CAN SPEED CANDIDATE'**
  String get liveTripCanSpeedRaw;

  /// No description provided for @liveTripSoc.
  ///
  /// In en, this message translates to:
  /// **'SOC'**
  String get liveTripSoc;

  /// No description provided for @liveTripSocStart.
  ///
  /// In en, this message translates to:
  /// **'START SOC'**
  String get liveTripSocStart;

  /// No description provided for @liveTripSocChange.
  ///
  /// In en, this message translates to:
  /// **'SOC CHANGE'**
  String get liveTripSocChange;

  /// No description provided for @liveTripSocCurrent.
  ///
  /// In en, this message translates to:
  /// **'CURRENT SOC'**
  String get liveTripSocCurrent;

  /// No description provided for @liveTripDrivePower.
  ///
  /// In en, this message translates to:
  /// **'DRIVE POWER'**
  String get liveTripDrivePower;

  /// No description provided for @liveTripRoadIncline.
  ///
  /// In en, this message translates to:
  /// **'CURRENT ROAD INCLINE'**
  String get liveTripRoadIncline;

  /// No description provided for @inclineReadoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Incline'**
  String get inclineReadoutTitle;

  /// No description provided for @compassReadoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Compass'**
  String get compassReadoutTitle;

  /// No description provided for @compassNorth.
  ///
  /// In en, this message translates to:
  /// **'N'**
  String get compassNorth;

  /// No description provided for @compassNortheast.
  ///
  /// In en, this message translates to:
  /// **'NE'**
  String get compassNortheast;

  /// No description provided for @compassEast.
  ///
  /// In en, this message translates to:
  /// **'E'**
  String get compassEast;

  /// No description provided for @compassSoutheast.
  ///
  /// In en, this message translates to:
  /// **'SE'**
  String get compassSoutheast;

  /// No description provided for @compassSouth.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get compassSouth;

  /// No description provided for @compassSouthwest.
  ///
  /// In en, this message translates to:
  /// **'SW'**
  String get compassSouthwest;

  /// No description provided for @compassWest.
  ///
  /// In en, this message translates to:
  /// **'W'**
  String get compassWest;

  /// No description provided for @compassNorthwest.
  ///
  /// In en, this message translates to:
  /// **'NW'**
  String get compassNorthwest;

  /// No description provided for @compassHeld.
  ///
  /// In en, this message translates to:
  /// **'Stopped. Last direction.'**
  String get compassHeld;

  /// No description provided for @compassNoFix.
  ///
  /// In en, this message translates to:
  /// **'No GPS signal'**
  String get compassNoFix;

  /// No description provided for @compassGpsOff.
  ///
  /// In en, this message translates to:
  /// **'GPS is off'**
  String get compassGpsOff;

  /// No description provided for @compassNoPermission.
  ///
  /// In en, this message translates to:
  /// **'No location permission'**
  String get compassNoPermission;

  /// No description provided for @liveTripEcoCoach.
  ///
  /// In en, this message translates to:
  /// **'ECO COACH'**
  String get liveTripEcoCoach;

  /// No description provided for @liveTripEcoBeta.
  ///
  /// In en, this message translates to:
  /// **'BETA'**
  String get liveTripEcoBeta;

  /// No description provided for @liveTripEcoObserving.
  ///
  /// In en, this message translates to:
  /// **'Gathering driving samples'**
  String get liveTripEcoObserving;

  /// No description provided for @liveTripEcoAcceleration.
  ///
  /// In en, this message translates to:
  /// **'ACC'**
  String get liveTripEcoAcceleration;

  /// No description provided for @liveTripEcoJerk.
  ///
  /// In en, this message translates to:
  /// **'JERK'**
  String get liveTripEcoJerk;

  /// No description provided for @liveTripEcoCycles.
  ///
  /// In en, this message translates to:
  /// **'ACC→BRAKE'**
  String get liveTripEcoCycles;

  /// No description provided for @liveTripEcoReasonStopped.
  ///
  /// In en, this message translates to:
  /// **'Stopped — score paused'**
  String get liveTripEcoReasonStopped;

  /// No description provided for @liveTripEcoReasonEfficient.
  ///
  /// In en, this message translates to:
  /// **'Smooth, moderate demand'**
  String get liveTripEcoReasonEfficient;

  /// No description provided for @liveTripEcoReasonDemand.
  ///
  /// In en, this message translates to:
  /// **'High traction demand'**
  String get liveTripEcoReasonDemand;

  /// No description provided for @liveTripEcoReasonAcceleration.
  ///
  /// In en, this message translates to:
  /// **'Abrupt acceleration'**
  String get liveTripEcoReasonAcceleration;

  /// No description provided for @liveTripEcoReasonJerk.
  ///
  /// In en, this message translates to:
  /// **'Abrupt change in acceleration'**
  String get liveTripEcoReasonJerk;

  /// No description provided for @liveTripEcoReasonCoasting.
  ///
  /// In en, this message translates to:
  /// **'Coasting without pedal or brake'**
  String get liveTripEcoReasonCoasting;

  /// No description provided for @liveTripEcoReasonRegen.
  ///
  /// In en, this message translates to:
  /// **'Regenerating energy'**
  String get liveTripEcoReasonRegen;

  /// No description provided for @liveTripEcoReasonCycle.
  ///
  /// In en, this message translates to:
  /// **'Acceleration followed soon by braking'**
  String get liveTripEcoReasonCycle;

  /// No description provided for @liveTripAverageConsumption.
  ///
  /// In en, this message translates to:
  /// **'VCU AVG CONSUMPTION'**
  String get liveTripAverageConsumption;

  /// No description provided for @liveTripAverageConsumption1.
  ///
  /// In en, this message translates to:
  /// **'VCU AVG CONSUMPTION 1'**
  String get liveTripAverageConsumption1;

  /// No description provided for @liveTripTotalOdometerCandidate.
  ///
  /// In en, this message translates to:
  /// **'ODOMETER CANDIDATE'**
  String get liveTripTotalOdometerCandidate;

  /// No description provided for @liveTripPedal.
  ///
  /// In en, this message translates to:
  /// **'ACCEL PEDAL'**
  String get liveTripPedal;

  /// No description provided for @liveTripBrake.
  ///
  /// In en, this message translates to:
  /// **'BRAKE'**
  String get liveTripBrake;

  /// No description provided for @liveTripBrakeOn.
  ///
  /// In en, this message translates to:
  /// **'PRESSED'**
  String get liveTripBrakeOn;

  /// No description provided for @liveTripBrakeOff.
  ///
  /// In en, this message translates to:
  /// **'RELEASED'**
  String get liveTripBrakeOff;

  /// No description provided for @liveTripRegenTorque.
  ///
  /// In en, this message translates to:
  /// **'REGEN TORQUE'**
  String get liveTripRegenTorque;

  /// No description provided for @liveTripRegenLevel.
  ///
  /// In en, this message translates to:
  /// **'REGEN LEVEL'**
  String get liveTripRegenLevel;

  /// No description provided for @liveTripPackPower.
  ///
  /// In en, this message translates to:
  /// **'PACK V x I'**
  String get liveTripPackPower;

  /// No description provided for @liveTripVhalPower.
  ///
  /// In en, this message translates to:
  /// **'VHAL POWER'**
  String get liveTripVhalPower;

  /// No description provided for @liveTripGear.
  ///
  /// In en, this message translates to:
  /// **'GEAR'**
  String get liveTripGear;

  /// No description provided for @liveTripAltitude.
  ///
  /// In en, this message translates to:
  /// **'ALTITUDE'**
  String get liveTripAltitude;

  /// No description provided for @liveTripGps.
  ///
  /// In en, this message translates to:
  /// **'GPS FIX'**
  String get liveTripGps;

  /// No description provided for @liveTripBus.
  ///
  /// In en, this message translates to:
  /// **'CAN BUS'**
  String get liveTripBus;

  /// No description provided for @liveTripPollAge.
  ///
  /// In en, this message translates to:
  /// **'POLL AGE'**
  String get liveTripPollAge;

  /// No description provided for @liveTripImpliedScale.
  ///
  /// In en, this message translates to:
  /// **'IMPLIED SPEED SCALE'**
  String get liveTripImpliedScale;

  /// No description provided for @liveTripSectionInstant.
  ///
  /// In en, this message translates to:
  /// **'INSTANT SIGNALS'**
  String get liveTripSectionInstant;

  /// No description provided for @liveTripSectionTotals.
  ///
  /// In en, this message translates to:
  /// **'TRIP TOTALS'**
  String get liveTripSectionTotals;

  /// No description provided for @liveTripSourceVhal.
  ///
  /// In en, this message translates to:
  /// **'VHAL'**
  String get liveTripSourceVhal;

  /// No description provided for @liveTripBadgeDerived.
  ///
  /// In en, this message translates to:
  /// **'V x I'**
  String get liveTripBadgeDerived;

  /// No description provided for @liveTripBadgeStale.
  ///
  /// In en, this message translates to:
  /// **'STALE'**
  String get liveTripBadgeStale;

  /// No description provided for @liveTripCanOffline.
  ///
  /// In en, this message translates to:
  /// **'CAN bridge offline: live Roadcast values are unavailable'**
  String get liveTripCanOffline;

  /// No description provided for @liveTripMapTitle.
  ///
  /// In en, this message translates to:
  /// **'Live Route'**
  String get liveTripMapTitle;

  /// No description provided for @liveTripChartPower.
  ///
  /// In en, this message translates to:
  /// **'Drive Power Trace'**
  String get liveTripChartPower;

  /// No description provided for @liveTripChartPowerNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Not enough power samples for chart.'**
  String get liveTripChartPowerNotEnough;

  /// No description provided for @liveTripSourceCan.
  ///
  /// In en, this message translates to:
  /// **'CAN {frameId}'**
  String liveTripSourceCan(Object frameId);

  /// No description provided for @liveTripTotalsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Room, {age} ago'**
  String liveTripTotalsUpdated(Object age);

  /// No description provided for @liveTripWindowMinutes.
  ///
  /// In en, this message translates to:
  /// **'last {minutes} min'**
  String liveTripWindowMinutes(Object minutes);

  /// No description provided for @liveRoadcastWindowSeconds.
  ///
  /// In en, this message translates to:
  /// **'last {seconds} s in RAM'**
  String liveRoadcastWindowSeconds(int seconds);

  /// No description provided for @liveChargeTitle.
  ///
  /// In en, this message translates to:
  /// **'LIVE CHARGE'**
  String get liveChargeTitle;

  /// No description provided for @liveChargeOpen.
  ///
  /// In en, this message translates to:
  /// **'OPEN LIVE SESSION'**
  String get liveChargeOpen;

  /// No description provided for @liveChargeRowTitle.
  ///
  /// In en, this message translates to:
  /// **'ACTIVE SESSION'**
  String get liveChargeRowTitle;

  /// No description provided for @liveChargeSectionPack.
  ///
  /// In en, this message translates to:
  /// **'PACK'**
  String get liveChargeSectionPack;

  /// No description provided for @liveChargeSectionInput.
  ///
  /// In en, this message translates to:
  /// **'CHARGER INPUT'**
  String get liveChargeSectionInput;

  /// No description provided for @liveChargeSectionTotals.
  ///
  /// In en, this message translates to:
  /// **'SESSION TOTALS'**
  String get liveChargeSectionTotals;

  /// No description provided for @liveChargeInputPower.
  ///
  /// In en, this message translates to:
  /// **'INPUT POWER'**
  String get liveChargeInputPower;

  /// No description provided for @liveChargePackCurrent.
  ///
  /// In en, this message translates to:
  /// **'PACK CURRENT'**
  String get liveChargePackCurrent;

  /// No description provided for @liveChargePackPower.
  ///
  /// In en, this message translates to:
  /// **'PACK POWER'**
  String get liveChargePackPower;

  /// No description provided for @liveChargeCurrentRaw.
  ///
  /// In en, this message translates to:
  /// **'BUS COUNT'**
  String get liveChargeCurrentRaw;

  /// No description provided for @liveChargeCurrentScale.
  ///
  /// In en, this message translates to:
  /// **'SCALE'**
  String get liveChargeCurrentScale;

  /// No description provided for @liveChargeCurrentScaleValue.
  ///
  /// In en, this message translates to:
  /// **'0.1 A/bit (confirmed)'**
  String get liveChargeCurrentScaleValue;

  /// No description provided for @liveChargeZeroAssumed.
  ///
  /// In en, this message translates to:
  /// **'ASSUMED ZERO'**
  String get liveChargeZeroAssumed;

  /// No description provided for @liveChargeZeroObserved.
  ///
  /// In en, this message translates to:
  /// **'OBSERVED ZERO'**
  String get liveChargeZeroObserved;

  /// No description provided for @liveChargeZeroSamples.
  ///
  /// In en, this message translates to:
  /// **'{count} samples'**
  String liveChargeZeroSamples(int count);

  /// No description provided for @liveChargeZeroWaiting.
  ///
  /// In en, this message translates to:
  /// **'needs idle time'**
  String get liveChargeZeroWaiting;

  /// No description provided for @liveChargeZeroOffset.
  ///
  /// In en, this message translates to:
  /// **'OFFSET ERROR'**
  String get liveChargeZeroOffset;

  /// No description provided for @liveChargeZeroNote.
  ///
  /// In en, this message translates to:
  /// **'Ampere values use an assumed zero of 5000 counts. The observed zero accumulates while the pack is idle; the gap between them is the error every ampere reading carries.'**
  String get liveChargeZeroNote;

  /// No description provided for @liveChargeObcInputVolts.
  ///
  /// In en, this message translates to:
  /// **'INPUT VOLTAGE'**
  String get liveChargeObcInputVolts;

  /// No description provided for @liveChargeObcInputCurrent.
  ///
  /// In en, this message translates to:
  /// **'INPUT CURRENT'**
  String get liveChargeObcInputCurrent;

  /// No description provided for @liveChargeObcState.
  ///
  /// In en, this message translates to:
  /// **'CHARGER STATE'**
  String get liveChargeObcState;

  /// No description provided for @liveChargeObcEfficiency.
  ///
  /// In en, this message translates to:
  /// **'OBC EFFICIENCY'**
  String get liveChargeObcEfficiency;

  /// No description provided for @liveChargeChartPower.
  ///
  /// In en, this message translates to:
  /// **'Input Power'**
  String get liveChargeChartPower;

  /// No description provided for @liveChargeChartCurrent.
  ///
  /// In en, this message translates to:
  /// **'Pack Current (est.)'**
  String get liveChargeChartCurrent;

  /// No description provided for @liveChargeChartSoc.
  ///
  /// In en, this message translates to:
  /// **'State of Charge'**
  String get liveChargeChartSoc;

  /// No description provided for @liveChargeChartNotEnough.
  ///
  /// In en, this message translates to:
  /// **'Waiting for bus samples.'**
  String get liveChargeChartNotEnough;

  /// No description provided for @liveChargeEnergyAdded.
  ///
  /// In en, this message translates to:
  /// **'ENERGY ADDED'**
  String get liveChargeEnergyAdded;

  /// No description provided for @liveChargeEta.
  ///
  /// In en, this message translates to:
  /// **'TIME TO FULL'**
  String get liveChargeEta;

  /// No description provided for @liveChargeEtaTarget.
  ///
  /// In en, this message translates to:
  /// **'TIME TO {percent}%'**
  String liveChargeEtaTarget(int percent);

  /// No description provided for @liveChargeBadgeEstimate.
  ///
  /// In en, this message translates to:
  /// **'EST'**
  String get liveChargeBadgeEstimate;

  /// No description provided for @liveChargeCanOffline.
  ///
  /// In en, this message translates to:
  /// **'CAN bridge offline: pack current and voltage are unavailable'**
  String get liveChargeCanOffline;

  /// No description provided for @liveChargeNoLiveSession.
  ///
  /// In en, this message translates to:
  /// **'No charge session is open.'**
  String get liveChargeNoLiveSession;

  /// No description provided for @chargeDetailCost.
  ///
  /// In en, this message translates to:
  /// **'COST'**
  String get chargeDetailCost;

  /// No description provided for @chargeDetailEditCost.
  ///
  /// In en, this message translates to:
  /// **'EDIT COST'**
  String get chargeDetailEditCost;

  /// No description provided for @chargeDetailCostPerKwh.
  ///
  /// In en, this message translates to:
  /// **'PER kWh'**
  String get chargeDetailCostPerKwh;

  /// No description provided for @chargeDetailSectionOverview.
  ///
  /// In en, this message translates to:
  /// **'OVERVIEW'**
  String get chargeDetailSectionOverview;

  /// No description provided for @chargeDetailSectionEnergy.
  ///
  /// In en, this message translates to:
  /// **'ENERGY & COST'**
  String get chargeDetailSectionEnergy;

  /// No description provided for @chargeDetailSectionCurves.
  ///
  /// In en, this message translates to:
  /// **'CURVES'**
  String get chargeDetailSectionCurves;

  /// No description provided for @chargeDetailSectionContext.
  ///
  /// In en, this message translates to:
  /// **'CONTEXT'**
  String get chargeDetailSectionContext;

  /// No description provided for @chargeDetailPeakPower.
  ///
  /// In en, this message translates to:
  /// **'PEAK POWER'**
  String get chargeDetailPeakPower;

  /// No description provided for @chargeDetailSocRate.
  ///
  /// In en, this message translates to:
  /// **'SOC RATE'**
  String get chargeDetailSocRate;

  /// No description provided for @chargeDetailEnergyRate.
  ///
  /// In en, this message translates to:
  /// **'ENERGY RATE'**
  String get chargeDetailEnergyRate;

  /// No description provided for @chargeDetailSocPerHour.
  ///
  /// In en, this message translates to:
  /// **'%/h'**
  String get chargeDetailSocPerHour;

  /// No description provided for @chargeDetailSamples.
  ///
  /// In en, this message translates to:
  /// **'{count} pts'**
  String chargeDetailSamples(int count);

  /// No description provided for @chargeDetailNoCost.
  ///
  /// In en, this message translates to:
  /// **'Tap to set a price'**
  String get chargeDetailNoCost;

  /// No description provided for @chargeDetailStartedAt.
  ///
  /// In en, this message translates to:
  /// **'STARTED'**
  String get chargeDetailStartedAt;

  /// No description provided for @chargeDetailEndedAt.
  ///
  /// In en, this message translates to:
  /// **'ENDED'**
  String get chargeDetailEndedAt;

  /// No description provided for @liveChargeLoss.
  ///
  /// In en, this message translates to:
  /// **'{kw} kW lost in the charger'**
  String liveChargeLoss(Object kw);

  /// No description provided for @liveChargeWallPower.
  ///
  /// In en, this message translates to:
  /// **'WALL POWER'**
  String get liveChargeWallPower;

  /// No description provided for @liveChargeMeasured.
  ///
  /// In en, this message translates to:
  /// **'MEAS'**
  String get liveChargeMeasured;

  /// No description provided for @energyMonitorTab.
  ///
  /// In en, this message translates to:
  /// **'Energy monitor'**
  String get energyMonitorTab;

  /// No description provided for @rangeReasonCollectionStopped.
  ///
  /// In en, this message translates to:
  /// **'Collection stopped.'**
  String get rangeReasonCollectionStopped;

  /// No description provided for @rangeReasonWaitingForSignal.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the signal.'**
  String get rangeReasonWaitingForSignal;

  /// No description provided for @rangeReasonSignalError.
  ///
  /// In en, this message translates to:
  /// **'Signal error.'**
  String get rangeReasonSignalError;

  /// No description provided for @rangeReasonUnpublishedSignal.
  ///
  /// In en, this message translates to:
  /// **'The car does not send this value.'**
  String get rangeReasonUnpublishedSignal;

  /// No description provided for @rangeReasonOutOfRange.
  ///
  /// In en, this message translates to:
  /// **'The value is out of range.'**
  String get rangeReasonOutOfRange;

  /// No description provided for @rangeReasonEfficiencyLoading.
  ///
  /// In en, this message translates to:
  /// **'Reading the efficiency.'**
  String get rangeReasonEfficiencyLoading;

  /// No description provided for @rangeReasonNoValidEfficiency.
  ///
  /// In en, this message translates to:
  /// **'No measured efficiency yet.'**
  String get rangeReasonNoValidEfficiency;

  /// No description provided for @rangeReasonEfficiencyStale.
  ///
  /// In en, this message translates to:
  /// **'The efficiency is not up to date.'**
  String get rangeReasonEfficiencyStale;

  /// No description provided for @rangeDropTitle.
  ///
  /// In en, this message translates to:
  /// **'Range drop'**
  String get rangeDropTitle;

  /// No description provided for @rangeDropDistance.
  ///
  /// In en, this message translates to:
  /// **'Drove'**
  String get rangeDropDistance;

  /// No description provided for @rangeDropCarSpent.
  ///
  /// In en, this message translates to:
  /// **'Car spent'**
  String get rangeDropCarSpent;

  /// No description provided for @rangeDropCarGained.
  ///
  /// In en, this message translates to:
  /// **'Car gained'**
  String get rangeDropCarGained;

  /// No description provided for @rangeDropAppSpent.
  ///
  /// In en, this message translates to:
  /// **'App spent'**
  String get rangeDropAppSpent;

  /// No description provided for @rangeDropAppGained.
  ///
  /// In en, this message translates to:
  /// **'App gained'**
  String get rangeDropAppGained;

  /// No description provided for @rangeDropStretch.
  ///
  /// In en, this message translates to:
  /// **'Measured since {time}'**
  String rangeDropStretch(String time);

  /// No description provided for @rangeDropWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a drive.'**
  String get rangeDropWaiting;

  /// No description provided for @rangeDropTooShort.
  ///
  /// In en, this message translates to:
  /// **'The stretch is too short to compare.'**
  String get rangeDropTooShort;

  /// No description provided for @rangeDropFrozen.
  ///
  /// In en, this message translates to:
  /// **'Stretch closed'**
  String get rangeDropFrozen;

  /// No description provided for @energyUseTitle.
  ///
  /// In en, this message translates to:
  /// **'Energy use'**
  String get energyUseTitle;

  /// No description provided for @energyUseAbout.
  ///
  /// In en, this message translates to:
  /// **'About energy use'**
  String get energyUseAbout;

  /// No description provided for @energyWindowCurrentDrive.
  ///
  /// In en, this message translates to:
  /// **'Current drive'**
  String get energyWindowCurrentDrive;

  /// No description provided for @energyWindowSincePowerOn.
  ///
  /// In en, this message translates to:
  /// **'Since power on'**
  String get energyWindowSincePowerOn;

  /// No description provided for @energyWindowLast15Minutes.
  ///
  /// In en, this message translates to:
  /// **'Last 15 minutes'**
  String get energyWindowLast15Minutes;

  /// No description provided for @energyWindowLastHour.
  ///
  /// In en, this message translates to:
  /// **'Last hour'**
  String get energyWindowLastHour;

  /// No description provided for @energyWindowLast8Hours.
  ///
  /// In en, this message translates to:
  /// **'Last 8 hours'**
  String get energyWindowLast8Hours;

  /// No description provided for @energyWindowSelector.
  ///
  /// In en, this message translates to:
  /// **'Choose the stretch of driving to show'**
  String get energyWindowSelector;

  /// No description provided for @energyModeDrive.
  ///
  /// In en, this message translates to:
  /// **'Drive'**
  String get energyModeDrive;

  /// No description provided for @energyModeParked.
  ///
  /// In en, this message translates to:
  /// **'Parked'**
  String get energyModeParked;

  /// No description provided for @energyStateCharge.
  ///
  /// In en, this message translates to:
  /// **'Charging'**
  String get energyStateCharge;

  /// No description provided for @energyStatePoweredOn.
  ///
  /// In en, this message translates to:
  /// **'Powered on'**
  String get energyStatePoweredOn;

  /// No description provided for @energyChartEmpty.
  ///
  /// In en, this message translates to:
  /// **'No driving recorded in this window.'**
  String get energyChartEmpty;

  /// No description provided for @energyChartEmptyParked.
  ///
  /// In en, this message translates to:
  /// **'The car did not stand still in this window.'**
  String get energyChartEmptyParked;

  /// No description provided for @energyChartLoading.
  ///
  /// In en, this message translates to:
  /// **'Reading the drive…'**
  String get energyChartLoading;

  /// No description provided for @energyChartFailed.
  ///
  /// In en, this message translates to:
  /// **'The drive could not be read.'**
  String get energyChartFailed;

  /// No description provided for @energyChartSemantics.
  ///
  /// In en, this message translates to:
  /// **'Energy used per interval'**
  String get energyChartSemantics;

  /// No description provided for @energyBarOpen.
  ///
  /// In en, this message translates to:
  /// **'in progress'**
  String get energyBarOpen;

  /// No description provided for @energyTraction.
  ///
  /// In en, this message translates to:
  /// **'Drivetrain'**
  String get energyTraction;

  /// No description provided for @energyClimate.
  ///
  /// In en, this message translates to:
  /// **'Climate'**
  String get energyClimate;

  /// No description provided for @energyAuxiliary.
  ///
  /// In en, this message translates to:
  /// **'Everything else'**
  String get energyAuxiliary;

  /// No description provided for @energyRegeneration.
  ///
  /// In en, this message translates to:
  /// **'Recovered'**
  String get energyRegeneration;

  /// No description provided for @sessionDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Session details'**
  String get sessionDetailsTitle;

  /// No description provided for @sessionDetailsAbout.
  ///
  /// In en, this message translates to:
  /// **'About this session'**
  String get sessionDetailsAbout;

  /// No description provided for @sessionDetailsInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'What the ring shows'**
  String get sessionDetailsInfoTitle;

  /// No description provided for @sessionDetailsInfoClose.
  ///
  /// In en, this message translates to:
  /// **'Close the session explanation'**
  String get sessionDetailsInfoClose;

  /// No description provided for @sessionDetailsInfoTraction.
  ///
  /// In en, this message translates to:
  /// **'Energy the pack sent to the motor to move the car.'**
  String get sessionDetailsInfoTraction;

  /// No description provided for @sessionDetailsInfoClimate.
  ///
  /// In en, this message translates to:
  /// **'Energy the pack sent to heating and cooling. The car reports this itself.'**
  String get sessionDetailsInfoClimate;

  /// No description provided for @sessionDetailsInfoAuxiliary.
  ///
  /// In en, this message translates to:
  /// **'Everything the pack supplied that traction and climate do not explain: steering, pumps, lamps, electronics. It is what is left after the drivetrain, so it carries the error of both readings. If the car does not report climate power, the climate load is inside this figure.'**
  String get sessionDetailsInfoAuxiliary;

  /// No description provided for @sessionDetailsInfoRegeneration.
  ///
  /// In en, this message translates to:
  /// **'Energy the motor returned while slowing down. Measured against what was drawn, not a slice of it — which is why it is the inner arc.'**
  String get sessionDetailsInfoRegeneration;

  /// No description provided for @energyStatEfficiency.
  ///
  /// In en, this message translates to:
  /// **'Avg.'**
  String get energyStatEfficiency;

  /// No description provided for @energyStatDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get energyStatDistance;

  /// No description provided for @energyStatSpeed.
  ///
  /// In en, this message translates to:
  /// **'Avg speed'**
  String get energyStatSpeed;

  /// No description provided for @energyStatCost.
  ///
  /// In en, this message translates to:
  /// **'Est. cost'**
  String get energyStatCost;

  /// No description provided for @energyStatParkedDrain.
  ///
  /// In en, this message translates to:
  /// **'Avg. drain'**
  String get energyStatParkedDrain;

  /// No description provided for @energyStatParkedTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get energyStatParkedTotal;

  /// No description provided for @energyStatParkedClimate.
  ///
  /// In en, this message translates to:
  /// **'Climate'**
  String get energyStatParkedClimate;

  /// No description provided for @energyLedgerIn.
  ///
  /// In en, this message translates to:
  /// **'In'**
  String get energyLedgerIn;

  /// No description provided for @energyLedgerOut.
  ///
  /// In en, this message translates to:
  /// **'Out'**
  String get energyLedgerOut;

  /// No description provided for @energyLedgerBalance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get energyLedgerBalance;

  /// No description provided for @energyLedgerSoc.
  ///
  /// In en, this message translates to:
  /// **'SOC'**
  String get energyLedgerSoc;

  /// Shown under the Since-power-on ledger row when In, Out or Balance folds in the reconstructed overnight sleep-gap drain, so the reader knows part of the figure is an estimate, not a reading.
  ///
  /// In en, this message translates to:
  /// **'Includes the sleep estimate.'**
  String get energyLedgerIncludesEstimate;

  /// No description provided for @unitKmPerKwh.
  ///
  /// In en, this message translates to:
  /// **'km/kWh'**
  String get unitKmPerKwh;

  /// No description provided for @unitKwhPer50km.
  ///
  /// In en, this message translates to:
  /// **'kWh/50km'**
  String get unitKwhPer50km;

  /// No description provided for @unitKwhPer100km.
  ///
  /// In en, this message translates to:
  /// **'kWh/100km'**
  String get unitKwhPer100km;

  /// No description provided for @efficiencyAverageWindow.
  ///
  /// In en, this message translates to:
  /// **'Avg. · last 15 min'**
  String get efficiencyAverageWindow;

  /// No description provided for @efficiencyTimeNotSynced.
  ///
  /// In en, this message translates to:
  /// **'Time not synced yet. Line shows measured efficiency.'**
  String get efficiencyTimeNotSynced;

  /// No description provided for @efficiencyLessRange.
  ///
  /// In en, this message translates to:
  /// **'Less range'**
  String get efficiencyLessRange;

  /// Unit label on the efficiency chart's axis. The axis is energy per distance; the large numeral beside it is distance per energy, so the axis must name its own unit.
  ///
  /// In en, this message translates to:
  /// **'Wh/km'**
  String get efficiencyAxisUnit;

  /// Caption naming what the pill beside the efficiency line measures. It is driving technique, not energy efficiency, and the label must not imply otherwise.
  ///
  /// In en, this message translates to:
  /// **'Driving smoothness'**
  String get efficiencySmoothnessLabel;

  /// Caption naming the window the driving-smoothness pill reads over.
  ///
  /// In en, this message translates to:
  /// **'last 30 s'**
  String get efficiencySmoothnessWindow;

  /// No description provided for @efficiencyAbout.
  ///
  /// In en, this message translates to:
  /// **'About this card'**
  String get efficiencyAbout;

  /// No description provided for @efficiencyInfoClose.
  ///
  /// In en, this message translates to:
  /// **'Close the efficiency explanation'**
  String get efficiencyInfoClose;

  /// No description provided for @efficiencyInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'How to read this card'**
  String get efficiencyInfoTitle;

  /// No description provided for @efficiencyInfoLinesLabel.
  ///
  /// In en, this message translates to:
  /// **'The two lines'**
  String get efficiencyInfoLinesLabel;

  /// No description provided for @efficiencyInfoLines.
  ///
  /// In en, this message translates to:
  /// **'The upper line is what the drive costs after regeneration gives energy back. The lower line is what the car takes before that credit. The green area between them is the returned energy.'**
  String get efficiencyInfoLines;

  /// No description provided for @efficiencyInfoScaleLabel.
  ///
  /// In en, this message translates to:
  /// **'The scale'**
  String get efficiencyInfoScaleLabel;

  /// No description provided for @efficiencyInfoScale.
  ///
  /// In en, this message translates to:
  /// **'The scale is Wh/km with zero at the top, so a higher line is better. The upper line is green when the drive is better than the car\'s range estimate. A break is an interval the car did not report.'**
  String get efficiencyInfoScale;

  /// No description provided for @efficiencyInfoAverageLabel.
  ///
  /// In en, this message translates to:
  /// **'The large number, and the car\'s figure'**
  String get efficiencyInfoAverageLabel;

  /// Says what the large numeral on the efficiency card is, and why it disagrees with the consumption figure on the car's own display. The two use different windows: the card uses the last 15 minutes, the car uses the literal last 100 km.
  ///
  /// In en, this message translates to:
  /// **'This is the average of the last 15 minutes: the distance, divided by the energy the battery gave. Touch it to change the unit. The car calculates its own kWh/100 km across the last 100 km, which can be many trips and many days. Thus the two numbers differ, and both are correct.'**
  String get efficiencyInfoAverage;

  /// No description provided for @efficiencyInfoSmoothnessLabel.
  ///
  /// In en, this message translates to:
  /// **'The bar at the side'**
  String get efficiencyInfoSmoothnessLabel;

  /// No description provided for @efficiencyInfoSmoothness.
  ///
  /// In en, this message translates to:
  /// **'The bar shows how smoothly the car is driven, not efficiency. The knob is the last 30 seconds, the small mark the last 5 seconds. A mark above the knob shows smoother driving.'**
  String get efficiencyInfoSmoothness;

  /// No description provided for @signalLabTitle.
  ///
  /// In en, this message translates to:
  /// **'Signal Lab'**
  String get signalLabTitle;

  /// No description provided for @signalLabOpen.
  ///
  /// In en, this message translates to:
  /// **'Open Signal Lab'**
  String get signalLabOpen;

  /// No description provided for @signalLabDescription.
  ///
  /// In en, this message translates to:
  /// **'Engineering view of every CAN signal the daemon decodes.'**
  String get signalLabDescription;

  /// No description provided for @signalLabTabInspector.
  ///
  /// In en, this message translates to:
  /// **'INSPECTOR'**
  String get signalLabTabInspector;

  /// No description provided for @signalLabTabScope.
  ///
  /// In en, this message translates to:
  /// **'SCOPE'**
  String get signalLabTabScope;

  /// No description provided for @signalLabSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Signal name or 0x315'**
  String get signalLabSearchHint;

  /// No description provided for @signalLabTierFresh.
  ///
  /// In en, this message translates to:
  /// **'Fresh'**
  String get signalLabTierFresh;

  /// No description provided for @signalLabTierPublished.
  ///
  /// In en, this message translates to:
  /// **'Published'**
  String get signalLabTierPublished;

  /// No description provided for @signalLabTierNever.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get signalLabTierNever;

  /// No description provided for @signalLabColumnSignal.
  ///
  /// In en, this message translates to:
  /// **'Signal'**
  String get signalLabColumnSignal;

  /// No description provided for @signalLabColumnFrame.
  ///
  /// In en, this message translates to:
  /// **'Frame'**
  String get signalLabColumnFrame;

  /// No description provided for @signalLabColumnRaw.
  ///
  /// In en, this message translates to:
  /// **'Raw'**
  String get signalLabColumnRaw;

  /// No description provided for @signalLabColumnValue.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get signalLabColumnValue;

  /// No description provided for @signalLabColumnUnit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get signalLabColumnUnit;

  /// No description provided for @signalLabColumnAge.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get signalLabColumnAge;

  /// No description provided for @signalLabColumnTier.
  ///
  /// In en, this message translates to:
  /// **'Tier'**
  String get signalLabColumnTier;

  /// No description provided for @signalLabColumnRange.
  ///
  /// In en, this message translates to:
  /// **'Session min/max'**
  String get signalLabColumnRange;

  /// No description provided for @signalLabRawCounts.
  ///
  /// In en, this message translates to:
  /// **'counts'**
  String get signalLabRawCounts;

  /// No description provided for @signalLabUncalibrated.
  ///
  /// In en, this message translates to:
  /// **'EST'**
  String get signalLabUncalibrated;

  /// No description provided for @signalLabUncalibratedHint.
  ///
  /// In en, this message translates to:
  /// **'No negotiated scale. The count is the measurement.'**
  String get signalLabUncalibratedHint;

  /// No description provided for @signalLabInvalid.
  ///
  /// In en, this message translates to:
  /// **'INVALID'**
  String get signalLabInvalid;

  /// No description provided for @signalLabDisconnected.
  ///
  /// In en, this message translates to:
  /// **'Roadcast is not connected. No signal can be read.'**
  String get signalLabDisconnected;

  /// No description provided for @signalLabEmpty.
  ///
  /// In en, this message translates to:
  /// **'No signal matches this filter.'**
  String get signalLabEmpty;

  /// No description provided for @signalLabScopeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Select up to four signals in the inspector to trace them.'**
  String get signalLabScopeEmpty;

  /// No description provided for @signalLabScopeFull.
  ///
  /// In en, this message translates to:
  /// **'The scope holds four traces. Remove one first.'**
  String get signalLabScopeFull;

  /// No description provided for @signalLabFreeze.
  ///
  /// In en, this message translates to:
  /// **'Freeze'**
  String get signalLabFreeze;

  /// No description provided for @signalLabResume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get signalLabResume;

  /// No description provided for @signalLabClearTraces.
  ///
  /// In en, this message translates to:
  /// **'Clear traces'**
  String get signalLabClearTraces;

  /// No description provided for @signalLabResetSession.
  ///
  /// In en, this message translates to:
  /// **'Reset session'**
  String get signalLabResetSession;

  /// No description provided for @signalLabTrace.
  ///
  /// In en, this message translates to:
  /// **'Trace'**
  String get signalLabTrace;

  /// No description provided for @signalLabCounts.
  ///
  /// In en, this message translates to:
  /// **'{fresh} fresh, {published} published, {never} never'**
  String signalLabCounts(int fresh, int published, int never);

  /// No description provided for @v1WelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0 Experience'**
  String get v1WelcomeTitle;

  /// No description provided for @v1WelcomeBody.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Version 1.0! This release introduces a new experience for the app. The new interface will continue receiving updates, improvements, and fixes based on your feedback.\n\nIf you ever wish to return to the previous mode, you can switch back at any time in Settings. The app will remember your preferred experience and always launch in it.'**
  String get v1WelcomeBody;

  /// No description provided for @v1WelcomeConfirm.
  ///
  /// In en, this message translates to:
  /// **'Explore New Experience'**
  String get v1WelcomeConfirm;

  /// No description provided for @v1WelcomeUseLegacy.
  ///
  /// In en, this message translates to:
  /// **'Use Legacy Mode'**
  String get v1WelcomeUseLegacy;

  /// No description provided for @v2ProjectionBetaTitle.
  ///
  /// In en, this message translates to:
  /// **'CarPlay / Android Auto (Beta)'**
  String get v2ProjectionBetaTitle;

  /// No description provided for @v2ProjectionBetaDescription.
  ///
  /// In en, this message translates to:
  /// **'Shows the tab for the phone that is connected and renders the picture in it. If no phone is connected, no tab appears. While off, the head unit\'s projection services are never started. Still in beta: expect rough edges.'**
  String get v2ProjectionBetaDescription;

  /// No description provided for @settingsReplaceOemChargingTitle.
  ///
  /// In en, this message translates to:
  /// **'Replace factory charging screen'**
  String get settingsReplaceOemChargingTitle;

  /// No description provided for @settingsReplaceOemChargingDesc.
  ///
  /// In en, this message translates to:
  /// **'Blocks the automatic factory charging popup, and opens this app on Charging when a charge begins. The factory app still opens from its icon. This app does not take the screen in camping or nap mode.'**
  String get settingsReplaceOemChargingDesc;

  /// No description provided for @settingsExternalChargeControlTitle.
  ///
  /// In en, this message translates to:
  /// **'External Charge Control (Geely Charge Control)'**
  String get settingsExternalChargeControlTitle;

  /// No description provided for @settingsExternalChargeControlDesc.
  ///
  /// In en, this message translates to:
  /// **'Allows controlling charge limits and amperage by delegating actions to the dedicated Geely Charge Control app. By default, Eaglemetry operates purely as a telemetry analyzer.'**
  String get settingsExternalChargeControlDesc;

  /// No description provided for @settingsChargeControlNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'Geely Charge Control is not installed'**
  String get settingsChargeControlNotInstalled;

  /// No description provided for @settingsChargeControlInstalled.
  ///
  /// In en, this message translates to:
  /// **'Geely Charge Control installed (v{version})'**
  String settingsChargeControlInstalled(String version);

  /// No description provided for @settingsChargeControlDownloadAndInstall.
  ///
  /// In en, this message translates to:
  /// **'Download and Install APK'**
  String get settingsChargeControlDownloadAndInstall;

  /// No description provided for @settingsChargeControlOpenApp.
  ///
  /// In en, this message translates to:
  /// **'Open App'**
  String get settingsChargeControlOpenApp;

  /// No description provided for @settingsChargeControlInstalling.
  ///
  /// In en, this message translates to:
  /// **'Installing APK...'**
  String get settingsChargeControlInstalling;

  /// No description provided for @settingsChargeControlDownloadingPercent.
  ///
  /// In en, this message translates to:
  /// **'Downloading... {percent}%'**
  String settingsChargeControlDownloadingPercent(int percent);

  /// No description provided for @settingsChargeControlInstalledSuccess.
  ///
  /// In en, this message translates to:
  /// **'Geely Charge Control installation scheduled/completed.'**
  String get settingsChargeControlInstalledSuccess;

  /// No description provided for @settingsChargeControlLaunchFailed.
  ///
  /// In en, this message translates to:
  /// **'Geely Charge Control did not open.'**
  String get settingsChargeControlLaunchFailed;

  /// No description provided for @settingsPackCapacityTitle.
  ///
  /// In en, this message translates to:
  /// **'Battery capacity'**
  String get settingsPackCapacityTitle;

  /// No description provided for @settingsPackCapacityDesc.
  ///
  /// In en, this message translates to:
  /// **'The usable pack size the app uses for every energy and efficiency figure. The car does not report a usable one, so state it here. Default: 39.60 kWh.'**
  String get settingsPackCapacityDesc;

  /// No description provided for @settingsPackCapacitySaved.
  ///
  /// In en, this message translates to:
  /// **'Battery capacity set to {value}.'**
  String settingsPackCapacitySaved(String value);

  /// No description provided for @settingsChargeCostApplyTitle.
  ///
  /// In en, this message translates to:
  /// **'Price the past charges'**
  String get settingsChargeCostApplyTitle;

  /// No description provided for @settingsChargeCostApplyDesc.
  ///
  /// In en, this message translates to:
  /// **'Writes the default rate on every finished charge that has no price. A charge with a paid amount keeps it.'**
  String get settingsChargeCostApplyDesc;

  /// No description provided for @settingsChargeCostApply.
  ///
  /// In en, this message translates to:
  /// **'Apply to unpriced charges'**
  String get settingsChargeCostApply;

  /// No description provided for @settingsChargeCostApplying.
  ///
  /// In en, this message translates to:
  /// **'Applying...'**
  String get settingsChargeCostApplying;

  /// No description provided for @settingsProposalDecision.
  ///
  /// In en, this message translates to:
  /// **'Answer proposal'**
  String get settingsProposalDecision;

  /// No description provided for @settingsProposalPrompt.
  ///
  /// In en, this message translates to:
  /// **'A phone proposed this value.'**
  String get settingsProposalPrompt;

  /// No description provided for @settingsProposalAccept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get settingsProposalAccept;

  /// No description provided for @settingsProposalRefuse.
  ///
  /// In en, this message translates to:
  /// **'Refuse'**
  String get settingsProposalRefuse;

  /// No description provided for @settingsProposalDeciding.
  ///
  /// In en, this message translates to:
  /// **'Deciding...'**
  String get settingsProposalDeciding;

  /// No description provided for @settingsProposalUnknown.
  ///
  /// In en, this message translates to:
  /// **'Proposal'**
  String get settingsProposalUnknown;

  /// No description provided for @settingsChargeCostApplied.
  ///
  /// In en, this message translates to:
  /// **'{count} charges now carry the default rate.'**
  String settingsChargeCostApplied(int count);

  /// No description provided for @settingsChargeCostApplyNone.
  ///
  /// In en, this message translates to:
  /// **'No charge needed a price.'**
  String get settingsChargeCostApplyNone;

  /// No description provided for @settingsChargeCostApplyNoRate.
  ///
  /// In en, this message translates to:
  /// **'Save a default rate first.'**
  String get settingsChargeCostApplyNoRate;

  /// No description provided for @insightNotEnoughData.
  ///
  /// In en, this message translates to:
  /// **'Not enough measured trips in the last 30 days yet ({count} usable).'**
  String insightNotEnoughData(int count);

  /// No description provided for @insightSubjectUnusable.
  ///
  /// In en, this message translates to:
  /// **'This trip has no measured pack energy to compare.'**
  String get insightSubjectUnusable;

  /// No description provided for @insightNotDistinguishable.
  ///
  /// In en, this message translates to:
  /// **'This trip cannot yet be told apart from your last 30 days ({count} trips).'**
  String insightNotDistinguishable(int count);

  /// No description provided for @insightTripUsedLess.
  ///
  /// In en, this message translates to:
  /// **'This trip used {difference} Wh/km less than your last 30 days ({count} trips).'**
  String insightTripUsedLess(String difference, int count);

  /// No description provided for @insightTripUsedMore.
  ///
  /// In en, this message translates to:
  /// **'This trip used {difference} Wh/km more than your last 30 days ({count} trips).'**
  String insightTripUsedMore(String difference, int count);

  /// No description provided for @navSync.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get navSync;

  /// No description provided for @v2SyncCodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Pairing code'**
  String get v2SyncCodeTitle;

  /// No description provided for @v2SyncNoCode.
  ///
  /// In en, this message translates to:
  /// **'No code is open'**
  String get v2SyncNoCode;

  /// No description provided for @v2SyncRegisteredSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Car registered. Waiting for the phone to link it.'**
  String get v2SyncRegisteredSubtitle;

  /// No description provided for @v2SyncRegisteredBody.
  ///
  /// In en, this message translates to:
  /// **'The car registered itself. Open the Eaglemetry Companion app on your phone and link the car to your account.'**
  String get v2SyncRegisteredBody;

  /// No description provided for @v2SyncRegistered.
  ///
  /// In en, this message translates to:
  /// **'REGISTERED'**
  String get v2SyncRegistered;

  /// No description provided for @v2SyncRevokedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Access revoked. Make a new pairing code.'**
  String get v2SyncRevokedSubtitle;

  /// No description provided for @v2SyncRevokedBody.
  ///
  /// In en, this message translates to:
  /// **'Access to this car was revoked. Generate a new pairing code to link your phone again.'**
  String get v2SyncRevokedBody;

  /// No description provided for @v2SyncRevoked.
  ///
  /// In en, this message translates to:
  /// **'REVOKED'**
  String get v2SyncRevoked;

  /// No description provided for @v2SyncCodeExpired.
  ///
  /// In en, this message translates to:
  /// **'The code expired. Make a new one.'**
  String get v2SyncCodeExpired;

  /// No description provided for @v2SyncCodeCancelled.
  ///
  /// In en, this message translates to:
  /// **'Code cancelled. Make a new one.'**
  String get v2SyncCodeCancelled;

  /// No description provided for @v2SyncCreateCode.
  ///
  /// In en, this message translates to:
  /// **'NEW CODE'**
  String get v2SyncCreateCode;

  /// No description provided for @v2SyncCancelCode.
  ///
  /// In en, this message translates to:
  /// **'CANCEL CODE'**
  String get v2SyncCancelCode;

  /// No description provided for @v2SyncRetry.
  ///
  /// In en, this message translates to:
  /// **'RETRY'**
  String get v2SyncRetry;

  /// No description provided for @v2SyncPaired.
  ///
  /// In en, this message translates to:
  /// **'PAIRED'**
  String get v2SyncPaired;

  /// No description provided for @v2SyncPairedConnected.
  ///
  /// In en, this message translates to:
  /// **'Phone paired. Connected.'**
  String get v2SyncPairedConnected;

  /// No description provided for @v2SyncPairingRejected.
  ///
  /// In en, this message translates to:
  /// **'Phone declined the pairing.'**
  String get v2SyncPairingRejected;

  /// No description provided for @v2SyncPairingInvalid.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get v2SyncPairingInvalid;

  /// No description provided for @v2SyncPairingStartFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start pairing. Try again.'**
  String get v2SyncPairingStartFailed;

  /// No description provided for @v2SyncCheckingConnection.
  ///
  /// In en, this message translates to:
  /// **'Checking connection…'**
  String get v2SyncCheckingConnection;

  /// No description provided for @v2SyncCheckingBody.
  ///
  /// In en, this message translates to:
  /// **'Checking whether the car can reach the server…'**
  String get v2SyncCheckingBody;

  /// No description provided for @v2SyncNoNetwork.
  ///
  /// In en, this message translates to:
  /// **'No network connection. Check your Wi-Fi or hotspot.'**
  String get v2SyncNoNetwork;

  /// No description provided for @v2SyncNoNetworkBody.
  ///
  /// In en, this message translates to:
  /// **'The car has no network connection. Turn on Wi-Fi or a hotspot and try again.'**
  String get v2SyncNoNetworkBody;

  /// No description provided for @v2SyncServerUnreachable.
  ///
  /// In en, this message translates to:
  /// **'Cannot reach the server. Check your connection.'**
  String get v2SyncServerUnreachable;

  /// No description provided for @v2SyncServerUnreachableBody.
  ///
  /// In en, this message translates to:
  /// **'The car is on a network but cannot reach the server. Check the connection and try again.'**
  String get v2SyncServerUnreachableBody;

  /// No description provided for @v2SyncPendingBody.
  ///
  /// In en, this message translates to:
  /// **'Open the Eaglemetry Companion app on your phone and type this code. It expires in 5 minutes.'**
  String get v2SyncPendingBody;

  /// No description provided for @v2SyncApprovedBody.
  ///
  /// In en, this message translates to:
  /// **'Your phone is paired. The car syncs to the cloud when it has a connection.'**
  String get v2SyncApprovedBody;

  /// No description provided for @v2SyncExpiredBody.
  ///
  /// In en, this message translates to:
  /// **'This code timed out after 5 minutes. Generate a new one to try again.'**
  String get v2SyncExpiredBody;

  /// No description provided for @v2SyncRejectedBody.
  ///
  /// In en, this message translates to:
  /// **'The phone declined the pairing. Generate a new code and try again.'**
  String get v2SyncRejectedBody;

  /// No description provided for @v2SyncInvalidBody.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the code. Generate a new one and try again.'**
  String get v2SyncInvalidBody;

  /// No description provided for @v2SyncIdleBody.
  ///
  /// In en, this message translates to:
  /// **'Open the Eaglemetry Companion app on your phone. Generate a code here and type it there.'**
  String get v2SyncIdleBody;

  /// No description provided for @v2SyncExpiresInMinutes.
  ///
  /// In en, this message translates to:
  /// **'Expires in 5 minutes'**
  String get v2SyncExpiresInMinutes;

  /// No description provided for @v2SyncExpiresInClock.
  ///
  /// In en, this message translates to:
  /// **'Expires in {minutes}:{seconds}'**
  String v2SyncExpiresInClock(int minutes, String seconds);

  /// No description provided for @v2SyncExpiresInSecs.
  ///
  /// In en, this message translates to:
  /// **'Expires in {seconds}s'**
  String v2SyncExpiresInSecs(int seconds);

  /// No description provided for @v2SyncDevicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Paired phones'**
  String get v2SyncDevicesTitle;

  /// No description provided for @v2SyncNoDevices.
  ///
  /// In en, this message translates to:
  /// **'No phone is paired'**
  String get v2SyncNoDevices;

  /// No description provided for @v2SyncNoDevicesBody.
  ///
  /// In en, this message translates to:
  /// **'The car serves data only to a paired phone. Make a code to pair one.'**
  String get v2SyncNoDevicesBody;

  /// No description provided for @v2SyncDeviceCount.
  ///
  /// In en, this message translates to:
  /// **'{count} paired'**
  String v2SyncDeviceCount(Object count);

  /// No description provided for @v2SyncPairedOn.
  ///
  /// In en, this message translates to:
  /// **'Paired on {date}'**
  String v2SyncPairedOn(Object date);

  /// No description provided for @v2SyncRevoke.
  ///
  /// In en, this message translates to:
  /// **'UNSYNC'**
  String get v2SyncRevoke;

  /// No description provided for @v2SyncRevokeConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Unsync {name}?'**
  String v2SyncRevokeConfirmTitle(Object name);

  /// No description provided for @v2SyncRevokeConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'The phone loses access to the car. The car becomes free to sync with another phone. The history already on the phone stays there.'**
  String get v2SyncRevokeConfirmMessage;

  /// No description provided for @v2SyncRevokeConfirm.
  ///
  /// In en, this message translates to:
  /// **'UNSYNC'**
  String get v2SyncRevokeConfirm;

  /// No description provided for @v2SyncRevokeCancel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get v2SyncRevokeCancel;

  /// No description provided for @v2SyncForce.
  ///
  /// In en, this message translates to:
  /// **'FORCE SYNC'**
  String get v2SyncForce;

  /// No description provided for @v2SyncCloudTitle.
  ///
  /// In en, this message translates to:
  /// **'Cloud sync'**
  String get v2SyncCloudTitle;

  /// No description provided for @v2SyncCloudSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Upload the car\'s data to the cloud now.'**
  String get v2SyncCloudSubtitle;

  /// No description provided for @v2SyncCloudRunning.
  ///
  /// In en, this message translates to:
  /// **'Uploading…'**
  String get v2SyncCloudRunning;

  /// No description provided for @v2SyncCloudNote.
  ///
  /// In en, this message translates to:
  /// **'Sends telemetry, annotations and preference changes to the cloud. Runs on its own every 15 minutes; this button runs it now.'**
  String get v2SyncCloudNote;

  /// No description provided for @v2SyncCloudMoved.
  ///
  /// In en, this message translates to:
  /// **'Uploaded {count} records.'**
  String v2SyncCloudMoved(int count);

  /// No description provided for @v2SyncCloudEmpty.
  ///
  /// In en, this message translates to:
  /// **'Already up to date. Nothing to upload.'**
  String get v2SyncCloudEmpty;

  /// No description provided for @v2SyncCloudFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload failed. Try again.'**
  String get v2SyncCloudFailed;

  /// No description provided for @v2SyncCloudDisabled.
  ///
  /// In en, this message translates to:
  /// **'Cloud sync is off in this build. Nothing was uploaded.'**
  String get v2SyncCloudDisabled;

  /// No description provided for @v2SyncCloudNotPaired.
  ///
  /// In en, this message translates to:
  /// **'Pair this car with your phone first. Nothing was uploaded.'**
  String get v2SyncCloudNotPaired;

  /// No description provided for @v2SyncLiveActive.
  ///
  /// In en, this message translates to:
  /// **'Live values: sending'**
  String get v2SyncLiveActive;

  /// No description provided for @v2SyncLiveIdle.
  ///
  /// In en, this message translates to:
  /// **'Live values: waiting for the phone'**
  String get v2SyncLiveIdle;

  /// No description provided for @v2SyncProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'Cloud sync progress'**
  String get v2SyncProgressLabel;

  /// No description provided for @v2SyncProgressUpToDate.
  ///
  /// In en, this message translates to:
  /// **'100% in sync'**
  String get v2SyncProgressUpToDate;

  /// No description provided for @v2SyncProgressPending.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 pending} other{{count} pending}}'**
  String v2SyncProgressPending(int count);

  /// No description provided for @v2SyncProgressPendingClock.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 waiting for car clock} other{{count} waiting for car clock}}'**
  String v2SyncProgressPendingClock(int count);

  /// No description provided for @v2SyncProgressPendingBoth.
  ///
  /// In en, this message translates to:
  /// **'{dirty, plural, =1{1 pending} other{{dirty} pending}}, {clock, plural, =1{1 waiting for car clock} other{{clock} waiting for car clock}}'**
  String v2SyncProgressPendingBoth(int dirty, int clock);

  /// No description provided for @v2SyncProgressDetail.
  ///
  /// In en, this message translates to:
  /// **'{clean} of {total} records in the cloud'**
  String v2SyncProgressDetail(int clean, int total);

  /// No description provided for @v2SyncCompanionTitle.
  ///
  /// In en, this message translates to:
  /// **'Eaglemetry Companion'**
  String get v2SyncCompanionTitle;

  /// No description provided for @v2SyncCompanionBeta.
  ///
  /// In en, this message translates to:
  /// **'Beta available'**
  String get v2SyncCompanionBeta;

  /// No description provided for @v2SyncCompanionDescription.
  ///
  /// In en, this message translates to:
  /// **'Track your trips, charge history, and battery metrics on your phone.'**
  String get v2SyncCompanionDescription;

  /// No description provided for @v2SyncCompanionUpdateHint.
  ///
  /// In en, this message translates to:
  /// **'Can\'t sync? Download the new version of the companion!'**
  String get v2SyncCompanionUpdateHint;

  /// No description provided for @v2SyncCompanionScanQr.
  ///
  /// In en, this message translates to:
  /// **'Scan the code to download the beta version:'**
  String get v2SyncCompanionScanQr;

  /// No description provided for @v2SyncCompanionAndroid.
  ///
  /// In en, this message translates to:
  /// **'Android'**
  String get v2SyncCompanionAndroid;

  /// No description provided for @v2SyncCompanionIos.
  ///
  /// In en, this message translates to:
  /// **'iOS'**
  String get v2SyncCompanionIos;

  /// No description provided for @v2SyncCompanionForbidden.
  ///
  /// In en, this message translates to:
  /// **'403?'**
  String get v2SyncCompanionForbidden;

  /// No description provided for @v2SyncCompanionBetaWarning.
  ///
  /// In en, this message translates to:
  /// **'The app is in beta (the iOS version is pending Apple approval). Features are missing and bugs exist. To give feedback, shake your phone!'**
  String get v2SyncCompanionBetaWarning;

  /// No description provided for @v2SettingsStorage.
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get v2SettingsStorage;

  /// No description provided for @v2SettingsStorageTitle.
  ///
  /// In en, this message translates to:
  /// **'Stored history'**
  String get v2SettingsStorageTitle;

  /// No description provided for @v2SettingsStorageDesc.
  ///
  /// In en, this message translates to:
  /// **'How much disk the app\'s stored history occupies. Measured without scanning every record.'**
  String get v2SettingsStorageDesc;

  /// No description provided for @v2SettingsStorageLoading.
  ///
  /// In en, this message translates to:
  /// **'Checking…'**
  String get v2SettingsStorageLoading;

  /// No description provided for @v2SettingsStorageFailed.
  ///
  /// In en, this message translates to:
  /// **'Storage check failed: {error}'**
  String v2SettingsStorageFailed(String error);

  /// No description provided for @v2SettingsStorageValue.
  ///
  /// In en, this message translates to:
  /// **'{size} used'**
  String v2SettingsStorageValue(String size);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'pt', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
