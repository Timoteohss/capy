// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry Companion';

  @override
  String get pairingTitle => 'Pair with the car';

  @override
  String get pairingBody => 'Type the 6-digit code shown on the car.';

  @override
  String get pairingCodeHint => '000000';

  @override
  String get pairingAction => 'Pair';

  @override
  String get pairingForget => 'Forget this car';

  @override
  String get pairingInvalidCode => 'Enter the 6 digits from the car.';

  @override
  String get pairingRejected => 'The car refused this code.';

  @override
  String get pairingNotFound => 'Code not found. Check the code and try again.';

  @override
  String get pairingExpired => 'Code expired. Ask the car for a new code.';

  @override
  String get pairingAlreadyClaimed =>
      'Code already used. Ask the car for a new code.';

  @override
  String get pairingVehicleAlreadyClaimed =>
      'This vehicle is already paired to another account.';

  @override
  String get pairingNetworkError => 'Network error. Try again.';

  @override
  String get pairingUnknownError => 'Something went wrong. Try again.';

  @override
  String get pairingNoNetwork =>
      'No internet. Check your connection and try again.';

  @override
  String get pairingBackendUnreachable => 'Can\'t reach the server. Try again.';

  @override
  String get pairingRetry => 'Retry';

  @override
  String get pairingSignedOut => 'Sign in to pair this car.';

  @override
  String get homePairedTitle => 'Paired';

  @override
  String get homePairedBody =>
      'This phone reads the car\'s history from your cloud account.';

  @override
  String get homeNoteLabel => 'Note';

  @override
  String get homeNoteBody =>
      'The car is the source. This phone keeps the long history after a sync.';

  @override
  String get syncTitle => 'Sync';

  @override
  String get syncAction => 'SYNC NOW';

  @override
  String get syncRunning => 'SYNCING';

  @override
  String get syncProgressLabel => 'Cloud sync progress';

  @override
  String get syncProgressUpToDate => '100% in sync';

  @override
  String syncProgressPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pending',
      one: '1 pending',
    );
    return '$_temp0';
  }

  @override
  String syncProgressDetail(int clean, int total) {
    return '$clean of $total records in the cloud';
  }

  @override
  String get syncNeverRun => 'Not synced yet';

  @override
  String syncHolding(int trips, int charges) {
    return '$trips trips, $charges charges on this phone';
  }

  @override
  String syncLastRun(Object time) {
    return 'Last sync: $time';
  }

  @override
  String syncResultCompleted(Object records) {
    return '$records records came down from the cloud.';
  }

  @override
  String get syncResultNothing => 'The car had nothing new.';

  @override
  String get syncResultFailed =>
      'Sync did not reach the cloud. Check your connection and try again.';

  @override
  String get syncResultCloudDisabled => 'Cloud sync is disabled in this build.';

  @override
  String get syncResultPhoneOffline =>
      'This phone could not reach the cloud. Check its connection and try again.';

  @override
  String get syncResultCarSilent =>
      'The car sent nothing to the cloud. If the car has new trips, check its connection.';

  @override
  String get syncStreamTrips => 'Trips';

  @override
  String get syncStreamCharges => 'Charges';

  @override
  String get syncStreamCycles => 'Cycles';

  @override
  String get syncStreamIntervals => 'Intervals';

  @override
  String get syncStreamEvents => 'Events';

  @override
  String get syncStreamFrames => 'Frames';

  @override
  String get syncStreamTracks => 'Routes';

  @override
  String syncProgressCounted(Object stream, int done, int total) {
    return '$stream: $done of $total';
  }

  @override
  String syncProgressUnknown(Object stream, int done) {
    return '$stream: $done';
  }

  @override
  String syncProgressSession(int index, int count) {
    return 'Session $index of $count';
  }

  @override
  String get syncWipeAction => 'CLEAR LOCAL DATA';

  @override
  String get syncWipeTitle => 'Clear local data?';

  @override
  String get syncWipeBody =>
      'This phone deletes every trip, charge and record it pulled. The car keeps its own. The next sync copies the history again from the start.';

  @override
  String get syncWipeCancel => 'CANCEL';

  @override
  String get syncWipeConfirm => 'CLEAR';

  @override
  String get syncStreamWaiting => 'Waiting';

  @override
  String get navSync => 'Sync';

  @override
  String get navHistory => 'History';

  @override
  String get navTrips => 'Trips';

  @override
  String get navCharges => 'Charges';

  @override
  String get navBattery => 'Battery';

  @override
  String get navSettings => 'Settings';

  @override
  String get navComingSoon => 'Coming soon.';

  @override
  String get historyTrips => 'Trips';

  @override
  String get historyCharges => 'Charges';

  @override
  String get historyEmpty => 'Nothing here yet. Sync with the car.';

  @override
  String historyTripMeta(Object duration, Object distance) {
    return '$duration · $distance km';
  }

  @override
  String historyRowEnergy(Object energy) {
    return '$energy kWh';
  }

  @override
  String historyFailed(Object reason) {
    return 'The archive could not be read: $reason';
  }

  @override
  String get historyRoute => 'Route';

  @override
  String get historyNoRoute => 'This drive carries no position fix.';

  @override
  String get historyMapExpand => 'Expand the map';

  @override
  String get historyMapCollapse => 'Shrink the map';

  @override
  String get historyDuration => 'Duration';

  @override
  String get historyDistance => 'Distance';

  @override
  String get historySoc => 'Charge';

  @override
  String get historyConsumed => 'Used';

  @override
  String get historyRegenerated => 'Recovered';

  @override
  String get historyEfficiency => 'Efficiency';

  @override
  String get historyClimb => 'Climb';

  @override
  String get historyTemperature => 'Outside';

  @override
  String get historyStart => 'Plugged in';

  @override
  String get historyEnd => 'Unplugged';

  @override
  String get historyEnergy => 'Energy';

  @override
  String get historyPeakPower => 'Peak power';

  @override
  String get historyAveragePower => 'Average power';

  @override
  String get historyPeakAndAverage => 'Peak & average';

  @override
  String get historyChargingPower => 'Charging power';

  @override
  String get historyChargeLocation => 'Location';

  @override
  String get historyChargeCost => 'Cost';

  @override
  String get historyEditCost => 'Edit the price of this charge';

  @override
  String get chargeCostTitle => 'Charge price';

  @override
  String get chargeCostDescription =>
      'Applies to this charge only. Type a price per kWh, or the total you paid.';

  @override
  String get chargeCostFieldRate => 'Price/kWh';

  @override
  String get chargeCostFieldTotal => 'Total paid';

  @override
  String get chargeCostUnitRate => '/kWh';

  @override
  String get moneyKeypadSave => 'Save';

  @override
  String get moneyKeypadClear => 'Clear the amount';

  @override
  String get moneyKeypadDelete => 'Delete the last digit';

  @override
  String get moneyKeypadClose => 'Close the price keypad';

  @override
  String get historyVoltage => 'Pack voltage';

  @override
  String historyFrameCount(Object count) {
    return '$count recorded samples';
  }

  @override
  String get historyBattery => 'Battery';

  @override
  String get historyEnergyBalance => 'Energy balance';

  @override
  String get historyEvents => 'Events';

  @override
  String get eventTripArmed => 'Trip armed';

  @override
  String get eventTripStarted => 'Trip started';

  @override
  String get eventTripPendingEnd => 'Trip stopping';

  @override
  String get eventTripCancelled => 'Trip cancelled';

  @override
  String get eventTripEnded => 'Trip ended';

  @override
  String get eventTripRecovered => 'Trip recovered';

  @override
  String get eventChargePlugConnected => 'Plug connected';

  @override
  String get eventChargeStarted => 'Charging started';

  @override
  String get eventChargeEnded => 'Charging ended';

  @override
  String get eventChargePlugDisconnected => 'Plug disconnected';

  @override
  String get eventChargeRecovered => 'Charge recovered';

  @override
  String get eventChargeLimitReached => 'Target charge reached';

  @override
  String get historyTraction => 'Traction';

  @override
  String get historyAuxiliary => 'Other systems';

  @override
  String get historyRecovered => 'Recovered';

  @override
  String historyTotalDelivered(Object energy) {
    return '$energy kWh delivered in total';
  }

  @override
  String historyNetConsumed(Object energy) {
    return '$energy kWh net consumed';
  }

  @override
  String historyWh(Object energy) {
    return '$energy Wh';
  }

  @override
  String get historyPerMinute => 'Spent and recovered';

  @override
  String historyPerColumn(int minutes) {
    return '$minutes min per column';
  }

  @override
  String get historyTerrain => 'Terrain and weather';

  @override
  String get historyAltitude => 'Altitude';

  @override
  String get historyOutsideTemp => 'Outside temperature';

  @override
  String get historyDriveMode => 'Drive mode';

  @override
  String get historyDriveModeNormal => 'Normal';

  @override
  String get historyDriveModeEco => 'Eco';

  @override
  String get historyDriveModeSport => 'Sport';

  @override
  String get historyDriveModeOther => 'Other';

  @override
  String get historyClimate => 'Climate';

  @override
  String historyClimateShare(int percent) {
    return 'On for $percent% of the drive';
  }

  @override
  String get historyClimateCooling => 'Cooling';

  @override
  String get historyClimateHeating => 'Heating';

  @override
  String get historyClimateBoth => 'Cooling and heating';

  @override
  String historyClimateBlower(Object level) {
    return 'Fan $level';
  }

  @override
  String historyClimateSetpoint(Object degrees) {
    return 'Cabin set to $degrees °C';
  }

  @override
  String get historyClimateOff => 'The climate system stayed off.';

  @override
  String get historyClimateInAux =>
      'Its energy is counted in Other systems. The car does not report the amount.';

  @override
  String historyDriveModeShare(Object mode, int percent) {
    return '$mode $percent%';
  }

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingStart => 'Get started';

  @override
  String get onboardingBack => 'Back';

  @override
  String get onboardingSlide1Title => 'Meet Eaglemetry';

  @override
  String get onboardingSlide1Body =>
      'The energy of your car, recorded drive after drive.';

  @override
  String get onboardingSlide2Title => 'See every trip and charge';

  @override
  String get onboardingSlide2Body =>
      'Eaglemetry reads your trips and charges from the car through your cloud account.';

  @override
  String get onboardingSlide3Title => 'Pair in seconds';

  @override
  String get onboardingSlide3Body =>
      'Type the 6-digit code the car shows on its screen. The history stays on your phone.';

  @override
  String get onboardingPairTitle => 'Pair with your car';

  @override
  String get onboardingPairBody =>
      'Type the 6-digit code shown on the car screen, under Sync.';

  @override
  String get onboardingCodeLabel => '6-digit code';

  @override
  String get onboardingPairing => 'Pairing';

  @override
  String get onboardingSyncingTitle => 'Syncing';

  @override
  String get onboardingSyncingBody =>
      'The phone pulls the records in this order: trips, charges, cycles, then frames.';

  @override
  String get onboardingStreamWaiting => 'Waiting';

  @override
  String onboardingWritten(int done) {
    return '$done written';
  }

  @override
  String onboardingCounted(int done, int total) {
    return '$done of $total';
  }

  @override
  String get onboardingPairedTitle => 'Car paired.';

  @override
  String onboardingPairedBody(int records) {
    return '$records records are on this phone.';
  }

  @override
  String get onboardingPairedNothing => 'The car had nothing to send yet.';

  @override
  String get onboardingSyncFailed =>
      'The car was not reached. Sync later from the Sync tab.';

  @override
  String get onboardingSyncCloudDisabled =>
      'Cloud sync is disabled in this build. Sync stays on this phone.';

  @override
  String get onboardingSyncPhoneOffline =>
      'This phone could not reach the cloud. Check its connection, then sync from the Sync tab.';

  @override
  String get onboardingSyncCarSilent =>
      'The car sent nothing yet. If the car has trips, check its connection, then sync again.';

  @override
  String get onboardingContinue => 'Continue';

  @override
  String get onboardingLoginTitle => 'Welcome back';

  @override
  String get onboardingLoginBody => 'Log in to your Eaglemetry account.';

  @override
  String get onboardingCreateTitle => 'Create your account';

  @override
  String get onboardingCreateBody =>
      'One account for this app. The trips stay on this phone.';

  @override
  String get onboardingEmailLabel => 'Email';

  @override
  String get onboardingEmailHint => 'you@example.com';

  @override
  String get onboardingPasswordLabel => 'Password';

  @override
  String get onboardingShowPassword => 'Show the password';

  @override
  String get onboardingHidePassword => 'Hide the password';

  @override
  String get onboardingLogIn => 'Log in';

  @override
  String get onboardingLoggingIn => 'Signing in';

  @override
  String get onboardingCreating => 'Creating the account';

  @override
  String get onboardingForgotPassword => 'Forgot password?';

  @override
  String get onboardingCreateAccount => 'Create account';

  @override
  String get onboardingHaveAccount => 'I have an account';

  @override
  String get onboardingWelcomeTitle => 'You are in.';

  @override
  String onboardingWelcomeBody(Object email) {
    return 'Signed in as $email. Next, pair with your car.';
  }

  @override
  String get onboardingContinueToPairing => 'Continue to pairing';

  @override
  String get accountInvalidEmail => 'Type a valid email address.';

  @override
  String accountWeakPassword(int count) {
    return 'The password must have at least $count characters, including uppercase, lowercase letters, and digits.';
  }

  @override
  String get accountWrongCredentials => 'The email or the password is wrong.';

  @override
  String get accountEmailNotConfirmed =>
      'Confirm the address from the email first.';

  @override
  String get accountAlreadyRegistered =>
      'This address already has an account. Log in.';

  @override
  String get accountRateLimited => 'Too many attempts. Wait, then try again.';

  @override
  String get accountNetwork => 'The account server was not reached.';

  @override
  String get accountUnconfigured => 'This build carries no account server.';

  @override
  String get accountUnknown => 'The account server refused this action.';

  @override
  String get accountConfirmEmail => 'Open your email and confirm the address.';

  @override
  String get accountResetSent =>
      'If that address has an account, the reset email is on its way.';

  @override
  String get syncStreamAnnotations => 'Annotations';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsBeta => 'Beta';

  @override
  String get settingsBetaDesc =>
      'Features still under test. They can change or stop working.';

  @override
  String get settingsBetaAbrpSync => 'Sync data with ABRP';

  @override
  String get settingsBetaAbrpSyncDesc =>
      'Reads the live car data over Bluetooth and sends it to A Better Routeplanner. The phone asks for Bluetooth permission when you switch this on.';

  @override
  String get settingsAbrpTokenLabel => 'Your ABRP token';

  @override
  String get settingsAbrpTokenHint => 'e.g. 12345678-abcd-...';

  @override
  String get settingsAbrpTokenHelp =>
      'Get the token in the ABRP app: Settings, Car model, Live Data, Generic (Iternio).';

  @override
  String get settingsAbrpApiKeyLabel => 'Your ABRP API key';

  @override
  String get settingsAbrpApiKeyHint => 'e.g. 12345678-abcd-...';

  @override
  String get settingsAbrpApiKeyHelp =>
      'Required. Eaglemetry ships with no key of its own, because Iternio limits each key to a few requests per second. Create yours with the (i) button above.';

  @override
  String get settingsAbrpHelpTitle => 'How to connect ABRP';

  @override
  String get settingsAbrpHelpClose => 'Close the ABRP help';

  @override
  String get settingsAbrpHelpApiKeyTitle => 'API key';

  @override
  String get settingsAbrpHelpApiKeySteps =>
      'Open the ABRP API keys page below. Go to API Keys, then Create Key. Set App Name to Eaglemetry and press Create Key. Copy the new key into the API KEY field.';

  @override
  String get settingsAbrpHelpApiKeyLink =>
      'https://abetterrouteplanner.com/home/app/api-keys/telemetry';

  @override
  String settingsAbrpHelpLinkFailed(Object url) {
    return 'Could not open the browser. The address is $url';
  }

  @override
  String get settingsAbrpHelpTokenTitle => 'User token';

  @override
  String get settingsAbrpHelpTokenSteps =>
      'Open the ABRP app. Go to Vehicle, then Live Data, then Generic. Press Copy Token and put the token in the token field.';

  @override
  String get settingsAbrpStateStreaming => 'Sending live data to ABRP';

  @override
  String get settingsAbrpStateIdle => 'Waiting for the car live stream';

  @override
  String settingsAbrpStateError(String message) {
    return 'Error: $message';
  }

  @override
  String get settingsAbrpStateDisabled => 'Sending is off';

  @override
  String get settingsThemeDesc =>
      'The theme is shared with the car when the two sync.';

  @override
  String get settingsAccount => 'Account';

  @override
  String settingsSignedInAs(String email) {
    return 'Signed in as $email';
  }

  @override
  String get settingsSignOut => 'Sign out';

  @override
  String get settingsSignedOut => 'No account is signed in on this phone.';

  @override
  String get settingsNoAccountServer => 'This build carries no account server.';

  @override
  String get settingsThemeNameLight => 'Light';

  @override
  String get settingsThemeNameDark => 'Petrol';

  @override
  String get settingsThemeNameMidnight => 'Midnight';

  @override
  String get settingsThemeNameSepia => 'Sepia';

  @override
  String get settingsThemeNameNordic => 'Nordic';

  @override
  String get settingsThemeNameDaylight => 'Daylight';

  @override
  String get settingsThemeNameTokyoNeon => 'Tokyo Neon';

  @override
  String get settingsThemeNameSunsetDrive => 'Sunset Drive';

  @override
  String get settingsThemeNameBubblegum => 'Bubblegum';

  @override
  String get insightNameStart => 'Name start';

  @override
  String get insightNameEnd => 'Name end';

  @override
  String get insightNameLocation => 'Name location';

  @override
  String get insightPlaceTitle => 'Name this place';

  @override
  String get insightPlaceHint => 'Name';

  @override
  String get insightPlaceSave => 'Save';

  @override
  String get insightPlaceCancel => 'Cancel';

  @override
  String get navInsights => 'Insights';

  @override
  String get insightsTitle => 'Insights';

  @override
  String get insightsSubtitle => 'Routes between your named places';

  @override
  String get insightsInfoTitle => 'How insights work';

  @override
  String get insightsInfoBody =>
      'Insights compare your measured trips between named places.\n\nA trip is measured when the car recorded its pack energy, minute buckets, and a battery reading that agrees.\n\nEach direction is separate: going to a place and coming back are two different routes.\n\nComparisons need at least 4 measured trips in the same direction. Until then the route stays locked and shows how many are missing.\n\nOpen a route to see every measured run ranked from most to least efficient.';

  @override
  String get insightsInfoClose => 'Got it';

  @override
  String insightRouteTrips(int count) {
    return '$count trips';
  }

  @override
  String insightMeasuredOf(int measured, int total) {
    return '$measured of $total trips measured';
  }

  @override
  String get insightRankingTitle => 'Route ranking';

  @override
  String get insightRankingBest => 'Best run';

  @override
  String insightRouteMissingTrips(int count) {
    return '$count more measured trips needed before comparisons start';
  }

  @override
  String get insightsNoRoutesTitle => 'No routes yet';

  @override
  String get insightsNoRoutesBody =>
      'Name the start and end places of your trips to group routes and see consumption statistics here.';

  @override
  String get navJourneys => 'Journeys';

  @override
  String get journeysTitle => 'Journeys';

  @override
  String get journeysNew => 'New journey';

  @override
  String get journeysEmptyTitle => 'No journeys yet';

  @override
  String get journeysEmptyDesc =>
      'Group trips and charges into a named event, like a holiday or a weekend drive.';

  @override
  String get journeyName => 'Name';

  @override
  String get journeyNameHint => 'e.g. Holiday in Rio';

  @override
  String get journeyNote => 'Note';

  @override
  String get journeyNoteHint => 'Optional details or memories';

  @override
  String get journeyStartDate => 'Start date';

  @override
  String get journeyEndDate => 'End date';

  @override
  String get journeySave => 'Save';

  @override
  String get journeyEdit => 'Edit journey';

  @override
  String get journeyDelete => 'Delete journey';

  @override
  String get journeyDeleteConfirm =>
      'Are you sure you want to delete this journey? The trips and charges will remain in your history.';

  @override
  String journeySessionsCount(int trips, int charges) {
    return '$trips trips · $charges charges';
  }

  @override
  String get journeySessionsInWindow => 'Trips and charges in this journey';

  @override
  String get journeyNoSessionsInWindow =>
      'No trips or charges found in this time window.';

  @override
  String get journeyCost => 'Charges cost';

  @override
  String journeyParkedDuration(String duration) {
    return 'Parked for $duration';
  }

  @override
  String insightRouteVariants(int count) {
    return '$count ways';
  }

  @override
  String insightVariantNotEnough(int count) {
    return 'Not enough compared trips of this route yet ($count).';
  }

  @override
  String insightVariantNotDistinguishable(String place, int count) {
    return 'These two ways to $place cannot yet be told apart ($count compared).';
  }

  @override
  String insightVariantUsedLess(String difference, String place, int count) {
    return 'This way used $difference Wh/km less than the other way to $place ($count compared).';
  }

  @override
  String insightVariantUsedMore(String difference, String place, int count) {
    return 'This way used $difference Wh/km more than the other way to $place ($count compared).';
  }

  @override
  String insightNotEnoughData(int count) {
    return 'Not enough measured trips in the last 30 days yet ($count usable).';
  }

  @override
  String get insightSubjectUnusable =>
      'This route has no measured pack energy to compare.';

  @override
  String insightNotDistinguishable(int count) {
    return 'This route cannot yet be told apart from your last 30 days ($count trips).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'This route used $difference Wh/km less than your last 30 days ($count trips).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'This route used $difference Wh/km more than your last 30 days ($count trips).';
  }

  @override
  String get insightClaimTitle => 'The Claim';

  @override
  String get insightBaselineTitle => 'Baseline';

  @override
  String get insightBaseline30d => 'Vehicle 30-day average';

  @override
  String get insightBaselineVariant => 'Other route way';

  @override
  String get insightConfidenceSupported => 'Supported';

  @override
  String get insightConfidenceDistinguishable => 'Within noise';

  @override
  String get insightConfidenceInsufficient => 'Insufficient data';

  @override
  String insightSupportSample(int count) {
    return '$count trips considered';
  }

  @override
  String get insightMeasured => 'Measured';

  @override
  String get insightReference => 'Reference';

  @override
  String insightExclusionNeverRecorded(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips without energy data',
      one: '1 trip without energy data',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNoMinuteBuckets(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips without interval data',
      one: '1 trip without interval data',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionSignContradiction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips with inconsistent energy flow',
      one: '1 trip with inconsistent energy flow',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionUnconfirmedSign(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips with unconfirmed energy flow',
      one: '1 trip with unconfirmed energy flow',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionTooShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips shorter than 0.5 km',
      one: '1 trip shorter than 0.5 km',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotClosed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips not closed',
      one: '1 trip not closed',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionVersionMismatch(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips in older format',
      one: '1 trip in older format',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOutsideWindow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips outside 30-day window',
      one: '1 trip outside 30-day window',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotOnRoute(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips on a different route',
      one: '1 trip on a different route',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOtherVariant(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trips on another variant',
      one: '1 trip on another variant',
    );
    return '$_temp0';
  }

  @override
  String get insightConsideredTripsTitle => 'Considered Trips';

  @override
  String get insightNoConsideredTrips => 'No trips considered yet';

  @override
  String get insightRouteTrendTitle => 'Route Trend';

  @override
  String get insightNoRouteTrips => 'No trips on this route yet';

  @override
  String get settingsNominatimTitle => 'Place name suggestion';

  @override
  String get settingsNominatimOptIn => 'Suggest name via Nominatim';

  @override
  String get settingsNominatimOptInDesc =>
      'Uses Nominatim (OpenStreetMap) to suggest an address when you name a place. Cached per 100 m cell for 30 days, 1 request per second. Off by default.';

  @override
  String get settingsNominatimAttribution => '© OpenStreetMap contributors';

  @override
  String get settingsStorageTitle => 'Storage used';

  @override
  String get settingsStorageDesc =>
      'How much disk the archive occupies on this phone.';

  @override
  String get settingsStorageLoading => 'Checking…';

  @override
  String settingsStorageFailed(String error) {
    return 'Storage check failed: $error';
  }

  @override
  String settingsStorageValue(String size) {
    return '$size used';
  }

  @override
  String get controlCardTitle => 'Car controls';

  @override
  String get controlCardDesc =>
      'These change what the car does or records. They take effect only when the car confirms them.';

  @override
  String get controlStatusPending => 'Waiting for the car';

  @override
  String get controlStatusConfirmed => 'Confirmed by the car';

  @override
  String get controlStatusStale => 'Waiting — a newer value proposed';

  @override
  String get controlStatusRefused => 'Refused by the car';

  @override
  String get controlStatusReportedOnly =>
      'The car runs this without a proposal';

  @override
  String get controlKeyPackCapacity => 'Battery capacity';

  @override
  String get controlKeyChargeCost => 'Default charge price';

  @override
  String get controlDesiredLabel => 'Proposed:';

  @override
  String get controlReportedLabel => 'Car shows:';

  @override
  String get controlValueMissing => 'not set';

  @override
  String get controlProposeAction => 'Propose a new value';

  @override
  String get controlProposing => 'Proposing…';

  @override
  String get controlProposeFieldHint => 'New value';

  @override
  String get controlProposeCancel => 'Cancel';

  @override
  String get controlProposeSend => 'Propose';

  @override
  String controlProposedStatus(String status) {
    return 'Proposed. Status: $status.';
  }

  @override
  String get controlProposedStatusUnknown => 'Proposed. Waiting for the car.';

  @override
  String get controlNoRowsForKey => 'No proposal or report yet.';

  @override
  String get controlNoRows => 'No control proposals yet.';

  @override
  String get controlNoVehicle =>
      'This phone cannot name a car it owns, so it refuses to propose.';

  @override
  String get controlUnconfigured =>
      'Sign in and connect this phone to the cloud to change car controls.';

  @override
  String controlLastError(String error) {
    return 'Car controls could not be read: $error';
  }

  @override
  String get controlRefresh => 'Refresh status';

  @override
  String get controlRefreshing => 'Refreshing…';

  @override
  String syncPending(int count) {
    return '$count of your own edits are still to send.';
  }

  @override
  String get syncNothingPending => 'Nothing is waiting to be sent.';

  @override
  String get syncAutoNote =>
      'Sync runs on its own every 10 minutes while the app is open. This button is temporary: it forces a sync now.';

  @override
  String get syncLastRunTitle => 'Last sync';
}
