// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry';

  @override
  String get navBrand => 'AUTO';

  @override
  String get navTrips => 'Trips';

  @override
  String get navCharging => 'Charging';

  @override
  String get navHistory => 'History';

  @override
  String get navRoadcastTrace => 'Trace';

  @override
  String get navHelpers => 'Helpers';

  @override
  String get navSettings => 'Settings';

  @override
  String get navCarplay => 'CarPlay';

  @override
  String get navAndroidAuto => 'Android Auto';

  @override
  String get appBarTitle => 'GEELY TELEMETRY';

  @override
  String get gearD => 'D';

  @override
  String get gearP => 'P';

  @override
  String get gearR => 'R';

  @override
  String get gearN => 'N';

  @override
  String get plugNone => 'NONE';

  @override
  String get plugAc => 'AC';

  @override
  String get plugDc => 'DC';

  @override
  String get plugIntegration => 'INTEGRATION';

  @override
  String get unitKmh => 'km/h';

  @override
  String get unitKm => 'km';

  @override
  String get unitKw => 'kW';

  @override
  String get unitKwh => 'kWh';

  @override
  String get unitWatt => 'W';

  @override
  String get unitPercent => '%';

  @override
  String get changeModeStatic => 'STATIC';

  @override
  String get changeModeOnChange => 'ON_CHANGE';

  @override
  String get changeModeContinuous => 'CONTINUOUS';

  @override
  String changeModeUnknown(Object value) {
    return 'UNKNOWN($value)';
  }

  @override
  String get helpersTitle => 'HELPERS';

  @override
  String get helpersSubtitle => 'Temperature mode';

  @override
  String get helpersTemperatureSection => 'Temperature Mode';

  @override
  String get helpersTemperatureModeTitle => 'Temperature mode';

  @override
  String get helpersTemperatureModeDesc =>
      'Enable or disable media button interception for AC temperature and fan control.';

  @override
  String get helpersRetry => 'RETRY';

  @override
  String get helpersHvacControlTitle => 'HVAC write test';

  @override
  String get helpersHvacControlDesc =>
      'Direct climate writes from the geelycontrol path: HVAC_TEMPERATURE_SET on left seat and HVAC_FAN_SPEED on area 5.';

  @override
  String get helpersHvacRefresh => 'READ HVAC';

  @override
  String get helpersHvacTempDown => 'TEMP -';

  @override
  String get helpersHvacTempUp => 'TEMP +';

  @override
  String get helpersHvacFanDown => 'FAN -';

  @override
  String get helpersHvacFanUp => 'FAN +';

  @override
  String get helpersHvacNotTested => 'NOT TESTED';

  @override
  String get helpersHvacOk => 'OK';

  @override
  String get helpersHvacFailed => 'FAILED';

  @override
  String get helpersHvacNoResult => 'No HVAC command result yet';

  @override
  String get helpersHvacDetailsEmpty => 'No native details';

  @override
  String get helpersFeedbackTitle => 'Detector feedback';

  @override
  String get helpersFeedbackDisabled => 'DISABLED';

  @override
  String get helpersFeedbackStandby => 'STANDBY';

  @override
  String get helpersFeedbackActivated => 'ACTIVATED';

  @override
  String get helpersFeedbackLastTrigger => 'Last trigger';

  @override
  String get helpersFeedbackNever => 'Never';

  @override
  String get helpersKnobTrigger => 'Headlight knob';

  @override
  String get helpersSimulateKnob => 'SIM KNOB';

  @override
  String get helpersKnobDetectorTitle => 'Headlight knob trigger';

  @override
  String get helpersKnobSequence => 'Sequence';

  @override
  String get helpersKnobTransitions => 'Transitions';

  @override
  String get helpersKnobWindow => 'Knob window';

  @override
  String get helpersSafetyTitle => 'Fail-safes';

  @override
  String get helpersIdleTimeout => 'Idle timeout';

  @override
  String get helpersHardCap => 'Hard cap';

  @override
  String get helpersSafetyDesc =>
      'These limits define when the future active mode must restore the media keyserver.';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsDescription =>
      'Data maintenance for the local vehicle telemetry log.';

  @override
  String get settingsSectionSystem => 'SYSTEM CONFIGURATION';

  @override
  String get settingsSectionGeneral => 'General Operation';

  @override
  String get settingsSectionData => 'Data & Retention';

  @override
  String get settingsAppTheme => 'App theme';

  @override
  String get settingsThemeDesc =>
      'Choose the palette the app wears. Each tile shows the page, a card, and its text.';

  @override
  String get settingsDark => 'DARK';

  @override
  String get settingsLight => 'LIGHT';

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
  String get settingsEfficiencyUnit => 'Efficiency unit';

  @override
  String get settingsEfficiencyUnitDesc =>
      'Choose how the app shows driving efficiency. Tap the reading itself anywhere in the app to cycle the same choice.';

  @override
  String get settingsRetention => 'Raw data retention';

  @override
  String get settingsRetentionDesc =>
      'Keeps trip and charging history, compacts ended sessions, and removes raw frames/events older than 30 days.';

  @override
  String get settingsRetentionRunning => 'RUNNING';

  @override
  String get settingsRetentionRun => 'RUN RETENTION';

  @override
  String get settingsAutoStart => 'Auto-start telemetry on boot';

  @override
  String get settingsAutoStartDesc =>
      'Starts the native collector after vehicle boot or package replacement.';

  @override
  String get settingsGps => 'GPS collection during trips';

  @override
  String get settingsGpsDesc =>
      'Stores latitude, longitude, altitude, and GPS accuracy on telemetry frames when native location is available.';

  @override
  String get settingsKeepBluetoothOnTitle => 'Keep Bluetooth on';

  @override
  String get settingsKeepBluetoothOnDesc =>
      'Switches the car radio back on when it goes off, so the phone keeps receiving the live stream. The car stops it on its own.';

  @override
  String settingsKeepBluetoothOnFailed(Object error) {
    return 'KEEP BLUETOOTH ON FAILED: $error';
  }

  @override
  String get settingsContinuousMode => 'Continuous recording';

  @override
  String get settingsContinuousModeDesc =>
      'Records one minute of energy for every minute the car is awake, even when parked or idle. Turning it off keeps what was already recorded.';

  @override
  String settingsContinuousModeFailed(Object error) {
    return 'CONTINUOUS RECORDING FAILED: $error';
  }

  @override
  String get settingsEventFile => 'Debug event log file';

  @override
  String get settingsEventFileDesc =>
      'Mirrors telemetry events to a JSONL file for debugging. Uses extra storage; existing files are removed when disabled.';

  @override
  String get settingsWipe => 'Erase local telemetry database';

  @override
  String get settingsWipeDesc =>
      'Permanently removes all trip sessions, charging sessions, telemetry frames, and telemetry events in one operation.';

  @override
  String get settingsWiping => 'WIPING';

  @override
  String get settingsWipeHistory => 'WIPE HISTORY';

  @override
  String get settingsWipeDialogTitle => 'WIPE HISTORY';

  @override
  String get settingsWipeDialogContent =>
      'This permanently deletes all local telemetry database rows. Charging logs cannot be deleted individually and this action cannot be undone.';

  @override
  String get settingsCancel => 'CANCEL';

  @override
  String get settingsWipeAll => 'WIPE ALL';

  @override
  String settingsLoadFailed(Object error) {
    return 'SETTINGS LOAD FAILED: $error';
  }

  @override
  String get settingsAutoStartEnabled => 'AUTO-START ON BOOT ENABLED';

  @override
  String get settingsAutoStartDisabled => 'AUTO-START ON BOOT DISABLED';

  @override
  String settingsAutoStartError(Object error) {
    return 'AUTO-START UPDATE FAILED: $error';
  }

  @override
  String get settingsGpsEnabled => 'GPS COLLECTION ENABLED';

  @override
  String get settingsGpsDisabled => 'GPS COLLECTION DISABLED';

  @override
  String settingsGpsError(Object error) {
    return 'GPS UPDATE FAILED: $error';
  }

  @override
  String settingsClearFailed(Object error) {
    return 'DATABASE CLEAR FAILED: $error';
  }

  @override
  String settingsRetentionFailed(Object error) {
    return 'RETENTION FAILED: $error';
  }

  @override
  String get roadcastTraceTitle => 'ROADCAST TRACE';

  @override
  String get roadcastTraceSubtitle => 'Live CAN activity';

  @override
  String get roadcastTraceRunning => 'RUNNING';

  @override
  String get roadcastTraceStopped => 'STOPPED';

  @override
  String get roadcastTraceStart => 'START';

  @override
  String get roadcastTraceStop => 'STOP';

  @override
  String get roadcastTraceBaseline => 'BASELINE';

  @override
  String get roadcastTraceClear => 'CLEAR';

  @override
  String get roadcastTraceChangedOnly => 'CHANGED ONLY';

  @override
  String get roadcastTraceValidOnly => 'VALID ONLY';

  @override
  String get roadcastTraceSearchHint => 'Filter signal, CAN id, signal id';

  @override
  String get roadcastTraceMetricSignals => 'SIGNALS';

  @override
  String get roadcastTraceMetricChanged => 'CHANGED';

  @override
  String get roadcastTraceMetricSnapshots => 'SNAPSHOTS';

  @override
  String get roadcastTraceMetricSamples => 'SAMPLES';

  @override
  String get roadcastTraceMetricBaseline => 'BASELINE';

  @override
  String get roadcastTraceNoBaseline => '--';

  @override
  String get roadcastTraceEmpty => 'Start capture or adjust filters.';

  @override
  String get roadcastTraceHeaderSignal => 'SIGNAL';

  @override
  String get roadcastTraceHeaderNow => 'NOW';

  @override
  String get roadcastTraceRaw => 'RAW';

  @override
  String get roadcastTraceHeaderBaseline => 'BASELINE';

  @override
  String get roadcastTraceHeaderDelta => 'DELTA';

  @override
  String get roadcastTraceHeaderChanges => 'CHANGES';

  @override
  String get roadcastTraceHeaderLast => 'LAST';

  @override
  String get roadcastTraceHeaderId => 'ID';

  @override
  String get roadcastTraceSelectSignal =>
      'Select a signal to inspect its timeline.';

  @override
  String get roadcastTraceChartEmpty => 'Waiting for more samples';

  @override
  String get traceModeCan => 'CAN';

  @override
  String get traceModeMigration => 'MIGRATION';

  @override
  String get migrationSubtitle => '15 properties to be replaced';

  @override
  String get migrationPhaseATitle => 'PHASE A · DIRECT READ';

  @override
  String get migrationPhaseADesc =>
      'Same number on both sides. Migrate once one real trip and one real charge show no divergence.';

  @override
  String get migrationPhaseBTitle => 'PHASE B · NEEDS MEASURING';

  @override
  String get migrationPhaseBDesc =>
      'In the store, but what the raw value means has not been observed on the car yet. Needs one observation, not code.';

  @override
  String get migrationPhaseCTitle => 'PHASE C · DOES NOT MIGRATE';

  @override
  String get migrationPhaseCDesc =>
      'Either the store has no address for it (car_service builds the value), or it never produced a reading.';

  @override
  String get migrationNoteDirect => 'Direct read';

  @override
  String get migrationNoteTranslated =>
      'Store speaks PRND, the app speaks the AOSP bitmask — translated';

  @override
  String get migrationNoteChargerAc =>
      'Charger AC input (211 V), not the 395 V pack';

  @override
  String get migrationNoteEncodingUnknown =>
      'In the store, raw encoding not deciphered';

  @override
  String get migrationNoteSynthetic =>
      'Built by car_service; no address in the store';

  @override
  String get migrationColumnRaw => 'RAW';

  @override
  String migrationRamAddress(Object address) {
    return 'RAM $address';
  }

  @override
  String get migrationNoteDead => 'No reading in 90,347 recorded frames';

  @override
  String get migrationStatusMatching => 'MATCH';

  @override
  String get migrationStatusDiverging => 'DIVERGES';

  @override
  String get migrationStatusRamOnly => 'RAM ONLY';

  @override
  String get migrationStatusStoreOnly => 'STORE ONLY';

  @override
  String get migrationStatusRejected => 'REJECTED';

  @override
  String get migrationStatusWaiting => 'WAITING';

  @override
  String get migrationColumnRam => 'RAM';

  @override
  String get migrationColumnStore => 'STORE';

  @override
  String get migrationColumnDiff => 'DIFF';

  @override
  String get migrationShadowMode =>
      'Shadow mode: RAM is read without writing to history.';

  @override
  String get migrationPublishing =>
      'Publishing to the store — the migration already happened.';

  @override
  String get migrationBridgeOffline => 'The CAN bridge daemon is not serving.';

  @override
  String migrationLoadFailed(Object error) {
    return 'Could not read the bridge status: $error';
  }

  @override
  String get migrationEcarxWarning =>
      'Store value comes from the ECARX-resolved property: the two sides read different addresses.';

  @override
  String get chargingTitle => 'GEELY TELEMETRY';

  @override
  String get chargingSubtitle => 'Charging Sessions';

  @override
  String get chargingDbRows => 'DB ROWS';

  @override
  String get chargingRunWrites => 'RUN WRITES';

  @override
  String get chargingRefreshTooltip => 'Refresh charging sessions';

  @override
  String get chargeMergeTitle => 'INTERRUPTED CONTINUOUS SESSIONS';

  @override
  String get chargeMergeDescription =>
      'One or more charging sessions ended with removed_while_charging and look continuous. Review the breakdown before merging.';

  @override
  String get chargeMergeSessionsLabel => 'SESSIONS';

  @override
  String get chargeMergeGapLabel => 'GAP';

  @override
  String get chargeMergeSocLabel => 'SOC';

  @override
  String get chargeMergeFramesLabel => 'FRAMES';

  @override
  String get chargeMergeBreakLabel => 'BREAK';

  @override
  String get chargeMergeConfirm => 'MERGE SESSIONS';

  @override
  String get chargeMergeMerging => 'MERGING';

  @override
  String get chargeMergeSuccess => 'Charging sessions merged.';

  @override
  String get chargeMergeError => 'Could not merge sessions.';

  @override
  String get chartPackVoltage => 'PACK VOLTAGE';

  @override
  String get chartVoltageUnit => 'V';

  @override
  String get chartWaitingVoltage => 'WAITING FOR LIVE VOLTAGE';

  @override
  String get chartPackCurrent => 'PACK CURRENT';

  @override
  String get chartCurrentUnit => 'A';

  @override
  String get chartWaitingCurrent => 'WAITING FOR LIVE CURRENT';

  @override
  String get chartChargePower => 'CHARGE POWER';

  @override
  String get chartPowerUnit => 'kW';

  @override
  String get chartWaitingPower => 'WAITING FOR LIVE POWER';

  @override
  String get historySectionTitle => 'CHARGING SESSION HISTORY';

  @override
  String get historyRows => 'ROWS';

  @override
  String get historyHeadersStatus => 'STATUS';

  @override
  String get historyHeadersWindow => 'SESSION WINDOW';

  @override
  String get historyHeadersPlug => 'PLUG';

  @override
  String get historyHeadersSoc => 'SOC START/END';

  @override
  String get historyHeadersOdometer => 'ODOMETER';

  @override
  String get historyHeadersPower => 'POWER';

  @override
  String get historyHeadersEndReason => 'END REASON';

  @override
  String get historyHeadersId => 'ID / UPDATED';

  @override
  String get historySampleBadge => 'SAMPLE DATA';

  @override
  String get detailBack => 'Back';

  @override
  String get detailTitle => 'CHARGE DETAIL';

  @override
  String get detailFrames => 'FRAMES';

  @override
  String get detailStatus => 'STATUS';

  @override
  String get detailRefresh => 'Refresh charge frames';

  @override
  String get detailDuration => 'DURATION';

  @override
  String get detailSocRange => 'SOC RANGE';

  @override
  String get detailSocDelta => 'SOC DELTA';

  @override
  String get detailEnergyEst => 'ENERGY EST';

  @override
  String get detailEnergyUnit => 'kWh';

  @override
  String get chargeCostLabel => 'COST';

  @override
  String get detailAvgPower => 'AVG POWER';

  @override
  String get detailAvgPowerUnit => 'kW';

  @override
  String get detailPlug => 'PLUG';

  @override
  String get detailOdometer => 'ODOMETER';

  @override
  String get detailEndReason => 'END REASON';

  @override
  String get detailAmbientTemp => 'OUTSIDE TEMP';

  @override
  String get chartSocTrace => 'SOC TRACE';

  @override
  String get chartSocUnit => '%';

  @override
  String get chartNotEnough => 'Not enough frames for chart.';

  @override
  String get chargeMapLocation => 'Charging Location';

  @override
  String get chargeMapNoGps =>
      'No GPS point recorded for this charging session.';

  @override
  String get statusCharging => 'CHARGING';

  @override
  String get statusConnected => 'CONNECTED';

  @override
  String get statusDisconnected => 'DISCONNECTED';

  @override
  String get statusComplete => 'COMPLETE';

  @override
  String get endReasonInProgress => 'IN_PROGRESS';

  @override
  String get endReasonWaitingCharge => 'WAITING_FOR_CHARGE';

  @override
  String get endReasonPlugDisconnected => 'PLUG_DISCONNECTED';

  @override
  String get endReasonWaitingPower => 'WAITING_FOR_POWER';

  @override
  String get endReasonCompleted => 'COMPLETED';

  @override
  String get liveError => 'LIVE ERROR';

  @override
  String get bridgeError => 'BRIDGE_ERROR';

  @override
  String get noDbRows => 'NO_DB_ROWS_YET / SAMPLE_VIEW';

  @override
  String get roomChargeSessions => 'ROOM_CHARGE_SESSIONS';

  @override
  String get historyPageTitle => 'Battery History';

  @override
  String get historyHeaderSubtitle => 'Battery History';

  @override
  String get historyPageDesc =>
      'Combined view of trips, charging sessions, and validated battery metrics.';

  @override
  String get historyRangeChip => 'RANGE';

  @override
  String get historySessionsChip => 'SESSIONS';

  @override
  String get historyRefreshTooltip => 'Refresh history';

  @override
  String get rangeToday => 'Today';

  @override
  String get range24h => '24h';

  @override
  String get range7d => '7d';

  @override
  String get range30d => '30d';

  @override
  String get historyTrips => 'TRIPS';

  @override
  String get historyTripsUnit => 'sessions';

  @override
  String get historyCharges => 'CHARGES';

  @override
  String get historyChargesUnit => 'sessions';

  @override
  String get historyDistance => 'DISTANCE';

  @override
  String get historyDistanceUnitOdometer => 'km ODOMETER';

  @override
  String get historyDistanceUnitSpeed => 'km SPEED EST';

  @override
  String get historyDistanceUnitMissing => 'km MISSING';

  @override
  String get historyChargedEnergy => 'CHARGED ENERGY';

  @override
  String get historyEnergyUnit => 'kWh estimate';

  @override
  String get historySocDelta => 'SOC DELTA';

  @override
  String get historySocDeltaUnit => '%';

  @override
  String get historyParkedDrain => 'PARKED DRAIN';

  @override
  String get historyDrainUnit => 'kWh deferred';

  @override
  String get historyEfficiency => 'EFFICIENCY';

  @override
  String get historyEfficiencyUnit => 'Wh/km';

  @override
  String get historyRegen => 'REGEN';

  @override
  String get timelineTitle => 'ACTIVE TIMELINE';

  @override
  String get timelineTrip => 'TRIP';

  @override
  String get timelineCharge => 'CHARGE';

  @override
  String get timelineEmpty => 'No sessions in selected period.';

  @override
  String timelineParkedFor(Object duration) {
    return 'Parked for $duration';
  }

  @override
  String get timelineTick0000 => '00:00';

  @override
  String get timelineTick0600 => '06:00';

  @override
  String get timelineTick1200 => '12:00';

  @override
  String get timelineTick1800 => '18:00';

  @override
  String get timelineTick2359 => '23:59';

  @override
  String get sessionLogTitle => 'SESSION LOG';

  @override
  String get sessionLogEmpty => 'No trip or charging sessions yet.';

  @override
  String get sessionLogHeaderSession => 'SESSION';

  @override
  String get sessionLogHeaderStart => 'START';

  @override
  String get sessionLogHeaderDuration => 'DURATION';

  @override
  String get sessionLogHeaderSoc => 'SOC';

  @override
  String get sessionLogHeaderEnergy => 'ENERGY / DISTANCE';

  @override
  String get sessionLogHeaderStatus => 'STATUS';

  @override
  String get sessionTypeCharging => 'Charging';

  @override
  String get sessionTypeTrip => 'Trip';

  @override
  String get historyEmptyPanel => 'No history data available yet.';

  @override
  String get tripHeaderSubtitle => 'Trip Sessions';

  @override
  String get tripPageTitle => 'Automatic Trip Detection';

  @override
  String get tripDbRows => 'DB ROWS';

  @override
  String get tripRunWrites => 'RUN WRITES';

  @override
  String get tripRefreshTooltip => 'Refresh trip sessions';

  @override
  String get tripHistoryBadge => 'TRIP HISTORY';

  @override
  String get tripEmptyLatest =>
      'Trip rows exist in the database, but the latest-session query returned no rows.';

  @override
  String get tripEmptyNone => 'No trip sessions have been detected yet.';

  @override
  String get bridgeErrorStatus => 'BRIDGE_ERROR';

  @override
  String get roomTripSessions => 'ROOM_TRIP_SESSIONS';

  @override
  String get dbCountMismatch => 'DB_COUNT_LIST_MISMATCH';

  @override
  String get noTripRows => 'NO_TRIP_ROWS_YET';

  @override
  String get tripMetricDistance => 'DISTANCE';

  @override
  String get tripMetricAvgSpeed => 'AVG SPEED';

  @override
  String get tripMetricGearStart => 'GEAR START';

  @override
  String get tripMetricSocRange => 'SOC RANGE';

  @override
  String get tripMetricEndReason => 'END REASON';

  @override
  String get tripMetricUpdated => 'UPDATED';

  @override
  String get dischargeActive => 'REAL-TIME DISCHARGE';

  @override
  String get dischargeEnded => 'TRIP DISCHARGE';

  @override
  String get tripDetailHint =>
      'Trip detail and per-frame telemetry drilldown will use session-linked frames in a later slice.';

  @override
  String get tripDetailTitle => 'TRIP DETAIL';

  @override
  String get tripDetailFrames => 'FRAMES';

  @override
  String get tripDetailRefresh => 'Refresh trip frames';

  @override
  String get tripDetailDuration => 'DURATION';

  @override
  String get tripDetailOdometerDist => 'ODOMETER DIST';

  @override
  String get tripDetailSpeedEstDist => 'SPEED EST DIST';

  @override
  String get tripDetailEfficiency => 'EFFICIENCY';

  @override
  String get tripDetailRange => 'RANGE';

  @override
  String get tripDetailNetEnergy => 'NET ENERGY';

  @override
  String get tripDetailRegen => 'REGEN';

  @override
  String get tripDetailSummary => 'TRIP SUMMARY';

  @override
  String get tripDetailEstimatedCost => 'ESTIMATED COST';

  @override
  String tripDetailCostBasedOnLastCharge(Object price) {
    return 'Based on the $price/kWh rate from the latest priced charge.';
  }

  @override
  String tripDetailCostBasedOnSocAndLastCharge(Object price) {
    return 'Estimated from the SOC change and the $price/kWh rate from the latest priced charge.';
  }

  @override
  String get tripDetailCostUnavailable =>
      'No earlier charge has a price per kWh.';

  @override
  String get tripDetailEnergyAccounting => 'ENERGY ACCOUNTING';

  @override
  String get tripDetailMeasuredPack => 'NET BATTERY ENERGY';

  @override
  String get tripDetailMeasuredPackDescription =>
      'Total energy drawn from the battery during the trip.';

  @override
  String get tripDetailMeasuredTraction => 'VEHICLE MOTION';

  @override
  String get tripDetailMeasuredTractionDescription =>
      'Energy used to move the vehicle.';

  @override
  String get tripDetailMeasuredRecovered => 'REGENERATIVE RECOVERY';

  @override
  String get tripDetailMeasuredRecoveredDescription =>
      'Energy returned during regenerative braking.';

  @override
  String get tripDetailMeasuredAuxiliary => 'AUXILIARY SYSTEMS';

  @override
  String get tripDetailMeasuredAuxiliaryDescription =>
      'Estimated climate, electronics, and 12 V consumption.';

  @override
  String get tripDetailMeasuredVerified => 'MEASURED';

  @override
  String get tripDetailMeasuredUnavailable =>
      'No measured energy split is available for this trip.';

  @override
  String get tripDetailMeasuredDisagrees =>
      'Measured energy conflicts with the SOC estimate. Values are hidden.';

  @override
  String get tripChartSpeed => 'Speed Trace';

  @override
  String get tripChartNotEnough => 'Not enough speed frames for chart.';

  @override
  String get tripChartPower => 'Measured Power';

  @override
  String get tripChartPackPower => 'BATTERY';

  @override
  String get tripChartDrivePower => 'TRACTION';

  @override
  String get tripChartPowerNotEnough =>
      'Not enough measured power frames for chart.';

  @override
  String get tripChartPowerDisagrees =>
      'Measured power is hidden because it conflicts with the SOC estimate.';

  @override
  String get tripChartElevationDistance => 'Elevation Profile by Distance';

  @override
  String get tripChartElevationDistanceNotEnough =>
      'Not enough GPS altitude points for the distance profile.';

  @override
  String get tripChartAltitude => 'Altitude Trace';

  @override
  String get tripChartAltitudeNotEnough =>
      'Not enough altitude frames for chart.';

  @override
  String get tripChartAmbientTemp => 'Outside Temperature Trace';

  @override
  String get tripChartAmbientTempNotEnough =>
      'Not enough temperature frames for chart.';

  @override
  String get tripDetailAmbientTemp => 'OUTSIDE TEMP';

  @override
  String get tripChartSoc => 'Battery Level Trace';

  @override
  String get tripChartSocNotEnough => 'Not enough battery frames for chart.';

  @override
  String get tripChartExpandTooltip => 'Expand chart';

  @override
  String tripChartPointCount(int count) {
    return '$count points';
  }

  @override
  String get tripMapRoute => 'Route Map';

  @override
  String get tripMapNoGps => 'No GPS points recorded for this trip.';

  @override
  String mapSpeedSlow(Object speed) {
    return 'Slow $speed';
  }

  @override
  String mapSpeedFast(Object speed) {
    return 'Fast $speed';
  }

  @override
  String get tripStatusActive => 'ACTIVE';

  @override
  String get tripStatusPendingEnd => 'PENDING END';

  @override
  String get tripEndReasonInProgress => 'IN_PROGRESS';

  @override
  String get tripEndReasonWaitingIdle => 'WAITING_FOR_IDLE';

  @override
  String get mockChargeState => 'Disconnected';

  @override
  String get mockPlugLabel => 'None';

  @override
  String get mockSourceDetails => 'Web mock telemetry';

  @override
  String get dayMon => 'MON';

  @override
  String get dayTue => 'TUE';

  @override
  String get dayWed => 'WED';

  @override
  String get dayThu => 'THU';

  @override
  String get dayFri => 'FRI';

  @override
  String get daySat => 'SAT';

  @override
  String get daySun => 'SUN';

  @override
  String settingsAppVersion(Object build, Object version) {
    return 'Version $version (build $build)';
  }

  @override
  String get settingsAppUpdateTitle => 'App updates';

  @override
  String get settingsAppUpdateDescription =>
      'Checks the public Eaglemetry releases and installs a verified APK without erasing telemetry or settings. It also updates the Roadcast service.';

  @override
  String settingsAppUpdateInstalled(Object build, Object version) {
    return 'Installed: $version (build $build)';
  }

  @override
  String get settingsAppUpdateNotChecked => 'Updates have not been checked';

  @override
  String get settingsAppUpdateUnavailable => 'Update status unavailable';

  @override
  String get settingsAppUpdateChecking => 'CHECKING';

  @override
  String settingsAppUpdateAvailable(Object build, Object version) {
    return 'Version $version (build $build) is available';
  }

  @override
  String get settingsAppUpdateUpToDate => 'Eaglemetry is up to date';

  @override
  String settingsAppUpdateIncompatible(Object reason) {
    return 'This update cannot be installed automatically: $reason';
  }

  @override
  String get settingsAppUpdateCheck => 'CHECK';

  @override
  String get settingsAppUpdateInstall => 'UPDATE';

  @override
  String get settingsAppUpdateInstalling => 'UPDATING';

  @override
  String get settingsAppUpdateScheduled =>
      'UPDATE VERIFIED. THE APP WILL RESTART AUTOMATICALLY.';

  @override
  String settingsAppUpdateCheckFailed(Object reason) {
    return 'APP UPDATE CHECK FAILED: $reason';
  }

  @override
  String settingsAppUpdateInstallFailed(Object reason) {
    return 'APP UPDATE FAILED: $reason';
  }

  @override
  String get settingsAppUpdateReleaseNotes => 'What\'s new';

  @override
  String settingsAppUpdateConfirmTitle(Object version) {
    return 'Update to $version?';
  }

  @override
  String get settingsAppUpdateConfirmDescription =>
      'The app will download and verify the update. It will update the Roadcast service before it installs the APK. The app will then restart.';

  @override
  String get settingsAppUpdateConfirmCancel => 'CANCEL';

  @override
  String get settingsAppUpdateConfirmInstall => 'INSTALL';

  @override
  String get settingsUpdateAlertTitle => 'UPDATE ERROR';

  @override
  String get settingsUpdateAlertDismiss => 'DISMISS';

  @override
  String get settingsSectionAbout => 'ABOUT';

  @override
  String settingsAboutDeveloper(Object handle) {
    return 'Developed by $handle';
  }

  @override
  String get settingsAboutTagline => 'Made with love and coffee';

  @override
  String get settingsAppShellTitle => 'App interface';

  @override
  String get settingsAppShellDescription =>
      'Choose which interface opens when the app starts. Your choice is saved.';

  @override
  String get settingsAppShellNew => 'New';

  @override
  String get settingsAppShellPrevious => 'Previous';

  @override
  String get v2Overview => 'Overview';

  @override
  String get v2Context => 'Context';

  @override
  String get v2AppShellTitle => 'Interface';

  @override
  String get v2AppShellDescription =>
      'You are on the new interface, which the app opens by default. Trips and Settings have not migrated yet, so the previous interface still owns them. Switching back is saved and applies to the next launch too.';

  @override
  String get v2AppShellAction => 'Use the previous interface';

  @override
  String get v2CarplayBetaOn => 'On';

  @override
  String get v2CarplayBetaOff => 'Off';

  @override
  String get v2MigrationPlaceholder => 'Ready for feature migration';

  @override
  String get v2SettingsClose => 'Close settings';

  @override
  String get v2SettingsSearch => 'Search';

  @override
  String get v2SettingsSearchEmpty => 'No category has this name.';

  @override
  String get v2HistoryTrips => 'Trips';

  @override
  String get v2HistoryCharges => 'Charging';

  @override
  String get v2HistoryExpand => 'Expand the session detail';

  @override
  String get v2HistoryCollapse => 'Collapse the session detail';

  @override
  String get v2HistoryExpandHint => 'Select a session to open it.';

  @override
  String get v2HistoryCollapseHint => 'Drag down to close';

  @override
  String get v2HistorySelectPrompt => 'Select a session to see its detail.';

  @override
  String get v2HistoryFactsTitle => 'Session';

  @override
  String get v2HistoryChartEmpty => 'This session has no chart data.';

  @override
  String get v2TimeNotSynced =>
      'Time not synced yet. Bars show measured energy.';

  @override
  String energyAxisRelativeMinutes(int minutes) {
    return '+$minutes min';
  }

  @override
  String get v2HistoryStart => 'Start';

  @override
  String get v2HistoryEnd => 'End';

  @override
  String get v2HistoryDuration => 'Duration';

  @override
  String get v2HistoryDistance => 'Distance';

  @override
  String get v2HistorySoc => 'SOC';

  @override
  String get v2HistoryTemperature => 'Temperature';

  @override
  String get v2HistoryAltitude => 'Climb';

  @override
  String get insightNameStart => 'Name start';

  @override
  String get insightNameEnd => 'Name end';

  @override
  String get insightPlaceTitle => 'Name this place';

  @override
  String get insightPlaceHint => 'Name';

  @override
  String get insightPlaceSave => 'Save';

  @override
  String get insightPlaceCancel => 'Cancel';

  @override
  String insightRouteTrips(int count) {
    return '$count trips';
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
  String get v2HistoryConsumed => 'Consumed';

  @override
  String get v2HistoryRegen => 'Regenerated';

  @override
  String get v2HistoryEfficiency => 'Efficiency';

  @override
  String get v2HistoryEnergyAdded => 'Energy added';

  @override
  String get v2HistoryAvgPower => 'Avg power';

  @override
  String get v2HistoryPeakPower => 'Peak power';

  @override
  String get v2HistoryPlug => 'Plug';

  @override
  String get v2HistoryCost => 'Est. cost';

  @override
  String get v2HistoryMapExpand => 'Enlarge the map';

  @override
  String get v2HistoryMapCollapse => 'Shrink the map';

  @override
  String get v2HistoryEmpty => 'The car has recorded no session yet.';

  @override
  String get v2HistoryBattery => 'Battery';

  @override
  String v2CycleOrdinal(int ordinal) {
    return '#$ordinal';
  }

  @override
  String v2CycleSemantics(int ordinal, String percent) {
    return 'Battery $ordinal, $percent percent used';
  }

  @override
  String get v2CycleOpen => 'In progress';

  @override
  String get v2CyclePartial => 'Partial';

  @override
  String get v2CycleFrozen => 'Final';

  @override
  String get v2CycleNoCapacity => 'Capacity unknown';

  @override
  String get v2CycleMixedCurrency => 'Two currencies';

  @override
  String v2CyclePartlyPriced(String percent) {
    return '$percent% priced';
  }

  @override
  String get v2CycleDistance => 'Distance';

  @override
  String get v2CycleEnergy => 'Energy';

  @override
  String get v2CycleEfficiency => 'Efficiency';

  @override
  String get v2CycleEfficiencyUnitAction => 'Change efficiency unit';

  @override
  String get v2CycleCost => 'Cost';

  @override
  String get v2CycleCostPerKwh => 'Per kWh';

  @override
  String get v2CycleCapacity => 'Usable';

  @override
  String get v2CycleEmpty => 'The car has not used a whole battery yet.';

  @override
  String get v2CycleSelectPrompt => 'Select a battery to see what it ran.';

  @override
  String get v2CycleTimelineTitle => 'What this battery ran';

  @override
  String get v2CycleTimelineEmpty =>
      'The sessions of this battery were deleted.';

  @override
  String get v2CycleTimelineDrive => 'Drive';

  @override
  String get v2CycleTimelineCharge => 'Charge';

  @override
  String get v2CycleTimelineParked => 'Parked';

  @override
  String get v2CycleTimelineDeleted => 'Session deleted';

  @override
  String v2CycleTimelineShare(String percent) {
    return '$percent% of this battery';
  }

  @override
  String get v2CycleTimelineSessions => 'Sessions';

  @override
  String get v2SettingsDisplays => 'Displays';

  @override
  String get v2SettingsCharge => 'Charging';

  @override
  String get settingsChargeDisclaimerTitle => 'Disclaimer';

  @override
  String get settingsChargeDisclaimerDesc =>
      'Use of this feature is at your own risk. External charge control interacts directly with vehicle charging and actively controls vehicle functions.';

  @override
  String get v2ChargeLimitLevel => 'Level';

  @override
  String get v2ChargeLimitGraph => 'Graph';

  @override
  String get v2ChargeLimitCustom => 'Custom';

  @override
  String get v2ChargeLimitDaily => 'Daily';

  @override
  String get v2ChargeLimitExtended => 'Extended';

  @override
  String get v2ChargeLimitMax => 'Max';

  @override
  String v2ChargeLimitProjection(String range, String unit) {
    return 'EST · $range $unit projected';
  }

  @override
  String get v2ChargeLimitSemantics => 'Charge limit';

  @override
  String v2ChargeLimitSemanticsValue(int percent) {
    return '$percent percent';
  }

  @override
  String get v2ChargeLimitInfoTitle => 'Which charge limit should I pick?';

  @override
  String get v2ChargeLimitInfoDaily =>
      'For daily driving and shorter charging times.';

  @override
  String get v2ChargeLimitInfoExtended =>
      'Travel an extended distance on one charge.';

  @override
  String get v2ChargeLimitInfoMax =>
      'For maximum range and longer charging times.';

  @override
  String get v2ChargeLimitInfoTooltip => 'About charge limits';

  @override
  String get v2ChargeLimitInfoClose => 'Close charge limit information';

  @override
  String helpersChargeLimitValue(int percent) {
    return '$percent%';
  }

  @override
  String get v2SettingsData => 'Data';

  @override
  String get v2SettingsDeveloper => 'Developer';

  @override
  String get v2SettingsAppearance => 'Appearance';

  @override
  String get v2SettingsImmersive => 'Full screen';

  @override
  String get v2SettingsImmersiveDesc =>
      'Hides the system bars of the head unit. Turn it off to show the status bar and the navigation bar. The screens are made for full screen, thus some layouts can look wrong when it is off.';

  @override
  String get v2SettingsHideStatusBar => 'Hide the status bar';

  @override
  String get v2SettingsHideStatusBarDesc =>
      'Keeps the status bar hidden while full screen is off. The navigation bar stays, because it is how you leave the app.';

  @override
  String get v2SettingsClimateBar => 'Climate bar';

  @override
  String get v2SettingsClimateBarDesc =>
      'Shows a temperature strip along the bottom edge, on every screen. It stays there when a card opens full screen. It is not connected to the vehicle yet, so the values are a preview.';

  @override
  String get climateBarDriverDecrease => 'Decrease driver temperature';

  @override
  String get climateBarDriverIncrease => 'Increase driver temperature';

  @override
  String get climateBarPassengerDecrease => 'Decrease passenger temperature';

  @override
  String get climateBarPassengerIncrease => 'Increase passenger temperature';

  @override
  String get nowPlayingIdle => 'Nothing playing';

  @override
  String get v2SettingsOperation => 'Operation';

  @override
  String get v2SettingsRetention => 'Retention';

  @override
  String get v2SettingsDeveloperMode => 'Developer mode';

  @override
  String get v2SettingsDeveloperModeDesc =>
      'Shows the engineering screens: Roadcast Trace and Signal Lab.';

  @override
  String v2SettingsRetentionDone(int frames, int days) {
    return 'Retention complete: $frames frames removed, raw data kept for $days days.';
  }

  @override
  String get v2SettingsSystem => 'System';

  @override
  String get v2SettingsDanger => 'Erase';

  @override
  String get v2SettingsEngineering => 'Engineering screens';

  @override
  String get v2SettingsResendHistory => 'Resend history to the cloud';

  @override
  String get v2SettingsResendHistoryDesc =>
      'Marks all trips and charges on this car for upload again. Use it after you delete the cloud data for a test. Upload starts on the next sync.';

  @override
  String get v2SettingsResendHistoryAction => 'MARK FOR UPLOAD';

  @override
  String v2SettingsResendHistoryDone(int count) {
    return '$count records marked. They upload on the next sync.';
  }

  @override
  String v2SettingsResendHistoryFailed(String error) {
    return 'Could not mark the history: $error';
  }

  @override
  String get v2SettingsExperience => 'Experiments';

  @override
  String get v2SettingsNotMigrated => 'Not available yet';

  @override
  String get v2SettingsTraceDesc =>
      'Reads the negotiated CAN schema and the live value of each signal.';

  @override
  String v2SettingsAutoStartFailed(String error) {
    return 'Auto-start update failed: $error';
  }

  @override
  String v2SettingsEventFileFailed(String error) {
    return 'Event log update failed: $error';
  }

  @override
  String v2SettingsWipeDone(int trips, int charges, int frames) {
    return 'Erased: $trips trips, $charges charges, $frames frames.';
  }

  @override
  String v2SettingsWipeFailed(String error) {
    return 'Erase failed: $error';
  }

  @override
  String get v2CarplayTitle => 'CarPlay';

  @override
  String get v2AndroidAutoTitle => 'Android Auto';

  @override
  String get v2CarplayStatusTitle => 'Connection';

  @override
  String get v2AndroidAutoStatusTitle => 'Connection';

  @override
  String get v2CarplayUnavailable =>
      'This head unit does not expose the CarPlay service.';

  @override
  String get v2AndroidAutoUnavailable =>
      'This head unit does not expose the Android Auto service.';

  @override
  String get v2CarplayConnecting => 'Connecting to the CarPlay renderer…';

  @override
  String get v2AndroidAutoConnecting =>
      'Connecting to the Android Auto renderer…';

  @override
  String get v2CarplayBlackScreenHint =>
      'If the picture stays black, no CarPlay session is active. Connect your iPhone and the video starts on its own.';

  @override
  String get v2AndroidAutoBlackScreenHint =>
      'If the picture stays black, no Android Auto session is active. Connect your Android phone and the video starts on its own.';

  @override
  String get v2ProjectionTouchTitle => 'Touch calibration';

  @override
  String get v2ProjectionTouchHelp =>
      'Touch the projected screen and nudge until the touch lands where you look. The value is saved.';

  @override
  String get v2ProjectionTouchStepFine => 'Fine';

  @override
  String get v2ProjectionTouchStepCoarse => 'Coarse';

  @override
  String get v2ProjectionTouchOffsetY => 'Vertical shift';

  @override
  String get v2ProjectionTouchScaleY => 'Vertical scale';

  @override
  String get v2ProjectionTouchOffsetX => 'Horizontal shift';

  @override
  String get v2ProjectionTouchScaleX => 'Horizontal scale';

  @override
  String get v2ProjectionTouchReset => 'Reset calibration';

  @override
  String get v2CarplayDragHandle => 'Drag to resize the CarPlay card';

  @override
  String get v2AndroidAutoDragHandle => 'Drag to resize the Android Auto card';

  @override
  String get v2CarplayReattach => 'Reconnect';

  @override
  String get v2AndroidAutoReattach => 'Reconnect';

  @override
  String get v2CarplayBuffer => 'Buffer';

  @override
  String get v2AndroidAutoBuffer => 'Buffer';

  @override
  String get v2CarplayStateAvailable => 'Service found';

  @override
  String get v2AndroidAutoStateAvailable => 'Service found';

  @override
  String get v2CarplayStateBound => 'Connected';

  @override
  String get v2AndroidAutoStateBound => 'Connected';

  @override
  String get v2CarplayStateAttached => 'Rendering';

  @override
  String get v2AndroidAutoStateAttached => 'Rendering';

  @override
  String get v2CarplayErrorUnreachable =>
      'The CarPlay service could not be reached.';

  @override
  String get v2AndroidAutoErrorUnreachable =>
      'The Android Auto service could not be reached.';

  @override
  String get v2CarplayErrorRenderer =>
      'The CarPlay renderer refused the request.';

  @override
  String get v2AndroidAutoErrorRenderer =>
      'The Android Auto renderer refused the request.';

  @override
  String get v2CarplayErrorBuffer => 'The render buffer size is invalid.';

  @override
  String get v2AndroidAutoErrorBuffer => 'The render buffer size is invalid.';

  @override
  String get v2CarplayErrorGeneric => 'CarPlay reported an error.';

  @override
  String get v2AndroidAutoErrorGeneric => 'Android Auto reported an error.';

  @override
  String get v2CarplayExpand => 'Expand CarPlay to fill the screen';

  @override
  String get v2AndroidAutoExpand => 'Expand Android Auto to fill the screen';

  @override
  String get v2CarplayCollapse => 'Collapse CarPlay';

  @override
  String get v2AndroidAutoCollapse => 'Collapse Android Auto';

  @override
  String get v2ChargingEnergy => 'Energy';

  @override
  String get v2ChargingAmperageTitle => 'Charging amperage';

  @override
  String get v2ChargingAmperageDescription =>
      'Reduce the current when you use a shared or unfamiliar circuit.';

  @override
  String v2ChargingAmperageRange(int min, int max) {
    return 'Vehicle range $min–$max A';
  }

  @override
  String get v2ChargingCommandFailed =>
      'The car did not accept the charge command.';

  @override
  String get v2ChargingAmperageUnit => 'A';

  @override
  String v2ChargingAmperageValue(int amps) {
    return '$amps A';
  }

  @override
  String get v2ChargingAmperageDecrease => 'Decrease charging amperage';

  @override
  String get v2ChargingAmperageIncrease => 'Increase charging amperage';

  @override
  String get v2ChargingAmperageClose => 'Close charging amperage control';

  @override
  String get v2ChargingStopButton => 'Stop Charging';

  @override
  String get v2ChargingForceButton => 'Force Charging';

  @override
  String get v2ChargingForceActive => 'Force Charging Active';

  @override
  String get v2RangeVehicleRange => 'Vehicle range';

  @override
  String get v2RangeEstimateCaption => 'Estimate from closed trips';

  @override
  String get v2RangeEstimateDelayed =>
      'Estimate delayed · history update pending';

  @override
  String get v2RangeEstimateReadDelayed =>
      'Estimate delayed · range read failed';

  @override
  String get v2RangeEstimateUnavailable => 'Estimate unavailable';

  @override
  String get v2RangeEstimateReadFailed => 'Estimate unavailable · read failed';

  @override
  String get v2ChargeGraphLoadFailed => 'The charge session did not load.';

  @override
  String get v2ChargeGraphEmpty => 'No charge session is available.';

  @override
  String get v2ChargeGraphNoData => 'This charge session has no chart data.';

  @override
  String v2ChargeGraphPowerTick(int power) {
    return '$power';
  }

  @override
  String get v2ChargeGraphSemantics => 'Charge session SOC and power over time';

  @override
  String get v2ChargeGraphRangeGainedEstimate => 'Range gained · EST';

  @override
  String get v2ChargeGraphEnergyAdded => 'Energy added';

  @override
  String get v2ChargeGraphCostEstimate => 'Cost · EST';

  @override
  String get v2ChargeGraphDuration => 'Duration';

  @override
  String get v2ChargeGraphTargetReached => 'Limit reached';

  @override
  String v2ChargeGraphDurationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String v2ChargeGraphDurationHoursMinutes(int hours, int minutes) {
    return '$hours hr $minutes min';
  }

  @override
  String get v2LastChargeSession => 'Last charge session';

  @override
  String get v2ChargeSummaryNoEnergy =>
      'This charge session has no measured energy.';

  @override
  String get v2ChargeClimateWarningTitle => 'Climate is using your charge';

  @override
  String v2ChargeClimateWarningHigh(String climate, String charging) {
    return 'The climate system draws $climate kW of the $charging kW coming in. The battery gains much less than the charger shows.';
  }

  @override
  String v2ChargeClimateWarningOutweighs(String climate) {
    return 'The climate system draws $climate kW, as much as the charger delivers. The battery is gaining almost nothing.';
  }

  @override
  String get v2ChargeSummaryBatteryEnergy => 'Energy delivered to the battery';

  @override
  String get v2ChargeSummaryClimateEnergy =>
      'Energy used by the climate system during charging';

  @override
  String get v2ChargeSummarySemantics =>
      'Charge-session energy split between the battery and the climate system';

  @override
  String get actionSave => 'SAVE';

  @override
  String get actionClear => 'CLEAR';

  @override
  String get settingsChargeCostTitle => 'Default charge price';

  @override
  String get settingsChargeCostDesc =>
      'Rate per kWh used to estimate charging cost. Type the value on the keypad.';

  @override
  String settingsChargeCostSaved(Object value) {
    return 'Saved: $value';
  }

  @override
  String get settingsChargeCostNotSaved => 'No default price saved';

  @override
  String get settingsChargeCostEdit => 'Set price';

  @override
  String get v2MoneyKeypadSave => 'Save';

  @override
  String get v2MoneyKeypadClear => 'Clear the amount';

  @override
  String get v2MoneyKeypadDelete => 'Delete the last digit';

  @override
  String get v2MoneyKeypadClose => 'Close the price keypad';

  @override
  String get v2ChargeCostTitle => 'Charge price';

  @override
  String get v2ChargeCostDescription =>
      'Applies to this charge only. Type a price per kWh, or the total you paid.';

  @override
  String get v2ChargeCostFieldRate => 'Price/kWh';

  @override
  String get v2ChargeCostFieldTotal => 'Total paid';

  @override
  String get v2ChargeCostUnitRate => '/kWh';

  @override
  String get v2ChargeCostEdit => 'Edit the price of this charge';

  @override
  String get v2ChargeCostFailed => 'The charge price was not saved';

  @override
  String get settingsRoadcastTitle => 'Roadcast';

  @override
  String get settingsRoadcastUnavailable => 'Daemon status unavailable';

  @override
  String settingsRoadcastRunning(
    Object frameCount,
    Object hz,
    Object signalCount,
  ) {
    return '$signalCount signals, $frameCount frames @ $hz Hz';
  }

  @override
  String get settingsRoadcastStopped => 'Daemon is not serving';

  @override
  String settingsRoadcastInstalled(Object commit) {
    return 'Installed: $commit';
  }

  @override
  String get settingsRoadcastNotChecked => 'Edge updates have not been checked';

  @override
  String settingsRoadcastUpdateAvailable(Object commit) {
    return 'Edge update available: $commit';
  }

  @override
  String get settingsRoadcastUpToDate => 'Roadcast edge is up to date';

  @override
  String settingsRoadcastIncompatible(Object reason) {
    return 'Incompatible update: $reason';
  }

  @override
  String get settingsRoadcastCheck => 'CHECK';

  @override
  String get settingsRoadcastChecking => 'CHECKING';

  @override
  String get settingsRoadcastUpdate => 'UPDATE';

  @override
  String get settingsRoadcastUpdating => 'UPDATING';

  @override
  String get settingsRoadcastRestart => 'RESTART';

  @override
  String get settingsRoadcastRestarting => 'RESTARTING';

  @override
  String get settingsRoadcastRestartSuccess => 'ROADCAST DAEMON RESTARTED';

  @override
  String settingsRoadcastRestartFailed(Object reason) {
    return 'ROADCAST RESTART FAILED: $reason';
  }

  @override
  String settingsRoadcastCheckFailed(Object reason) {
    return 'ROADCAST UPDATE CHECK FAILED: $reason';
  }

  @override
  String settingsRoadcastUpdateSuccess(Object commit) {
    return 'ROADCAST UPDATED TO $commit';
  }

  @override
  String settingsRoadcastUpdateFailed(Object reason) {
    return 'ROADCAST UPDATE FAILED: $reason';
  }

  @override
  String get chargeCostDialogTitle => 'CHARGE COST';

  @override
  String get chargeCostPerKwhLabel => 'PRICE PER kWh';

  @override
  String get chargeCostPerKwhHint =>
      'Set to zero to leave blank — used when the paid amount is empty.';

  @override
  String get chargeCostPaidLabel => 'PAID AMOUNT';

  @override
  String get chargeCostPaidHint => 'Takes priority over the price per kWh.';

  @override
  String get settingsSensorLab => 'Motion sensor lab';

  @override
  String get settingsSensorLabDesc =>
      'Watch the car\'s tilt and feel bumps live while driving.';

  @override
  String get settingsSensorLabOpen => 'Open';

  @override
  String get sensorLabTitle => 'Sensor lab';

  @override
  String get sensorLabCalibrate => 'Zero here';

  @override
  String get sensorLabReset => 'Reset';

  @override
  String get sensorLabUnavailable => 'Motion sensors unavailable';

  @override
  String get sensorLabWaiting => 'Waiting for sensors…';

  @override
  String get sensorLabLevel => 'Level';

  @override
  String get sensorLabPitch => 'Pitch';

  @override
  String get sensorLabRoll => 'Roll';

  @override
  String get sensorLabForces => 'Forces';

  @override
  String get sensorLabVertical => 'Vertical (bumps)';

  @override
  String get sensorLabHorizontal => 'Braking / cornering';

  @override
  String get sensorLabPeak => 'peak';

  @override
  String get sensorLabRoadTrace => 'Road trace (vertical)';

  @override
  String get sensorLabBumps => 'Bumps';

  @override
  String get sensorLabSessionPeak => 'Peak jolt';

  @override
  String get sensorLabRate => 'Sample rate';

  @override
  String get canLiveMute => 'Mute';

  @override
  String get canLiveUnmute => 'Unmute';

  @override
  String get canLiveMutedList => 'Muted';

  @override
  String get canLiveSortRecency => 'Recent';

  @override
  String get canLiveSortRate => 'Busiest';

  @override
  String get canLiveSortName => 'Name';

  @override
  String get canLiveMetricActive => 'Moving now';

  @override
  String get canLiveMetricRate => 'Changes/s';

  @override
  String get canLiveWaiting => 'Waiting for the CAN bridge daemon';

  @override
  String get canLiveStale => 'Daemon stopped publishing';

  @override
  String get canLiveNeverChanged => 'never changed';

  @override
  String get canLiveShowSilent => 'Show silent';

  @override
  String get liveTripTitle => 'LIVE TRIP';

  @override
  String get liveTripRowTitle => 'ACTIVE TRIP SESSION';

  @override
  String get liveTripOpen => 'OPEN LIVE TRIP';

  @override
  String get tripNoCompletedSessions => 'No completed trips yet.';

  @override
  String get liveTripStatusLive => 'LIVE';

  @override
  String get liveTripSpeed => 'SPEED';

  @override
  String get liveTripVehicleSpeedUnavailable =>
      'Vehicle speed stream unavailable';

  @override
  String get liveTripCanSpeedRaw => 'CAN SPEED CANDIDATE';

  @override
  String get liveTripSoc => 'SOC';

  @override
  String get liveTripSocStart => 'START SOC';

  @override
  String get liveTripSocChange => 'SOC CHANGE';

  @override
  String get liveTripSocCurrent => 'CURRENT SOC';

  @override
  String get liveTripDrivePower => 'DRIVE POWER';

  @override
  String get liveTripRoadIncline => 'CURRENT ROAD INCLINE';

  @override
  String get inclineReadoutTitle => 'Incline';

  @override
  String get compassReadoutTitle => 'Compass';

  @override
  String get compassNorth => 'N';

  @override
  String get compassNortheast => 'NE';

  @override
  String get compassEast => 'E';

  @override
  String get compassSoutheast => 'SE';

  @override
  String get compassSouth => 'S';

  @override
  String get compassSouthwest => 'SW';

  @override
  String get compassWest => 'W';

  @override
  String get compassNorthwest => 'NW';

  @override
  String get compassHeld => 'Stopped. Last direction.';

  @override
  String get compassNoFix => 'No GPS signal';

  @override
  String get compassGpsOff => 'GPS is off';

  @override
  String get compassNoPermission => 'No location permission';

  @override
  String get liveTripEcoCoach => 'ECO COACH';

  @override
  String get liveTripEcoBeta => 'BETA';

  @override
  String get liveTripEcoObserving => 'Gathering driving samples';

  @override
  String get liveTripEcoAcceleration => 'ACC';

  @override
  String get liveTripEcoJerk => 'JERK';

  @override
  String get liveTripEcoCycles => 'ACC→BRAKE';

  @override
  String get liveTripEcoReasonStopped => 'Stopped — score paused';

  @override
  String get liveTripEcoReasonEfficient => 'Smooth, moderate demand';

  @override
  String get liveTripEcoReasonDemand => 'High traction demand';

  @override
  String get liveTripEcoReasonAcceleration => 'Abrupt acceleration';

  @override
  String get liveTripEcoReasonJerk => 'Abrupt change in acceleration';

  @override
  String get liveTripEcoReasonCoasting => 'Coasting without pedal or brake';

  @override
  String get liveTripEcoReasonRegen => 'Regenerating energy';

  @override
  String get liveTripEcoReasonCycle => 'Acceleration followed soon by braking';

  @override
  String get liveTripAverageConsumption => 'VCU AVG CONSUMPTION';

  @override
  String get liveTripAverageConsumption1 => 'VCU AVG CONSUMPTION 1';

  @override
  String get liveTripTotalOdometerCandidate => 'ODOMETER CANDIDATE';

  @override
  String get liveTripPedal => 'ACCEL PEDAL';

  @override
  String get liveTripBrake => 'BRAKE';

  @override
  String get liveTripBrakeOn => 'PRESSED';

  @override
  String get liveTripBrakeOff => 'RELEASED';

  @override
  String get liveTripRegenTorque => 'REGEN TORQUE';

  @override
  String get liveTripRegenLevel => 'REGEN LEVEL';

  @override
  String get liveTripPackPower => 'PACK V x I';

  @override
  String get liveTripVhalPower => 'VHAL POWER';

  @override
  String get liveTripGear => 'GEAR';

  @override
  String get liveTripAltitude => 'ALTITUDE';

  @override
  String get liveTripGps => 'GPS FIX';

  @override
  String get liveTripBus => 'CAN BUS';

  @override
  String get liveTripPollAge => 'POLL AGE';

  @override
  String get liveTripImpliedScale => 'IMPLIED SPEED SCALE';

  @override
  String get liveTripSectionInstant => 'INSTANT SIGNALS';

  @override
  String get liveTripSectionTotals => 'TRIP TOTALS';

  @override
  String get liveTripSourceVhal => 'VHAL';

  @override
  String get liveTripBadgeDerived => 'V x I';

  @override
  String get liveTripBadgeStale => 'STALE';

  @override
  String get liveTripCanOffline =>
      'CAN bridge offline: live Roadcast values are unavailable';

  @override
  String get liveTripMapTitle => 'Live Route';

  @override
  String get liveTripChartPower => 'Drive Power Trace';

  @override
  String get liveTripChartPowerNotEnough =>
      'Not enough power samples for chart.';

  @override
  String liveTripSourceCan(Object frameId) {
    return 'CAN $frameId';
  }

  @override
  String liveTripTotalsUpdated(Object age) {
    return 'Room, $age ago';
  }

  @override
  String liveTripWindowMinutes(Object minutes) {
    return 'last $minutes min';
  }

  @override
  String liveRoadcastWindowSeconds(int seconds) {
    return 'last $seconds s in RAM';
  }

  @override
  String get liveChargeTitle => 'LIVE CHARGE';

  @override
  String get liveChargeOpen => 'OPEN LIVE SESSION';

  @override
  String get liveChargeRowTitle => 'ACTIVE SESSION';

  @override
  String get liveChargeSectionPack => 'PACK';

  @override
  String get liveChargeSectionInput => 'CHARGER INPUT';

  @override
  String get liveChargeSectionTotals => 'SESSION TOTALS';

  @override
  String get liveChargeInputPower => 'INPUT POWER';

  @override
  String get liveChargePackCurrent => 'PACK CURRENT';

  @override
  String get liveChargePackPower => 'PACK POWER';

  @override
  String get liveChargeCurrentRaw => 'BUS COUNT';

  @override
  String get liveChargeCurrentScale => 'SCALE';

  @override
  String get liveChargeCurrentScaleValue => '0.1 A/bit (confirmed)';

  @override
  String get liveChargeZeroAssumed => 'ASSUMED ZERO';

  @override
  String get liveChargeZeroObserved => 'OBSERVED ZERO';

  @override
  String liveChargeZeroSamples(int count) {
    return '$count samples';
  }

  @override
  String get liveChargeZeroWaiting => 'needs idle time';

  @override
  String get liveChargeZeroOffset => 'OFFSET ERROR';

  @override
  String get liveChargeZeroNote =>
      'Ampere values use an assumed zero of 5000 counts. The observed zero accumulates while the pack is idle; the gap between them is the error every ampere reading carries.';

  @override
  String get liveChargeObcInputVolts => 'INPUT VOLTAGE';

  @override
  String get liveChargeObcInputCurrent => 'INPUT CURRENT';

  @override
  String get liveChargeObcState => 'CHARGER STATE';

  @override
  String get liveChargeObcEfficiency => 'OBC EFFICIENCY';

  @override
  String get liveChargeChartPower => 'Input Power';

  @override
  String get liveChargeChartCurrent => 'Pack Current (est.)';

  @override
  String get liveChargeChartSoc => 'State of Charge';

  @override
  String get liveChargeChartNotEnough => 'Waiting for bus samples.';

  @override
  String get liveChargeEnergyAdded => 'ENERGY ADDED';

  @override
  String get liveChargeEta => 'TIME TO FULL';

  @override
  String liveChargeEtaTarget(int percent) {
    return 'TIME TO $percent%';
  }

  @override
  String get liveChargeBadgeEstimate => 'EST';

  @override
  String get liveChargeCanOffline =>
      'CAN bridge offline: pack current and voltage are unavailable';

  @override
  String get liveChargeNoLiveSession => 'No charge session is open.';

  @override
  String get chargeDetailCost => 'COST';

  @override
  String get chargeDetailEditCost => 'EDIT COST';

  @override
  String get chargeDetailCostPerKwh => 'PER kWh';

  @override
  String get chargeDetailSectionOverview => 'OVERVIEW';

  @override
  String get chargeDetailSectionEnergy => 'ENERGY & COST';

  @override
  String get chargeDetailSectionCurves => 'CURVES';

  @override
  String get chargeDetailSectionContext => 'CONTEXT';

  @override
  String get chargeDetailPeakPower => 'PEAK POWER';

  @override
  String get chargeDetailSocRate => 'SOC RATE';

  @override
  String get chargeDetailEnergyRate => 'ENERGY RATE';

  @override
  String get chargeDetailSocPerHour => '%/h';

  @override
  String chargeDetailSamples(int count) {
    return '$count pts';
  }

  @override
  String get chargeDetailNoCost => 'Tap to set a price';

  @override
  String get chargeDetailStartedAt => 'STARTED';

  @override
  String get chargeDetailEndedAt => 'ENDED';

  @override
  String liveChargeLoss(Object kw) {
    return '$kw kW lost in the charger';
  }

  @override
  String get liveChargeWallPower => 'WALL POWER';

  @override
  String get liveChargeMeasured => 'MEAS';

  @override
  String get energyMonitorTab => 'Energy monitor';

  @override
  String get rangeReasonCollectionStopped => 'Collection stopped.';

  @override
  String get rangeReasonWaitingForSignal => 'Waiting for the signal.';

  @override
  String get rangeReasonSignalError => 'Signal error.';

  @override
  String get rangeReasonUnpublishedSignal =>
      'The car does not send this value.';

  @override
  String get rangeReasonOutOfRange => 'The value is out of range.';

  @override
  String get rangeReasonEfficiencyLoading => 'Reading the efficiency.';

  @override
  String get rangeReasonNoValidEfficiency => 'No measured efficiency yet.';

  @override
  String get rangeReasonEfficiencyStale => 'The efficiency is not up to date.';

  @override
  String get rangeDropTitle => 'Range drop';

  @override
  String get rangeDropDistance => 'Drove';

  @override
  String get rangeDropCarSpent => 'Car spent';

  @override
  String get rangeDropCarGained => 'Car gained';

  @override
  String get rangeDropAppSpent => 'App spent';

  @override
  String get rangeDropAppGained => 'App gained';

  @override
  String rangeDropStretch(String time) {
    return 'Measured since $time';
  }

  @override
  String get rangeDropWaiting => 'Waiting for a drive.';

  @override
  String get rangeDropTooShort => 'The stretch is too short to compare.';

  @override
  String get rangeDropFrozen => 'Stretch closed';

  @override
  String get energyUseTitle => 'Energy use';

  @override
  String get energyUseAbout => 'About energy use';

  @override
  String get energyWindowCurrentDrive => 'Current drive';

  @override
  String get energyWindowSincePowerOn => 'Since power on';

  @override
  String get energyWindowLast15Minutes => 'Last 15 minutes';

  @override
  String get energyWindowLastHour => 'Last hour';

  @override
  String get energyWindowLast8Hours => 'Last 8 hours';

  @override
  String get energyWindowSelector => 'Choose the stretch of driving to show';

  @override
  String get energyModeDrive => 'Drive';

  @override
  String get energyModeParked => 'Parked';

  @override
  String get energyStateCharge => 'Charging';

  @override
  String get energyStatePoweredOn => 'Powered on';

  @override
  String get energyChartEmpty => 'No driving recorded in this window.';

  @override
  String get energyChartEmptyParked =>
      'The car did not stand still in this window.';

  @override
  String get energyChartLoading => 'Reading the drive…';

  @override
  String get energyChartFailed => 'The drive could not be read.';

  @override
  String get energyChartSemantics => 'Energy used per interval';

  @override
  String get energyBarOpen => 'in progress';

  @override
  String get energyTraction => 'Drivetrain';

  @override
  String get energyClimate => 'Climate';

  @override
  String get energyAuxiliary => 'Everything else';

  @override
  String get energyRegeneration => 'Recovered';

  @override
  String get sessionDetailsTitle => 'Session details';

  @override
  String get sessionDetailsAbout => 'About this session';

  @override
  String get sessionDetailsInfoTitle => 'What the ring shows';

  @override
  String get sessionDetailsInfoClose => 'Close the session explanation';

  @override
  String get sessionDetailsInfoTraction =>
      'Energy the pack sent to the motor to move the car.';

  @override
  String get sessionDetailsInfoClimate =>
      'Energy the pack sent to heating and cooling. The car reports this itself.';

  @override
  String get sessionDetailsInfoAuxiliary =>
      'Everything the pack supplied that traction and climate do not explain: steering, pumps, lamps, electronics. It is what is left after the drivetrain, so it carries the error of both readings. If the car does not report climate power, the climate load is inside this figure.';

  @override
  String get sessionDetailsInfoRegeneration =>
      'Energy the motor returned while slowing down. Measured against what was drawn, not a slice of it — which is why it is the inner arc.';

  @override
  String get energyStatEfficiency => 'Avg.';

  @override
  String get energyStatDistance => 'Distance';

  @override
  String get energyStatSpeed => 'Avg speed';

  @override
  String get energyStatCost => 'Est. cost';

  @override
  String get energyStatParkedDrain => 'Avg. drain';

  @override
  String get energyStatParkedTotal => 'Total';

  @override
  String get energyStatParkedClimate => 'Climate';

  @override
  String get energyLedgerIn => 'In';

  @override
  String get energyLedgerOut => 'Out';

  @override
  String get energyLedgerBalance => 'Balance';

  @override
  String get energyLedgerSoc => 'SOC';

  @override
  String get energyLedgerIncludesEstimate => 'Includes the sleep estimate.';

  @override
  String get unitKmPerKwh => 'km/kWh';

  @override
  String get unitKwhPer50km => 'kWh/50km';

  @override
  String get unitKwhPer100km => 'kWh/100km';

  @override
  String get efficiencyAverageWindow => 'Avg. · last 15 min';

  @override
  String get efficiencyTimeNotSynced =>
      'Time not synced yet. Line shows measured efficiency.';

  @override
  String get efficiencyLessRange => 'Less range';

  @override
  String get efficiencyAxisUnit => 'Wh/km';

  @override
  String get efficiencySmoothnessLabel => 'Driving smoothness';

  @override
  String get efficiencySmoothnessWindow => 'last 30 s';

  @override
  String get efficiencyAbout => 'About this card';

  @override
  String get efficiencyInfoClose => 'Close the efficiency explanation';

  @override
  String get efficiencyInfoTitle => 'How to read this card';

  @override
  String get efficiencyInfoLinesLabel => 'The two lines';

  @override
  String get efficiencyInfoLines =>
      'The upper line is what the drive costs after regeneration gives energy back. The lower line is what the car takes before that credit. The green area between them is the returned energy.';

  @override
  String get efficiencyInfoScaleLabel => 'The scale';

  @override
  String get efficiencyInfoScale =>
      'The scale is Wh/km with zero at the top, so a higher line is better. The upper line is green when the drive is better than the car\'s range estimate. A break is an interval the car did not report.';

  @override
  String get efficiencyInfoAverageLabel =>
      'The large number, and the car\'s figure';

  @override
  String get efficiencyInfoAverage =>
      'This is the average of the last 15 minutes: the distance, divided by the energy the battery gave. Touch it to change the unit. The car calculates its own kWh/100 km across the last 100 km, which can be many trips and many days. Thus the two numbers differ, and both are correct.';

  @override
  String get efficiencyInfoSmoothnessLabel => 'The bar at the side';

  @override
  String get efficiencyInfoSmoothness =>
      'The bar shows how smoothly the car is driven, not efficiency. The knob is the last 30 seconds, the small mark the last 5 seconds. A mark above the knob shows smoother driving.';

  @override
  String get signalLabTitle => 'Signal Lab';

  @override
  String get signalLabOpen => 'Open Signal Lab';

  @override
  String get signalLabDescription =>
      'Engineering view of every CAN signal the daemon decodes.';

  @override
  String get signalLabTabInspector => 'INSPECTOR';

  @override
  String get signalLabTabScope => 'SCOPE';

  @override
  String get signalLabSearchHint => 'Signal name or 0x315';

  @override
  String get signalLabTierFresh => 'Fresh';

  @override
  String get signalLabTierPublished => 'Published';

  @override
  String get signalLabTierNever => 'Never';

  @override
  String get signalLabColumnSignal => 'Signal';

  @override
  String get signalLabColumnFrame => 'Frame';

  @override
  String get signalLabColumnRaw => 'Raw';

  @override
  String get signalLabColumnValue => 'Value';

  @override
  String get signalLabColumnUnit => 'Unit';

  @override
  String get signalLabColumnAge => 'Age';

  @override
  String get signalLabColumnTier => 'Tier';

  @override
  String get signalLabColumnRange => 'Session min/max';

  @override
  String get signalLabRawCounts => 'counts';

  @override
  String get signalLabUncalibrated => 'EST';

  @override
  String get signalLabUncalibratedHint =>
      'No negotiated scale. The count is the measurement.';

  @override
  String get signalLabInvalid => 'INVALID';

  @override
  String get signalLabDisconnected =>
      'Roadcast is not connected. No signal can be read.';

  @override
  String get signalLabEmpty => 'No signal matches this filter.';

  @override
  String get signalLabScopeEmpty =>
      'Select up to four signals in the inspector to trace them.';

  @override
  String get signalLabScopeFull =>
      'The scope holds four traces. Remove one first.';

  @override
  String get signalLabFreeze => 'Freeze';

  @override
  String get signalLabResume => 'Resume';

  @override
  String get signalLabClearTraces => 'Clear traces';

  @override
  String get signalLabResetSession => 'Reset session';

  @override
  String get signalLabTrace => 'Trace';

  @override
  String signalLabCounts(int fresh, int published, int never) {
    return '$fresh fresh, $published published, $never never';
  }

  @override
  String get v1WelcomeTitle => 'Version 1.0 Experience';

  @override
  String get v1WelcomeBody =>
      'Welcome to Version 1.0! This release introduces a new experience for the app. The new interface will continue receiving updates, improvements, and fixes based on your feedback.\n\nIf you ever wish to return to the previous mode, you can switch back at any time in Settings. The app will remember your preferred experience and always launch in it.';

  @override
  String get v1WelcomeConfirm => 'Explore New Experience';

  @override
  String get v1WelcomeUseLegacy => 'Use Legacy Mode';

  @override
  String get v2ProjectionBetaTitle => 'CarPlay / Android Auto (Beta)';

  @override
  String get v2ProjectionBetaDescription =>
      'Shows the tab for the phone that is connected and renders the picture in it. If no phone is connected, no tab appears. While off, the head unit\'s projection services are never started. Still in beta: expect rough edges.';

  @override
  String get settingsReplaceOemChargingTitle =>
      'Replace factory charging screen';

  @override
  String get settingsReplaceOemChargingDesc =>
      'Blocks the automatic factory charging popup, and opens this app on Charging when a charge begins. The factory app still opens from its icon. This app does not take the screen in camping or nap mode.';

  @override
  String get settingsExternalChargeControlTitle =>
      'External Charge Control (Geely Charge Control)';

  @override
  String get settingsExternalChargeControlDesc =>
      'Allows controlling charge limits and amperage by delegating actions to the dedicated Geely Charge Control app. By default, Eaglemetry operates purely as a telemetry analyzer.';

  @override
  String get settingsChargeControlNotInstalled =>
      'Geely Charge Control is not installed';

  @override
  String settingsChargeControlInstalled(String version) {
    return 'Geely Charge Control installed (v$version)';
  }

  @override
  String get settingsChargeControlDownloadAndInstall =>
      'Download and Install APK';

  @override
  String get settingsChargeControlOpenApp => 'Open App';

  @override
  String get settingsChargeControlInstalling => 'Installing APK...';

  @override
  String settingsChargeControlDownloadingPercent(int percent) {
    return 'Downloading... $percent%';
  }

  @override
  String get settingsChargeControlInstalledSuccess =>
      'Geely Charge Control installation scheduled/completed.';

  @override
  String get settingsChargeControlLaunchFailed =>
      'Geely Charge Control did not open.';

  @override
  String get settingsPackCapacityTitle => 'Battery capacity';

  @override
  String get settingsPackCapacityDesc =>
      'The usable pack size the app uses for every energy and efficiency figure. The car does not report a usable one, so state it here. Default: 39.60 kWh.';

  @override
  String settingsPackCapacitySaved(String value) {
    return 'Battery capacity set to $value.';
  }

  @override
  String get settingsChargeCostApplyTitle => 'Price the past charges';

  @override
  String get settingsChargeCostApplyDesc =>
      'Writes the default rate on every finished charge that has no price. A charge with a paid amount keeps it.';

  @override
  String get settingsChargeCostApply => 'Apply to unpriced charges';

  @override
  String get settingsChargeCostApplying => 'Applying...';

  @override
  String get settingsProposalDecision => 'Answer proposal';

  @override
  String get settingsProposalPrompt => 'A phone proposed this value.';

  @override
  String get settingsProposalAccept => 'Accept';

  @override
  String get settingsProposalRefuse => 'Refuse';

  @override
  String get settingsProposalDeciding => 'Deciding...';

  @override
  String get settingsProposalUnknown => 'Proposal';

  @override
  String settingsChargeCostApplied(int count) {
    return '$count charges now carry the default rate.';
  }

  @override
  String get settingsChargeCostApplyNone => 'No charge needed a price.';

  @override
  String get settingsChargeCostApplyNoRate => 'Save a default rate first.';

  @override
  String insightNotEnoughData(int count) {
    return 'Not enough measured trips in the last 30 days yet ($count usable).';
  }

  @override
  String get insightSubjectUnusable =>
      'This trip has no measured pack energy to compare.';

  @override
  String insightNotDistinguishable(int count) {
    return 'This trip cannot yet be told apart from your last 30 days ($count trips).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'This trip used $difference Wh/km less than your last 30 days ($count trips).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'This trip used $difference Wh/km more than your last 30 days ($count trips).';
  }

  @override
  String get navSync => 'Sync';

  @override
  String get v2SyncCodeTitle => 'Pairing code';

  @override
  String get v2SyncNoCode => 'No code is open';

  @override
  String get v2SyncRegisteredSubtitle =>
      'Car registered. Waiting for the phone to link it.';

  @override
  String get v2SyncRegisteredBody =>
      'The car registered itself. Open the Eaglemetry Companion app on your phone and link the car to your account.';

  @override
  String get v2SyncRegistered => 'REGISTERED';

  @override
  String get v2SyncRevokedSubtitle =>
      'Access revoked. Make a new pairing code.';

  @override
  String get v2SyncRevokedBody =>
      'Access to this car was revoked. Generate a new pairing code to link your phone again.';

  @override
  String get v2SyncRevoked => 'REVOKED';

  @override
  String get v2SyncCodeExpired => 'The code expired. Make a new one.';

  @override
  String get v2SyncCodeCancelled => 'Code cancelled. Make a new one.';

  @override
  String get v2SyncCreateCode => 'NEW CODE';

  @override
  String get v2SyncCancelCode => 'CANCEL CODE';

  @override
  String get v2SyncRetry => 'RETRY';

  @override
  String get v2SyncPaired => 'PAIRED';

  @override
  String get v2SyncPairedConnected => 'Phone paired. Connected.';

  @override
  String get v2SyncPairingRejected => 'Phone declined the pairing.';

  @override
  String get v2SyncPairingInvalid => 'Something went wrong.';

  @override
  String get v2SyncPairingStartFailed => 'Couldn\'t start pairing. Try again.';

  @override
  String get v2SyncCheckingConnection => 'Checking connection…';

  @override
  String get v2SyncCheckingBody =>
      'Checking whether the car can reach the server…';

  @override
  String get v2SyncNoNetwork =>
      'No network connection. Check your Wi-Fi or hotspot.';

  @override
  String get v2SyncNoNetworkBody =>
      'The car has no network connection. Turn on Wi-Fi or a hotspot and try again.';

  @override
  String get v2SyncServerUnreachable =>
      'Cannot reach the server. Check your connection.';

  @override
  String get v2SyncServerUnreachableBody =>
      'The car is on a network but cannot reach the server. Check the connection and try again.';

  @override
  String get v2SyncPendingBody =>
      'Open the Eaglemetry Companion app on your phone and type this code. It expires in 5 minutes.';

  @override
  String get v2SyncApprovedBody =>
      'Your phone is paired. The car syncs to the cloud when it has a connection.';

  @override
  String get v2SyncExpiredBody =>
      'This code timed out after 5 minutes. Generate a new one to try again.';

  @override
  String get v2SyncRejectedBody =>
      'The phone declined the pairing. Generate a new code and try again.';

  @override
  String get v2SyncInvalidBody =>
      'Something went wrong with the code. Generate a new one and try again.';

  @override
  String get v2SyncIdleBody =>
      'Open the Eaglemetry Companion app on your phone. Generate a code here and type it there.';

  @override
  String get v2SyncExpiresInMinutes => 'Expires in 5 minutes';

  @override
  String v2SyncExpiresInClock(int minutes, String seconds) {
    return 'Expires in $minutes:$seconds';
  }

  @override
  String v2SyncExpiresInSecs(int seconds) {
    return 'Expires in ${seconds}s';
  }

  @override
  String get v2SyncDevicesTitle => 'Paired phones';

  @override
  String get v2SyncNoDevices => 'No phone is paired';

  @override
  String get v2SyncNoDevicesBody =>
      'The car serves data only to a paired phone. Make a code to pair one.';

  @override
  String v2SyncDeviceCount(Object count) {
    return '$count paired';
  }

  @override
  String v2SyncPairedOn(Object date) {
    return 'Paired on $date';
  }

  @override
  String get v2SyncRevoke => 'UNSYNC';

  @override
  String v2SyncRevokeConfirmTitle(Object name) {
    return 'Unsync $name?';
  }

  @override
  String get v2SyncRevokeConfirmMessage =>
      'The phone loses access to the car. The car becomes free to sync with another phone. The history already on the phone stays there.';

  @override
  String get v2SyncRevokeConfirm => 'UNSYNC';

  @override
  String get v2SyncRevokeCancel => 'CANCEL';

  @override
  String get v2SyncForce => 'FORCE SYNC';

  @override
  String get v2SyncCloudTitle => 'Cloud sync';

  @override
  String get v2SyncCloudSubtitle => 'Upload the car\'s data to the cloud now.';

  @override
  String get v2SyncCloudRunning => 'Uploading…';

  @override
  String get v2SyncCloudNote =>
      'Sends telemetry, annotations and preference changes to the cloud. Runs on its own every 15 minutes; this button runs it now.';

  @override
  String v2SyncCloudMoved(int count) {
    return 'Uploaded $count records.';
  }

  @override
  String get v2SyncCloudEmpty => 'Already up to date. Nothing to upload.';

  @override
  String get v2SyncCloudFailed => 'Upload failed. Try again.';

  @override
  String get v2SyncCloudDisabled =>
      'Cloud sync is off in this build. Nothing was uploaded.';

  @override
  String get v2SyncCloudNotPaired =>
      'Pair this car with your phone first. Nothing was uploaded.';

  @override
  String get v2SyncLiveActive => 'Live values: sending';

  @override
  String get v2SyncLiveIdle => 'Live values: waiting for the phone';

  @override
  String get v2SyncProgressLabel => 'Cloud sync progress';

  @override
  String get v2SyncProgressUpToDate => '100% in sync';

  @override
  String v2SyncProgressPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pending',
      one: '1 pending',
    );
    return '$_temp0';
  }

  @override
  String v2SyncProgressPendingClock(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count waiting for car clock',
      one: '1 waiting for car clock',
    );
    return '$_temp0';
  }

  @override
  String v2SyncProgressPendingBoth(int dirty, int clock) {
    String _temp0 = intl.Intl.pluralLogic(
      dirty,
      locale: localeName,
      other: '$dirty pending',
      one: '1 pending',
    );
    String _temp1 = intl.Intl.pluralLogic(
      clock,
      locale: localeName,
      other: '$clock waiting for car clock',
      one: '1 waiting for car clock',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String v2SyncProgressDetail(int clean, int total) {
    return '$clean of $total records in the cloud';
  }

  @override
  String get v2SyncCompanionTitle => 'Eaglemetry Companion';

  @override
  String get v2SyncCompanionBeta => 'Beta available';

  @override
  String get v2SyncCompanionDescription =>
      'Track your trips, charge history, and battery metrics on your phone.';

  @override
  String get v2SyncCompanionUpdateHint =>
      'Can\'t sync? Download the new version of the companion!';

  @override
  String get v2SyncCompanionScanQr =>
      'Scan the code to download the beta version:';

  @override
  String get v2SyncCompanionAndroid => 'Android';

  @override
  String get v2SyncCompanionIos => 'iOS';

  @override
  String get v2SyncCompanionForbidden => '403?';

  @override
  String get v2SyncCompanionBetaWarning =>
      'The app is in beta (the iOS version is pending Apple approval). Features are missing and bugs exist. To give feedback, shake your phone!';

  @override
  String get v2SettingsStorage => 'Storage';

  @override
  String get v2SettingsStorageTitle => 'Stored history';

  @override
  String get v2SettingsStorageDesc =>
      'How much disk the app\'s stored history occupies. Measured without scanning every record.';

  @override
  String get v2SettingsStorageLoading => 'Checking…';

  @override
  String v2SettingsStorageFailed(String error) {
    return 'Storage check failed: $error';
  }

  @override
  String v2SettingsStorageValue(String size) {
    return '$size used';
  }
}
