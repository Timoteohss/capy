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
  /// **'Eaglemetry Companion'**
  String get appTitle;

  /// No description provided for @pairingTitle.
  ///
  /// In en, this message translates to:
  /// **'Pair with the car'**
  String get pairingTitle;

  /// No description provided for @pairingBody.
  ///
  /// In en, this message translates to:
  /// **'Type the 6-digit code shown on the car.'**
  String get pairingBody;

  /// No description provided for @pairingCodeHint.
  ///
  /// In en, this message translates to:
  /// **'000000'**
  String get pairingCodeHint;

  /// No description provided for @pairingAction.
  ///
  /// In en, this message translates to:
  /// **'Pair'**
  String get pairingAction;

  /// No description provided for @pairingForget.
  ///
  /// In en, this message translates to:
  /// **'Forget this car'**
  String get pairingForget;

  /// No description provided for @pairingInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6 digits from the car.'**
  String get pairingInvalidCode;

  /// No description provided for @pairingRejected.
  ///
  /// In en, this message translates to:
  /// **'The car refused this code.'**
  String get pairingRejected;

  /// No description provided for @pairingNotFound.
  ///
  /// In en, this message translates to:
  /// **'Code not found. Check the code and try again.'**
  String get pairingNotFound;

  /// No description provided for @pairingExpired.
  ///
  /// In en, this message translates to:
  /// **'Code expired. Ask the car for a new code.'**
  String get pairingExpired;

  /// No description provided for @pairingAlreadyClaimed.
  ///
  /// In en, this message translates to:
  /// **'Code already used. Ask the car for a new code.'**
  String get pairingAlreadyClaimed;

  /// No description provided for @pairingVehicleAlreadyClaimed.
  ///
  /// In en, this message translates to:
  /// **'This vehicle is already paired to another account.'**
  String get pairingVehicleAlreadyClaimed;

  /// No description provided for @pairingNetworkError.
  ///
  /// In en, this message translates to:
  /// **'Network error. Try again.'**
  String get pairingNetworkError;

  /// No description provided for @pairingUnknownError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Try again.'**
  String get pairingUnknownError;

  /// No description provided for @pairingNoNetwork.
  ///
  /// In en, this message translates to:
  /// **'No internet. Check your connection and try again.'**
  String get pairingNoNetwork;

  /// No description provided for @pairingBackendUnreachable.
  ///
  /// In en, this message translates to:
  /// **'Can\'t reach the server. Try again.'**
  String get pairingBackendUnreachable;

  /// No description provided for @pairingRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get pairingRetry;

  /// No description provided for @pairingSignedOut.
  ///
  /// In en, this message translates to:
  /// **'Sign in to pair this car.'**
  String get pairingSignedOut;

  /// No description provided for @homePairedTitle.
  ///
  /// In en, this message translates to:
  /// **'Paired'**
  String get homePairedTitle;

  /// No description provided for @homePairedBody.
  ///
  /// In en, this message translates to:
  /// **'This phone reads the car\'s history from your cloud account.'**
  String get homePairedBody;

  /// No description provided for @homeNoteLabel.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get homeNoteLabel;

  /// No description provided for @homeNoteBody.
  ///
  /// In en, this message translates to:
  /// **'The car is the source. This phone keeps the long history after a sync.'**
  String get homeNoteBody;

  /// No description provided for @syncTitle.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get syncTitle;

  /// No description provided for @syncAction.
  ///
  /// In en, this message translates to:
  /// **'SYNC NOW'**
  String get syncAction;

  /// No description provided for @syncRunning.
  ///
  /// In en, this message translates to:
  /// **'SYNCING'**
  String get syncRunning;

  /// No description provided for @syncProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'Cloud sync progress'**
  String get syncProgressLabel;

  /// No description provided for @syncProgressUpToDate.
  ///
  /// In en, this message translates to:
  /// **'100% in sync'**
  String get syncProgressUpToDate;

  /// No description provided for @syncProgressPending.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 pending} other{{count} pending}}'**
  String syncProgressPending(int count);

  /// No description provided for @syncProgressDetail.
  ///
  /// In en, this message translates to:
  /// **'{clean} of {total} records in the cloud'**
  String syncProgressDetail(int clean, int total);

  /// No description provided for @syncNeverRun.
  ///
  /// In en, this message translates to:
  /// **'Not synced yet'**
  String get syncNeverRun;

  /// No description provided for @syncHolding.
  ///
  /// In en, this message translates to:
  /// **'{trips} trips, {charges} charges on this phone'**
  String syncHolding(int trips, int charges);

  /// No description provided for @syncLastRun.
  ///
  /// In en, this message translates to:
  /// **'Last sync: {time}'**
  String syncLastRun(Object time);

  /// No description provided for @syncResultCompleted.
  ///
  /// In en, this message translates to:
  /// **'{records} records came down from the cloud.'**
  String syncResultCompleted(Object records);

  /// No description provided for @syncResultNothing.
  ///
  /// In en, this message translates to:
  /// **'The car had nothing new.'**
  String get syncResultNothing;

  /// No description provided for @syncResultFailed.
  ///
  /// In en, this message translates to:
  /// **'Sync did not reach the cloud. Check your connection and try again.'**
  String get syncResultFailed;

  /// No description provided for @syncResultCloudDisabled.
  ///
  /// In en, this message translates to:
  /// **'Cloud sync is disabled in this build.'**
  String get syncResultCloudDisabled;

  /// No description provided for @syncResultPhoneOffline.
  ///
  /// In en, this message translates to:
  /// **'This phone could not reach the cloud. Check its connection and try again.'**
  String get syncResultPhoneOffline;

  /// No description provided for @syncResultCarSilent.
  ///
  /// In en, this message translates to:
  /// **'The car sent nothing to the cloud. If the car has new trips, check its connection.'**
  String get syncResultCarSilent;

  /// No description provided for @syncStreamTrips.
  ///
  /// In en, this message translates to:
  /// **'Trips'**
  String get syncStreamTrips;

  /// No description provided for @syncStreamCharges.
  ///
  /// In en, this message translates to:
  /// **'Charges'**
  String get syncStreamCharges;

  /// No description provided for @syncStreamCycles.
  ///
  /// In en, this message translates to:
  /// **'Cycles'**
  String get syncStreamCycles;

  /// No description provided for @syncStreamIntervals.
  ///
  /// In en, this message translates to:
  /// **'Intervals'**
  String get syncStreamIntervals;

  /// No description provided for @syncStreamEvents.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get syncStreamEvents;

  /// No description provided for @syncStreamFrames.
  ///
  /// In en, this message translates to:
  /// **'Frames'**
  String get syncStreamFrames;

  /// No description provided for @syncStreamTracks.
  ///
  /// In en, this message translates to:
  /// **'Routes'**
  String get syncStreamTracks;

  /// No description provided for @syncProgressCounted.
  ///
  /// In en, this message translates to:
  /// **'{stream}: {done} of {total}'**
  String syncProgressCounted(Object stream, int done, int total);

  /// No description provided for @syncProgressUnknown.
  ///
  /// In en, this message translates to:
  /// **'{stream}: {done}'**
  String syncProgressUnknown(Object stream, int done);

  /// No description provided for @syncProgressSession.
  ///
  /// In en, this message translates to:
  /// **'Session {index} of {count}'**
  String syncProgressSession(int index, int count);

  /// No description provided for @syncWipeAction.
  ///
  /// In en, this message translates to:
  /// **'CLEAR LOCAL DATA'**
  String get syncWipeAction;

  /// No description provided for @syncWipeTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear local data?'**
  String get syncWipeTitle;

  /// No description provided for @syncWipeBody.
  ///
  /// In en, this message translates to:
  /// **'This phone deletes every trip, charge and record it pulled. The car keeps its own. The next sync copies the history again from the start.'**
  String get syncWipeBody;

  /// No description provided for @syncWipeCancel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get syncWipeCancel;

  /// No description provided for @syncWipeConfirm.
  ///
  /// In en, this message translates to:
  /// **'CLEAR'**
  String get syncWipeConfirm;

  /// No description provided for @syncStreamWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get syncStreamWaiting;

  /// No description provided for @navSync.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get navSync;

  /// No description provided for @navHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get navHistory;

  /// No description provided for @navTrips.
  ///
  /// In en, this message translates to:
  /// **'Trips'**
  String get navTrips;

  /// No description provided for @navCharges.
  ///
  /// In en, this message translates to:
  /// **'Charges'**
  String get navCharges;

  /// No description provided for @navBattery.
  ///
  /// In en, this message translates to:
  /// **'Battery'**
  String get navBattery;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @navComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon.'**
  String get navComingSoon;

  /// No description provided for @historyTrips.
  ///
  /// In en, this message translates to:
  /// **'Trips'**
  String get historyTrips;

  /// No description provided for @historyCharges.
  ///
  /// In en, this message translates to:
  /// **'Charges'**
  String get historyCharges;

  /// No description provided for @historyEmpty.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet. Sync with the car.'**
  String get historyEmpty;

  /// No description provided for @historyTripMeta.
  ///
  /// In en, this message translates to:
  /// **'{duration} · {distance} km'**
  String historyTripMeta(Object duration, Object distance);

  /// No description provided for @historyRowEnergy.
  ///
  /// In en, this message translates to:
  /// **'{energy} kWh'**
  String historyRowEnergy(Object energy);

  /// No description provided for @historyFailed.
  ///
  /// In en, this message translates to:
  /// **'The archive could not be read: {reason}'**
  String historyFailed(Object reason);

  /// No description provided for @historyRoute.
  ///
  /// In en, this message translates to:
  /// **'Route'**
  String get historyRoute;

  /// No description provided for @historyNoRoute.
  ///
  /// In en, this message translates to:
  /// **'This drive carries no position fix.'**
  String get historyNoRoute;

  /// No description provided for @historyMapExpand.
  ///
  /// In en, this message translates to:
  /// **'Expand the map'**
  String get historyMapExpand;

  /// No description provided for @historyMapCollapse.
  ///
  /// In en, this message translates to:
  /// **'Shrink the map'**
  String get historyMapCollapse;

  /// No description provided for @historyDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get historyDuration;

  /// No description provided for @historyDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get historyDistance;

  /// No description provided for @historySoc.
  ///
  /// In en, this message translates to:
  /// **'Charge'**
  String get historySoc;

  /// No description provided for @historyConsumed.
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get historyConsumed;

  /// No description provided for @historyRegenerated.
  ///
  /// In en, this message translates to:
  /// **'Recovered'**
  String get historyRegenerated;

  /// No description provided for @historyEfficiency.
  ///
  /// In en, this message translates to:
  /// **'Efficiency'**
  String get historyEfficiency;

  /// No description provided for @historyClimb.
  ///
  /// In en, this message translates to:
  /// **'Climb'**
  String get historyClimb;

  /// No description provided for @historyTemperature.
  ///
  /// In en, this message translates to:
  /// **'Outside'**
  String get historyTemperature;

  /// No description provided for @historyStart.
  ///
  /// In en, this message translates to:
  /// **'Plugged in'**
  String get historyStart;

  /// No description provided for @historyEnd.
  ///
  /// In en, this message translates to:
  /// **'Unplugged'**
  String get historyEnd;

  /// No description provided for @historyEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get historyEnergy;

  /// No description provided for @historyPeakPower.
  ///
  /// In en, this message translates to:
  /// **'Peak power'**
  String get historyPeakPower;

  /// No description provided for @historyAveragePower.
  ///
  /// In en, this message translates to:
  /// **'Average power'**
  String get historyAveragePower;

  /// No description provided for @historyPeakAndAverage.
  ///
  /// In en, this message translates to:
  /// **'Peak & average'**
  String get historyPeakAndAverage;

  /// No description provided for @historyChargingPower.
  ///
  /// In en, this message translates to:
  /// **'Charging power'**
  String get historyChargingPower;

  /// No description provided for @historyChargeLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get historyChargeLocation;

  /// No description provided for @historyChargeCost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get historyChargeCost;

  /// No description provided for @historyEditCost.
  ///
  /// In en, this message translates to:
  /// **'Edit the price of this charge'**
  String get historyEditCost;

  /// No description provided for @chargeCostTitle.
  ///
  /// In en, this message translates to:
  /// **'Charge price'**
  String get chargeCostTitle;

  /// No description provided for @chargeCostDescription.
  ///
  /// In en, this message translates to:
  /// **'Applies to this charge only. Type a price per kWh, or the total you paid.'**
  String get chargeCostDescription;

  /// No description provided for @chargeCostFieldRate.
  ///
  /// In en, this message translates to:
  /// **'Price/kWh'**
  String get chargeCostFieldRate;

  /// No description provided for @chargeCostFieldTotal.
  ///
  /// In en, this message translates to:
  /// **'Total paid'**
  String get chargeCostFieldTotal;

  /// No description provided for @chargeCostUnitRate.
  ///
  /// In en, this message translates to:
  /// **'/kWh'**
  String get chargeCostUnitRate;

  /// No description provided for @moneyKeypadSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get moneyKeypadSave;

  /// No description provided for @moneyKeypadClear.
  ///
  /// In en, this message translates to:
  /// **'Clear the amount'**
  String get moneyKeypadClear;

  /// No description provided for @moneyKeypadDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete the last digit'**
  String get moneyKeypadDelete;

  /// No description provided for @moneyKeypadClose.
  ///
  /// In en, this message translates to:
  /// **'Close the price keypad'**
  String get moneyKeypadClose;

  /// No description provided for @historyVoltage.
  ///
  /// In en, this message translates to:
  /// **'Pack voltage'**
  String get historyVoltage;

  /// No description provided for @historyFrameCount.
  ///
  /// In en, this message translates to:
  /// **'{count} recorded samples'**
  String historyFrameCount(Object count);

  /// No description provided for @historyBattery.
  ///
  /// In en, this message translates to:
  /// **'Battery'**
  String get historyBattery;

  /// No description provided for @historyEnergyBalance.
  ///
  /// In en, this message translates to:
  /// **'Energy balance'**
  String get historyEnergyBalance;

  /// No description provided for @historyEvents.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get historyEvents;

  /// No description provided for @eventTripArmed.
  ///
  /// In en, this message translates to:
  /// **'Trip armed'**
  String get eventTripArmed;

  /// No description provided for @eventTripStarted.
  ///
  /// In en, this message translates to:
  /// **'Trip started'**
  String get eventTripStarted;

  /// No description provided for @eventTripPendingEnd.
  ///
  /// In en, this message translates to:
  /// **'Trip stopping'**
  String get eventTripPendingEnd;

  /// No description provided for @eventTripCancelled.
  ///
  /// In en, this message translates to:
  /// **'Trip cancelled'**
  String get eventTripCancelled;

  /// No description provided for @eventTripEnded.
  ///
  /// In en, this message translates to:
  /// **'Trip ended'**
  String get eventTripEnded;

  /// No description provided for @eventTripRecovered.
  ///
  /// In en, this message translates to:
  /// **'Trip recovered'**
  String get eventTripRecovered;

  /// No description provided for @eventChargePlugConnected.
  ///
  /// In en, this message translates to:
  /// **'Plug connected'**
  String get eventChargePlugConnected;

  /// No description provided for @eventChargeStarted.
  ///
  /// In en, this message translates to:
  /// **'Charging started'**
  String get eventChargeStarted;

  /// No description provided for @eventChargeEnded.
  ///
  /// In en, this message translates to:
  /// **'Charging ended'**
  String get eventChargeEnded;

  /// No description provided for @eventChargePlugDisconnected.
  ///
  /// In en, this message translates to:
  /// **'Plug disconnected'**
  String get eventChargePlugDisconnected;

  /// No description provided for @eventChargeRecovered.
  ///
  /// In en, this message translates to:
  /// **'Charge recovered'**
  String get eventChargeRecovered;

  /// No description provided for @eventChargeLimitReached.
  ///
  /// In en, this message translates to:
  /// **'Target charge reached'**
  String get eventChargeLimitReached;

  /// No description provided for @historyTraction.
  ///
  /// In en, this message translates to:
  /// **'Traction'**
  String get historyTraction;

  /// No description provided for @historyAuxiliary.
  ///
  /// In en, this message translates to:
  /// **'Other systems'**
  String get historyAuxiliary;

  /// No description provided for @historyRecovered.
  ///
  /// In en, this message translates to:
  /// **'Recovered'**
  String get historyRecovered;

  /// No description provided for @historyTotalDelivered.
  ///
  /// In en, this message translates to:
  /// **'{energy} kWh delivered in total'**
  String historyTotalDelivered(Object energy);

  /// No description provided for @historyNetConsumed.
  ///
  /// In en, this message translates to:
  /// **'{energy} kWh net consumed'**
  String historyNetConsumed(Object energy);

  /// No description provided for @historyWh.
  ///
  /// In en, this message translates to:
  /// **'{energy} Wh'**
  String historyWh(Object energy);

  /// No description provided for @historyPerMinute.
  ///
  /// In en, this message translates to:
  /// **'Spent and recovered'**
  String get historyPerMinute;

  /// No description provided for @historyPerColumn.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min per column'**
  String historyPerColumn(int minutes);

  /// No description provided for @historyTerrain.
  ///
  /// In en, this message translates to:
  /// **'Terrain and weather'**
  String get historyTerrain;

  /// No description provided for @historyAltitude.
  ///
  /// In en, this message translates to:
  /// **'Altitude'**
  String get historyAltitude;

  /// No description provided for @historyOutsideTemp.
  ///
  /// In en, this message translates to:
  /// **'Outside temperature'**
  String get historyOutsideTemp;

  /// No description provided for @historyDriveMode.
  ///
  /// In en, this message translates to:
  /// **'Drive mode'**
  String get historyDriveMode;

  /// No description provided for @historyDriveModeNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get historyDriveModeNormal;

  /// No description provided for @historyDriveModeEco.
  ///
  /// In en, this message translates to:
  /// **'Eco'**
  String get historyDriveModeEco;

  /// No description provided for @historyDriveModeSport.
  ///
  /// In en, this message translates to:
  /// **'Sport'**
  String get historyDriveModeSport;

  /// No description provided for @historyDriveModeOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get historyDriveModeOther;

  /// No description provided for @historyClimate.
  ///
  /// In en, this message translates to:
  /// **'Climate'**
  String get historyClimate;

  /// No description provided for @historyClimateShare.
  ///
  /// In en, this message translates to:
  /// **'On for {percent}% of the drive'**
  String historyClimateShare(int percent);

  /// No description provided for @historyClimateCooling.
  ///
  /// In en, this message translates to:
  /// **'Cooling'**
  String get historyClimateCooling;

  /// No description provided for @historyClimateHeating.
  ///
  /// In en, this message translates to:
  /// **'Heating'**
  String get historyClimateHeating;

  /// No description provided for @historyClimateBoth.
  ///
  /// In en, this message translates to:
  /// **'Cooling and heating'**
  String get historyClimateBoth;

  /// No description provided for @historyClimateBlower.
  ///
  /// In en, this message translates to:
  /// **'Fan {level}'**
  String historyClimateBlower(Object level);

  /// No description provided for @historyClimateSetpoint.
  ///
  /// In en, this message translates to:
  /// **'Cabin set to {degrees} °C'**
  String historyClimateSetpoint(Object degrees);

  /// No description provided for @historyClimateOff.
  ///
  /// In en, this message translates to:
  /// **'The climate system stayed off.'**
  String get historyClimateOff;

  /// No description provided for @historyClimateInAux.
  ///
  /// In en, this message translates to:
  /// **'Its energy is counted in Other systems. The car does not report the amount.'**
  String get historyClimateInAux;

  /// No description provided for @historyDriveModeShare.
  ///
  /// In en, this message translates to:
  /// **'{mode} {percent}%'**
  String historyDriveModeShare(Object mode, int percent);

  /// No description provided for @onboardingSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingSkip;

  /// No description provided for @onboardingNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// No description provided for @onboardingStart.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get onboardingStart;

  /// No description provided for @onboardingBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get onboardingBack;

  /// No description provided for @onboardingSlide1Title.
  ///
  /// In en, this message translates to:
  /// **'Meet Eaglemetry'**
  String get onboardingSlide1Title;

  /// No description provided for @onboardingSlide1Body.
  ///
  /// In en, this message translates to:
  /// **'The energy of your car, recorded drive after drive.'**
  String get onboardingSlide1Body;

  /// No description provided for @onboardingSlide2Title.
  ///
  /// In en, this message translates to:
  /// **'See every trip and charge'**
  String get onboardingSlide2Title;

  /// No description provided for @onboardingSlide2Body.
  ///
  /// In en, this message translates to:
  /// **'Eaglemetry reads your trips and charges from the car through your cloud account.'**
  String get onboardingSlide2Body;

  /// No description provided for @onboardingSlide3Title.
  ///
  /// In en, this message translates to:
  /// **'Pair in seconds'**
  String get onboardingSlide3Title;

  /// No description provided for @onboardingSlide3Body.
  ///
  /// In en, this message translates to:
  /// **'Type the 6-digit code the car shows on its screen. The history stays on your phone.'**
  String get onboardingSlide3Body;

  /// No description provided for @onboardingPairTitle.
  ///
  /// In en, this message translates to:
  /// **'Pair with your car'**
  String get onboardingPairTitle;

  /// No description provided for @onboardingPairBody.
  ///
  /// In en, this message translates to:
  /// **'Type the 6-digit code shown on the car screen, under Sync.'**
  String get onboardingPairBody;

  /// No description provided for @onboardingCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'6-digit code'**
  String get onboardingCodeLabel;

  /// No description provided for @onboardingPairing.
  ///
  /// In en, this message translates to:
  /// **'Pairing'**
  String get onboardingPairing;

  /// No description provided for @onboardingSyncingTitle.
  ///
  /// In en, this message translates to:
  /// **'Syncing'**
  String get onboardingSyncingTitle;

  /// No description provided for @onboardingSyncingBody.
  ///
  /// In en, this message translates to:
  /// **'The phone pulls the records in this order: trips, charges, cycles, then frames.'**
  String get onboardingSyncingBody;

  /// No description provided for @onboardingStreamWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get onboardingStreamWaiting;

  /// No description provided for @onboardingWritten.
  ///
  /// In en, this message translates to:
  /// **'{done} written'**
  String onboardingWritten(int done);

  /// No description provided for @onboardingCounted.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total}'**
  String onboardingCounted(int done, int total);

  /// No description provided for @onboardingPairedTitle.
  ///
  /// In en, this message translates to:
  /// **'Car paired.'**
  String get onboardingPairedTitle;

  /// No description provided for @onboardingPairedBody.
  ///
  /// In en, this message translates to:
  /// **'{records} records are on this phone.'**
  String onboardingPairedBody(int records);

  /// No description provided for @onboardingPairedNothing.
  ///
  /// In en, this message translates to:
  /// **'The car had nothing to send yet.'**
  String get onboardingPairedNothing;

  /// No description provided for @onboardingSyncFailed.
  ///
  /// In en, this message translates to:
  /// **'The car was not reached. Sync later from the Sync tab.'**
  String get onboardingSyncFailed;

  /// No description provided for @onboardingSyncCloudDisabled.
  ///
  /// In en, this message translates to:
  /// **'Cloud sync is disabled in this build. Sync stays on this phone.'**
  String get onboardingSyncCloudDisabled;

  /// No description provided for @onboardingSyncPhoneOffline.
  ///
  /// In en, this message translates to:
  /// **'This phone could not reach the cloud. Check its connection, then sync from the Sync tab.'**
  String get onboardingSyncPhoneOffline;

  /// No description provided for @onboardingSyncCarSilent.
  ///
  /// In en, this message translates to:
  /// **'The car sent nothing yet. If the car has trips, check its connection, then sync again.'**
  String get onboardingSyncCarSilent;

  /// No description provided for @onboardingContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingContinue;

  /// No description provided for @onboardingLoginTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get onboardingLoginTitle;

  /// No description provided for @onboardingLoginBody.
  ///
  /// In en, this message translates to:
  /// **'Log in to your Eaglemetry account.'**
  String get onboardingLoginBody;

  /// No description provided for @onboardingCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get onboardingCreateTitle;

  /// No description provided for @onboardingCreateBody.
  ///
  /// In en, this message translates to:
  /// **'One account for this app. The trips stay on this phone.'**
  String get onboardingCreateBody;

  /// No description provided for @onboardingEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get onboardingEmailLabel;

  /// No description provided for @onboardingEmailHint.
  ///
  /// In en, this message translates to:
  /// **'you@example.com'**
  String get onboardingEmailHint;

  /// No description provided for @onboardingPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get onboardingPasswordLabel;

  /// No description provided for @onboardingShowPassword.
  ///
  /// In en, this message translates to:
  /// **'Show the password'**
  String get onboardingShowPassword;

  /// No description provided for @onboardingHidePassword.
  ///
  /// In en, this message translates to:
  /// **'Hide the password'**
  String get onboardingHidePassword;

  /// No description provided for @onboardingLogIn.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get onboardingLogIn;

  /// No description provided for @onboardingLoggingIn.
  ///
  /// In en, this message translates to:
  /// **'Signing in'**
  String get onboardingLoggingIn;

  /// No description provided for @onboardingCreating.
  ///
  /// In en, this message translates to:
  /// **'Creating the account'**
  String get onboardingCreating;

  /// No description provided for @onboardingForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get onboardingForgotPassword;

  /// No description provided for @onboardingCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get onboardingCreateAccount;

  /// No description provided for @onboardingHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'I have an account'**
  String get onboardingHaveAccount;

  /// No description provided for @onboardingWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'You are in.'**
  String get onboardingWelcomeTitle;

  /// No description provided for @onboardingWelcomeBody.
  ///
  /// In en, this message translates to:
  /// **'Signed in as {email}. Next, pair with your car.'**
  String onboardingWelcomeBody(Object email);

  /// No description provided for @onboardingContinueToPairing.
  ///
  /// In en, this message translates to:
  /// **'Continue to pairing'**
  String get onboardingContinueToPairing;

  /// No description provided for @accountInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Type a valid email address.'**
  String get accountInvalidEmail;

  /// No description provided for @accountWeakPassword.
  ///
  /// In en, this message translates to:
  /// **'The password must have at least {count} characters, including uppercase, lowercase letters, and digits.'**
  String accountWeakPassword(int count);

  /// No description provided for @accountWrongCredentials.
  ///
  /// In en, this message translates to:
  /// **'The email or the password is wrong.'**
  String get accountWrongCredentials;

  /// No description provided for @accountEmailNotConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirm the address from the email first.'**
  String get accountEmailNotConfirmed;

  /// No description provided for @accountAlreadyRegistered.
  ///
  /// In en, this message translates to:
  /// **'This address already has an account. Log in.'**
  String get accountAlreadyRegistered;

  /// No description provided for @accountRateLimited.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Wait, then try again.'**
  String get accountRateLimited;

  /// No description provided for @accountNetwork.
  ///
  /// In en, this message translates to:
  /// **'The account server was not reached.'**
  String get accountNetwork;

  /// No description provided for @accountUnconfigured.
  ///
  /// In en, this message translates to:
  /// **'This build carries no account server.'**
  String get accountUnconfigured;

  /// No description provided for @accountUnknown.
  ///
  /// In en, this message translates to:
  /// **'The account server refused this action.'**
  String get accountUnknown;

  /// No description provided for @accountConfirmEmail.
  ///
  /// In en, this message translates to:
  /// **'Open your email and confirm the address.'**
  String get accountConfirmEmail;

  /// No description provided for @accountResetSent.
  ///
  /// In en, this message translates to:
  /// **'If that address has an account, the reset email is on its way.'**
  String get accountResetSent;

  /// No description provided for @syncStreamAnnotations.
  ///
  /// In en, this message translates to:
  /// **'Annotations'**
  String get syncStreamAnnotations;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsBeta.
  ///
  /// In en, this message translates to:
  /// **'Beta'**
  String get settingsBeta;

  /// No description provided for @settingsBetaDesc.
  ///
  /// In en, this message translates to:
  /// **'Features still under test. They can change or stop working.'**
  String get settingsBetaDesc;

  /// No description provided for @settingsBetaAbrpSync.
  ///
  /// In en, this message translates to:
  /// **'Sync data with ABRP'**
  String get settingsBetaAbrpSync;

  /// No description provided for @settingsBetaAbrpSyncDesc.
  ///
  /// In en, this message translates to:
  /// **'Reads the live car data over Bluetooth and sends it to A Better Routeplanner. The phone asks for Bluetooth permission when you switch this on.'**
  String get settingsBetaAbrpSyncDesc;

  /// No description provided for @settingsAbrpTokenLabel.
  ///
  /// In en, this message translates to:
  /// **'Your ABRP token'**
  String get settingsAbrpTokenLabel;

  /// No description provided for @settingsAbrpTokenHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 12345678-abcd-...'**
  String get settingsAbrpTokenHint;

  /// No description provided for @settingsAbrpTokenHelp.
  ///
  /// In en, this message translates to:
  /// **'Get the token in the ABRP app: Settings, Car model, Live Data, Generic (Iternio).'**
  String get settingsAbrpTokenHelp;

  /// No description provided for @settingsAbrpApiKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Your ABRP API key'**
  String get settingsAbrpApiKeyLabel;

  /// No description provided for @settingsAbrpApiKeyHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 12345678-abcd-...'**
  String get settingsAbrpApiKeyHint;

  /// No description provided for @settingsAbrpApiKeyHelp.
  ///
  /// In en, this message translates to:
  /// **'Required. Eaglemetry ships with no key of its own, because Iternio limits each key to a few requests per second. Create yours with the (i) button above.'**
  String get settingsAbrpApiKeyHelp;

  /// No description provided for @settingsAbrpHelpTitle.
  ///
  /// In en, this message translates to:
  /// **'How to connect ABRP'**
  String get settingsAbrpHelpTitle;

  /// No description provided for @settingsAbrpHelpClose.
  ///
  /// In en, this message translates to:
  /// **'Close the ABRP help'**
  String get settingsAbrpHelpClose;

  /// No description provided for @settingsAbrpHelpApiKeyTitle.
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get settingsAbrpHelpApiKeyTitle;

  /// No description provided for @settingsAbrpHelpApiKeySteps.
  ///
  /// In en, this message translates to:
  /// **'Open the ABRP API keys page below. Go to API Keys, then Create Key. Set App Name to Eaglemetry and press Create Key. Copy the new key into the API KEY field.'**
  String get settingsAbrpHelpApiKeySteps;

  /// No description provided for @settingsAbrpHelpApiKeyLink.
  ///
  /// In en, this message translates to:
  /// **'https://abetterrouteplanner.com/home/app/api-keys/telemetry'**
  String get settingsAbrpHelpApiKeyLink;

  /// No description provided for @settingsAbrpHelpLinkFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open the browser. The address is {url}'**
  String settingsAbrpHelpLinkFailed(Object url);

  /// No description provided for @settingsAbrpHelpTokenTitle.
  ///
  /// In en, this message translates to:
  /// **'User token'**
  String get settingsAbrpHelpTokenTitle;

  /// No description provided for @settingsAbrpHelpTokenSteps.
  ///
  /// In en, this message translates to:
  /// **'Open the ABRP app. Go to Vehicle, then Live Data, then Generic. Press Copy Token and put the token in the token field.'**
  String get settingsAbrpHelpTokenSteps;

  /// No description provided for @settingsAbrpStateStreaming.
  ///
  /// In en, this message translates to:
  /// **'Sending live data to ABRP'**
  String get settingsAbrpStateStreaming;

  /// No description provided for @settingsAbrpStateIdle.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the car live stream'**
  String get settingsAbrpStateIdle;

  /// No description provided for @settingsAbrpStateError.
  ///
  /// In en, this message translates to:
  /// **'Error: {message}'**
  String settingsAbrpStateError(String message);

  /// No description provided for @settingsAbrpStateDisabled.
  ///
  /// In en, this message translates to:
  /// **'Sending is off'**
  String get settingsAbrpStateDisabled;

  /// No description provided for @settingsThemeDesc.
  ///
  /// In en, this message translates to:
  /// **'The theme is shared with the car when the two sync.'**
  String get settingsThemeDesc;

  /// No description provided for @settingsAccount.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settingsAccount;

  /// Names the address that is signed in.
  ///
  /// In en, this message translates to:
  /// **'Signed in as {email}'**
  String settingsSignedInAs(String email);

  /// No description provided for @settingsSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get settingsSignOut;

  /// No description provided for @settingsSignedOut.
  ///
  /// In en, this message translates to:
  /// **'No account is signed in on this phone.'**
  String get settingsSignedOut;

  /// No description provided for @settingsNoAccountServer.
  ///
  /// In en, this message translates to:
  /// **'This build carries no account server.'**
  String get settingsNoAccountServer;

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

  /// No description provided for @insightNameLocation.
  ///
  /// In en, this message translates to:
  /// **'Name location'**
  String get insightNameLocation;

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

  /// No description provided for @navInsights.
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get navInsights;

  /// No description provided for @insightsTitle.
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get insightsTitle;

  /// No description provided for @insightsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Routes between your named places'**
  String get insightsSubtitle;

  /// No description provided for @insightsInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'How insights work'**
  String get insightsInfoTitle;

  /// No description provided for @insightsInfoBody.
  ///
  /// In en, this message translates to:
  /// **'Insights compare your measured trips between named places.\n\nA trip is measured when the car recorded its pack energy, minute buckets, and a battery reading that agrees.\n\nEach direction is separate: going to a place and coming back are two different routes.\n\nComparisons need at least 4 measured trips in the same direction. Until then the route stays locked and shows how many are missing.\n\nOpen a route to see every measured run ranked from most to least efficient.'**
  String get insightsInfoBody;

  /// No description provided for @insightsInfoClose.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get insightsInfoClose;

  /// No description provided for @insightRouteTrips.
  ///
  /// In en, this message translates to:
  /// **'{count} trips'**
  String insightRouteTrips(int count);

  /// No description provided for @insightMeasuredOf.
  ///
  /// In en, this message translates to:
  /// **'{measured} of {total} trips measured'**
  String insightMeasuredOf(int measured, int total);

  /// No description provided for @insightRankingTitle.
  ///
  /// In en, this message translates to:
  /// **'Route ranking'**
  String get insightRankingTitle;

  /// No description provided for @insightRankingBest.
  ///
  /// In en, this message translates to:
  /// **'Best run'**
  String get insightRankingBest;

  /// No description provided for @insightRouteMissingTrips.
  ///
  /// In en, this message translates to:
  /// **'{count} more measured trips needed before comparisons start'**
  String insightRouteMissingTrips(int count);

  /// No description provided for @insightsNoRoutesTitle.
  ///
  /// In en, this message translates to:
  /// **'No routes yet'**
  String get insightsNoRoutesTitle;

  /// No description provided for @insightsNoRoutesBody.
  ///
  /// In en, this message translates to:
  /// **'Name the start and end places of your trips to group routes and see consumption statistics here.'**
  String get insightsNoRoutesBody;

  /// No description provided for @navJourneys.
  ///
  /// In en, this message translates to:
  /// **'Journeys'**
  String get navJourneys;

  /// No description provided for @journeysTitle.
  ///
  /// In en, this message translates to:
  /// **'Journeys'**
  String get journeysTitle;

  /// No description provided for @journeysNew.
  ///
  /// In en, this message translates to:
  /// **'New journey'**
  String get journeysNew;

  /// No description provided for @journeysEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No journeys yet'**
  String get journeysEmptyTitle;

  /// No description provided for @journeysEmptyDesc.
  ///
  /// In en, this message translates to:
  /// **'Group trips and charges into a named event, like a holiday or a weekend drive.'**
  String get journeysEmptyDesc;

  /// No description provided for @journeyName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get journeyName;

  /// No description provided for @journeyNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Holiday in Rio'**
  String get journeyNameHint;

  /// No description provided for @journeyNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get journeyNote;

  /// No description provided for @journeyNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Optional details or memories'**
  String get journeyNoteHint;

  /// No description provided for @journeyStartDate.
  ///
  /// In en, this message translates to:
  /// **'Start date'**
  String get journeyStartDate;

  /// No description provided for @journeyEndDate.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get journeyEndDate;

  /// No description provided for @journeySave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get journeySave;

  /// No description provided for @journeyEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit journey'**
  String get journeyEdit;

  /// No description provided for @journeyDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete journey'**
  String get journeyDelete;

  /// No description provided for @journeyDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this journey? The trips and charges will remain in your history.'**
  String get journeyDeleteConfirm;

  /// No description provided for @journeySessionsCount.
  ///
  /// In en, this message translates to:
  /// **'{trips} trips · {charges} charges'**
  String journeySessionsCount(int trips, int charges);

  /// No description provided for @journeySessionsInWindow.
  ///
  /// In en, this message translates to:
  /// **'Trips and charges in this journey'**
  String get journeySessionsInWindow;

  /// No description provided for @journeyNoSessionsInWindow.
  ///
  /// In en, this message translates to:
  /// **'No trips or charges found in this time window.'**
  String get journeyNoSessionsInWindow;

  /// No description provided for @journeyCost.
  ///
  /// In en, this message translates to:
  /// **'Charges cost'**
  String get journeyCost;

  /// No description provided for @journeyParkedDuration.
  ///
  /// In en, this message translates to:
  /// **'Parked for {duration}'**
  String journeyParkedDuration(String duration);

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

  /// No description provided for @insightNotEnoughData.
  ///
  /// In en, this message translates to:
  /// **'Not enough measured trips in the last 30 days yet ({count} usable).'**
  String insightNotEnoughData(int count);

  /// No description provided for @insightSubjectUnusable.
  ///
  /// In en, this message translates to:
  /// **'This route has no measured pack energy to compare.'**
  String get insightSubjectUnusable;

  /// No description provided for @insightNotDistinguishable.
  ///
  /// In en, this message translates to:
  /// **'This route cannot yet be told apart from your last 30 days ({count} trips).'**
  String insightNotDistinguishable(int count);

  /// No description provided for @insightTripUsedLess.
  ///
  /// In en, this message translates to:
  /// **'This route used {difference} Wh/km less than your last 30 days ({count} trips).'**
  String insightTripUsedLess(String difference, int count);

  /// No description provided for @insightTripUsedMore.
  ///
  /// In en, this message translates to:
  /// **'This route used {difference} Wh/km more than your last 30 days ({count} trips).'**
  String insightTripUsedMore(String difference, int count);

  /// No description provided for @insightClaimTitle.
  ///
  /// In en, this message translates to:
  /// **'The Claim'**
  String get insightClaimTitle;

  /// No description provided for @insightBaselineTitle.
  ///
  /// In en, this message translates to:
  /// **'Baseline'**
  String get insightBaselineTitle;

  /// No description provided for @insightBaseline30d.
  ///
  /// In en, this message translates to:
  /// **'Vehicle 30-day average'**
  String get insightBaseline30d;

  /// No description provided for @insightBaselineVariant.
  ///
  /// In en, this message translates to:
  /// **'Other route way'**
  String get insightBaselineVariant;

  /// No description provided for @insightConfidenceSupported.
  ///
  /// In en, this message translates to:
  /// **'Supported'**
  String get insightConfidenceSupported;

  /// No description provided for @insightConfidenceDistinguishable.
  ///
  /// In en, this message translates to:
  /// **'Within noise'**
  String get insightConfidenceDistinguishable;

  /// No description provided for @insightConfidenceInsufficient.
  ///
  /// In en, this message translates to:
  /// **'Insufficient data'**
  String get insightConfidenceInsufficient;

  /// No description provided for @insightSupportSample.
  ///
  /// In en, this message translates to:
  /// **'{count} trips considered'**
  String insightSupportSample(int count);

  /// No description provided for @insightMeasured.
  ///
  /// In en, this message translates to:
  /// **'Measured'**
  String get insightMeasured;

  /// No description provided for @insightReference.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get insightReference;

  /// No description provided for @insightExclusionNeverRecorded.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip without energy data} other{{count} trips without energy data}}'**
  String insightExclusionNeverRecorded(int count);

  /// No description provided for @insightExclusionNoMinuteBuckets.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip without interval data} other{{count} trips without interval data}}'**
  String insightExclusionNoMinuteBuckets(int count);

  /// No description provided for @insightExclusionSignContradiction.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip with inconsistent energy flow} other{{count} trips with inconsistent energy flow}}'**
  String insightExclusionSignContradiction(int count);

  /// No description provided for @insightExclusionUnconfirmedSign.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip with unconfirmed energy flow} other{{count} trips with unconfirmed energy flow}}'**
  String insightExclusionUnconfirmedSign(int count);

  /// No description provided for @insightExclusionTooShort.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip shorter than 0.5 km} other{{count} trips shorter than 0.5 km}}'**
  String insightExclusionTooShort(int count);

  /// No description provided for @insightExclusionNotClosed.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip not closed} other{{count} trips not closed}}'**
  String insightExclusionNotClosed(int count);

  /// No description provided for @insightExclusionVersionMismatch.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip in older format} other{{count} trips in older format}}'**
  String insightExclusionVersionMismatch(int count);

  /// No description provided for @insightExclusionOutsideWindow.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip outside 30-day window} other{{count} trips outside 30-day window}}'**
  String insightExclusionOutsideWindow(int count);

  /// No description provided for @insightExclusionNotOnRoute.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip on a different route} other{{count} trips on a different route}}'**
  String insightExclusionNotOnRoute(int count);

  /// No description provided for @insightExclusionOtherVariant.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 trip on another variant} other{{count} trips on another variant}}'**
  String insightExclusionOtherVariant(int count);

  /// No description provided for @insightConsideredTripsTitle.
  ///
  /// In en, this message translates to:
  /// **'Considered Trips'**
  String get insightConsideredTripsTitle;

  /// No description provided for @insightNoConsideredTrips.
  ///
  /// In en, this message translates to:
  /// **'No trips considered yet'**
  String get insightNoConsideredTrips;

  /// No description provided for @insightRouteTrendTitle.
  ///
  /// In en, this message translates to:
  /// **'Route Trend'**
  String get insightRouteTrendTitle;

  /// No description provided for @insightNoRouteTrips.
  ///
  /// In en, this message translates to:
  /// **'No trips on this route yet'**
  String get insightNoRouteTrips;

  /// No description provided for @settingsNominatimTitle.
  ///
  /// In en, this message translates to:
  /// **'Place name suggestion'**
  String get settingsNominatimTitle;

  /// No description provided for @settingsNominatimOptIn.
  ///
  /// In en, this message translates to:
  /// **'Suggest name via Nominatim'**
  String get settingsNominatimOptIn;

  /// No description provided for @settingsNominatimOptInDesc.
  ///
  /// In en, this message translates to:
  /// **'Uses Nominatim (OpenStreetMap) to suggest an address when you name a place. Cached per 100 m cell for 30 days, 1 request per second. Off by default.'**
  String get settingsNominatimOptInDesc;

  /// No description provided for @settingsNominatimAttribution.
  ///
  /// In en, this message translates to:
  /// **'© OpenStreetMap contributors'**
  String get settingsNominatimAttribution;

  /// No description provided for @settingsStorageTitle.
  ///
  /// In en, this message translates to:
  /// **'Storage used'**
  String get settingsStorageTitle;

  /// No description provided for @settingsStorageDesc.
  ///
  /// In en, this message translates to:
  /// **'How much disk the archive occupies on this phone.'**
  String get settingsStorageDesc;

  /// No description provided for @settingsStorageLoading.
  ///
  /// In en, this message translates to:
  /// **'Checking…'**
  String get settingsStorageLoading;

  /// No description provided for @settingsStorageFailed.
  ///
  /// In en, this message translates to:
  /// **'Storage check failed: {error}'**
  String settingsStorageFailed(String error);

  /// No description provided for @settingsStorageValue.
  ///
  /// In en, this message translates to:
  /// **'{size} used'**
  String settingsStorageValue(String size);

  /// No description provided for @controlCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Car controls'**
  String get controlCardTitle;

  /// No description provided for @controlCardDesc.
  ///
  /// In en, this message translates to:
  /// **'These change what the car does or records. They take effect only when the car confirms them.'**
  String get controlCardDesc;

  /// No description provided for @controlStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the car'**
  String get controlStatusPending;

  /// No description provided for @controlStatusConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirmed by the car'**
  String get controlStatusConfirmed;

  /// No description provided for @controlStatusStale.
  ///
  /// In en, this message translates to:
  /// **'Waiting — a newer value proposed'**
  String get controlStatusStale;

  /// No description provided for @controlStatusRefused.
  ///
  /// In en, this message translates to:
  /// **'Refused by the car'**
  String get controlStatusRefused;

  /// No description provided for @controlStatusReportedOnly.
  ///
  /// In en, this message translates to:
  /// **'The car runs this without a proposal'**
  String get controlStatusReportedOnly;

  /// No description provided for @controlKeyPackCapacity.
  ///
  /// In en, this message translates to:
  /// **'Battery capacity'**
  String get controlKeyPackCapacity;

  /// No description provided for @controlKeyChargeCost.
  ///
  /// In en, this message translates to:
  /// **'Default charge price'**
  String get controlKeyChargeCost;

  /// No description provided for @controlDesiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Proposed:'**
  String get controlDesiredLabel;

  /// No description provided for @controlReportedLabel.
  ///
  /// In en, this message translates to:
  /// **'Car shows:'**
  String get controlReportedLabel;

  /// No description provided for @controlValueMissing.
  ///
  /// In en, this message translates to:
  /// **'not set'**
  String get controlValueMissing;

  /// No description provided for @controlProposeAction.
  ///
  /// In en, this message translates to:
  /// **'Propose a new value'**
  String get controlProposeAction;

  /// No description provided for @controlProposing.
  ///
  /// In en, this message translates to:
  /// **'Proposing…'**
  String get controlProposing;

  /// No description provided for @controlProposeFieldHint.
  ///
  /// In en, this message translates to:
  /// **'New value'**
  String get controlProposeFieldHint;

  /// No description provided for @controlProposeCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get controlProposeCancel;

  /// No description provided for @controlProposeSend.
  ///
  /// In en, this message translates to:
  /// **'Propose'**
  String get controlProposeSend;

  /// No description provided for @controlProposedStatus.
  ///
  /// In en, this message translates to:
  /// **'Proposed. Status: {status}.'**
  String controlProposedStatus(String status);

  /// No description provided for @controlProposedStatusUnknown.
  ///
  /// In en, this message translates to:
  /// **'Proposed. Waiting for the car.'**
  String get controlProposedStatusUnknown;

  /// No description provided for @controlNoRowsForKey.
  ///
  /// In en, this message translates to:
  /// **'No proposal or report yet.'**
  String get controlNoRowsForKey;

  /// No description provided for @controlNoRows.
  ///
  /// In en, this message translates to:
  /// **'No control proposals yet.'**
  String get controlNoRows;

  /// No description provided for @controlNoVehicle.
  ///
  /// In en, this message translates to:
  /// **'This phone cannot name a car it owns, so it refuses to propose.'**
  String get controlNoVehicle;

  /// No description provided for @controlUnconfigured.
  ///
  /// In en, this message translates to:
  /// **'Sign in and connect this phone to the cloud to change car controls.'**
  String get controlUnconfigured;

  /// No description provided for @controlLastError.
  ///
  /// In en, this message translates to:
  /// **'Car controls could not be read: {error}'**
  String controlLastError(String error);

  /// No description provided for @controlRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh status'**
  String get controlRefresh;

  /// No description provided for @controlRefreshing.
  ///
  /// In en, this message translates to:
  /// **'Refreshing…'**
  String get controlRefreshing;

  /// No description provided for @syncPending.
  ///
  /// In en, this message translates to:
  /// **'{count} of your own edits are still to send.'**
  String syncPending(int count);

  /// No description provided for @syncNothingPending.
  ///
  /// In en, this message translates to:
  /// **'Nothing is waiting to be sent.'**
  String get syncNothingPending;

  /// No description provided for @syncAutoNote.
  ///
  /// In en, this message translates to:
  /// **'Sync runs on its own every 10 minutes while the app is open. This button is temporary: it forces a sync now.'**
  String get syncAutoNote;

  /// No description provided for @syncLastRunTitle.
  ///
  /// In en, this message translates to:
  /// **'Last sync'**
  String get syncLastRunTitle;
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
