// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry Companion';

  @override
  String get pairingTitle => 'Emparejar con el vehículo';

  @override
  String get pairingBody =>
      'Escriba el código de 6 dígitos que muestra el vehículo.';

  @override
  String get pairingCodeHint => '000000';

  @override
  String get pairingAction => 'Emparejar';

  @override
  String get pairingForget => 'Olvidar este vehículo';

  @override
  String get pairingInvalidCode => 'Escriba los 6 dígitos del vehículo.';

  @override
  String get pairingRejected => 'El vehículo rechazó este código.';

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
  String get homePairedTitle => 'Emparejado';

  @override
  String get homePairedBody =>
      'Este teléfono lee el historial del vehículo desde su cuenta en la nube.';

  @override
  String get homeNoteLabel => 'Nota';

  @override
  String get homeNoteBody =>
      'El vehículo es la fuente. Este teléfono conserva el historial largo después de un sync.';

  @override
  String get syncTitle => 'Sync';

  @override
  String get syncAction => 'SYNC AHORA';

  @override
  String get syncRunning => 'SINCRONIZANDO';

  @override
  String get syncProgressLabel => 'Progreso en la nube';

  @override
  String get syncProgressUpToDate => '100% al día';

  @override
  String syncProgressPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pendientes',
      one: '1 pendiente',
    );
    return '$_temp0';
  }

  @override
  String syncProgressDetail(int clean, int total) {
    return '$clean de $total registros en la nube';
  }

  @override
  String get syncNeverRun => 'Aún sin sincronizar';

  @override
  String syncHolding(int trips, int charges) {
    return '$trips viajes, $charges cargas en este teléfono';
  }

  @override
  String syncLastRun(Object time) {
    return 'Último sync: $time';
  }

  @override
  String syncResultCompleted(Object records) {
    return '$records registros llegaron de la nube.';
  }

  @override
  String get syncResultNothing => 'El vehículo no tenía nada nuevo.';

  @override
  String get syncResultFailed =>
      'La sincronizacion no alcanzo la nube. Verifique su conexion e intente de nuevo.';

  @override
  String get syncResultCloudDisabled =>
      'La sincronización en la nube está desactivada en esta compilación.';

  @override
  String get syncResultPhoneOffline =>
      'Este celular no pudo alcanzar la nube. Verifique su conexión e intente de nuevo.';

  @override
  String get syncResultCarSilent =>
      'El vehículo no envió nada a la nube. Si tiene viajes nuevos, verifique su conexión.';

  @override
  String get syncStreamTrips => 'Viajes';

  @override
  String get syncStreamCharges => 'Cargas';

  @override
  String get syncStreamCycles => 'Ciclos';

  @override
  String get syncStreamIntervals => 'Intervalos';

  @override
  String get syncStreamEvents => 'Eventos';

  @override
  String get syncStreamFrames => 'Frames';

  @override
  String get syncStreamTracks => 'Rutas';

  @override
  String syncProgressCounted(Object stream, int done, int total) {
    return '$stream: $done de $total';
  }

  @override
  String syncProgressUnknown(Object stream, int done) {
    return '$stream: $done';
  }

  @override
  String syncProgressSession(int index, int count) {
    return 'Sesión $index de $count';
  }

  @override
  String get syncWipeAction => 'BORRAR DATOS LOCALES';

  @override
  String get syncWipeTitle => '¿Borrar los datos locales?';

  @override
  String get syncWipeBody =>
      'Este teléfono borra cada viaje, carga y registro que extrajo. El vehículo conserva los suyos. El próximo sync copia el historial otra vez desde el inicio.';

  @override
  String get syncWipeCancel => 'CANCELAR';

  @override
  String get syncWipeConfirm => 'BORRAR';

  @override
  String get syncStreamWaiting => 'Esperando';

  @override
  String get navSync => 'Sync';

  @override
  String get navHistory => 'Historial';

  @override
  String get navTrips => 'Viajes';

  @override
  String get navCharges => 'Cargas';

  @override
  String get navBattery => 'Batería';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get navComingSoon => 'Pronto disponible.';

  @override
  String get historyTrips => 'Viajes';

  @override
  String get historyCharges => 'Cargas';

  @override
  String get historyEmpty =>
      'Aún no hay nada aquí. Sincronice con el vehículo.';

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
    return 'No se pudo leer el archivo: $reason';
  }

  @override
  String get historyRoute => 'Ruta';

  @override
  String get historyNoRoute => 'Este viaje no lleva ninguna posición GPS.';

  @override
  String get historyMapExpand => 'Ampliar el mapa';

  @override
  String get historyMapCollapse => 'Reducir el mapa';

  @override
  String get historyDuration => 'Duración';

  @override
  String get historyDistance => 'Distancia';

  @override
  String get historySoc => 'Carga';

  @override
  String get historyConsumed => 'Usada';

  @override
  String get historyRegenerated => 'Recuperada';

  @override
  String get historyEfficiency => 'Eficiencia';

  @override
  String get historyClimb => 'Ascenso';

  @override
  String get historyTemperature => 'Exterior';

  @override
  String get historyStart => 'Conectado';

  @override
  String get historyEnd => 'Desconectado';

  @override
  String get historyEnergy => 'Energía';

  @override
  String get historyPeakPower => 'Potencia pico';

  @override
  String get historyAveragePower => 'Potencia promedio';

  @override
  String get historyPeakAndAverage => 'Pico y promedio';

  @override
  String get historyChargingPower => 'Potencia de carga';

  @override
  String get historyChargeLocation => 'Ubicación';

  @override
  String get historyChargeCost => 'Costo';

  @override
  String get historyEditCost => 'Editar el precio de esta carga';

  @override
  String get chargeCostTitle => 'Precio de carga';

  @override
  String get chargeCostDescription =>
      'Aplica solo a esta carga. Escriba un precio por kWh, o el total que pagó.';

  @override
  String get chargeCostFieldRate => 'Precio/kWh';

  @override
  String get chargeCostFieldTotal => 'Total pagado';

  @override
  String get chargeCostUnitRate => '/kWh';

  @override
  String get moneyKeypadSave => 'Guardar';

  @override
  String get moneyKeypadClear => 'Limpiar el monto';

  @override
  String get moneyKeypadDelete => 'Borrar el último dígito';

  @override
  String get moneyKeypadClose => 'Cerrar el teclado de precio';

  @override
  String get historyVoltage => 'Voltaje del pack';

  @override
  String historyFrameCount(Object count) {
    return '$count muestras grabadas';
  }

  @override
  String get historyBattery => 'Batería';

  @override
  String get historyEnergyBalance => 'Balance de energía';

  @override
  String get historyEvents => 'Eventos';

  @override
  String get eventTripArmed => 'Viaje preparado';

  @override
  String get eventTripStarted => 'Viaje iniciado';

  @override
  String get eventTripPendingEnd => 'Viaje deteniéndose';

  @override
  String get eventTripCancelled => 'Viaje cancelado';

  @override
  String get eventTripEnded => 'Viaje terminado';

  @override
  String get eventTripRecovered => 'Viaje recuperado';

  @override
  String get eventChargePlugConnected => 'Conector conectado';

  @override
  String get eventChargeStarted => 'Carga iniciada';

  @override
  String get eventChargeEnded => 'Carga terminada';

  @override
  String get eventChargePlugDisconnected => 'Conector desconectado';

  @override
  String get eventChargeRecovered => 'Carga recuperada';

  @override
  String get eventChargeLimitReached => 'Carga objetivo alcanzada';

  @override
  String get historyTraction => 'Tracción';

  @override
  String get historyAuxiliary => 'Otros sistemas';

  @override
  String get historyRecovered => 'Recuperada';

  @override
  String historyTotalDelivered(Object energy) {
    return '$energy kWh entregados en total';
  }

  @override
  String historyNetConsumed(Object energy) {
    return '$energy kWh netos consumidos';
  }

  @override
  String historyWh(Object energy) {
    return '$energy Wh';
  }

  @override
  String get historyPerMinute => 'Gastada y recuperada';

  @override
  String historyPerColumn(int minutes) {
    return '$minutes min por columna';
  }

  @override
  String get historyTerrain => 'Terreno y clima';

  @override
  String get historyAltitude => 'Altitud';

  @override
  String get historyOutsideTemp => 'Temperatura exterior';

  @override
  String get historyDriveMode => 'Modo de conducción';

  @override
  String get historyDriveModeNormal => 'Normal';

  @override
  String get historyDriveModeEco => 'Eco';

  @override
  String get historyDriveModeSport => 'Sport';

  @override
  String get historyDriveModeOther => 'Otro';

  @override
  String get historyClimate => 'Clima';

  @override
  String historyClimateShare(int percent) {
    return 'Encendido el $percent% del viaje';
  }

  @override
  String get historyClimateCooling => 'Refrigeración';

  @override
  String get historyClimateHeating => 'Calefacción';

  @override
  String get historyClimateBoth => 'Refrigeración y calefacción';

  @override
  String historyClimateBlower(Object level) {
    return 'Ventilador $level';
  }

  @override
  String historyClimateSetpoint(Object degrees) {
    return 'Cabina fijada a $degrees °C';
  }

  @override
  String get historyClimateOff => 'El sistema de clima permaneció apagado.';

  @override
  String get historyClimateInAux =>
      'Su energía está contada en Otros sistemas. El vehículo no reporta el monto.';

  @override
  String historyDriveModeShare(Object mode, int percent) {
    return '$mode $percent%';
  }

  @override
  String get onboardingSkip => 'Saltar';

  @override
  String get onboardingNext => 'Siguiente';

  @override
  String get onboardingStart => 'Comenzar';

  @override
  String get onboardingBack => 'Volver';

  @override
  String get onboardingSlide1Title => 'Conozca a Eaglemetry';

  @override
  String get onboardingSlide1Body =>
      'La energía de su vehículo, grabada viaje tras viaje.';

  @override
  String get onboardingSlide2Title => 'Vea cada viaje y cada carga';

  @override
  String get onboardingSlide2Body =>
      'Eaglemetry lee sus viajes y cargas del vehículo desde su cuenta en la nube.';

  @override
  String get onboardingSlide3Title => 'Empareje en segundos';

  @override
  String get onboardingSlide3Body =>
      'Escriba el código de 6 dígitos que el vehículo muestra en su pantalla. El historial queda en su teléfono.';

  @override
  String get onboardingPairTitle => 'Empareje con su vehículo';

  @override
  String get onboardingPairBody =>
      'Escriba el código de 6 dígitos que muestra la pantalla del vehículo, en Sync.';

  @override
  String get onboardingCodeLabel => 'Código de 6 dígitos';

  @override
  String get onboardingPairing => 'Emparejando';

  @override
  String get onboardingSyncingTitle => 'Sincronizando';

  @override
  String get onboardingSyncingBody =>
      'El teléfono extrae los registros en este orden: viajes, cargas, ciclos y luego frames.';

  @override
  String get onboardingStreamWaiting => 'Esperando';

  @override
  String onboardingWritten(int done) {
    return '$done escritos';
  }

  @override
  String onboardingCounted(int done, int total) {
    return '$done de $total';
  }

  @override
  String get onboardingPairedTitle => 'Vehículo emparejado.';

  @override
  String onboardingPairedBody(int records) {
    return '$records registros están en este teléfono.';
  }

  @override
  String get onboardingPairedNothing =>
      'El vehículo aún no tenía nada para enviar.';

  @override
  String get onboardingSyncFailed =>
      'No se alcanzó el vehículo. Sincronice después desde la pestaña Sync.';

  @override
  String get onboardingSyncCloudDisabled =>
      'La sincronización en la nube está desactivada en esta compilación. El sync queda en este celular.';

  @override
  String get onboardingSyncPhoneOffline =>
      'Este celular no pudo alcanzar la nube. Verifique su conexión y sincronice después desde la pestaña Sync.';

  @override
  String get onboardingSyncCarSilent =>
      'El vehículo aún no envió nada. Si tiene viajes, verifique su conexión e intente de nuevo.';

  @override
  String get onboardingContinue => 'Continuar';

  @override
  String get onboardingLoginTitle => 'Bienvenido de nuevo';

  @override
  String get onboardingLoginBody => 'Inicie sesión en su cuenta Eaglemetry.';

  @override
  String get onboardingCreateTitle => 'Cree su cuenta';

  @override
  String get onboardingCreateBody =>
      'Una cuenta para esta app. Los viajes quedan en este teléfono.';

  @override
  String get onboardingEmailLabel => 'Email';

  @override
  String get onboardingEmailHint => 'usted@ejemplo.com';

  @override
  String get onboardingPasswordLabel => 'Contraseña';

  @override
  String get onboardingShowPassword => 'Mostrar la contraseña';

  @override
  String get onboardingHidePassword => 'Ocultar la contraseña';

  @override
  String get onboardingLogIn => 'Iniciar sesión';

  @override
  String get onboardingLoggingIn => 'Iniciando sesión';

  @override
  String get onboardingCreating => 'Creando la cuenta';

  @override
  String get onboardingForgotPassword => '¿Olvidó la contraseña?';

  @override
  String get onboardingCreateAccount => 'Crear cuenta';

  @override
  String get onboardingHaveAccount => 'Tengo una cuenta';

  @override
  String get onboardingWelcomeTitle => 'Ya está dentro.';

  @override
  String onboardingWelcomeBody(Object email) {
    return 'Sesión iniciada como $email. A continuación, empareje con su vehículo.';
  }

  @override
  String get onboardingContinueToPairing => 'Continuar al emparejamiento';

  @override
  String get accountInvalidEmail => 'Escriba una dirección de email válida.';

  @override
  String accountWeakPassword(int count) {
    return 'La contraseña debe tener al menos $count caracteres, con mayúsculas, minúsculas y dígitos.';
  }

  @override
  String get accountWrongCredentials => 'El email o la contraseña está mal.';

  @override
  String get accountEmailNotConfirmed =>
      'Primero confirme la dirección desde el email.';

  @override
  String get accountAlreadyRegistered =>
      'Esta dirección ya tiene una cuenta. Inicie sesión.';

  @override
  String get accountRateLimited =>
      'Demasiados intentos. Espere e intente de nuevo.';

  @override
  String get accountNetwork => 'No se alcanzó el servidor de cuentas.';

  @override
  String get accountUnconfigured => 'Esta build no lleva servidor de cuentas.';

  @override
  String get accountUnknown => 'El servidor de cuentas rechazó esta acción.';

  @override
  String get accountConfirmEmail => 'Abra su email y confirme la dirección.';

  @override
  String get accountResetSent =>
      'Si esa dirección tiene una cuenta, el email de restablecimiento va en camino.';

  @override
  String get syncStreamAnnotations => 'Anotaciones';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsBeta => 'Beta';

  @override
  String get settingsBetaDesc =>
      'Funciones todavía en prueba. Pueden cambiar o dejar de funcionar.';

  @override
  String get settingsBetaAbrpSync => 'Sincronizar datos con ABRP';

  @override
  String get settingsBetaAbrpSyncDesc =>
      'Lee los datos del vehículo en vivo por Bluetooth y los envía a A Better Routeplanner. El teléfono pide el permiso de Bluetooth cuando activas esto.';

  @override
  String get settingsAbrpTokenLabel => 'Tu token de ABRP';

  @override
  String get settingsAbrpTokenHint => 'ej.: 12345678-abcd-...';

  @override
  String get settingsAbrpTokenHelp =>
      'Obtén el token en la app de ABRP: Ajustes, Modelo del vehículo, Live Data, Generic (Iternio).';

  @override
  String get settingsAbrpApiKeyLabel => 'Tu API key de ABRP';

  @override
  String get settingsAbrpApiKeyHint => 'ej.: 12345678-abcd-...';

  @override
  String get settingsAbrpApiKeyHelp =>
      'Obligatoria. Eaglemetry no trae clave propia, porque Iternio limita cada clave a pocas peticiones por segundo. Crea la tuya con el botón (i) de arriba.';

  @override
  String get settingsAbrpHelpTitle => 'Cómo conectar ABRP';

  @override
  String get settingsAbrpHelpClose => 'Cerrar la ayuda de ABRP';

  @override
  String get settingsAbrpHelpApiKeyTitle => 'API key';

  @override
  String get settingsAbrpHelpApiKeySteps =>
      'Abre la página de API keys de ABRP abajo. Ve a API Keys y luego Create Key. Pon App Name = Eaglemetry y pulsa Create Key. Copia la clave generada en el campo API KEY.';

  @override
  String get settingsAbrpHelpApiKeyLink =>
      'https://abetterrouteplanner.com/home/app/api-keys/telemetry';

  @override
  String settingsAbrpHelpLinkFailed(Object url) {
    return 'No se pudo abrir el navegador. La dirección es $url';
  }

  @override
  String get settingsAbrpHelpTokenTitle => 'Token del usuario';

  @override
  String get settingsAbrpHelpTokenSteps =>
      'Abre la app de ABRP. Ve a Vehículo, luego Datos en tiempo real, luego Generic. Pulsa Copy Token y pega el token en el campo del token.';

  @override
  String get settingsAbrpStateStreaming => 'Enviando datos en vivo a ABRP';

  @override
  String get settingsAbrpStateIdle => 'Esperando el flujo del vehículo';

  @override
  String settingsAbrpStateError(String message) {
    return 'Error: $message';
  }

  @override
  String get settingsAbrpStateDisabled => 'Envío desactivado';

  @override
  String get settingsThemeDesc =>
      'El tema se comparte con el vehículo cuando los dos sincronizan.';

  @override
  String get settingsAccount => 'Cuenta';

  @override
  String settingsSignedInAs(String email) {
    return 'Sesión iniciada como $email';
  }

  @override
  String get settingsSignOut => 'Cerrar sesión';

  @override
  String get settingsSignedOut =>
      'Ninguna cuenta tiene sesión iniciada en este teléfono.';

  @override
  String get settingsNoAccountServer =>
      'Esta build no lleva servidor de cuentas.';

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
  String get insightNameStart => 'Nombrar inicio';

  @override
  String get insightNameEnd => 'Nombrar fin';

  @override
  String get insightNameLocation => 'Nombrar lugar';

  @override
  String get insightPlaceTitle => 'Nombrar este lugar';

  @override
  String get insightPlaceHint => 'Nombre';

  @override
  String get insightPlaceSave => 'Guardar';

  @override
  String get insightPlaceCancel => 'Cancelar';

  @override
  String get navInsights => 'Insights';

  @override
  String get insightsTitle => 'Insights';

  @override
  String get insightsSubtitle => 'Rutas entre sus lugares nombrados';

  @override
  String get insightsInfoTitle => 'Cómo funcionan los insights';

  @override
  String get insightsInfoBody =>
      'Los insights comparan tus viajes medidos entre lugares nombrados.\n\nUn viaje es medido cuando el carro registró energía de la batería, minutos integrados y la lectura coincide con la batería.\n\nCada dirección es separada: ir a un lugar y volver son dos rutas diferentes.\n\nLas comparaciones necesitan al menos 4 viajes medidos en la misma dirección. Hasta entonces la ruta queda bloqueada y muestra cuántos faltan.\n\nAbre una ruta para ver todos los viajes medidos, del más al menos eficiente.';

  @override
  String get insightsInfoClose => 'Entendido';

  @override
  String insightRouteTrips(int count) {
    return '$count viajes';
  }

  @override
  String insightMeasuredOf(int measured, int total) {
    return '$measured de $total viajes medidos';
  }

  @override
  String get insightRankingTitle => 'Clasificación de la ruta';

  @override
  String get insightRankingBest => 'Mejor viaje';

  @override
  String insightRouteMissingTrips(int count) {
    return 'Faltan $count viajes medidos para que comiencen las comparaciones';
  }

  @override
  String get insightsNoRoutesTitle => 'Aún no hay rutas';

  @override
  String get insightsNoRoutesBody =>
      'Nombre los lugares de inicio y fin de sus viajes para agrupar rutas y ver aquí estadísticas de consumo.';

  @override
  String get navJourneys => 'Jornadas';

  @override
  String get journeysTitle => 'Jornadas';

  @override
  String get journeysNew => 'Nueva jornada';

  @override
  String get journeysEmptyTitle => 'Aún no hay jornadas';

  @override
  String get journeysEmptyDesc =>
      'Agrupe viajes y cargas en un evento con nombre, como unas vacaciones o un paseo de fin de semana.';

  @override
  String get journeyName => 'Nombre';

  @override
  String get journeyNameHint => 'p. ej., Vacaciones en Río';

  @override
  String get journeyNote => 'Nota';

  @override
  String get journeyNoteHint => 'Detalles o recuerdos opcionales';

  @override
  String get journeyStartDate => 'Fecha de inicio';

  @override
  String get journeyEndDate => 'Fecha de fin';

  @override
  String get journeySave => 'Guardar';

  @override
  String get journeyEdit => 'Editar jornada';

  @override
  String get journeyDelete => 'Eliminar jornada';

  @override
  String get journeyDeleteConfirm =>
      '¿Seguro que quiere eliminar esta jornada? Los viajes y las cargas permanecerán en su historial.';

  @override
  String journeySessionsCount(int trips, int charges) {
    return '$trips viajes · $charges cargas';
  }

  @override
  String get journeySessionsInWindow => 'Viajes y cargas en esta jornada';

  @override
  String get journeyNoSessionsInWindow =>
      'No hay viajes ni cargas en esta ventana de tiempo.';

  @override
  String get journeyCost => 'Costo de las cargas';

  @override
  String journeyParkedDuration(String duration) {
    return 'Estacionado durante $duration';
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
  String insightNotEnoughData(int count) {
    return 'Aún no hay viajes medidos suficientes en los últimos 30 días ($count utilizables).';
  }

  @override
  String get insightSubjectUnusable =>
      'Esta ruta no tiene energía medida del pack para comparar.';

  @override
  String insightNotDistinguishable(int count) {
    return 'Esta ruta aún no se puede distinguir de sus últimos 30 días ($count viajes).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'Esta ruta usó $difference Wh/km menos que sus últimos 30 días ($count viajes).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'Esta ruta usó $difference Wh/km más que sus últimos 30 días ($count viajes).';
  }

  @override
  String get insightClaimTitle => 'Afirmación Principal';

  @override
  String get insightBaselineTitle => 'Línea de Base';

  @override
  String get insightBaseline30d => 'Promedio de 30 días';

  @override
  String get insightBaselineVariant => 'Otro camino de la ruta';

  @override
  String get insightConfidenceSupported => 'Confirmado';

  @override
  String get insightConfidenceDistinguishable => 'Dentro del ruido';

  @override
  String get insightConfidenceInsufficient => 'Datos insuficientes';

  @override
  String insightSupportSample(int count) {
    return '$count viajes considerados';
  }

  @override
  String get insightMeasured => 'Medido';

  @override
  String get insightReference => 'Referencia';

  @override
  String insightExclusionNeverRecorded(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes sin datos de energía',
      one: '1 viaje sin datos de energía',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNoMinuteBuckets(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes sin intervalos por minuto',
      one: '1 viaje sin intervalos por minuto',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionSignContradiction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes con flujo de energía inconsistente',
      one: '1 viaje con flujo de energía inconsistente',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionUnconfirmedSign(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes con flujo de energía no confirmado',
      one: '1 viaje con flujo de energía no confirmado',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionTooShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes menores a 0,5 km',
      one: '1 viaje menor a 0,5 km',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotClosed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes no finalizados',
      one: '1 viaje no finalizado',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionVersionMismatch(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes en formato anterior',
      one: '1 viaje en formato anterior',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOutsideWindow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes fuera de la ventana de 30 días',
      one: '1 viaje fuera de la ventana de 30 días',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotOnRoute(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes en otra ruta',
      one: '1 viaje en otra ruta',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOtherVariant(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viajes en otro camino',
      one: '1 viaje en otro camino',
    );
    return '$_temp0';
  }

  @override
  String get insightConsideredTripsTitle => 'Viajes Considerados';

  @override
  String get insightNoConsideredTrips => 'No hay viajes considerados aún';

  @override
  String get insightRouteTrendTitle => 'Tendencia de la Ruta';

  @override
  String get insightNoRouteTrips => 'No hay viajes en esta ruta aún';

  @override
  String get settingsNominatimTitle => 'Sugerencia de nombre';

  @override
  String get settingsNominatimOptIn => 'Sugerir nombre con Nominatim';

  @override
  String get settingsNominatimOptInDesc =>
      'Usa Nominatim (OpenStreetMap) para sugerir una dirección cuando nombras un lugar. Caché por celda de 100 m durante 30 días, 1 petición por segundo. Desactivado por defecto.';

  @override
  String get settingsNominatimAttribution => '© OpenStreetMap contributors';

  @override
  String get settingsStorageTitle => 'Almacenamiento usado';

  @override
  String get settingsStorageDesc =>
      'Cuánto espacio ocupa el archivo en este teléfono.';

  @override
  String get settingsStorageLoading => 'Comprobando…';

  @override
  String settingsStorageFailed(String error) {
    return 'Error al comprobar almacenamiento: $error';
  }

  @override
  String settingsStorageValue(String size) {
    return '$size usados';
  }

  @override
  String get controlCardTitle => 'Controles del auto';

  @override
  String get controlCardDesc =>
      'Cambian lo que el auto hace o registra. Solo tienen efecto cuando el auto los confirma.';

  @override
  String get controlStatusPending => 'Esperando al auto';

  @override
  String get controlStatusConfirmed => 'Confirmado por el auto';

  @override
  String get controlStatusStale => 'Esperando — nuevo valor propuesto';

  @override
  String get controlStatusRefused => 'Rechazado por el auto';

  @override
  String get controlStatusReportedOnly => 'El auto usa esto sin propuesta';

  @override
  String get controlKeyPackCapacity => 'Capacidad de la batería';

  @override
  String get controlKeyChargeCost => 'Precio de carga por defecto';

  @override
  String get controlDesiredLabel => 'Propuesto:';

  @override
  String get controlReportedLabel => 'El auto muestra:';

  @override
  String get controlValueMissing => 'no definido';

  @override
  String get controlProposeAction => 'Proponer un nuevo valor';

  @override
  String get controlProposing => 'Proponiendo…';

  @override
  String get controlProposeFieldHint => 'Nuevo valor';

  @override
  String get controlProposeCancel => 'Cancelar';

  @override
  String get controlProposeSend => 'Proponer';

  @override
  String controlProposedStatus(String status) {
    return 'Propuesto. Estado: $status.';
  }

  @override
  String get controlProposedStatusUnknown => 'Propuesto. Esperando al auto.';

  @override
  String get controlNoRowsForKey => 'Sin propuesta ni confirmación aún.';

  @override
  String get controlNoRows => 'Sin controles propuestos aún.';

  @override
  String get controlNoVehicle =>
      'Este teléfono no puede nombrar un auto que le pertenezca, así que se niega a proponer.';

  @override
  String get controlUnconfigured =>
      'Inicia sesión y conecta este teléfono a la nube para cambiar los controles del auto.';

  @override
  String controlLastError(String error) {
    return 'No se pudieron leer los controles del auto: $error';
  }

  @override
  String get controlRefresh => 'Actualizar estado';

  @override
  String get controlRefreshing => 'Actualizando…';

  @override
  String syncPending(int count) {
    return 'Faltan enviar $count ediciones de este teléfono.';
  }

  @override
  String get syncNothingPending => 'Nada espera para enviarse.';

  @override
  String get syncAutoNote =>
      'La sincronización corre sola cada 10 minutos con la app abierta. Este botón es temporal: fuerza la sincronización ahora.';

  @override
  String get syncLastRunTitle => 'Última sincronización';
}
