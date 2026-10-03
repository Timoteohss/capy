// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry';

  @override
  String get navBrand => 'AUTO';

  @override
  String get navTrips => 'Viajes';

  @override
  String get navCharging => 'Carga';

  @override
  String get navHistory => 'Historial';

  @override
  String get navRoadcastTrace => 'Trace';

  @override
  String get navHelpers => 'Helpers';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get navCarplay => 'CarPlay';

  @override
  String get navAndroidAuto => 'Android Auto';

  @override
  String get appBarTitle => 'GEELY TELEMETRÍA';

  @override
  String get gearD => 'D';

  @override
  String get gearP => 'P';

  @override
  String get gearR => 'R';

  @override
  String get gearN => 'N';

  @override
  String get plugNone => 'NINGUNO';

  @override
  String get plugAc => 'AC';

  @override
  String get plugDc => 'DC';

  @override
  String get plugIntegration => 'INTEGRACIÓN';

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
  String get changeModeStatic => 'ESTÁTICO';

  @override
  String get changeModeOnChange => 'AL CAMBIAR';

  @override
  String get changeModeContinuous => 'CONTINUO';

  @override
  String changeModeUnknown(Object value) {
    return 'DESCONOCIDO($value)';
  }

  @override
  String get helpersTitle => 'HELPERS';

  @override
  String get helpersSubtitle => 'Modo de temperatura';

  @override
  String get helpersTemperatureSection => 'Modo de temperatura';

  @override
  String get helpersTemperatureModeTitle => 'Modo de temperatura';

  @override
  String get helpersTemperatureModeDesc =>
      'Activa o desactiva la interceptación de los botones multimedia para controlar la temperatura y el ventilador del A/C.';

  @override
  String get helpersRetry => 'REINTENTAR';

  @override
  String get helpersHvacControlTitle => 'Prueba de escritura HVAC';

  @override
  String get helpersHvacControlDesc =>
      'Escrituras directas del clima por la vía geelycontrol: HVAC_TEMPERATURE_SET en el asiento izquierdo y HVAC_FAN_SPEED en el área 5.';

  @override
  String get helpersHvacRefresh => 'LEER HVAC';

  @override
  String get helpersHvacTempDown => 'TEMP -';

  @override
  String get helpersHvacTempUp => 'TEMP +';

  @override
  String get helpersHvacFanDown => 'VENT -';

  @override
  String get helpersHvacFanUp => 'VENT +';

  @override
  String get helpersHvacNotTested => 'SIN PROBAR';

  @override
  String get helpersHvacOk => 'OK';

  @override
  String get helpersHvacFailed => 'FALLÓ';

  @override
  String get helpersHvacNoResult => 'Aún no hay resultado de un comando HVAC';

  @override
  String get helpersHvacDetailsEmpty => 'Sin detalles nativos';

  @override
  String get helpersFeedbackTitle => 'Respuesta del detector';

  @override
  String get helpersFeedbackDisabled => 'DESACTIVADO';

  @override
  String get helpersFeedbackStandby => 'EN ESPERA';

  @override
  String get helpersFeedbackActivated => 'ACTIVADO';

  @override
  String get helpersFeedbackLastTrigger => 'Última activación';

  @override
  String get helpersFeedbackNever => 'Nunca';

  @override
  String get helpersKnobTrigger => 'Perilla de faros';

  @override
  String get helpersSimulateKnob => 'SIM PERILLA';

  @override
  String get helpersKnobDetectorTitle => 'Activador de perilla de faros';

  @override
  String get helpersKnobSequence => 'Secuencia';

  @override
  String get helpersKnobTransitions => 'Transiciones';

  @override
  String get helpersKnobWindow => 'Ventana de la perilla';

  @override
  String get helpersSafetyTitle => 'Protecciones contra fallos';

  @override
  String get helpersIdleTimeout => 'Tiempo de espera en reposo';

  @override
  String get helpersHardCap => 'Tope máximo';

  @override
  String get helpersSafetyDesc =>
      'Estos límites definen cuándo el modo activo futuro debe restaurar el keyserver de medios.';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsDescription =>
      'Mantenimiento de datos del registro local de telemetría del vehículo.';

  @override
  String get settingsSectionSystem => 'CONFIGURACIÓN DEL SISTEMA';

  @override
  String get settingsSectionGeneral => 'Operación general';

  @override
  String get settingsSectionData => 'Datos y retención';

  @override
  String get settingsAppTheme => 'Tema de la app';

  @override
  String get settingsThemeDesc =>
      'Elija la paleta que la app viste. Cada tarjeta muestra la página, una tarjeta y su texto.';

  @override
  String get settingsDark => 'OSCURO';

  @override
  String get settingsLight => 'CLARO';

  @override
  String get settingsThemeNameLight => 'Claro';

  @override
  String get settingsThemeNameDark => 'Petróleo';

  @override
  String get settingsThemeNameMidnight => 'Medianoche';

  @override
  String get settingsThemeNameSepia => 'Sepia';

  @override
  String get settingsThemeNameNordic => 'Nórdico';

  @override
  String get settingsThemeNameDaylight => 'Luz del día';

  @override
  String get settingsThemeNameTokyoNeon => 'Tokyo Neon';

  @override
  String get settingsThemeNameSunsetDrive => 'Atardecer';

  @override
  String get settingsThemeNameBubblegum => 'Chicle';

  @override
  String get settingsEfficiencyUnit => 'Unidad de eficiencia';

  @override
  String get settingsEfficiencyUnitDesc =>
      'Elija cómo muestra la app la eficiencia de conducción. Toque la lectura misma en cualquier parte de la app para alternar la misma elección.';

  @override
  String get settingsRetention => 'Retención de datos crudos';

  @override
  String get settingsRetentionDesc =>
      'Conserva el historial de viajes y cargas, compacta las sesiones terminadas y elimina frames y eventos crudos con más de 30 días.';

  @override
  String get settingsRetentionRunning => 'EN EJECUCIÓN';

  @override
  String get settingsRetentionRun => 'EJECUTAR RETENCIÓN';

  @override
  String get settingsAutoStart => 'Autoiniciar telemetría al encender';

  @override
  String get settingsAutoStartDesc =>
      'Inicia el recolector nativo tras el arranque del vehículo o la sustitución del paquete.';

  @override
  String get settingsGps => 'Recolección GPS durante los viajes';

  @override
  String get settingsGpsDesc =>
      'Guarda latitud, longitud, altitud y precisión GPS en los frames de telemetría cuando la ubicación nativa está disponible.';

  @override
  String get settingsKeepBluetoothOnTitle => 'Mantener el Bluetooth encendido';

  @override
  String get settingsKeepBluetoothOnDesc =>
      'Enciende de nuevo la radio del coche cuando se apaga, para que el teléfono siga recibiendo los datos en vivo. El coche la apaga por su cuenta.';

  @override
  String settingsKeepBluetoothOnFailed(Object error) {
    return 'FALLO AL MANTENER EL BLUETOOTH ENCENDIDO: $error';
  }

  @override
  String get settingsContinuousMode => 'Grabación continua';

  @override
  String get settingsContinuousModeDesc =>
      'Graba un minuto de energía por cada minuto que el coche está encendido, incluso aparcado o en punto muerto. Apagarla conserva lo ya grabado.';

  @override
  String settingsContinuousModeFailed(Object error) {
    return 'FALLO EN LA GRABACIÓN CONTINUA: $error';
  }

  @override
  String get settingsEventFile => 'Archivo de registro de eventos (debug)';

  @override
  String get settingsEventFileDesc =>
      'Copia los eventos de telemetría a un archivo JSONL para depuración. Usa almacenamiento extra; los archivos existentes se eliminan al desactivarlo.';

  @override
  String get settingsWipe => 'Borrar la base de datos local de telemetría';

  @override
  String get settingsWipeDesc =>
      'Elimina permanentemente todas las sesiones de viaje, sesiones de carga, frames de telemetría y eventos de telemetría en una sola operación.';

  @override
  String get settingsWiping => 'BORRANDO';

  @override
  String get settingsWipeHistory => 'BORRAR HISTORIAL';

  @override
  String get settingsWipeDialogTitle => 'BORRAR HISTORIAL';

  @override
  String get settingsWipeDialogContent =>
      'Esto elimina permanentemente todas las filas de la base de datos local de telemetría. Los registros de carga no se pueden borrar uno por uno y esta acción no se puede deshacer.';

  @override
  String get settingsCancel => 'CANCELAR';

  @override
  String get settingsWipeAll => 'BORRAR TODO';

  @override
  String settingsLoadFailed(Object error) {
    return 'ERROR AL CARGAR AJUSTES: $error';
  }

  @override
  String get settingsAutoStartEnabled => 'AUTOINICIO AL ENCENDER ACTIVADO';

  @override
  String get settingsAutoStartDisabled => 'AUTOINICIO AL ENCENDER DESACTIVADO';

  @override
  String settingsAutoStartError(Object error) {
    return 'ERROR AL ACTUALIZAR AUTOINICIO: $error';
  }

  @override
  String get settingsGpsEnabled => 'RECOLECCIÓN GPS ACTIVADA';

  @override
  String get settingsGpsDisabled => 'RECOLECCIÓN GPS DESACTIVADA';

  @override
  String settingsGpsError(Object error) {
    return 'ERROR AL ACTUALIZAR GPS: $error';
  }

  @override
  String settingsClearFailed(Object error) {
    return 'ERROR AL BORRAR LA BASE DE DATOS: $error';
  }

  @override
  String settingsRetentionFailed(Object error) {
    return 'ERROR DE RETENCIÓN: $error';
  }

  @override
  String get roadcastTraceTitle => 'ROADCAST TRACE';

  @override
  String get roadcastTraceSubtitle => 'Actividad CAN en vivo';

  @override
  String get roadcastTraceRunning => 'EN EJECUCIÓN';

  @override
  String get roadcastTraceStopped => 'DETENIDO';

  @override
  String get roadcastTraceStart => 'INICIAR';

  @override
  String get roadcastTraceStop => 'DETENER';

  @override
  String get roadcastTraceBaseline => 'BASE';

  @override
  String get roadcastTraceClear => 'LIMPIAR';

  @override
  String get roadcastTraceChangedOnly => 'SOLO CAMBIOS';

  @override
  String get roadcastTraceValidOnly => 'SOLO VÁLIDOS';

  @override
  String get roadcastTraceSearchHint => 'Filtrar señal, id CAN, id de señal';

  @override
  String get roadcastTraceMetricSignals => 'SEÑALES';

  @override
  String get roadcastTraceMetricChanged => 'CAMBIOS';

  @override
  String get roadcastTraceMetricSnapshots => 'SNAPSHOTS';

  @override
  String get roadcastTraceMetricSamples => 'MUESTRAS';

  @override
  String get roadcastTraceMetricBaseline => 'BASE';

  @override
  String get roadcastTraceNoBaseline => '--';

  @override
  String get roadcastTraceEmpty => 'Inicie la captura o ajuste los filtros.';

  @override
  String get roadcastTraceHeaderSignal => 'SEÑAL';

  @override
  String get roadcastTraceHeaderNow => 'AHORA';

  @override
  String get roadcastTraceRaw => 'CRUDO';

  @override
  String get roadcastTraceHeaderBaseline => 'BASE';

  @override
  String get roadcastTraceHeaderDelta => 'DELTA';

  @override
  String get roadcastTraceHeaderChanges => 'CAMBIOS';

  @override
  String get roadcastTraceHeaderLast => 'ÚLTIMO';

  @override
  String get roadcastTraceHeaderId => 'ID';

  @override
  String get roadcastTraceSelectSignal =>
      'Seleccione una señal para inspeccionar su línea de tiempo.';

  @override
  String get roadcastTraceChartEmpty => 'Esperando más muestras';

  @override
  String get traceModeCan => 'CAN';

  @override
  String get traceModeMigration => 'MIGRACIÓN';

  @override
  String get migrationSubtitle => '15 propiedades por reemplazar';

  @override
  String get migrationPhaseATitle => 'FASE A · LECTURA DIRECTA';

  @override
  String get migrationPhaseADesc =>
      'El mismo número en ambos lados. Migre cuando un viaje real y una carga real no muestren divergencia.';

  @override
  String get migrationPhaseBTitle => 'FASE B · REQUIERE MEDICIÓN';

  @override
  String get migrationPhaseBDesc =>
      'Está en el store, pero lo que significa el valor crudo aún no se observó en el vehículo. Requiere una observación, no código.';

  @override
  String get migrationPhaseCTitle => 'FASE C · NO MIGRA';

  @override
  String get migrationPhaseCDesc =>
      'O el store no tiene dirección para ella (car_service construye el valor), o nunca produjo una lectura.';

  @override
  String get migrationNoteDirect => 'Lectura directa';

  @override
  String get migrationNoteTranslated =>
      'El store habla PRND, la app habla la máscara AOSP — traducido';

  @override
  String get migrationNoteChargerAc =>
      'Entrada AC del cargador (211 V), no el pack de 395 V';

  @override
  String get migrationNoteEncodingUnknown =>
      'En el store, codificación cruda sin descifrar';

  @override
  String get migrationNoteSynthetic =>
      'Construido por car_service; sin dirección en el store';

  @override
  String get migrationColumnRaw => 'CRUDO';

  @override
  String migrationRamAddress(Object address) {
    return 'RAM $address';
  }

  @override
  String get migrationNoteDead => 'Sin lectura en 90.347 frames grabados';

  @override
  String get migrationStatusMatching => 'COINCIDE';

  @override
  String get migrationStatusDiverging => 'DIVERGE';

  @override
  String get migrationStatusRamOnly => 'SOLO RAM';

  @override
  String get migrationStatusStoreOnly => 'SOLO STORE';

  @override
  String get migrationStatusRejected => 'RECHAZADO';

  @override
  String get migrationStatusWaiting => 'ESPERANDO';

  @override
  String get migrationColumnRam => 'RAM';

  @override
  String get migrationColumnStore => 'STORE';

  @override
  String get migrationColumnDiff => 'DIFF';

  @override
  String get migrationShadowMode =>
      'Modo sombra: RAM se lee sin escribir en el historial.';

  @override
  String get migrationPublishing =>
      'Publicando al store — la migración ya ocurrió.';

  @override
  String get migrationBridgeOffline =>
      'El daemon del puente CAN no está sirviendo.';

  @override
  String migrationLoadFailed(Object error) {
    return 'No se pudo leer el estado del puente: $error';
  }

  @override
  String get migrationEcarxWarning =>
      'El valor del store viene de la propiedad resuelta por ECARX: ambos lados leen direcciones distintas.';

  @override
  String get chargingTitle => 'GEELY TELEMETRÍA';

  @override
  String get chargingSubtitle => 'Sesiones de carga';

  @override
  String get chargingDbRows => 'FILAS DB';

  @override
  String get chargingRunWrites => 'ESCRITURAS RUN';

  @override
  String get chargingRefreshTooltip => 'Actualizar sesiones de carga';

  @override
  String get chargeMergeTitle => 'SESIONES CONTINUAS INTERRUMPIDAS';

  @override
  String get chargeMergeDescription =>
      'Una o más sesiones de carga terminaron con removed_while_charging y parecen continuas. Revise el desglose antes de fusionar.';

  @override
  String get chargeMergeSessionsLabel => 'SESIONES';

  @override
  String get chargeMergeGapLabel => 'HUECO';

  @override
  String get chargeMergeSocLabel => 'SOC';

  @override
  String get chargeMergeFramesLabel => 'FRAMES';

  @override
  String get chargeMergeBreakLabel => 'PAUSA';

  @override
  String get chargeMergeConfirm => 'FUSIONAR SESIONES';

  @override
  String get chargeMergeMerging => 'FUSIONANDO';

  @override
  String get chargeMergeSuccess => 'Sesiones de carga fusionadas.';

  @override
  String get chargeMergeError => 'No se pudieron fusionar las sesiones.';

  @override
  String get chartPackVoltage => 'VOLTAJE DEL PACK';

  @override
  String get chartVoltageUnit => 'V';

  @override
  String get chartWaitingVoltage => 'ESPERANDO VOLTAJE EN VIVO';

  @override
  String get chartPackCurrent => 'CORRIENTE DEL PACK';

  @override
  String get chartCurrentUnit => 'A';

  @override
  String get chartWaitingCurrent => 'ESPERANDO CORRIENTE EN VIVO';

  @override
  String get chartChargePower => 'POTENCIA DE CARGA';

  @override
  String get chartPowerUnit => 'kW';

  @override
  String get chartWaitingPower => 'ESPERANDO POTENCIA EN VIVO';

  @override
  String get historySectionTitle => 'HISTORIAL DE SESIONES DE CARGA';

  @override
  String get historyRows => 'FILAS';

  @override
  String get historyHeadersStatus => 'ESTADO';

  @override
  String get historyHeadersWindow => 'VENTANA DE SESIÓN';

  @override
  String get historyHeadersPlug => 'CONECTOR';

  @override
  String get historyHeadersSoc => 'SOC INICIO/FIN';

  @override
  String get historyHeadersOdometer => 'ODÓMETRO';

  @override
  String get historyHeadersPower => 'POTENCIA';

  @override
  String get historyHeadersEndReason => 'MOTIVO DE FIN';

  @override
  String get historyHeadersId => 'ID / ACTUALIZADO';

  @override
  String get historySampleBadge => 'DATOS DE MUESTRA';

  @override
  String get detailBack => 'Volver';

  @override
  String get detailTitle => 'DETALLE DE CARGA';

  @override
  String get detailFrames => 'FRAMES';

  @override
  String get detailStatus => 'ESTADO';

  @override
  String get detailRefresh => 'Actualizar frames de carga';

  @override
  String get detailDuration => 'DURACIÓN';

  @override
  String get detailSocRange => 'RANGO SOC';

  @override
  String get detailSocDelta => 'DELTA SOC';

  @override
  String get detailEnergyEst => 'ENERGÍA EST';

  @override
  String get detailEnergyUnit => 'kWh';

  @override
  String get chargeCostLabel => 'COSTO';

  @override
  String get detailAvgPower => 'POTENCIA PROMEDIO';

  @override
  String get detailAvgPowerUnit => 'kW';

  @override
  String get detailPlug => 'CONECTOR';

  @override
  String get detailOdometer => 'ODÓMETRO';

  @override
  String get detailEndReason => 'MOTIVO DE FIN';

  @override
  String get detailAmbientTemp => 'TEMP EXTERIOR';

  @override
  String get chartSocTrace => 'TRAYECTO SOC';

  @override
  String get chartSocUnit => '%';

  @override
  String get chartNotEnough => 'No hay frames suficientes para el gráfico.';

  @override
  String get chargeMapLocation => 'Ubicación de carga';

  @override
  String get chargeMapNoGps =>
      'No hay punto GPS grabado para esta sesión de carga.';

  @override
  String get statusCharging => 'CARGANDO';

  @override
  String get statusConnected => 'CONECTADO';

  @override
  String get statusDisconnected => 'DESCONECTADO';

  @override
  String get statusComplete => 'COMPLETO';

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
  String get liveError => 'ERROR EN VIVO';

  @override
  String get bridgeError => 'BRIDGE_ERROR';

  @override
  String get noDbRows => 'NO_DB_ROWS_YET / SAMPLE_VIEW';

  @override
  String get roomChargeSessions => 'ROOM_CHARGE_SESSIONS';

  @override
  String get historyPageTitle => 'Historial de batería';

  @override
  String get historyHeaderSubtitle => 'Historial de batería';

  @override
  String get historyPageDesc =>
      'Vista combinada de viajes, sesiones de carga y métricas validadas de batería.';

  @override
  String get historyRangeChip => 'RANGO';

  @override
  String get historySessionsChip => 'SESIONES';

  @override
  String get historyRefreshTooltip => 'Actualizar historial';

  @override
  String get rangeToday => 'Hoy';

  @override
  String get range24h => '24 h';

  @override
  String get range7d => '7 d';

  @override
  String get range30d => '30 d';

  @override
  String get historyTrips => 'VIAJES';

  @override
  String get historyTripsUnit => 'sesiones';

  @override
  String get historyCharges => 'CARGAS';

  @override
  String get historyChargesUnit => 'sesiones';

  @override
  String get historyDistance => 'DISTANCIA';

  @override
  String get historyDistanceUnitOdometer => 'km ODÓMETRO';

  @override
  String get historyDistanceUnitSpeed => 'km EST VELOCIDAD';

  @override
  String get historyDistanceUnitMissing => 'km SIN DATO';

  @override
  String get historyChargedEnergy => 'ENERGÍA CARGADA';

  @override
  String get historyEnergyUnit => 'estimado kWh';

  @override
  String get historySocDelta => 'DELTA SOC';

  @override
  String get historySocDeltaUnit => '%';

  @override
  String get historyParkedDrain => 'CONSUMO ESTACIONADO';

  @override
  String get historyDrainUnit => 'kWh diferido';

  @override
  String get historyEfficiency => 'EFICIENCIA';

  @override
  String get historyEfficiencyUnit => 'Wh/km';

  @override
  String get historyRegen => 'REGEN';

  @override
  String get timelineTitle => 'LÍNEA DE TIEMPO ACTIVA';

  @override
  String get timelineTrip => 'VIAJE';

  @override
  String get timelineCharge => 'CARGA';

  @override
  String get timelineEmpty => 'No hay sesiones en el período seleccionado.';

  @override
  String timelineParkedFor(Object duration) {
    return 'Estacionado durante $duration';
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
  String get sessionLogTitle => 'REGISTRO DE SESIONES';

  @override
  String get sessionLogEmpty => 'Aún no hay sesiones de viaje ni de carga.';

  @override
  String get sessionLogHeaderSession => 'SESIÓN';

  @override
  String get sessionLogHeaderStart => 'INICIO';

  @override
  String get sessionLogHeaderDuration => 'DURACIÓN';

  @override
  String get sessionLogHeaderSoc => 'SOC';

  @override
  String get sessionLogHeaderEnergy => 'ENERGÍA / DISTANCIA';

  @override
  String get sessionLogHeaderStatus => 'ESTADO';

  @override
  String get sessionTypeCharging => 'Carga';

  @override
  String get sessionTypeTrip => 'Viaje';

  @override
  String get historyEmptyPanel => 'Aún no hay datos de historial.';

  @override
  String get tripHeaderSubtitle => 'Sesiones de viaje';

  @override
  String get tripPageTitle => 'Detección automática de viajes';

  @override
  String get tripDbRows => 'FILAS DB';

  @override
  String get tripRunWrites => 'ESCRITURAS RUN';

  @override
  String get tripRefreshTooltip => 'Actualizar sesiones de viaje';

  @override
  String get tripHistoryBadge => 'HISTORIAL DE VIAJES';

  @override
  String get tripEmptyLatest =>
      'Hay filas de viaje en la base de datos, pero la consulta de última sesión no devolvió filas.';

  @override
  String get tripEmptyNone => 'Aún no se detectó ninguna sesión de viaje.';

  @override
  String get bridgeErrorStatus => 'BRIDGE_ERROR';

  @override
  String get roomTripSessions => 'ROOM_TRIP_SESSIONS';

  @override
  String get dbCountMismatch => 'DB_COUNT_LIST_MISMATCH';

  @override
  String get noTripRows => 'NO_TRIP_ROWS_YET';

  @override
  String get tripMetricDistance => 'DISTANCIA';

  @override
  String get tripMetricAvgSpeed => 'VELOCIDAD PROMEDIO';

  @override
  String get tripMetricGearStart => 'MARCHA INICIAL';

  @override
  String get tripMetricSocRange => 'RANGO SOC';

  @override
  String get tripMetricEndReason => 'MOTIVO DE FIN';

  @override
  String get tripMetricUpdated => 'ACTUALIZADO';

  @override
  String get dischargeActive => 'DESCARGA EN TIEMPO REAL';

  @override
  String get dischargeEnded => 'DESCARGA DEL VIAJE';

  @override
  String get tripDetailHint =>
      'El detalle del viaje y el análisis por frame usarán frames vinculados a la sesión en una etapa posterior.';

  @override
  String get tripDetailTitle => 'DETALLE DEL VIAJE';

  @override
  String get tripDetailFrames => 'FRAMES';

  @override
  String get tripDetailRefresh => 'Actualizar frames del viaje';

  @override
  String get tripDetailDuration => 'DURACIÓN';

  @override
  String get tripDetailOdometerDist => 'DIST ODÓMETRO';

  @override
  String get tripDetailSpeedEstDist => 'DIST EST VELOCIDAD';

  @override
  String get tripDetailEfficiency => 'EFICIENCIA';

  @override
  String get tripDetailRange => 'AUTONOMÍA';

  @override
  String get tripDetailNetEnergy => 'ENERGÍA NETA';

  @override
  String get tripDetailRegen => 'REGEN';

  @override
  String get tripDetailSummary => 'RESUMEN DEL VIAJE';

  @override
  String get tripDetailEstimatedCost => 'COSTO ESTIMADO';

  @override
  String tripDetailCostBasedOnLastCharge(Object price) {
    return 'Basado en la tarifa de $price/kWh de la última carga con precio.';
  }

  @override
  String tripDetailCostBasedOnSocAndLastCharge(Object price) {
    return 'Estimado por la variación del SOC y la tarifa de $price/kWh de la última carga con precio.';
  }

  @override
  String get tripDetailCostUnavailable =>
      'Ninguna carga anterior tiene precio por kWh.';

  @override
  String get tripDetailEnergyAccounting => 'CONTABILIDAD DE ENERGÍA';

  @override
  String get tripDetailMeasuredPack => 'ENERGÍA NETA DE BATERÍA';

  @override
  String get tripDetailMeasuredPackDescription =>
      'Energía total extraída de la batería durante el viaje.';

  @override
  String get tripDetailMeasuredTraction => 'MOVIMIENTO DEL VEHÍCULO';

  @override
  String get tripDetailMeasuredTractionDescription =>
      'Energía usada para mover el vehículo.';

  @override
  String get tripDetailMeasuredRecovered => 'RECUPERACIÓN REGENERATIVA';

  @override
  String get tripDetailMeasuredRecoveredDescription =>
      'Energía devuelta durante el frenado regenerativo.';

  @override
  String get tripDetailMeasuredAuxiliary => 'SISTEMAS AUXILIARES';

  @override
  String get tripDetailMeasuredAuxiliaryDescription =>
      'Consumo estimado de clima, electrónica y 12 V.';

  @override
  String get tripDetailMeasuredVerified => 'MEDIDO';

  @override
  String get tripDetailMeasuredUnavailable =>
      'No hay desglose de energía medida disponible para este viaje.';

  @override
  String get tripDetailMeasuredDisagrees =>
      'La energía medida contradice la estimación por SOC. Los valores están ocultos.';

  @override
  String get tripChartSpeed => 'Trayecto de velocidad';

  @override
  String get tripChartNotEnough =>
      'No hay frames de velocidad suficientes para el gráfico.';

  @override
  String get tripChartPower => 'Potencia medida';

  @override
  String get tripChartPackPower => 'BATERÍA';

  @override
  String get tripChartDrivePower => 'TRACCIÓN';

  @override
  String get tripChartPowerNotEnough =>
      'No hay frames de potencia medida suficientes para el gráfico.';

  @override
  String get tripChartPowerDisagrees =>
      'La potencia medida está oculta porque contradice la estimación por SOC.';

  @override
  String get tripChartElevationDistance => 'Perfil de elevación por distancia';

  @override
  String get tripChartElevationDistanceNotEnough =>
      'No hay puntos GPS de altitud suficientes para el perfil por distancia.';

  @override
  String get tripChartAltitude => 'Trayecto de altitud';

  @override
  String get tripChartAltitudeNotEnough =>
      'No hay frames de altitud suficientes para el gráfico.';

  @override
  String get tripChartAmbientTemp => 'Trayecto de temperatura exterior';

  @override
  String get tripChartAmbientTempNotEnough =>
      'No hay frames de temperatura suficientes para el gráfico.';

  @override
  String get tripDetailAmbientTemp => 'TEMP EXTERIOR';

  @override
  String get tripChartSoc => 'Trayecto de nivel de batería';

  @override
  String get tripChartSocNotEnough =>
      'No hay frames de batería suficientes para el gráfico.';

  @override
  String get tripChartExpandTooltip => 'Ampliar gráfico';

  @override
  String tripChartPointCount(int count) {
    return '$count puntos';
  }

  @override
  String get tripMapRoute => 'Mapa de ruta';

  @override
  String get tripMapNoGps => 'No hay puntos GPS grabados para este viaje.';

  @override
  String mapSpeedSlow(Object speed) {
    return 'Lento $speed';
  }

  @override
  String mapSpeedFast(Object speed) {
    return 'Rápido $speed';
  }

  @override
  String get tripStatusActive => 'ACTIVO';

  @override
  String get tripStatusPendingEnd => 'FIN PENDIENTE';

  @override
  String get tripEndReasonInProgress => 'IN_PROGRESS';

  @override
  String get tripEndReasonWaitingIdle => 'WAITING_FOR_IDLE';

  @override
  String get mockChargeState => 'Desconectado';

  @override
  String get mockPlugLabel => 'Ninguno';

  @override
  String get mockSourceDetails => 'Telemetría mock web';

  @override
  String get dayMon => 'LUN';

  @override
  String get dayTue => 'MAR';

  @override
  String get dayWed => 'MIÉ';

  @override
  String get dayThu => 'JUE';

  @override
  String get dayFri => 'VIE';

  @override
  String get daySat => 'SÁB';

  @override
  String get daySun => 'DOM';

  @override
  String settingsAppVersion(Object build, Object version) {
    return 'Versión $version (build $build)';
  }

  @override
  String get settingsAppUpdateTitle => 'Actualizaciones de la app';

  @override
  String get settingsAppUpdateDescription =>
      'Verifica los releases públicos de Eaglemetry e instala un APK verificado sin borrar telemetría ni ajustes. También actualiza el servicio Roadcast.';

  @override
  String settingsAppUpdateInstalled(Object build, Object version) {
    return 'Instalada: $version (build $build)';
  }

  @override
  String get settingsAppUpdateNotChecked =>
      'Aún no se verificó si hay actualizaciones';

  @override
  String get settingsAppUpdateUnavailable =>
      'Estado de actualización no disponible';

  @override
  String get settingsAppUpdateChecking => 'VERIFICANDO';

  @override
  String settingsAppUpdateAvailable(Object build, Object version) {
    return 'La versión $version (build $build) está disponible';
  }

  @override
  String get settingsAppUpdateUpToDate => 'Eaglemetry está actualizado';

  @override
  String settingsAppUpdateIncompatible(Object reason) {
    return 'Esta actualización no se puede instalar automáticamente: $reason';
  }

  @override
  String get settingsAppUpdateCheck => 'VERIFICAR';

  @override
  String get settingsAppUpdateInstall => 'ACTUALIZAR';

  @override
  String get settingsAppUpdateInstalling => 'ACTUALIZANDO';

  @override
  String get settingsAppUpdateScheduled =>
      'ACTUALIZACIÓN VERIFICADA. LA APP SE REINICIARÁ AUTOMÁTICAMENTE.';

  @override
  String settingsAppUpdateCheckFailed(Object reason) {
    return 'ERROR AL VERIFICAR ACTUALIZACIÓN: $reason';
  }

  @override
  String settingsAppUpdateInstallFailed(Object reason) {
    return 'ERROR AL ACTUALIZAR LA APP: $reason';
  }

  @override
  String get settingsAppUpdateReleaseNotes => 'Novedades';

  @override
  String settingsAppUpdateConfirmTitle(Object version) {
    return '¿Actualizar a $version?';
  }

  @override
  String get settingsAppUpdateConfirmDescription =>
      'La app descargará y verificará la actualización. Actualizará el servicio Roadcast antes de instalar el APK. Después, la app se reiniciará.';

  @override
  String get settingsAppUpdateConfirmCancel => 'CANCELAR';

  @override
  String get settingsAppUpdateConfirmInstall => 'INSTALAR';

  @override
  String get settingsUpdateAlertTitle => 'ERROR DE ACTUALIZACIÓN';

  @override
  String get settingsUpdateAlertDismiss => 'CERRAR';

  @override
  String get settingsSectionAbout => 'ACERCA DE';

  @override
  String settingsAboutDeveloper(Object handle) {
    return 'Desarrollada por $handle';
  }

  @override
  String get settingsAboutTagline => 'Hecha con amor y café';

  @override
  String get settingsAppShellTitle => 'Interfaz de la app';

  @override
  String get settingsAppShellDescription =>
      'Elija qué interfaz abre la app al iniciar. Su elección queda guardada.';

  @override
  String get settingsAppShellNew => 'Nueva';

  @override
  String get settingsAppShellPrevious => 'Anterior';

  @override
  String get v2Overview => 'Resumen';

  @override
  String get v2Context => 'Contexto';

  @override
  String get v2AppShellTitle => 'Interfaz';

  @override
  String get v2AppShellDescription =>
      'Está en la nueva interfaz, que la app abre por defecto. Viajes y Ajustes aún no migraron, así que la interfaz anterior sigue a cargo de ellos. Volver atrás queda guardado y también aplica al próximo inicio.';

  @override
  String get v2AppShellAction => 'Usar la interfaz anterior';

  @override
  String get v2CarplayBetaOn => 'Activada';

  @override
  String get v2CarplayBetaOff => 'Desactivada';

  @override
  String get v2MigrationPlaceholder => 'Lista para migración de funciones';

  @override
  String get v2SettingsClose => 'Cerrar ajustes';

  @override
  String get v2SettingsSearch => 'Buscar';

  @override
  String get v2SettingsSearchEmpty => 'Ninguna categoría tiene ese nombre.';

  @override
  String get v2HistoryTrips => 'Viajes';

  @override
  String get v2HistoryCharges => 'Cargas';

  @override
  String get v2HistoryExpand => 'Abrir el detalle de la sesión';

  @override
  String get v2HistoryCollapse => 'Cerrar el detalle de la sesión';

  @override
  String get v2HistoryExpandHint => 'Seleccione una sesión para abrirla.';

  @override
  String get v2HistoryCollapseHint => 'Arrastre hacia abajo para cerrar';

  @override
  String get v2HistorySelectPrompt =>
      'Seleccione una sesión para ver su detalle.';

  @override
  String get v2HistoryFactsTitle => 'Sesión';

  @override
  String get v2HistoryChartEmpty => 'Esta sesión no tiene datos de gráfico.';

  @override
  String get v2TimeNotSynced =>
      'Hora aún no sincronizada. Las barras muestran la energía medida.';

  @override
  String energyAxisRelativeMinutes(int minutes) {
    return '+$minutes min';
  }

  @override
  String get v2HistoryStart => 'Inicio';

  @override
  String get v2HistoryEnd => 'Fin';

  @override
  String get v2HistoryDuration => 'Duración';

  @override
  String get v2HistoryDistance => 'Distancia';

  @override
  String get v2HistorySoc => 'SOC';

  @override
  String get v2HistoryTemperature => 'Temperatura';

  @override
  String get v2HistoryAltitude => 'Ascenso';

  @override
  String get insightNameStart => 'Nombrar inicio';

  @override
  String get insightNameEnd => 'Nombrar fin';

  @override
  String get insightPlaceTitle => 'Nombrar este lugar';

  @override
  String get insightPlaceHint => 'Nombre';

  @override
  String get insightPlaceSave => 'Guardar';

  @override
  String get insightPlaceCancel => 'Cancelar';

  @override
  String insightRouteTrips(int count) {
    return '$count viajes';
  }

  @override
  String insightRouteVariants(int count) {
    return '$count caminos';
  }

  @override
  String insightVariantNotEnough(int count) {
    return 'Aún no hay viajes comparados suficientes de esta ruta ($count).';
  }

  @override
  String insightVariantNotDistinguishable(String place, int count) {
    return 'Estos dos caminos a $place aún no se pueden distinguir ($count comparados).';
  }

  @override
  String insightVariantUsedLess(String difference, String place, int count) {
    return 'Este camino usó $difference Wh/km menos que el otro camino a $place ($count comparados).';
  }

  @override
  String insightVariantUsedMore(String difference, String place, int count) {
    return 'Este camino usó $difference Wh/km más que el otro camino a $place ($count comparados).';
  }

  @override
  String get v2HistoryConsumed => 'Consumida';

  @override
  String get v2HistoryRegen => 'Regenerada';

  @override
  String get v2HistoryEfficiency => 'Eficiencia';

  @override
  String get v2HistoryEnergyAdded => 'Energía añadida';

  @override
  String get v2HistoryAvgPower => 'Potencia promedio';

  @override
  String get v2HistoryPeakPower => 'Potencia pico';

  @override
  String get v2HistoryPlug => 'Conector';

  @override
  String get v2HistoryCost => 'Costo est.';

  @override
  String get v2HistoryMapExpand => 'Ampliar el mapa';

  @override
  String get v2HistoryMapCollapse => 'Reducir el mapa';

  @override
  String get v2HistoryEmpty => 'El vehículo aún no grabó ninguna sesión.';

  @override
  String get v2HistoryBattery => 'Batería';

  @override
  String v2CycleOrdinal(int ordinal) {
    return '#$ordinal';
  }

  @override
  String v2CycleSemantics(int ordinal, String percent) {
    return 'Batería $ordinal, $percent por ciento usado';
  }

  @override
  String get v2CycleOpen => 'En curso';

  @override
  String get v2CyclePartial => 'Parcial';

  @override
  String get v2CycleFrozen => 'Final';

  @override
  String get v2CycleNoCapacity => 'Capacidad desconocida';

  @override
  String get v2CycleMixedCurrency => 'Dos monedas';

  @override
  String v2CyclePartlyPriced(String percent) {
    return '$percent% con precio';
  }

  @override
  String get v2CycleDistance => 'Distancia';

  @override
  String get v2CycleEnergy => 'Energía';

  @override
  String get v2CycleEfficiency => 'Eficiencia';

  @override
  String get v2CycleEfficiencyUnitAction => 'Cambiar unidad de eficiencia';

  @override
  String get v2CycleCost => 'Costo';

  @override
  String get v2CycleCostPerKwh => 'Por kWh';

  @override
  String get v2CycleCapacity => 'Útil';

  @override
  String get v2CycleEmpty => 'El vehículo aún no usó una batería completa.';

  @override
  String get v2CycleSelectPrompt =>
      'Seleccione una batería para ver qué hizo funcionar.';

  @override
  String get v2CycleTimelineTitle => 'Qué hizo funcionar esta batería';

  @override
  String get v2CycleTimelineEmpty =>
      'Las sesiones de esta batería fueron borradas.';

  @override
  String get v2CycleTimelineDrive => 'Viaje';

  @override
  String get v2CycleTimelineCharge => 'Carga';

  @override
  String get v2CycleTimelineParked => 'Estacionado';

  @override
  String get v2CycleTimelineDeleted => 'Sesión borrada';

  @override
  String v2CycleTimelineShare(String percent) {
    return '$percent% de esta batería';
  }

  @override
  String get v2CycleTimelineSessions => 'Sesiones';

  @override
  String get v2SettingsDisplays => 'Pantallas';

  @override
  String get v2SettingsCharge => 'Carga';

  @override
  String get settingsChargeDisclaimerTitle => 'Descargo de responsabilidad';

  @override
  String get settingsChargeDisclaimerDesc =>
      'El uso de esta función es bajo su propio riesgo, ya que interactúa directamente con la carga del vehículo y controla activamente sus funciones.';

  @override
  String get v2ChargeLimitLevel => 'Nivel';

  @override
  String get v2ChargeLimitGraph => 'Gráfico';

  @override
  String get v2ChargeLimitCustom => 'Personalizado';

  @override
  String get v2ChargeLimitDaily => 'Diario';

  @override
  String get v2ChargeLimitExtended => 'Extendido';

  @override
  String get v2ChargeLimitMax => 'Máximo';

  @override
  String v2ChargeLimitProjection(String range, String unit) {
    return 'EST · $range $unit proyectados';
  }

  @override
  String get v2ChargeLimitSemantics => 'Límite de carga';

  @override
  String v2ChargeLimitSemanticsValue(int percent) {
    return '$percent por ciento';
  }

  @override
  String get v2ChargeLimitInfoTitle => '¿Qué límite de carga elegir?';

  @override
  String get v2ChargeLimitInfoDaily =>
      'Para conducción diaria y tiempos de carga más cortos.';

  @override
  String get v2ChargeLimitInfoExtended =>
      'Para recorrer distancias más largas con una sola carga.';

  @override
  String get v2ChargeLimitInfoMax =>
      'Para máxima autonomía y tiempos de carga más largos.';

  @override
  String get v2ChargeLimitInfoTooltip => 'Acerca de los límites de carga';

  @override
  String get v2ChargeLimitInfoClose => 'Cerrar información del límite de carga';

  @override
  String helpersChargeLimitValue(int percent) {
    return '$percent%';
  }

  @override
  String get v2SettingsData => 'Datos';

  @override
  String get v2SettingsDeveloper => 'Desarrollador';

  @override
  String get v2SettingsAppearance => 'Apariencia';

  @override
  String get v2SettingsImmersive => 'Pantalla completa';

  @override
  String get v2SettingsImmersiveDesc =>
      'Oculta las barras del sistema de la pantalla principal. Desactívela para mostrar la barra de estado y la barra de navegación. Las pantallas están hechas para pantalla completa, así que algunos diseños pueden verse mal cuando está desactivada.';

  @override
  String get v2SettingsHideStatusBar => 'Ocultar la barra de estado';

  @override
  String get v2SettingsHideStatusBarDesc =>
      'Mantiene la barra de estado oculta mientras la pantalla completa está desactivada. La barra de navegación permanece, porque es como usted sale de la app.';

  @override
  String get v2SettingsClimateBar => 'Barra de clima';

  @override
  String get v2SettingsClimateBarDesc =>
      'Muestra una franja de temperatura a lo largo del borde inferior, en todas las pantallas. Permanece ahí cuando una tarjeta abre en pantalla completa. Aún no está conectada al vehículo, así que los valores son una vista previa.';

  @override
  String get climateBarDriverDecrease => 'Bajar la temperatura del conductor';

  @override
  String get climateBarDriverIncrease => 'Subir la temperatura del conductor';

  @override
  String get climateBarPassengerDecrease => 'Bajar la temperatura del pasajero';

  @override
  String get climateBarPassengerIncrease => 'Subir la temperatura del pasajero';

  @override
  String get nowPlayingIdle => 'Nada en reproducción';

  @override
  String get v2SettingsOperation => 'Operación';

  @override
  String get v2SettingsRetention => 'Retención';

  @override
  String get v2SettingsDeveloperMode => 'Modo desarrollador';

  @override
  String get v2SettingsDeveloperModeDesc =>
      'Muestra las pantallas de ingeniería: Roadcast Trace y Signal Lab.';

  @override
  String v2SettingsRetentionDone(int frames, int days) {
    return 'Retención completa: $frames frames eliminados, datos crudos conservados por $days días.';
  }

  @override
  String get v2SettingsSystem => 'Sistema';

  @override
  String get v2SettingsDanger => 'Borrar';

  @override
  String get v2SettingsEngineering => 'Pantallas de ingeniería';

  @override
  String get v2SettingsResendHistory => 'Reenviar historial a la nube';

  @override
  String get v2SettingsResendHistoryDesc =>
      'Marca todos los viajes y cargas de este coche para subirlos de nuevo. Úselo después de borrar los datos de la nube para una prueba. La subida empieza en el próximo sync.';

  @override
  String get v2SettingsResendHistoryAction => 'MARCAR PARA SUBIR';

  @override
  String v2SettingsResendHistoryDone(int count) {
    return '$count registros marcados. Se suben en el próximo sync.';
  }

  @override
  String v2SettingsResendHistoryFailed(String error) {
    return 'No se pudo marcar el historial: $error';
  }

  @override
  String get v2SettingsExperience => 'Experimentos';

  @override
  String get v2SettingsNotMigrated => 'Aún no disponible';

  @override
  String get v2SettingsTraceDesc =>
      'Lee el esquema CAN negociado y el valor en vivo de cada señal.';

  @override
  String v2SettingsAutoStartFailed(String error) {
    return 'Falló la actualización de autoinicio: $error';
  }

  @override
  String v2SettingsEventFileFailed(String error) {
    return 'Falló la actualización del registro de eventos: $error';
  }

  @override
  String v2SettingsWipeDone(int trips, int charges, int frames) {
    return 'Borrado: $trips viajes, $charges cargas, $frames frames.';
  }

  @override
  String v2SettingsWipeFailed(String error) {
    return 'Falló el borrado: $error';
  }

  @override
  String get v2CarplayTitle => 'CarPlay';

  @override
  String get v2AndroidAutoTitle => 'Android Auto';

  @override
  String get v2CarplayStatusTitle => 'Conexión';

  @override
  String get v2AndroidAutoStatusTitle => 'Conexión';

  @override
  String get v2CarplayUnavailable =>
      'Esta pantalla principal no expone el servicio CarPlay.';

  @override
  String get v2AndroidAutoUnavailable =>
      'Esta pantalla principal no expone el servicio Android Auto.';

  @override
  String get v2CarplayConnecting => 'Conectando al renderizador de CarPlay…';

  @override
  String get v2AndroidAutoConnecting =>
      'Conectando al renderizador de Android Auto…';

  @override
  String get v2CarplayBlackScreenHint =>
      'Si la imagen sigue negra, no hay ninguna sesión CarPlay activa. Conecte su iPhone y el video comienza solo.';

  @override
  String get v2AndroidAutoBlackScreenHint =>
      'Si la imagen sigue negra, no hay ninguna sesión Android Auto activa. Conecte su teléfono Android y el video comienza solo.';

  @override
  String get v2ProjectionTouchTitle => 'Calibración táctil';

  @override
  String get v2ProjectionTouchHelp =>
      'Toque la pantalla proyectada y ajuste hasta que el toque caiga donde usted mira. El valor queda guardado.';

  @override
  String get v2ProjectionTouchStepFine => 'Fino';

  @override
  String get v2ProjectionTouchStepCoarse => 'Grueso';

  @override
  String get v2ProjectionTouchOffsetY => 'Desplazamiento vertical';

  @override
  String get v2ProjectionTouchScaleY => 'Escala vertical';

  @override
  String get v2ProjectionTouchOffsetX => 'Desplazamiento horizontal';

  @override
  String get v2ProjectionTouchScaleX => 'Escala horizontal';

  @override
  String get v2ProjectionTouchReset => 'Restablecer calibración';

  @override
  String get v2CarplayDragHandle =>
      'Arrastre para cambiar el tamaño de la tarjeta CarPlay';

  @override
  String get v2AndroidAutoDragHandle =>
      'Arrastre para cambiar el tamaño de la tarjeta Android Auto';

  @override
  String get v2CarplayReattach => 'Reconectar';

  @override
  String get v2AndroidAutoReattach => 'Reconectar';

  @override
  String get v2CarplayBuffer => 'Buffer';

  @override
  String get v2AndroidAutoBuffer => 'Buffer';

  @override
  String get v2CarplayStateAvailable => 'Servicio encontrado';

  @override
  String get v2AndroidAutoStateAvailable => 'Servicio encontrado';

  @override
  String get v2CarplayStateBound => 'Conectado';

  @override
  String get v2AndroidAutoStateBound => 'Conectado';

  @override
  String get v2CarplayStateAttached => 'Renderizando';

  @override
  String get v2AndroidAutoStateAttached => 'Renderizando';

  @override
  String get v2CarplayErrorUnreachable =>
      'No se pudo alcanzar el servicio CarPlay.';

  @override
  String get v2AndroidAutoErrorUnreachable =>
      'No se pudo alcanzar el servicio Android Auto.';

  @override
  String get v2CarplayErrorRenderer =>
      'El renderizador de CarPlay rechazó la solicitud.';

  @override
  String get v2AndroidAutoErrorRenderer =>
      'El renderizador de Android Auto rechazó la solicitud.';

  @override
  String get v2CarplayErrorBuffer =>
      'El tamaño del buffer de renderizado no es válido.';

  @override
  String get v2AndroidAutoErrorBuffer =>
      'El tamaño del buffer de renderizado no es válido.';

  @override
  String get v2CarplayErrorGeneric => 'CarPlay reportó un error.';

  @override
  String get v2AndroidAutoErrorGeneric => 'Android Auto reportó un error.';

  @override
  String get v2CarplayExpand => 'Expandir CarPlay para llenar la pantalla';

  @override
  String get v2AndroidAutoExpand =>
      'Expandir Android Auto para llenar la pantalla';

  @override
  String get v2CarplayCollapse => 'Contraer CarPlay';

  @override
  String get v2AndroidAutoCollapse => 'Contraer Android Auto';

  @override
  String get v2ChargingEnergy => 'Energía';

  @override
  String get v2ChargingAmperageTitle => 'Amperaje de carga';

  @override
  String get v2ChargingAmperageDescription =>
      'Reduzca la corriente al usar un circuito compartido o desconocido.';

  @override
  String v2ChargingAmperageRange(int min, int max) {
    return 'Rango del vehículo $min–$max A';
  }

  @override
  String get v2ChargingCommandFailed =>
      'El coche no aceptó el comando de carga.';

  @override
  String get v2ChargingAmperageUnit => 'A';

  @override
  String v2ChargingAmperageValue(int amps) {
    return '$amps A';
  }

  @override
  String get v2ChargingAmperageDecrease => 'Disminuir amperaje de carga';

  @override
  String get v2ChargingAmperageIncrease => 'Aumentar amperaje de carga';

  @override
  String get v2ChargingAmperageClose => 'Cerrar control de amperaje de carga';

  @override
  String get v2ChargingStopButton => 'Detener Carga';

  @override
  String get v2ChargingForceButton => 'Forzar Carga';

  @override
  String get v2ChargingForceActive => 'Forzar Carga Activo';

  @override
  String get v2RangeVehicleRange => 'Autonomía del vehículo';

  @override
  String get v2RangeEstimateCaption => 'Estimación de viajes cerrados';

  @override
  String get v2RangeEstimateDelayed =>
      'Estimación demorada · actualización de historial pendiente';

  @override
  String get v2RangeEstimateReadDelayed =>
      'Estimación demorada · falló la lectura de autonomía';

  @override
  String get v2RangeEstimateUnavailable => 'Estimación no disponible';

  @override
  String get v2RangeEstimateReadFailed =>
      'Estimación no disponible · falló la lectura';

  @override
  String get v2ChargeGraphLoadFailed => 'La sesión de carga no cargó.';

  @override
  String get v2ChargeGraphEmpty => 'No hay ninguna sesión de carga disponible.';

  @override
  String get v2ChargeGraphNoData =>
      'Esta sesión de carga no tiene datos de gráfico.';

  @override
  String v2ChargeGraphPowerTick(int power) {
    return '$power';
  }

  @override
  String get v2ChargeGraphSemantics =>
      'SOC y potencia de la sesión de carga a lo largo del tiempo';

  @override
  String get v2ChargeGraphRangeGainedEstimate => 'Autonomía ganada · EST';

  @override
  String get v2ChargeGraphEnergyAdded => 'Energía añadida';

  @override
  String get v2ChargeGraphCostEstimate => 'Costo · EST';

  @override
  String get v2ChargeGraphDuration => 'Duración';

  @override
  String get v2ChargeGraphTargetReached => 'Límite alcanzado';

  @override
  String v2ChargeGraphDurationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String v2ChargeGraphDurationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String get v2LastChargeSession => 'Última sesión de carga';

  @override
  String get v2ChargeSummaryNoEnergy =>
      'Esta sesión de carga no tiene energía medida.';

  @override
  String get v2ChargeClimateWarningTitle => 'El clima está usando su carga';

  @override
  String v2ChargeClimateWarningHigh(String climate, String charging) {
    return 'El sistema de clima consume $climate kW de los $charging kW que entran. La batería gana mucho menos de lo que muestra el cargador.';
  }

  @override
  String v2ChargeClimateWarningOutweighs(String climate) {
    return 'El sistema de clima consume $climate kW, tanto como lo que entrega el cargador. La batería casi no gana nada.';
  }

  @override
  String get v2ChargeSummaryBatteryEnergy => 'Energía entregada a la batería';

  @override
  String get v2ChargeSummaryClimateEnergy =>
      'Energía usada por el sistema de clima durante la carga';

  @override
  String get v2ChargeSummarySemantics =>
      'Reparto de energía de la sesión de carga entre la batería y el sistema de clima';

  @override
  String get actionSave => 'GUARDAR';

  @override
  String get actionClear => 'LIMPIAR';

  @override
  String get settingsChargeCostTitle => 'Precio de carga predeterminado';

  @override
  String get settingsChargeCostDesc =>
      'Tarifa por kWh usada para estimar el costo de carga. Escriba el valor en el teclado.';

  @override
  String settingsChargeCostSaved(Object value) {
    return 'Guardado: $value';
  }

  @override
  String get settingsChargeCostNotSaved => 'Sin precio predeterminado guardado';

  @override
  String get settingsChargeCostEdit => 'Fijar precio';

  @override
  String get v2MoneyKeypadSave => 'Guardar';

  @override
  String get v2MoneyKeypadClear => 'Limpiar el monto';

  @override
  String get v2MoneyKeypadDelete => 'Borrar el último dígito';

  @override
  String get v2MoneyKeypadClose => 'Cerrar el teclado de precio';

  @override
  String get v2ChargeCostTitle => 'Precio de carga';

  @override
  String get v2ChargeCostDescription =>
      'Aplica solo a esta carga. Escriba un precio por kWh, o el total que pagó.';

  @override
  String get v2ChargeCostFieldRate => 'Precio/kWh';

  @override
  String get v2ChargeCostFieldTotal => 'Total pagado';

  @override
  String get v2ChargeCostUnitRate => '/kWh';

  @override
  String get v2ChargeCostEdit => 'Editar el precio de esta carga';

  @override
  String get v2ChargeCostFailed => 'El precio de la carga no se guardó';

  @override
  String get settingsRoadcastTitle => 'Roadcast';

  @override
  String get settingsRoadcastUnavailable => 'Estado del daemon no disponible';

  @override
  String settingsRoadcastRunning(
    Object frameCount,
    Object hz,
    Object signalCount,
  ) {
    return '$signalCount señales, $frameCount frames @ $hz Hz';
  }

  @override
  String get settingsRoadcastStopped => 'El daemon no está sirviendo';

  @override
  String settingsRoadcastInstalled(Object commit) {
    return 'Instalado: $commit';
  }

  @override
  String get settingsRoadcastNotChecked =>
      'Aún no se verificaron las actualizaciones edge';

  @override
  String settingsRoadcastUpdateAvailable(Object commit) {
    return 'Actualización edge disponible: $commit';
  }

  @override
  String get settingsRoadcastUpToDate => 'Roadcast edge está actualizado';

  @override
  String settingsRoadcastIncompatible(Object reason) {
    return 'Actualización incompatible: $reason';
  }

  @override
  String get settingsRoadcastCheck => 'VERIFICAR';

  @override
  String get settingsRoadcastChecking => 'VERIFICANDO';

  @override
  String get settingsRoadcastUpdate => 'ACTUALIZAR';

  @override
  String get settingsRoadcastUpdating => 'ACTUALIZANDO';

  @override
  String get settingsRoadcastRestart => 'REINICIAR';

  @override
  String get settingsRoadcastRestarting => 'REINICIANDO';

  @override
  String get settingsRoadcastRestartSuccess => 'DAEMON ROADCAST REINICIADO';

  @override
  String settingsRoadcastRestartFailed(Object reason) {
    return 'ERROR AL REINICIAR ROADCAST: $reason';
  }

  @override
  String settingsRoadcastCheckFailed(Object reason) {
    return 'ERROR AL VERIFICAR ACTUALIZACIÓN DE ROADCAST: $reason';
  }

  @override
  String settingsRoadcastUpdateSuccess(Object commit) {
    return 'ROADCAST ACTUALIZADO A $commit';
  }

  @override
  String settingsRoadcastUpdateFailed(Object reason) {
    return 'ERROR AL ACTUALIZAR ROADCAST: $reason';
  }

  @override
  String get chargeCostDialogTitle => 'COSTO DE CARGA';

  @override
  String get chargeCostPerKwhLabel => 'PRECIO POR kWh';

  @override
  String get chargeCostPerKwhHint =>
      'Déjelo en cero para dejarlo en blanco — se usa cuando el monto pagado está vacío.';

  @override
  String get chargeCostPaidLabel => 'MONTO PAGADO';

  @override
  String get chargeCostPaidHint => 'Tiene prioridad sobre el precio por kWh.';

  @override
  String get settingsSensorLab => 'Laboratorio de sensores de movimiento';

  @override
  String get settingsSensorLabDesc =>
      'Observe la inclinación del vehículo y sienta los baches en vivo mientras conduce.';

  @override
  String get settingsSensorLabOpen => 'Abrir';

  @override
  String get sensorLabTitle => 'Laboratorio de sensores';

  @override
  String get sensorLabCalibrate => 'Poner a cero aquí';

  @override
  String get sensorLabReset => 'Restablecer';

  @override
  String get sensorLabUnavailable => 'Sensores de movimiento no disponibles';

  @override
  String get sensorLabWaiting => 'Esperando sensores…';

  @override
  String get sensorLabLevel => 'Nivel';

  @override
  String get sensorLabPitch => 'Cabeceo';

  @override
  String get sensorLabRoll => 'Alabeo';

  @override
  String get sensorLabForces => 'Fuerzas';

  @override
  String get sensorLabVertical => 'Vertical (baches)';

  @override
  String get sensorLabHorizontal => 'Frenado / curvas';

  @override
  String get sensorLabPeak => 'pico';

  @override
  String get sensorLabRoadTrace => 'Trayecto de carretera (vertical)';

  @override
  String get sensorLabBumps => 'Baches';

  @override
  String get sensorLabSessionPeak => 'Sacudida máxima';

  @override
  String get sensorLabRate => 'Frecuencia de muestreo';

  @override
  String get canLiveMute => 'Silenciar';

  @override
  String get canLiveUnmute => 'Activar sonido';

  @override
  String get canLiveMutedList => 'Silenciadas';

  @override
  String get canLiveSortRecency => 'Recientes';

  @override
  String get canLiveSortRate => 'Más activas';

  @override
  String get canLiveSortName => 'Nombre';

  @override
  String get canLiveMetricActive => 'En movimiento ahora';

  @override
  String get canLiveMetricRate => 'Cambios/s';

  @override
  String get canLiveWaiting => 'Esperando el daemon del puente CAN';

  @override
  String get canLiveStale => 'El daemon dejó de publicar';

  @override
  String get canLiveNeverChanged => 'nunca cambió';

  @override
  String get canLiveShowSilent => 'Mostrar silenciosas';

  @override
  String get liveTripTitle => 'VIAJE EN VIVO';

  @override
  String get liveTripRowTitle => 'SESIÓN DE VIAJE ACTIVA';

  @override
  String get liveTripOpen => 'ABRIR VIAJE EN VIVO';

  @override
  String get tripNoCompletedSessions => 'Aún no hay viajes completados.';

  @override
  String get liveTripStatusLive => 'EN VIVO';

  @override
  String get liveTripSpeed => 'VELOCIDAD';

  @override
  String get liveTripVehicleSpeedUnavailable =>
      'Flujo de velocidad del vehículo no disponible';

  @override
  String get liveTripCanSpeedRaw => 'CANDIDATO DE VELOCIDAD CAN';

  @override
  String get liveTripSoc => 'SOC';

  @override
  String get liveTripSocStart => 'SOC INICIAL';

  @override
  String get liveTripSocChange => 'CAMBIO DE SOC';

  @override
  String get liveTripSocCurrent => 'SOC ACTUAL';

  @override
  String get liveTripDrivePower => 'POTENCIA DE TRACCIÓN';

  @override
  String get liveTripRoadIncline => 'INCLINACIÓN ACTUAL DE LA VÍA';

  @override
  String get inclineReadoutTitle => 'Inclinación';

  @override
  String get compassReadoutTitle => 'Brújula';

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
  String get compassSouthwest => 'SO';

  @override
  String get compassWest => 'O';

  @override
  String get compassNorthwest => 'NO';

  @override
  String get compassHeld => 'Detenido. Última dirección.';

  @override
  String get compassNoFix => 'Sin señal GPS';

  @override
  String get compassGpsOff => 'El GPS está apagado';

  @override
  String get compassNoPermission => 'Sin permiso de ubicación';

  @override
  String get liveTripEcoCoach => 'ECO COACH';

  @override
  String get liveTripEcoBeta => 'BETA';

  @override
  String get liveTripEcoObserving => 'Recolectando muestras de conducción';

  @override
  String get liveTripEcoAcceleration => 'ACC';

  @override
  String get liveTripEcoJerk => 'JERK';

  @override
  String get liveTripEcoCycles => 'ACC→FRENO';

  @override
  String get liveTripEcoReasonStopped => 'Detenido — puntaje en pausa';

  @override
  String get liveTripEcoReasonEfficient => 'Suave, demanda moderada';

  @override
  String get liveTripEcoReasonDemand => 'Demanda de tracción alta';

  @override
  String get liveTripEcoReasonAcceleration => 'Aceleración brusca';

  @override
  String get liveTripEcoReasonJerk => 'Cambio brusco de aceleración';

  @override
  String get liveTripEcoReasonCoasting => 'Rodando sin pedal ni freno';

  @override
  String get liveTripEcoReasonRegen => 'Regenerando energía';

  @override
  String get liveTripEcoReasonCycle => 'Aceleración seguida pronto de frenado';

  @override
  String get liveTripAverageConsumption => 'CONSUMO PROMEDIO VCU';

  @override
  String get liveTripAverageConsumption1 => 'CONSUMO PROMEDIO VCU 1';

  @override
  String get liveTripTotalOdometerCandidate => 'CANDIDATO DE ODÓMETRO';

  @override
  String get liveTripPedal => 'PEDAL DE ACELERADOR';

  @override
  String get liveTripBrake => 'FRENO';

  @override
  String get liveTripBrakeOn => 'PRESIONADO';

  @override
  String get liveTripBrakeOff => 'SUELTO';

  @override
  String get liveTripRegenTorque => 'PAR REGEN';

  @override
  String get liveTripRegenLevel => 'NIVEL REGEN';

  @override
  String get liveTripPackPower => 'PACK V x I';

  @override
  String get liveTripVhalPower => 'POTENCIA VHAL';

  @override
  String get liveTripGear => 'MARCHA';

  @override
  String get liveTripAltitude => 'ALTITUD';

  @override
  String get liveTripGps => 'FIJACIÓN GPS';

  @override
  String get liveTripBus => 'BUS CAN';

  @override
  String get liveTripPollAge => 'EDAD DEL POLL';

  @override
  String get liveTripImpliedScale => 'ESCALA DE VELOCIDAD IMPLÍCITA';

  @override
  String get liveTripSectionInstant => 'SEÑALES INSTANTÁNEAS';

  @override
  String get liveTripSectionTotals => 'TOTALES DEL VIAJE';

  @override
  String get liveTripSourceVhal => 'VHAL';

  @override
  String get liveTripBadgeDerived => 'V x I';

  @override
  String get liveTripBadgeStale => 'OBSOLETO';

  @override
  String get liveTripCanOffline =>
      'Puente CAN fuera de línea: los valores Roadcast en vivo no están disponibles';

  @override
  String get liveTripMapTitle => 'Ruta en vivo';

  @override
  String get liveTripChartPower => 'Trayecto de potencia de tracción';

  @override
  String get liveTripChartPowerNotEnough =>
      'No hay muestras de potencia suficientes para el gráfico.';

  @override
  String liveTripSourceCan(Object frameId) {
    return 'CAN $frameId';
  }

  @override
  String liveTripTotalsUpdated(Object age) {
    return 'Room, hace $age';
  }

  @override
  String liveTripWindowMinutes(Object minutes) {
    return 'últimos $minutes min';
  }

  @override
  String liveRoadcastWindowSeconds(int seconds) {
    return 'últimos $seconds s en RAM';
  }

  @override
  String get liveChargeTitle => 'CARGA EN VIVO';

  @override
  String get liveChargeOpen => 'ABRIR SESIÓN EN VIVO';

  @override
  String get liveChargeRowTitle => 'SESIÓN ACTIVA';

  @override
  String get liveChargeSectionPack => 'PACK';

  @override
  String get liveChargeSectionInput => 'ENTRADA DEL CARGADOR';

  @override
  String get liveChargeSectionTotals => 'TOTALES DE LA SESIÓN';

  @override
  String get liveChargeInputPower => 'POTENCIA DE ENTRADA';

  @override
  String get liveChargePackCurrent => 'CORRIENTE DEL PACK';

  @override
  String get liveChargePackPower => 'POTENCIA DEL PACK';

  @override
  String get liveChargeCurrentRaw => 'CONTEO DEL BUS';

  @override
  String get liveChargeCurrentScale => 'ESCALA';

  @override
  String get liveChargeCurrentScaleValue => '0.1 A/bit (confirmado)';

  @override
  String get liveChargeZeroAssumed => 'CERO SUPUESTO';

  @override
  String get liveChargeZeroObserved => 'CERO OBSERVADO';

  @override
  String liveChargeZeroSamples(int count) {
    return '$count muestras';
  }

  @override
  String get liveChargeZeroWaiting => 'necesita tiempo en reposo';

  @override
  String get liveChargeZeroOffset => 'ERROR DE OFFSET';

  @override
  String get liveChargeZeroNote =>
      'Los valores de amperaje usan un cero supuesto de 5000 conteos. El cero observado se acumula mientras el pack está en reposo; la brecha entre ellos es el error que lleva cada lectura de amperaje.';

  @override
  String get liveChargeObcInputVolts => 'VOLTAJE DE ENTRADA';

  @override
  String get liveChargeObcInputCurrent => 'CORRIENTE DE ENTRADA';

  @override
  String get liveChargeObcState => 'ESTADO DEL CARGADOR';

  @override
  String get liveChargeObcEfficiency => 'EFICIENCIA OBC';

  @override
  String get liveChargeChartPower => 'Potencia de entrada';

  @override
  String get liveChargeChartCurrent => 'Corriente del pack (est.)';

  @override
  String get liveChargeChartSoc => 'Estado de carga';

  @override
  String get liveChargeChartNotEnough => 'Esperando muestras del bus.';

  @override
  String get liveChargeEnergyAdded => 'ENERGÍA AÑADIDA';

  @override
  String get liveChargeEta => 'TIEMPO PARA COMPLETAR';

  @override
  String liveChargeEtaTarget(int percent) {
    return 'TIEMPO PARA $percent%';
  }

  @override
  String get liveChargeBadgeEstimate => 'EST';

  @override
  String get liveChargeCanOffline =>
      'Puente CAN fuera de línea: corriente y voltaje del pack no disponibles';

  @override
  String get liveChargeNoLiveSession =>
      'No hay ninguna sesión de carga abierta.';

  @override
  String get chargeDetailCost => 'COSTO';

  @override
  String get chargeDetailEditCost => 'EDITAR COSTO';

  @override
  String get chargeDetailCostPerKwh => 'POR kWh';

  @override
  String get chargeDetailSectionOverview => 'RESUMEN';

  @override
  String get chargeDetailSectionEnergy => 'ENERGÍA Y COSTO';

  @override
  String get chargeDetailSectionCurves => 'CURVAS';

  @override
  String get chargeDetailSectionContext => 'CONTEXTO';

  @override
  String get chargeDetailPeakPower => 'POTENCIA PICO';

  @override
  String get chargeDetailSocRate => 'TASA DE SOC';

  @override
  String get chargeDetailEnergyRate => 'TASA DE ENERGÍA';

  @override
  String get chargeDetailSocPerHour => '%/h';

  @override
  String chargeDetailSamples(int count) {
    return '$count pts';
  }

  @override
  String get chargeDetailNoCost => 'Toque para fijar un precio';

  @override
  String get chargeDetailStartedAt => 'INICIÓ';

  @override
  String get chargeDetailEndedAt => 'TERMINÓ';

  @override
  String liveChargeLoss(Object kw) {
    return '$kw kW perdidos en el cargador';
  }

  @override
  String get liveChargeWallPower => 'POTENCIA DE PARED';

  @override
  String get liveChargeMeasured => 'MEDIDO';

  @override
  String get energyMonitorTab => 'Monitor de energía';

  @override
  String get rangeReasonCollectionStopped => 'Recoleccion detenida.';

  @override
  String get rangeReasonWaitingForSignal => 'Esperando la senal.';

  @override
  String get rangeReasonSignalError => 'Error de senal.';

  @override
  String get rangeReasonUnpublishedSignal => 'El coche no envia este valor.';

  @override
  String get rangeReasonOutOfRange => 'Valor fuera de rango.';

  @override
  String get rangeReasonEfficiencyLoading => 'Leyendo la eficiencia.';

  @override
  String get rangeReasonNoValidEfficiency => 'Aun no hay eficiencia medida.';

  @override
  String get rangeReasonEfficiencyStale => 'La eficiencia no esta al dia.';

  @override
  String get rangeDropTitle => 'Caida de autonomia';

  @override
  String get rangeDropDistance => 'Recorrio';

  @override
  String get rangeDropCarSpent => 'El coche gasto';

  @override
  String get rangeDropCarGained => 'El coche gano';

  @override
  String get rangeDropAppSpent => 'La app gasto';

  @override
  String get rangeDropAppGained => 'La app gano';

  @override
  String rangeDropStretch(String time) {
    return 'Midiendo desde $time';
  }

  @override
  String get rangeDropWaiting => 'Esperando un viaje.';

  @override
  String get rangeDropTooShort => 'El tramo es muy corto para comparar.';

  @override
  String get rangeDropFrozen => 'Tramo cerrado';

  @override
  String get energyUseTitle => 'Uso de energía';

  @override
  String get energyUseAbout => 'Acerca del uso de energía';

  @override
  String get energyWindowCurrentDrive => 'Viaje actual';

  @override
  String get energyWindowSincePowerOn => 'Desde el encendido';

  @override
  String get energyWindowLast15Minutes => 'Últimos 15 minutos';

  @override
  String get energyWindowLastHour => 'Última hora';

  @override
  String get energyWindowLast8Hours => 'Últimas 8 horas';

  @override
  String get energyWindowSelector => 'Elija el tramo de conducción a mostrar';

  @override
  String get energyModeDrive => 'Viaje';

  @override
  String get energyModeParked => 'Estacionado';

  @override
  String get energyStateCharge => 'Cargando';

  @override
  String get energyStatePoweredOn => 'Encendido';

  @override
  String get energyChartEmpty => 'No hay conducción grabada en esta ventana.';

  @override
  String get energyChartEmptyParked =>
      'El vehículo no estuvo detenido en esta ventana.';

  @override
  String get energyChartLoading => 'Leyendo el viaje…';

  @override
  String get energyChartFailed => 'No se pudo leer el viaje.';

  @override
  String get energyChartSemantics => 'Energía usada por intervalo';

  @override
  String get energyBarOpen => 'en curso';

  @override
  String get energyTraction => 'Transmisión';

  @override
  String get energyClimate => 'Clima';

  @override
  String get energyAuxiliary => 'Todo lo demás';

  @override
  String get energyRegeneration => 'Recuperada';

  @override
  String get sessionDetailsTitle => 'Detalles de la sesión';

  @override
  String get sessionDetailsAbout => 'Acerca de esta sesión';

  @override
  String get sessionDetailsInfoTitle => 'Qué muestra el anillo';

  @override
  String get sessionDetailsInfoClose => 'Cerrar la explicación de la sesión';

  @override
  String get sessionDetailsInfoTraction =>
      'Energía que el pack envió al motor para mover el vehículo.';

  @override
  String get sessionDetailsInfoClimate =>
      'Energía que el pack envió a calefacción y refrigeración. El vehículo la reporta él mismo.';

  @override
  String get sessionDetailsInfoAuxiliary =>
      'Todo lo que el pack suministró que tracción y clima no explican: dirección, bombas, luces, electrónica. Es lo que queda después de la transmisión, así que carga el error de ambas lecturas. Si el vehículo no reporta la potencia del clima, la carga del clima está dentro de esta cifra.';

  @override
  String get sessionDetailsInfoRegeneration =>
      'Energía que el motor devolvió al frenar. Medida contra lo que se extrajo, no una parte de ella — por eso es el arco interior.';

  @override
  String get energyStatEfficiency => 'Prom.';

  @override
  String get energyStatDistance => 'Distancia';

  @override
  String get energyStatSpeed => 'Velocidad prom.';

  @override
  String get energyStatCost => 'Costo est.';

  @override
  String get energyStatParkedDrain => 'Consumo prom.';

  @override
  String get energyStatParkedTotal => 'Total';

  @override
  String get energyStatParkedClimate => 'Clima';

  @override
  String get energyLedgerIn => 'Entró';

  @override
  String get energyLedgerOut => 'Salió';

  @override
  String get energyLedgerBalance => 'Saldo';

  @override
  String get energyLedgerSoc => 'SOC';

  @override
  String get energyLedgerIncludesEstimate => 'Incluye la estimación del sueño.';

  @override
  String get unitKmPerKwh => 'km/kWh';

  @override
  String get unitKwhPer50km => 'kWh/50km';

  @override
  String get unitKwhPer100km => 'kWh/100km';

  @override
  String get efficiencyAverageWindow => 'Prom. · últimos 15 min';

  @override
  String get efficiencyTimeNotSynced =>
      'Hora aún no sincronizada. La línea muestra la eficiencia medida.';

  @override
  String get efficiencyLessRange => 'Menos autonomía';

  @override
  String get efficiencyAxisUnit => 'Wh/km';

  @override
  String get efficiencySmoothnessLabel => 'Suavidad de conducción';

  @override
  String get efficiencySmoothnessWindow => 'últimos 30 s';

  @override
  String get efficiencyAbout => 'Acerca de esta tarjeta';

  @override
  String get efficiencyInfoClose => 'Cerrar la explicación de eficiencia';

  @override
  String get efficiencyInfoTitle => 'Cómo leer esta tarjeta';

  @override
  String get efficiencyInfoLinesLabel => 'Las dos líneas';

  @override
  String get efficiencyInfoLines =>
      'La línea superior es lo que cuesta el viaje después de que la regeneración devuelve energía. La línea inferior es lo que el vehículo toma antes de ese crédito. El área verde entre ellas es la energía devuelta.';

  @override
  String get efficiencyInfoScaleLabel => 'La escala';

  @override
  String get efficiencyInfoScale =>
      'La escala es Wh/km con cero arriba, así que una línea más alta es mejor. La línea superior es verde cuando el viaje es mejor que la estimación de autonomía del vehículo. Una interrupción es un intervalo que el vehículo no reportó.';

  @override
  String get efficiencyInfoAverageLabel =>
      'El número grande, y la cifra del vehículo';

  @override
  String get efficiencyInfoAverage =>
      'Este es el promedio de los últimos 15 minutos: la distancia dividida por la energía que dio la batería. Tóquelo para cambiar la unidad. El vehículo calcula su propio kWh/100 km a lo largo de los últimos 100 km, que pueden ser muchos viajes y muchos días. Por eso los dos números difieren, y ambos son correctos.';

  @override
  String get efficiencyInfoSmoothnessLabel => 'La barra al costado';

  @override
  String get efficiencyInfoSmoothness =>
      'La barra muestra qué tan suave se conduce el vehículo, no eficiencia. La perilla son los últimos 30 segundos, la marca pequeña los últimos 5 segundos. Una marca sobre la perilla muestra conducción más suave.';

  @override
  String get signalLabTitle => 'Signal Lab';

  @override
  String get signalLabOpen => 'Abrir Signal Lab';

  @override
  String get signalLabDescription =>
      'Vista de ingeniería de cada señal CAN que decodifica el daemon.';

  @override
  String get signalLabTabInspector => 'INSPECTOR';

  @override
  String get signalLabTabScope => 'SCOPE';

  @override
  String get signalLabSearchHint => 'Nombre de señal o 0x315';

  @override
  String get signalLabTierFresh => 'Fresca';

  @override
  String get signalLabTierPublished => 'Publicada';

  @override
  String get signalLabTierNever => 'Nunca';

  @override
  String get signalLabColumnSignal => 'Señal';

  @override
  String get signalLabColumnFrame => 'Frame';

  @override
  String get signalLabColumnRaw => 'Crudo';

  @override
  String get signalLabColumnValue => 'Valor';

  @override
  String get signalLabColumnUnit => 'Unidad';

  @override
  String get signalLabColumnAge => 'Edad';

  @override
  String get signalLabColumnTier => 'Nivel';

  @override
  String get signalLabColumnRange => 'Mín/máx de sesión';

  @override
  String get signalLabRawCounts => 'conteos';

  @override
  String get signalLabUncalibrated => 'EST';

  @override
  String get signalLabUncalibratedHint =>
      'Sin escala negociada. El conteo es la medición.';

  @override
  String get signalLabInvalid => 'INVÁLIDA';

  @override
  String get signalLabDisconnected =>
      'Roadcast no está conectado. No se puede leer ninguna señal.';

  @override
  String get signalLabEmpty => 'Ninguna señal coincide con este filtro.';

  @override
  String get signalLabScopeEmpty =>
      'Seleccione hasta cuatro señales en el inspector para trazarlas.';

  @override
  String get signalLabScopeFull =>
      'El scope admite cuatro trazos. Quite uno primero.';

  @override
  String get signalLabFreeze => 'Congelar';

  @override
  String get signalLabResume => 'Reanudar';

  @override
  String get signalLabClearTraces => 'Limpiar trazos';

  @override
  String get signalLabResetSession => 'Reiniciar sesión';

  @override
  String get signalLabTrace => 'Trazar';

  @override
  String signalLabCounts(int fresh, int published, int never) {
    return '$fresh frescas, $published publicadas, $never nunca';
  }

  @override
  String get v1WelcomeTitle => 'Experiencia Versión 1.0';

  @override
  String get v1WelcomeBody =>
      '¡Bienvenido a la Versión 1.0! Esta versión lanza una nueva experiencia para la app. La nueva interfaz seguirá recibiendo mejoras, ajustes y correcciones según sus comentarios.\n\nSi alguna vez desea volver al modo anterior, puede alternar en cualquier momento en Ajustes. La app recordará su experiencia preferida y siempre abrirá en ella.';

  @override
  String get v1WelcomeConfirm => 'Explorar Nueva Experiencia';

  @override
  String get v1WelcomeUseLegacy => 'Usar Modo Anterior';

  @override
  String get v2ProjectionBetaTitle => 'CarPlay / Android Auto (Beta)';

  @override
  String get v2ProjectionBetaDescription =>
      'Muestra la pestaña del teléfono conectado y dibuja la imagen en ella. Si no hay teléfono conectado, no aparece ninguna pestaña. Mientras está desactivada, los servicios de proyección de la pantalla principal nunca se inician. Sigue en beta: espere detalles toscos.';

  @override
  String get settingsReplaceOemChargingTitle =>
      'Reemplazar la pantalla de carga de fábrica';

  @override
  String get settingsReplaceOemChargingDesc =>
      'Bloquea el aviso automático de carga de fábrica y abre esta app en Carga cuando empieza una carga. La app de fábrica sigue abriendo desde su ícono. Esta app no toma la pantalla en modo camping ni nap.';

  @override
  String get settingsExternalChargeControlTitle =>
      'Control de Carga Externo (Geely Charge Control)';

  @override
  String get settingsExternalChargeControlDesc =>
      'Permite controlar el límite de carga y amperaje delegando las acciones a la aplicación dedicada Geely Charge Control. Por defecto, Eaglemetry opera puramente como analizador de telemetría.';

  @override
  String get settingsChargeControlNotInstalled =>
      'Geely Charge Control no está instalado';

  @override
  String settingsChargeControlInstalled(String version) {
    return 'Geely Charge Control instalado (v$version)';
  }

  @override
  String get settingsChargeControlDownloadAndInstall =>
      'Descargar e Instalar APK';

  @override
  String get settingsChargeControlOpenApp => 'Abrir Aplicación';

  @override
  String get settingsChargeControlInstalling => 'Instalando APK...';

  @override
  String settingsChargeControlDownloadingPercent(int percent) {
    return 'Descargando... $percent%';
  }

  @override
  String get settingsChargeControlInstalledSuccess =>
      'Instalación de Geely Charge Control programada/completada.';

  @override
  String get settingsChargeControlLaunchFailed =>
      'Geely Charge Control no se abrió.';

  @override
  String get settingsPackCapacityTitle => 'Capacidad de la batería';

  @override
  String get settingsPackCapacityDesc =>
      'El tamaño útil del pack que la app usa para cada cifra de energía y eficiencia. El vehículo no reporta una útil, así que indíquela aquí. Predeterminado: 39.60 kWh.';

  @override
  String settingsPackCapacitySaved(String value) {
    return 'Capacidad de la batería fijada en $value.';
  }

  @override
  String get settingsChargeCostApplyTitle =>
      'Poner precio a las cargas pasadas';

  @override
  String get settingsChargeCostApplyDesc =>
      'Escribe la tarifa predeterminada en cada carga terminada que no tiene precio. Una carga con monto pagado lo conserva.';

  @override
  String get settingsChargeCostApply => 'Aplicar a cargas sin precio';

  @override
  String get settingsChargeCostApplying => 'Aplicando...';

  @override
  String get settingsProposalDecision => 'Responder propuesta';

  @override
  String get settingsProposalPrompt => 'Un teléfono propuso este valor.';

  @override
  String get settingsProposalAccept => 'Aceptar';

  @override
  String get settingsProposalRefuse => 'Rechazar';

  @override
  String get settingsProposalDeciding => 'Decidiendo...';

  @override
  String get settingsProposalUnknown => 'Propuesta';

  @override
  String settingsChargeCostApplied(int count) {
    return '$count cargas ahora llevan la tarifa predeterminada.';
  }

  @override
  String get settingsChargeCostApplyNone => 'Ninguna carga necesitó precio.';

  @override
  String get settingsChargeCostApplyNoRate =>
      'Guarde primero una tarifa predeterminada.';

  @override
  String insightNotEnoughData(int count) {
    return 'Aún no hay viajes medidos suficientes en los últimos 30 días ($count utilizables).';
  }

  @override
  String get insightSubjectUnusable =>
      'Este viaje no tiene energía medida del pack para comparar.';

  @override
  String insightNotDistinguishable(int count) {
    return 'Este viaje aún no se puede distinguir de sus últimos 30 días ($count viajes).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'Este viaje usó $difference Wh/km menos que sus últimos 30 días ($count viajes).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'Este viaje usó $difference Wh/km más que sus últimos 30 días ($count viajes).';
  }

  @override
  String get navSync => 'Sync';

  @override
  String get v2SyncCodeTitle => 'Código de emparejamiento';

  @override
  String get v2SyncNoCode => 'Ningún código abierto';

  @override
  String get v2SyncRegisteredSubtitle =>
      'Coche registrado. Esperando que el teléfono lo vincule.';

  @override
  String get v2SyncRegisteredBody =>
      'El coche se registró solo. Abra la app Eaglemetry Companion en su teléfono y vincule el coche a su cuenta.';

  @override
  String get v2SyncRegistered => 'REGISTRADO';

  @override
  String get v2SyncRevokedSubtitle => 'Acceso revocado. Cree un nuevo código.';

  @override
  String get v2SyncRevokedBody =>
      'El acceso a este coche fue revocado. Genere un nuevo código de emparejamiento para conectar su teléfono nuevamente.';

  @override
  String get v2SyncRevoked => 'REVOCADO';

  @override
  String get v2SyncCodeExpired => 'El código expiró. Cree uno nuevo.';

  @override
  String get v2SyncCodeCancelled => 'Código cancelado. Cree uno nuevo.';

  @override
  String get v2SyncCreateCode => 'NUEVO CÓDIGO';

  @override
  String get v2SyncCancelCode => 'CANCELAR CÓDIGO';

  @override
  String get v2SyncRetry => 'REINTENTAR';

  @override
  String get v2SyncPaired => 'EMPAREJADO';

  @override
  String get v2SyncPairedConnected => 'Teléfono emparejado. Conectado.';

  @override
  String get v2SyncPairingRejected => 'El teléfono rechazó el emparejamiento.';

  @override
  String get v2SyncPairingInvalid => 'Algo salió mal.';

  @override
  String get v2SyncPairingStartFailed =>
      'No se pudo iniciar el emparejamiento. Inténtelo de nuevo.';

  @override
  String get v2SyncCheckingConnection => 'Comprobando la conexión…';

  @override
  String get v2SyncCheckingBody =>
      'Comprobando si el coche alcanza el servidor…';

  @override
  String get v2SyncNoNetwork =>
      'Sin conexión de red. Compruebe el Wi-Fi o el hotspot.';

  @override
  String get v2SyncNoNetworkBody =>
      'El coche no tiene conexión de red. Active el Wi-Fi o un hotspot e inténtelo de nuevo.';

  @override
  String get v2SyncServerUnreachable =>
      'No se puede alcanzar el servidor. Compruebe la conexión.';

  @override
  String get v2SyncServerUnreachableBody =>
      'El coche está en una red pero no alcanza el servidor. Compruebe la conexión e inténtelo de nuevo.';

  @override
  String get v2SyncPendingBody =>
      'Abra la app Eaglemetry Companion en su teléfono y escriba este código. Expira en 5 minutos.';

  @override
  String get v2SyncApprovedBody =>
      'Su teléfono está emparejado. El coche sincroniza con la nube cuando tiene conexión.';

  @override
  String get v2SyncExpiredBody =>
      'Este código expiró tras 5 minutos. Genere uno nuevo para intentarlo de nuevo.';

  @override
  String get v2SyncRejectedBody =>
      'El teléfono rechazó el emparejamiento. Genere un código nuevo e inténtelo de nuevo.';

  @override
  String get v2SyncInvalidBody =>
      'Algo salió mal con el código. Genere uno nuevo e inténtelo de nuevo.';

  @override
  String get v2SyncIdleBody =>
      'Abra la app Eaglemetry Companion en su teléfono. Genere un código aquí y escríbalo allí.';

  @override
  String get v2SyncExpiresInMinutes => 'Expira en 5 minutos';

  @override
  String v2SyncExpiresInClock(int minutes, String seconds) {
    return 'Expira en $minutes:$seconds';
  }

  @override
  String v2SyncExpiresInSecs(int seconds) {
    return 'Expira en $seconds s';
  }

  @override
  String get v2SyncDevicesTitle => 'Teléfonos emparejados';

  @override
  String get v2SyncNoDevices => 'Ningún teléfono emparejado';

  @override
  String get v2SyncNoDevicesBody =>
      'El vehículo entrega datos solo a un teléfono emparejado. Cree un código para emparejar uno.';

  @override
  String v2SyncDeviceCount(Object count) {
    return '$count emparejados';
  }

  @override
  String v2SyncPairedOn(Object date) {
    return 'Emparejado el $date';
  }

  @override
  String get v2SyncRevoke => 'QUITAR SYNC';

  @override
  String v2SyncRevokeConfirmTitle(Object name) {
    return '¿Quitar el sync de $name?';
  }

  @override
  String get v2SyncRevokeConfirmMessage =>
      'El teléfono pierde el acceso al coche. El coche queda libre para sincronizar con otro teléfono. El historial que ya está en el teléfono permanece allí.';

  @override
  String get v2SyncRevokeConfirm => 'QUITAR SYNC';

  @override
  String get v2SyncRevokeCancel => 'CANCELAR';

  @override
  String get v2SyncForce => 'FORZAR SYNC';

  @override
  String get v2SyncCloudTitle => 'Sync en la nube';

  @override
  String get v2SyncCloudSubtitle => 'Suba los datos del coche a la nube ahora.';

  @override
  String get v2SyncCloudRunning => 'Subiendo…';

  @override
  String get v2SyncCloudNote =>
      'Envía telemetría, anotaciones y cambios de preferencia a la nube. Se ejecuta solo cada 15 minutos; este botón lo ejecuta ahora.';

  @override
  String v2SyncCloudMoved(int count) {
    return '$count registros subidos.';
  }

  @override
  String get v2SyncCloudEmpty => 'Ya está al día. Nada que subir.';

  @override
  String get v2SyncCloudFailed => 'La subida falló. Inténtelo de nuevo.';

  @override
  String get v2SyncCloudDisabled =>
      'El sync en la nube está apagado en esta versión. No se subió nada.';

  @override
  String get v2SyncCloudNotPaired =>
      'Primero vincule este coche con su teléfono. No se subió nada.';

  @override
  String get v2SyncLiveActive => 'Valores en vivo: enviando';

  @override
  String get v2SyncLiveIdle => 'Valores en vivo: esperando al teléfono';

  @override
  String get v2SyncProgressLabel => 'Progreso en la nube';

  @override
  String get v2SyncProgressUpToDate => '100% al día';

  @override
  String v2SyncProgressPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pendientes',
      one: '1 pendiente',
    );
    return '$_temp0';
  }

  @override
  String v2SyncProgressPendingClock(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count esperando el reloj del auto',
      one: '1 esperando el reloj del auto',
    );
    return '$_temp0';
  }

  @override
  String v2SyncProgressPendingBoth(int dirty, int clock) {
    String _temp0 = intl.Intl.pluralLogic(
      dirty,
      locale: localeName,
      other: '$dirty pendientes',
      one: '1 pendiente',
    );
    String _temp1 = intl.Intl.pluralLogic(
      clock,
      locale: localeName,
      other: '$clock esperando el reloj del auto',
      one: '1 esperando el reloj del auto',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String v2SyncProgressDetail(int clean, int total) {
    return '$clean de $total registros en la nube';
  }

  @override
  String get v2SyncCompanionTitle => 'Eaglemetry Companion';

  @override
  String get v2SyncCompanionBeta => 'Beta disponible';

  @override
  String get v2SyncCompanionDescription =>
      'Siga sus viajes, historial de carga y métricas de batería en su teléfono.';

  @override
  String get v2SyncCompanionUpdateHint =>
      '¿No puede sincronizar? ¡Descargue la versión nueva del companion!';

  @override
  String get v2SyncCompanionScanQr =>
      'Escanee el código para descargar la versión beta:';

  @override
  String get v2SyncCompanionAndroid => 'Android';

  @override
  String get v2SyncCompanionIos => 'iOS';

  @override
  String get v2SyncCompanionForbidden => '403?';

  @override
  String get v2SyncCompanionBetaWarning =>
      'La app está en beta (la versión iOS está pendiente de aprobación de Apple). Faltan funciones y hay errores. ¡Para dar comentarios, sacuda su teléfono!';

  @override
  String get v2SettingsStorage => 'Almacenamiento';

  @override
  String get v2SettingsStorageTitle => 'Historial guardado';

  @override
  String get v2SettingsStorageDesc =>
      'Cuánto espacio ocupa el historial guardado. Se mide sin escanear cada registro.';

  @override
  String get v2SettingsStorageLoading => 'Comprobando…';

  @override
  String v2SettingsStorageFailed(String error) {
    return 'Error al comprobar almacenamiento: $error';
  }

  @override
  String v2SettingsStorageValue(String size) {
    return '$size usados';
  }
}
