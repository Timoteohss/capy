// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry Companion';

  @override
  String get pairingTitle => 'Сопряжение с автомобилем';

  @override
  String get pairingBody => 'Введите 6-значный код с экрана автомобиля.';

  @override
  String get pairingCodeHint => '000000';

  @override
  String get pairingAction => 'Сопрячь';

  @override
  String get pairingForget => 'Забыть этот автомобиль';

  @override
  String get pairingInvalidCode => 'Введите 6 цифр с автомобиля.';

  @override
  String get pairingRejected => 'Автомобиль отклонил этот код.';

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
  String get homePairedTitle => 'Сопряжено';

  @override
  String get homePairedBody =>
      'Телефон читает историю автомобиля через вашу учётную запись в облаке.';

  @override
  String get homeNoteLabel => 'Примечание';

  @override
  String get homeNoteBody =>
      'Автомобиль — источник данных. Телефон хранит длинную историю после синхронизации.';

  @override
  String get syncTitle => 'Синхронизация';

  @override
  String get syncAction => 'СИНХРОНИЗИРОВАТЬ';

  @override
  String get syncRunning => 'СИНХРОНИЗАЦИЯ';

  @override
  String get syncProgressLabel => 'Прогресс в облаке';

  @override
  String get syncProgressUpToDate => '100% синхронизировано';

  @override
  String syncProgressPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count в очереди',
      many: '$count в очереди',
      few: '$count в очереди',
      one: '1 в очереди',
    );
    return '$_temp0';
  }

  @override
  String syncProgressDetail(int clean, int total) {
    return '$clean из $total записей в облаке';
  }

  @override
  String get syncNeverRun => 'Синхронизации ещё не было';

  @override
  String syncHolding(int trips, int charges) {
    return 'Поездок: $trips, зарядок: $charges на этом телефоне';
  }

  @override
  String syncLastRun(Object time) {
    return 'Последняя синхронизация: $time';
  }

  @override
  String syncResultCompleted(Object records) {
    return 'Из облака получено записей: $records.';
  }

  @override
  String get syncResultNothing => 'У машины не было ничего нового.';

  @override
  String get syncResultFailed =>
      'Синхронизация не достигла облака. Проверьте связь и попробуйте снова.';

  @override
  String get syncResultCloudDisabled =>
      'Облачная синхронизация отключена в этой сборке.';

  @override
  String get syncResultPhoneOffline =>
      'Этот телефон не смог связаться с облаком. Проверьте связь и попробуйте снова.';

  @override
  String get syncResultCarSilent =>
      'Автомобиль ничего не отправил в облако. Если в нём есть новые поездки, проверьте его связь.';

  @override
  String get syncStreamTrips => 'Поездки';

  @override
  String get syncStreamCharges => 'Зарядки';

  @override
  String get syncStreamCycles => 'Циклы';

  @override
  String get syncStreamIntervals => 'Интервалы';

  @override
  String get syncStreamEvents => 'События';

  @override
  String get syncStreamFrames => 'Записи';

  @override
  String get syncStreamTracks => 'Маршруты';

  @override
  String syncProgressCounted(Object stream, int done, int total) {
    return '$stream: $done из $total';
  }

  @override
  String syncProgressUnknown(Object stream, int done) {
    return '$stream: $done';
  }

  @override
  String syncProgressSession(int index, int count) {
    return 'Сессия $index из $count';
  }

  @override
  String get syncWipeAction => 'ОЧИСТИТЬ ДАННЫЕ';

  @override
  String get syncWipeTitle => 'Очистить локальные данные?';

  @override
  String get syncWipeBody =>
      'Телефон удалит все поездки, зарядки и записи, которые он получил. В машине они останутся. Следующая синхронизация скопирует историю заново.';

  @override
  String get syncWipeCancel => 'ОТМЕНА';

  @override
  String get syncWipeConfirm => 'ОЧИСТИТЬ';

  @override
  String get syncStreamWaiting => 'Ожидание';

  @override
  String get navSync => 'Синхронизация';

  @override
  String get navHistory => 'История';

  @override
  String get navTrips => 'Поездки';

  @override
  String get navCharges => 'Зарядки';

  @override
  String get navBattery => 'Батарея';

  @override
  String get navSettings => 'Настройки';

  @override
  String get navComingSoon => 'Скоро.';

  @override
  String get historyTrips => 'Поездки';

  @override
  String get historyCharges => 'Зарядки';

  @override
  String get historyEmpty => 'Пока ничего нет. Синхронизируйте с машиной.';

  @override
  String historyTripMeta(Object duration, Object distance) {
    return '$duration · $distance км';
  }

  @override
  String historyRowEnergy(Object energy) {
    return '$energy кВт·ч';
  }

  @override
  String historyFailed(Object reason) {
    return 'Архив не удалось прочитать: $reason';
  }

  @override
  String get historyRoute => 'Маршрут';

  @override
  String get historyNoRoute => 'У этой поездки нет координат.';

  @override
  String get historyMapExpand => 'Увеличить карту';

  @override
  String get historyMapCollapse => 'Уменьшить карту';

  @override
  String get historyDuration => 'Длительность';

  @override
  String get historyDistance => 'Расстояние';

  @override
  String get historySoc => 'Заряд';

  @override
  String get historyConsumed => 'Потрачено';

  @override
  String get historyRegenerated => 'Возвращено';

  @override
  String get historyEfficiency => 'Эффективность';

  @override
  String get historyClimb => 'Подъём';

  @override
  String get historyTemperature => 'Снаружи';

  @override
  String get historyStart => 'Подключено';

  @override
  String get historyEnd => 'Отключено';

  @override
  String get historyEnergy => 'Энергия';

  @override
  String get historyPeakPower => 'Пик';

  @override
  String get historyAveragePower => 'Средняя';

  @override
  String get historyPeakAndAverage => 'Пик и средняя';

  @override
  String get historyChargingPower => 'Мощность зарядки';

  @override
  String get historyChargeLocation => 'Место';

  @override
  String get historyChargeCost => 'Стоимость';

  @override
  String get historyEditCost => 'Изменить цену этой зарядки';

  @override
  String get chargeCostTitle => 'Цена зарядки';

  @override
  String get chargeCostDescription =>
      'Применяется только к этой зарядке. Введите цену за кВт·ч или всю оплаченную сумму.';

  @override
  String get chargeCostFieldRate => 'Цена/кВт·ч';

  @override
  String get chargeCostFieldTotal => 'Всего оплачено';

  @override
  String get chargeCostUnitRate => '/кВт·ч';

  @override
  String get moneyKeypadSave => 'Сохранить';

  @override
  String get moneyKeypadClear => 'Очистить сумму';

  @override
  String get moneyKeypadDelete => 'Удалить последнюю цифру';

  @override
  String get moneyKeypadClose => 'Закрыть клавиатуру цены';

  @override
  String get historyVoltage => 'Напряжение батареи';

  @override
  String historyFrameCount(Object count) {
    return 'Записано выборок: $count';
  }

  @override
  String get historyBattery => 'Батарея';

  @override
  String get historyEnergyBalance => 'Баланс энергии';

  @override
  String get historyEvents => 'События';

  @override
  String get eventTripArmed => 'Поездка взведена';

  @override
  String get eventTripStarted => 'Поездка началась';

  @override
  String get eventTripPendingEnd => 'Поездка завершается';

  @override
  String get eventTripCancelled => 'Поездка отменена';

  @override
  String get eventTripEnded => 'Поездка завершена';

  @override
  String get eventTripRecovered => 'Поездка восстановлена';

  @override
  String get eventChargePlugConnected => 'Разъем подключен';

  @override
  String get eventChargeStarted => 'Зарядка началась';

  @override
  String get eventChargeEnded => 'Зарядка завершена';

  @override
  String get eventChargePlugDisconnected => 'Разъем отключен';

  @override
  String get eventChargeRecovered => 'Зарядка восстановлена';

  @override
  String get eventChargeLimitReached => 'Целевой заряд достигнут';

  @override
  String get historyTraction => 'Тяга';

  @override
  String get historyAuxiliary => 'Другие системы';

  @override
  String get historyRecovered => 'Возвращено';

  @override
  String historyTotalDelivered(Object energy) {
    return 'Всего передано $energy кВт·ч';
  }

  @override
  String historyNetConsumed(Object energy) {
    return '$energy кВт·ч израсходовано всего';
  }

  @override
  String historyWh(Object energy) {
    return '$energy Вт·ч';
  }

  @override
  String get historyPerMinute => 'Расход и возврат';

  @override
  String historyPerColumn(int minutes) {
    return '$minutes мин на столбец';
  }

  @override
  String get historyTerrain => 'Рельеф и погода';

  @override
  String get historyAltitude => 'Высота';

  @override
  String get historyOutsideTemp => 'Наружная температура';

  @override
  String get historyDriveMode => 'Режим движения';

  @override
  String get historyDriveModeNormal => 'Обычный';

  @override
  String get historyDriveModeEco => 'Эко';

  @override
  String get historyDriveModeSport => 'Спорт';

  @override
  String get historyDriveModeOther => 'Другой';

  @override
  String get historyClimate => 'Климат';

  @override
  String historyClimateShare(int percent) {
    return 'Работал $percent% поездки';
  }

  @override
  String get historyClimateCooling => 'Охлаждение';

  @override
  String get historyClimateHeating => 'Обогрев';

  @override
  String get historyClimateBoth => 'Охлаждение и обогрев';

  @override
  String historyClimateBlower(Object level) {
    return 'Вентилятор $level';
  }

  @override
  String historyClimateSetpoint(Object degrees) {
    return 'Салон на $degrees °C';
  }

  @override
  String get historyClimateOff => 'Климат-система была выключена.';

  @override
  String get historyClimateInAux =>
      'Её энергия учтена в «Другие системы». Машина не сообщает величину.';

  @override
  String historyDriveModeShare(Object mode, int percent) {
    return '$mode $percent%';
  }

  @override
  String get onboardingSkip => 'Пропустить';

  @override
  String get onboardingNext => 'Далее';

  @override
  String get onboardingStart => 'Начать';

  @override
  String get onboardingBack => 'Назад';

  @override
  String get onboardingSlide1Title => 'Знакомьтесь: Eaglemetry';

  @override
  String get onboardingSlide1Body =>
      'Энергия вашего автомобиля, записанная поездка за поездкой.';

  @override
  String get onboardingSlide2Title => 'Смотрите каждую поездку и зарядку';

  @override
  String get onboardingSlide2Body =>
      'Eaglemetry читает поездки и заряды автомобиля через вашу учётную запись в облаке.';

  @override
  String get onboardingSlide3Title => 'Сопряжение за секунды';

  @override
  String get onboardingSlide3Body =>
      'Введите 6-значный код с экрана автомобиля. История остаётся на телефоне.';

  @override
  String get onboardingPairTitle => 'Сопряжение с автомобилем';

  @override
  String get onboardingPairBody =>
      'Введите 6-значный код с экрана автомобиля, в разделе Sync.';

  @override
  String get onboardingCodeLabel => '6-значный код';

  @override
  String get onboardingPairing => 'Сопряжение';

  @override
  String get onboardingSyncingTitle => 'Синхронизация';

  @override
  String get onboardingSyncingBody =>
      'Телефон забирает записи в таком порядке: поездки, зарядки, циклы, затем кадры.';

  @override
  String get onboardingStreamWaiting => 'Ожидание';

  @override
  String onboardingWritten(int done) {
    return '$done записано';
  }

  @override
  String onboardingCounted(int done, int total) {
    return '$done из $total';
  }

  @override
  String get onboardingPairedTitle => 'Автомобиль сопряжён.';

  @override
  String onboardingPairedBody(int records) {
    return '$records записей на этом телефоне.';
  }

  @override
  String get onboardingPairedNothing => 'У автомобиля пока нечего отправить.';

  @override
  String get onboardingSyncFailed =>
      'Автомобиль не отвечает. Синхронизируйте позже на вкладке Sync.';

  @override
  String get onboardingSyncCloudDisabled =>
      'Облачная синхронизация отключена в этой сборке. Данные остаются на телефоне.';

  @override
  String get onboardingSyncPhoneOffline =>
      'Этот телефон не смог связаться с облаком. Проверьте связь и синхронизируйте позже на вкладке Sync.';

  @override
  String get onboardingSyncCarSilent =>
      'Автомобиль пока ничего не отправил. Если в нём есть поездки, проверьте его связь и попробуйте снова.';

  @override
  String get onboardingContinue => 'Продолжить';

  @override
  String get onboardingLoginTitle => 'С возвращением';

  @override
  String get onboardingLoginBody => 'Войдите в свою учётную запись Eaglemetry.';

  @override
  String get onboardingCreateTitle => 'Создайте учётную запись';

  @override
  String get onboardingCreateBody =>
      'Одна учётная запись для этого приложения. Поездки остаются на телефоне.';

  @override
  String get onboardingEmailLabel => 'Эл. почта';

  @override
  String get onboardingEmailHint => 'vy@example.com';

  @override
  String get onboardingPasswordLabel => 'Пароль';

  @override
  String get onboardingShowPassword => 'Показать пароль';

  @override
  String get onboardingHidePassword => 'Скрыть пароль';

  @override
  String get onboardingLogIn => 'Войти';

  @override
  String get onboardingLoggingIn => 'Вход';

  @override
  String get onboardingCreating => 'Создание учётной записи';

  @override
  String get onboardingForgotPassword => 'Забыли пароль?';

  @override
  String get onboardingCreateAccount => 'Создать учётную запись';

  @override
  String get onboardingHaveAccount => 'У меня уже есть запись';

  @override
  String get onboardingWelcomeTitle => 'Вы вошли.';

  @override
  String onboardingWelcomeBody(Object email) {
    return 'Вход выполнен как $email. Теперь выполните сопряжение с автомобилем.';
  }

  @override
  String get onboardingContinueToPairing => 'Перейти к сопряжению';

  @override
  String get accountInvalidEmail => 'Введите правильный адрес эл. почты.';

  @override
  String accountWeakPassword(int count) {
    return 'Пароль должен содержать не менее $count символов, включая заглавные, строчные буквы и цифры.';
  }

  @override
  String get accountWrongCredentials => 'Адрес или пароль неверный.';

  @override
  String get accountEmailNotConfirmed => 'Сначала подтвердите адрес по письму.';

  @override
  String get accountAlreadyRegistered =>
      'У этого адреса уже есть запись. Войдите.';

  @override
  String get accountRateLimited =>
      'Слишком много попыток. Подождите и повторите.';

  @override
  String get accountNetwork => 'Сервер учётных записей недоступен.';

  @override
  String get accountUnconfigured =>
      'В этой сборке нет сервера учётных записей.';

  @override
  String get accountUnknown => 'Сервер учётных записей отклонил действие.';

  @override
  String get accountConfirmEmail => 'Откройте почту и подтвердите адрес.';

  @override
  String get accountResetSent =>
      'Если у адреса есть запись, письмо для смены пароля отправлено.';

  @override
  String get syncStreamAnnotations => 'Аннотации';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsAppearance => 'Оформление';

  @override
  String get settingsBeta => 'Бета';

  @override
  String get settingsBetaDesc =>
      'Функции ещё в тестировании. Они могут измениться или перестать работать.';

  @override
  String get settingsBetaAbrpSync => 'Синхронизировать данные с ABRP';

  @override
  String get settingsBetaAbrpSyncDesc =>
      'Читает живые данные автомобиля по Bluetooth и отправляет их в A Better Routeplanner. Телефон запрашивает разрешение Bluetooth при включении.';

  @override
  String get settingsAbrpTokenLabel => 'Ваш токен ABRP';

  @override
  String get settingsAbrpTokenHint => 'напр. 12345678-abcd-...';

  @override
  String get settingsAbrpTokenHelp =>
      'Возьмите токен в приложении ABRP: Настройки, Модель автомобиля, Live Data, Generic (Iternio).';

  @override
  String get settingsAbrpApiKeyLabel => 'Ваш API-ключ ABRP';

  @override
  String get settingsAbrpApiKeyHint => 'напр. 12345678-abcd-...';

  @override
  String get settingsAbrpApiKeyHelp =>
      'Обязательно. У Eaglemetry нет своего ключа, потому что Iternio ограничивает каждый ключ несколькими запросами в секунду. Создайте свой кнопкой (i) выше.';

  @override
  String get settingsAbrpHelpTitle => 'Как подключить ABRP';

  @override
  String get settingsAbrpHelpClose => 'Закрыть справку ABRP';

  @override
  String get settingsAbrpHelpApiKeyTitle => 'API-ключ';

  @override
  String get settingsAbrpHelpApiKeySteps =>
      'Откройте страницу ключей API ABRP ниже. Перейдите в API Keys, затем Create Key. Укажите App Name = Eaglemetry и нажмите Create Key. Скопируйте новый ключ в поле API KEY.';

  @override
  String get settingsAbrpHelpApiKeyLink =>
      'https://abetterrouteplanner.com/home/app/api-keys/telemetry';

  @override
  String settingsAbrpHelpLinkFailed(Object url) {
    return 'Не удалось открыть браузер. Адрес: $url';
  }

  @override
  String get settingsAbrpHelpTokenTitle => 'Токен пользователя';

  @override
  String get settingsAbrpHelpTokenSteps =>
      'Откройте приложение ABRP. Перейдите в Автомобиль, затем Данные в реальном времени, затем Generic. Нажмите Copy Token и вставьте токен в поле токена.';

  @override
  String get settingsAbrpStateStreaming => 'Живые данные отправляются в ABRP';

  @override
  String get settingsAbrpStateIdle => 'Ожидание потока от автомобиля';

  @override
  String settingsAbrpStateError(String message) {
    return 'Ошибка: $message';
  }

  @override
  String get settingsAbrpStateDisabled => 'Отправка выключена';

  @override
  String get settingsThemeDesc =>
      'Тема передаётся автомобилю при синхронизации.';

  @override
  String get settingsAccount => 'Аккаунт';

  @override
  String settingsSignedInAs(String email) {
    return 'Вход выполнен: $email';
  }

  @override
  String get settingsSignOut => 'Выйти из аккаунта';

  @override
  String get settingsSignedOut => 'На этом телефоне нет активного аккаунта.';

  @override
  String get settingsNoAccountServer => 'В этой сборке нет сервера аккаунтов.';

  @override
  String get settingsThemeNameLight => 'Светлая';

  @override
  String get settingsThemeNameDark => 'Петроль';

  @override
  String get settingsThemeNameMidnight => 'Полночь';

  @override
  String get settingsThemeNameSepia => 'Сепия';

  @override
  String get settingsThemeNameNordic => 'Нордик';

  @override
  String get settingsThemeNameDaylight => 'Дневной свет';

  @override
  String get settingsThemeNameTokyoNeon => 'Токийский неон';

  @override
  String get settingsThemeNameSunsetDrive => 'Закат';

  @override
  String get settingsThemeNameBubblegum => 'Жвачка';

  @override
  String get insightNameStart => 'Назвать начало';

  @override
  String get insightNameEnd => 'Назвать конец';

  @override
  String get insightNameLocation => 'Назвать место';

  @override
  String get insightPlaceTitle => 'Назовите это место';

  @override
  String get insightPlaceHint => 'Название';

  @override
  String get insightPlaceSave => 'Сохранить';

  @override
  String get insightPlaceCancel => 'Отмена';

  @override
  String get navInsights => 'Инсайты';

  @override
  String get insightsTitle => 'Инсайты';

  @override
  String get insightsSubtitle => 'Маршруты между вашими местами';

  @override
  String get insightsInfoTitle => 'Как работают инсайты';

  @override
  String get insightsInfoBody =>
      'Инсайты сравнивают ваши измеренные поездки между названными местами.\n\nПоездка считается измеренной, когда автомобиль записал энергию батареи, минутные интервалы и показание совпало с батареей.\n\nКаждое направление отдельно: поездка туда и обратно — это два разных маршрута.\n\nДля сравнений нужно минимум 4 измеренные поездки в одном направлении. До этого маршрут заблокирован и показывает, сколько не хватает.\n\nОткройте маршрут, чтобы увидеть все измеренные поездки от самой эффективной к худшей.';

  @override
  String get insightsInfoClose => 'Понятно';

  @override
  String insightRouteTrips(int count) {
    return 'Поездок: $count';
  }

  @override
  String insightMeasuredOf(int measured, int total) {
    return 'Измерено $measured из $total поездок';
  }

  @override
  String get insightRankingTitle => 'Рейтинг маршрута';

  @override
  String get insightRankingBest => 'Лучшая поездка';

  @override
  String insightRouteMissingTrips(int count) {
    return 'Ещё $count измеренных поездок до начала сравнений';
  }

  @override
  String get insightsNoRoutesTitle => 'Пока нет маршрутов';

  @override
  String get insightsNoRoutesBody =>
      'Назовите места начала и конца поездок, чтобы группировать маршруты и видеть статистику.';

  @override
  String get navJourneys => 'Маршруты';

  @override
  String get journeysTitle => 'Маршруты';

  @override
  String get journeysNew => 'Новый маршрут';

  @override
  String get journeysEmptyTitle => 'Пока нет маршрутов';

  @override
  String get journeysEmptyDesc =>
      'Объединяйте поездки и зарядки в именованные события, например, отпуск или поездку на выходные.';

  @override
  String get journeyName => 'Название';

  @override
  String get journeyNameHint => 'например, Поездка за город';

  @override
  String get journeyNote => 'Примечание';

  @override
  String get journeyNoteHint => 'Дополнительные детали';

  @override
  String get journeyStartDate => 'Дата начала';

  @override
  String get journeyEndDate => 'Дата окончания';

  @override
  String get journeySave => 'Сохранить';

  @override
  String get journeyEdit => 'Редактировать маршрут';

  @override
  String get journeyDelete => 'Удалить маршрут';

  @override
  String get journeyDeleteConfirm =>
      'Удалить этот маршрут? Поездки и зарядки останутся в истории.';

  @override
  String journeySessionsCount(int trips, int charges) {
    return 'Поездок: $trips · Зарядок: $charges';
  }

  @override
  String get journeySessionsInWindow => 'Поездки и зарядки маршрута';

  @override
  String get journeyNoSessionsInWindow =>
      'Нет поездок или зарядок в этом интервале.';

  @override
  String get journeyCost => 'Стоимость зарядок';

  @override
  String journeyParkedDuration(String duration) {
    return 'Стоянка: $duration';
  }

  @override
  String insightRouteVariants(int count) {
    return 'Вариантов пути: $count';
  }

  @override
  String insightVariantNotEnough(int count) {
    return 'Пока недостаточно поездок по этому маршруту для сравнения ($count).';
  }

  @override
  String insightVariantNotDistinguishable(String place, int count) {
    return 'Эти два пути в $place пока не отличаются ($count сравнений).';
  }

  @override
  String insightVariantUsedLess(String difference, String place, int count) {
    return 'Этот путь использовал на $difference Вт·ч/км меньше, чем другой в $place ($count сравнений).';
  }

  @override
  String insightVariantUsedMore(String difference, String place, int count) {
    return 'Этот путь использовал на $difference Вт·ч/км больше, чем другой в $place ($count сравнений).';
  }

  @override
  String insightNotEnoughData(int count) {
    return 'Пока недостаточно поездок за последние 30 дней ($count доступно).';
  }

  @override
  String get insightSubjectUnusable =>
      'У этого маршрута нет измеренной энергии батареи для сравнения.';

  @override
  String insightNotDistinguishable(int count) {
    return 'Этот маршрут пока не отличается от среднего за 30 дней ($count поездок).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'Этот маршрут потратил на $difference Вт·ч/км меньше, чем в среднем за 30 дней ($count поездок).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'Этот маршрут потратил на $difference Вт·ч/км больше, чем в среднем за 30 дней ($count поездок).';
  }

  @override
  String get insightClaimTitle => 'Основной вывод';

  @override
  String get insightBaselineTitle => 'Базовая линия';

  @override
  String get insightBaseline30d => 'Среднее за 30 дней';

  @override
  String get insightBaselineVariant => 'Другой вариант маршрута';

  @override
  String get insightConfidenceSupported => 'Подтверждено';

  @override
  String get insightConfidenceDistinguishable => 'В пределах шума';

  @override
  String get insightConfidenceInsufficient => 'Недостаточно данных';

  @override
  String insightSupportSample(int count) {
    return 'Учтено поездок: $count';
  }

  @override
  String get insightMeasured => 'Измерено';

  @override
  String get insightReference => 'База';

  @override
  String insightExclusionNeverRecorded(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок без данных энергии',
      few: '$count поездки без данных энергии',
      one: '1 поездка без данных энергии',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNoMinuteBuckets(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок без поминутных интервалов',
      few: '$count поездки без поминутных интервалов',
      one: '1 поездка без поминутных интервалов',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionSignContradiction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок с противоречивым потоком энергии',
      few: '$count поездки с противоречивым потоком энергии',
      one: '1 поездка с противоречивым потоком энергии',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionUnconfirmedSign(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок с неподтвержденным потоком энергии',
      few: '$count поездки с неподтвержденным потоком энергии',
      one: '1 поездка с неподтвержденным потоком энергии',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionTooShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок короче 0,5 км',
      few: '$count поездки короче 0,5 км',
      one: '1 поездка короче 0,5 км',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotClosed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count незавершенных поездок',
      few: '$count незавершенные поездки',
      one: '1 незавершенная поездка',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionVersionMismatch(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок в старом формате',
      few: '$count поездки в старом формате',
      one: '1 поездка в старом формате',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOutsideWindow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок вне 30-дневного окна',
      few: '$count поездки вне 30-дневного окна',
      one: '1 поездка вне 30-дневного окна',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotOnRoute(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок по другому маршруту',
      few: '$count поездки по другому маршруту',
      one: '1 поездка по другому маршруту',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOtherVariant(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count поездок по другому пути',
      few: '$count поездки по другому пути',
      one: '1 поездка по другому пути',
    );
    return '$_temp0';
  }

  @override
  String get insightConsideredTripsTitle => 'Учтенные поездки';

  @override
  String get insightNoConsideredTrips => 'Пока нет учтенных поездок';

  @override
  String get insightRouteTrendTitle => 'Динамика маршрута';

  @override
  String get insightNoRouteTrips => 'Пока нет поездок по этому маршруту';

  @override
  String get settingsNominatimTitle => 'Предложение имени';

  @override
  String get settingsNominatimOptIn => 'Предлагать имя через Nominatim';

  @override
  String get settingsNominatimOptInDesc =>
      'Использует Nominatim (OpenStreetMap) для предложения адреса при именовании места. Кэш по ячейке 100 м на 30 дней, 1 запрос в секунду. По умолчанию выключено.';

  @override
  String get settingsNominatimAttribution => '© OpenStreetMap contributors';

  @override
  String get settingsStorageTitle => 'Использовано памяти';

  @override
  String get settingsStorageDesc =>
      'Сколько места занимает архив на этом телефоне.';

  @override
  String get settingsStorageLoading => 'Проверка…';

  @override
  String settingsStorageFailed(String error) {
    return 'Ошибка проверки хранилища: $error';
  }

  @override
  String settingsStorageValue(String size) {
    return 'Использовано $size';
  }

  @override
  String get controlCardTitle => 'Управление автомобилем';

  @override
  String get controlCardDesc =>
      'Эти настройки меняют то, что автомобиль делает или записывает. Они вступают в силу только после подтверждения автомобилем.';

  @override
  String get controlStatusPending => 'Ожидание автомобиля';

  @override
  String get controlStatusConfirmed => 'Подтверждено автомобилем';

  @override
  String get controlStatusStale => 'Ожидание — предложено новое значение';

  @override
  String get controlStatusRefused => 'Отклонено автомобилем';

  @override
  String get controlStatusReportedOnly =>
      'Автомобиль использует это без предложения';

  @override
  String get controlKeyPackCapacity => 'Ёмкость батареи';

  @override
  String get controlKeyChargeCost => 'Цена зарядки по умолчанию';

  @override
  String get controlDesiredLabel => 'Предложено:';

  @override
  String get controlReportedLabel => 'Автомобиль показывает:';

  @override
  String get controlValueMissing => 'не задано';

  @override
  String get controlProposeAction => 'Предложить новое значение';

  @override
  String get controlProposing => 'Отправка…';

  @override
  String get controlProposeFieldHint => 'Новое значение';

  @override
  String get controlProposeCancel => 'Отмена';

  @override
  String get controlProposeSend => 'Предложить';

  @override
  String controlProposedStatus(String status) {
    return 'Предложено. Статус: $status.';
  }

  @override
  String get controlProposedStatusUnknown => 'Предложено. Ожидание автомобиля.';

  @override
  String get controlNoRowsForKey => 'Нет предложения или подтверждения.';

  @override
  String get controlNoRows => 'Нет предложений управления.';

  @override
  String get controlNoVehicle =>
      'Телефон не может назвать принадлежащий ему автомобиль, поэтому отказывается предлагать.';

  @override
  String get controlUnconfigured =>
      'Войдите и подключите телефон к облаку, чтобы менять управление автомобилем.';

  @override
  String controlLastError(String error) {
    return 'Не удалось прочитать управление автомобилем: $error';
  }

  @override
  String get controlRefresh => 'Обновить статус';

  @override
  String get controlRefreshing => 'Обновление…';

  @override
  String syncPending(int count) {
    return 'Ещё не отправлено ваших правок: $count.';
  }

  @override
  String get syncNothingPending => 'Отправлять нечего.';

  @override
  String get syncAutoNote =>
      'Синхронизация идёт сама каждые 10 минут, пока приложение открыто. Эта кнопка временная: она запускает синхронизацию сейчас.';

  @override
  String get syncLastRunTitle => 'Последняя синхронизация';
}
