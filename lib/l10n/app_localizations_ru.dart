// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry';

  @override
  String get navBrand => 'AUTO';

  @override
  String get navTrips => 'Поездки';

  @override
  String get navCharging => 'Зарядка';

  @override
  String get navHistory => 'История';

  @override
  String get navRoadcastTrace => 'Трейс';

  @override
  String get navHelpers => 'Помощники';

  @override
  String get navSettings => 'Настройки';

  @override
  String get navCarplay => 'CarPlay';

  @override
  String get navAndroidAuto => 'Android Auto';

  @override
  String get appBarTitle => 'GEELY ТЕЛЕМЕТРИЯ';

  @override
  String get gearD => 'D';

  @override
  String get gearP => 'P';

  @override
  String get gearR => 'R';

  @override
  String get gearN => 'N';

  @override
  String get plugNone => 'НЕТ';

  @override
  String get plugAc => 'AC';

  @override
  String get plugDc => 'DC';

  @override
  String get plugIntegration => 'ИНТЕГРАЦИЯ';

  @override
  String get unitKmh => 'км/ч';

  @override
  String get unitKm => 'км';

  @override
  String get unitKw => 'кВт';

  @override
  String get unitKwh => 'кВт·ч';

  @override
  String get unitWatt => 'Вт';

  @override
  String get unitPercent => '%';

  @override
  String get changeModeStatic => 'СТАТИЧНЫЙ';

  @override
  String get changeModeOnChange => 'ПРИ ИЗМЕНЕНИИ';

  @override
  String get changeModeContinuous => 'НЕПРЕРЫВНЫЙ';

  @override
  String changeModeUnknown(Object value) {
    return 'НЕИЗВЕСТНО($value)';
  }

  @override
  String get helpersTitle => 'ПОМОЩНИКИ';

  @override
  String get helpersSubtitle => 'Режим температуры';

  @override
  String get helpersTemperatureSection => 'Режим температуры';

  @override
  String get helpersTemperatureModeTitle => 'Режим температуры';

  @override
  String get helpersTemperatureModeDesc =>
      'Включает или отключает перехват медиа-кнопок для управления температурой и вентилятором AC.';

  @override
  String get helpersRetry => 'ПОВТОРИТЬ';

  @override
  String get helpersHvacControlTitle => 'Тест записи HVAC';

  @override
  String get helpersHvacControlDesc =>
      'Прямая запись климата через путь geelycontrol: HVAC_TEMPERATURE_SET для левого сиденья и HVAC_FAN_SPEED для зоны 5.';

  @override
  String get helpersHvacRefresh => 'ЧИТАТЬ HVAC';

  @override
  String get helpersHvacTempDown => 'ТЕМП -';

  @override
  String get helpersHvacTempUp => 'ТЕМП +';

  @override
  String get helpersHvacFanDown => 'ВЕНТ -';

  @override
  String get helpersHvacFanUp => 'ВЕНТ +';

  @override
  String get helpersHvacNotTested => 'НЕ ПРОВЕРЕНО';

  @override
  String get helpersHvacOk => 'OK';

  @override
  String get helpersHvacFailed => 'ОШИБКА';

  @override
  String get helpersHvacNoResult => 'Результатов команд HVAC пока нет';

  @override
  String get helpersHvacDetailsEmpty => 'Нет нативных деталей';

  @override
  String get helpersFeedbackTitle => 'Обратная связь детектора';

  @override
  String get helpersFeedbackDisabled => 'ОТКЛЮЧЕНО';

  @override
  String get helpersFeedbackStandby => 'НАБЛЮДЕНИЕ';

  @override
  String get helpersFeedbackActivated => 'АКТИВИРОВАНО';

  @override
  String get helpersFeedbackLastTrigger => 'Последний триггер';

  @override
  String get helpersFeedbackNever => 'Никогда';

  @override
  String get helpersKnobTrigger => 'Ручка света';

  @override
  String get helpersSimulateKnob => 'SIM РУЧКА';

  @override
  String get helpersKnobDetectorTitle => 'Триггер ручки света';

  @override
  String get helpersKnobSequence => 'Последовательность';

  @override
  String get helpersKnobTransitions => 'Переходы';

  @override
  String get helpersKnobWindow => 'Окно ручки';

  @override
  String get helpersSafetyTitle => 'Fail-safes';

  @override
  String get helpersIdleTimeout => 'Таймаут простоя';

  @override
  String get helpersHardCap => 'Жесткий лимит';

  @override
  String get helpersSafetyDesc =>
      'Эти лимиты задают, когда будущий активный режим должен восстановить media keyserver.';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsDescription =>
      'Обслуживание данных локального журнала телеметрии автомобиля.';

  @override
  String get settingsSectionSystem => 'КОНФИГУРАЦИЯ СИСТЕМЫ';

  @override
  String get settingsSectionGeneral => 'Общая эксплуатация';

  @override
  String get settingsSectionData => 'Данные и хранение';

  @override
  String get settingsAppTheme => 'Тема приложения';

  @override
  String get settingsThemeDesc =>
      'Выберите палитру приложения. Каждая плитка показывает страницу, карточку и её текст.';

  @override
  String get settingsDark => 'ТЁМНАЯ';

  @override
  String get settingsLight => 'СВЕТЛАЯ';

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
  String get settingsEfficiencyUnit => 'Единица эффективности';

  @override
  String get settingsEfficiencyUnitDesc =>
      'Выберите, как приложение показывает эффективность движения. Нажмите на показание в любом месте приложения, чтобы переключить тот же выбор.';

  @override
  String get settingsRetention => 'Хранение сырых данных';

  @override
  String get settingsRetentionDesc =>
      'Сохраняет историю поездок и зарядок, уплотняет завершённые сеансы и удаляет сырые кадры/события старше 30 дней.';

  @override
  String get settingsRetentionRunning => 'ВЫПОЛНЯЕТСЯ';

  @override
  String get settingsRetentionRun => 'ЗАПУСТИТЬ ХРАНЕНИЕ';

  @override
  String get settingsAutoStart => 'Автозапуск телеметрии при загрузке';

  @override
  String get settingsAutoStartDesc =>
      'Запускает нативный сборщик после загрузки автомобиля или замены пакета.';

  @override
  String get settingsGps => 'Сбор GPS во время поездок';

  @override
  String get settingsGpsDesc =>
      'Сохраняет широту, долготу, высоту и точность GPS в кадрах телеметрии при доступности нативного местоположения.';

  @override
  String get settingsKeepBluetoothOnTitle => 'Держать Bluetooth включённым';

  @override
  String get settingsKeepBluetoothOnDesc =>
      'Снова включает радио автомобиля, когда оно выключается, чтобы телефон продолжал получать данные в реальном времени. Автомобиль выключает радио сам.';

  @override
  String settingsKeepBluetoothOnFailed(Object error) {
    return 'НЕ УДАЛОСЬ ДЕРЖАТЬ BLUETOOTH ВКЛЮЧЁННЫМ: $error';
  }

  @override
  String get settingsContinuousMode => 'Непрерывная запись';

  @override
  String get settingsContinuousModeDesc =>
      'Записывает одну минуту энергии за каждую минуту работы автомобиля, даже на стоянке или на нейтральной передаче. Выключение сохраняет уже записанные данные.';

  @override
  String settingsContinuousModeFailed(Object error) {
    return 'ОШИБКА НЕПРЕРЫВНОЙ ЗАПИСИ: $error';
  }

  @override
  String get settingsEventFile => 'Файл журнала событий (отладка)';

  @override
  String get settingsEventFileDesc =>
      'Дублирует события телеметрии в файл JSONL для отладки. Занимает дополнительное место; при отключении существующие файлы удаляются.';

  @override
  String get settingsWipe => 'Стереть локальную базу телеметрии';

  @override
  String get settingsWipeDesc =>
      'Навсегда удаляет все сеансы поездок, зарядок, кадры и события телеметрии одной операцией.';

  @override
  String get settingsWiping => 'ОЧИСТКА';

  @override
  String get settingsWipeHistory => 'ОЧИСТИТЬ ИСТОРИЮ';

  @override
  String get settingsWipeDialogTitle => 'ОЧИСТИТЬ ИСТОРИЮ';

  @override
  String get settingsWipeDialogContent =>
      'Это навсегда удаляет все строки локальной базы данных телеметрии. Журналы зарядки нельзя удалить по отдельности, и это действие невозможно отменить.';

  @override
  String get settingsCancel => 'ОТМЕНА';

  @override
  String get settingsWipeAll => 'ОЧИСТИТЬ ВСЁ';

  @override
  String settingsLoadFailed(Object error) {
    return 'ОШИБКА ЗАГРУЗКИ НАСТРОЕК: $error';
  }

  @override
  String get settingsAutoStartEnabled => 'АВТОЗАПУСК ВКЛЮЧЁН';

  @override
  String get settingsAutoStartDisabled => 'АВТОЗАПУСК ОТКЛЮЧЁН';

  @override
  String settingsAutoStartError(Object error) {
    return 'ОШИБКА ОБНОВЛЕНИЯ АВТОЗАПУСКА: $error';
  }

  @override
  String get settingsGpsEnabled => 'СБОР GPS ВКЛЮЧЁН';

  @override
  String get settingsGpsDisabled => 'СБОР GPS ОТКЛЮЧЁН';

  @override
  String settingsGpsError(Object error) {
    return 'ОШИБКА ОБНОВЛЕНИЯ GPS: $error';
  }

  @override
  String settingsClearFailed(Object error) {
    return 'ОШИБКА ОЧИСТКИ БД: $error';
  }

  @override
  String settingsRetentionFailed(Object error) {
    return 'ОШИБКА ХРАНЕНИЯ: $error';
  }

  @override
  String get roadcastTraceTitle => 'ROADCAST ТРЕЙС';

  @override
  String get roadcastTraceSubtitle => 'Активность CAN в реальном времени';

  @override
  String get roadcastTraceRunning => 'РАБОТАЕТ';

  @override
  String get roadcastTraceStopped => 'ОСТАНОВЛЕНО';

  @override
  String get roadcastTraceStart => 'СТАРТ';

  @override
  String get roadcastTraceStop => 'СТОП';

  @override
  String get roadcastTraceBaseline => 'БАЗА';

  @override
  String get roadcastTraceClear => 'ОЧИСТИТЬ';

  @override
  String get roadcastTraceChangedOnly => 'ТОЛЬКО ИЗМ';

  @override
  String get roadcastTraceValidOnly => 'ТОЛЬКО VALID';

  @override
  String get roadcastTraceSearchHint => 'Фильтр сигнал, CAN id, signal id';

  @override
  String get roadcastTraceMetricSignals => 'СИГНАЛЫ';

  @override
  String get roadcastTraceMetricChanged => 'ИЗМ';

  @override
  String get roadcastTraceMetricSnapshots => 'SNAPSHOTS';

  @override
  String get roadcastTraceMetricSamples => 'СЭМПЛЫ';

  @override
  String get roadcastTraceMetricBaseline => 'БАЗА';

  @override
  String get roadcastTraceNoBaseline => '--';

  @override
  String get roadcastTraceEmpty => 'Запустите захват или измените фильтры.';

  @override
  String get roadcastTraceHeaderSignal => 'СИГНАЛ';

  @override
  String get roadcastTraceHeaderNow => 'СЕЙЧАС';

  @override
  String get roadcastTraceRaw => 'RAW';

  @override
  String get roadcastTraceHeaderBaseline => 'БАЗА';

  @override
  String get roadcastTraceHeaderDelta => 'ДЕЛЬТА';

  @override
  String get roadcastTraceHeaderChanges => 'ИЗМ';

  @override
  String get roadcastTraceHeaderLast => 'ПОСЛ';

  @override
  String get roadcastTraceHeaderId => 'ID';

  @override
  String get roadcastTraceSelectSignal => 'Выберите сигнал для графика.';

  @override
  String get roadcastTraceChartEmpty => 'Ожидание сэмплов';

  @override
  String get traceModeCan => 'CAN';

  @override
  String get traceModeMigration => 'МИГРАЦИЯ';

  @override
  String get migrationSubtitle => '15 свойств к замене';

  @override
  String get migrationPhaseATitle => 'ЭТАП A · ПРЯМОЕ ЧТЕНИЕ';

  @override
  String get migrationPhaseADesc =>
      'Одинаковое значение с обеих сторон. Переносить после одной реальной поездки и одной зарядки без расхождений.';

  @override
  String get migrationPhaseBTitle => 'ЭТАП B · НУЖНО ИЗМЕРИТЬ';

  @override
  String get migrationPhaseBDesc =>
      'Есть в хранилище, но что означает сырое значение, на машине ещё не наблюдали. Нужно измерение, а не код.';

  @override
  String get migrationPhaseCTitle => 'ЭТАП C · НЕ ПЕРЕНОСИТСЯ';

  @override
  String get migrationPhaseCDesc =>
      'Либо в хранилище нет адреса (значение собирает car_service), либо оно ни разу не пришло.';

  @override
  String get migrationNoteDirect => 'Прямое чтение';

  @override
  String get migrationNoteTranslated =>
      'Хранилище говорит PRND, приложение — битовой маской AOSP; переведено';

  @override
  String get migrationNoteChargerAc =>
      'Вход AC зарядного устройства (211 В), а не батарея на 395 В';

  @override
  String get migrationNoteEncodingUnknown =>
      'Есть в хранилище, сырая кодировка не расшифрована';

  @override
  String get migrationNoteSynthetic =>
      'Собирается car_service; адреса в хранилище нет';

  @override
  String get migrationColumnRaw => 'СЫРОЕ';

  @override
  String migrationRamAddress(Object address) {
    return 'ОЗУ $address';
  }

  @override
  String get migrationNoteDead =>
      'Ни одного значения в 90 347 записанных кадрах';

  @override
  String get migrationStatusMatching => 'СОВПАДАЕТ';

  @override
  String get migrationStatusDiverging => 'РАСХОДИТСЯ';

  @override
  String get migrationStatusRamOnly => 'ТОЛЬКО ОЗУ';

  @override
  String get migrationStatusStoreOnly => 'ТОЛЬКО STORE';

  @override
  String get migrationStatusRejected => 'ОТКЛОНЕНО';

  @override
  String get migrationStatusWaiting => 'ОЖИДАНИЕ';

  @override
  String get migrationColumnRam => 'ОЗУ';

  @override
  String get migrationColumnStore => 'STORE';

  @override
  String get migrationColumnDiff => 'РАЗН';

  @override
  String get migrationShadowMode =>
      'Теневой режим: ОЗУ читается без записи в историю.';

  @override
  String get migrationPublishing =>
      'Запись в store включена — миграция уже произошла.';

  @override
  String get migrationBridgeOffline => 'Демон CAN-моста не отвечает.';

  @override
  String migrationLoadFailed(Object error) {
    return 'Не удалось прочитать статус моста: $error';
  }

  @override
  String get migrationEcarxWarning =>
      'Значение store приходит из свойства, полученного через ECARX: стороны читают разные адреса.';

  @override
  String get chargingTitle => 'GEELY ТЕЛЕМЕТРИЯ';

  @override
  String get chargingSubtitle => 'Сеансы зарядки';

  @override
  String get chargingDbRows => 'СТРОК БД';

  @override
  String get chargingRunWrites => 'ЗАПИСАТЬ';

  @override
  String get chargingRefreshTooltip => 'Обновить сеансы зарядки';

  @override
  String get chargeMergeTitle => 'ПРЕРВАННЫЕ НЕПРЕРЫВНЫЕ СЕАНСЫ';

  @override
  String get chargeMergeDescription =>
      'Один или несколько сеансов зарядки завершились с removed_while_charging и выглядят непрерывными. Проверьте разбивку перед объединением.';

  @override
  String get chargeMergeSessionsLabel => 'СЕАНСЫ';

  @override
  String get chargeMergeGapLabel => 'ПАУЗА';

  @override
  String get chargeMergeSocLabel => 'SOC';

  @override
  String get chargeMergeFramesLabel => 'КАДРЫ';

  @override
  String get chargeMergeBreakLabel => 'РАЗРЫВ';

  @override
  String get chargeMergeConfirm => 'ОБЪЕДИНИТЬ СЕАНСЫ';

  @override
  String get chargeMergeMerging => 'ОБЪЕДИНЕНИЕ';

  @override
  String get chargeMergeSuccess => 'Сеансы зарядки объединены.';

  @override
  String get chargeMergeError => 'Не удалось объединить сеансы.';

  @override
  String get chartPackVoltage => 'НАПРЯЖЕНИЕ БАТАРЕИ';

  @override
  String get chartVoltageUnit => 'В';

  @override
  String get chartWaitingVoltage => 'ОЖИДАНИЕ НАПРЯЖЕНИЯ';

  @override
  String get chartPackCurrent => 'ТОК БАТАРЕИ';

  @override
  String get chartCurrentUnit => 'А';

  @override
  String get chartWaitingCurrent => 'ОЖИДАНИЕ ТОКА';

  @override
  String get chartChargePower => 'МОЩНОСТЬ ЗАРЯДКИ';

  @override
  String get chartPowerUnit => 'кВт';

  @override
  String get chartWaitingPower => 'ОЖИДАНИЕ МОЩНОСТИ';

  @override
  String get historySectionTitle => 'ИСТОРИЯ СЕАНСОВ ЗАРЯДКИ';

  @override
  String get historyRows => 'СТРОКИ';

  @override
  String get historyHeadersStatus => 'СТАТУС';

  @override
  String get historyHeadersWindow => 'ОКНО СЕАНСА';

  @override
  String get historyHeadersPlug => 'ШТЕКЕР';

  @override
  String get historyHeadersSoc => 'SOC НАЧ/КОН';

  @override
  String get historyHeadersOdometer => 'ОДОМЕТР';

  @override
  String get historyHeadersPower => 'МОЩНОСТЬ';

  @override
  String get historyHeadersEndReason => 'ПРИЧИНА ОКОНЧ';

  @override
  String get historyHeadersId => 'ID / ОБНОВЛЕНО';

  @override
  String get historySampleBadge => 'ПРИМЕР ДАННЫХ';

  @override
  String get detailBack => 'Назад';

  @override
  String get detailTitle => 'ДЕТАЛИ ЗАРЯДКИ';

  @override
  String get detailFrames => 'КАДРЫ';

  @override
  String get detailStatus => 'СТАТУС';

  @override
  String get detailRefresh => 'Обновить кадры зарядки';

  @override
  String get detailDuration => 'ДЛИТЕЛЬНОСТЬ';

  @override
  String get detailSocRange => 'ДИАПАЗОН SOC';

  @override
  String get detailSocDelta => 'ДЕЛЬТА SOC';

  @override
  String get detailEnergyEst => 'ЭНЕРГИЯ ОЦЕН';

  @override
  String get detailEnergyUnit => 'кВт·ч';

  @override
  String get chargeCostLabel => 'СТОИМОСТЬ';

  @override
  String get detailAvgPower => 'СР МОЩНОСТЬ';

  @override
  String get detailAvgPowerUnit => 'кВт';

  @override
  String get detailPlug => 'ШТЕКЕР';

  @override
  String get detailOdometer => 'ОДОМЕТР';

  @override
  String get detailEndReason => 'ПРИЧИНА ОКОНЧ';

  @override
  String get detailAmbientTemp => 'ТЕМП НАРУЖ';

  @override
  String get chartSocTrace => 'ГРАФИК SOC';

  @override
  String get chartSocUnit => '%';

  @override
  String get chartNotEnough => 'Недостаточно кадров для графика.';

  @override
  String get chargeMapLocation => 'Место зарядки';

  @override
  String get chargeMapNoGps =>
      'Для этого сеанса зарядки не записано ни одной GPS-точки.';

  @override
  String get statusCharging => 'ЗАРЯДКА';

  @override
  String get statusConnected => 'ПОДКЛЮЧЕНО';

  @override
  String get statusDisconnected => 'ОТКЛЮЧЕНО';

  @override
  String get statusComplete => 'ЗАВЕРШЕНО';

  @override
  String get endReasonInProgress => 'В_ПРОЦЕССЕ';

  @override
  String get endReasonWaitingCharge => 'ОЖИДАНИЕ_ЗАРЯДКИ';

  @override
  String get endReasonPlugDisconnected => 'ШТЕКЕР_ОТКЛЮЧЁН';

  @override
  String get endReasonWaitingPower => 'ОЖИДАНИЕ_ПИТАНИЯ';

  @override
  String get endReasonCompleted => 'ЗАВЕРШЕНО';

  @override
  String get liveError => 'ОШИБКА ЭФИРА';

  @override
  String get bridgeError => 'ОШИБКА_МОСТА';

  @override
  String get noDbRows => 'НЕТ_СТРОК_БД / ПРИМЕР_ПРОСМОТРА';

  @override
  String get roomChargeSessions => 'ROOM_СЕАНСЫ_ЗАРЯДКИ';

  @override
  String get historyPageTitle => 'История батареи';

  @override
  String get historyHeaderSubtitle => 'История батареи';

  @override
  String get historyPageDesc =>
      'Комбинированный просмотр поездок, сеансов зарядки и проверенных показателей батареи.';

  @override
  String get historyRangeChip => 'ДИАПАЗОН';

  @override
  String get historySessionsChip => 'СЕАНСЫ';

  @override
  String get historyRefreshTooltip => 'Обновить историю';

  @override
  String get rangeToday => 'Сегодня';

  @override
  String get range24h => '24ч';

  @override
  String get range7d => '7д';

  @override
  String get range30d => '30д';

  @override
  String get historyTrips => 'ПОЕЗДКИ';

  @override
  String get historyTripsUnit => 'сеансов';

  @override
  String get historyCharges => 'ЗАРЯДКИ';

  @override
  String get historyChargesUnit => 'сеансов';

  @override
  String get historyDistance => 'РАССТОЯНИЕ';

  @override
  String get historyDistanceUnitOdometer => 'км ОДОМЕТР';

  @override
  String get historyDistanceUnitSpeed => 'км ОЦЕН СКОР';

  @override
  String get historyDistanceUnitMissing => 'км НЕТ ДАННЫХ';

  @override
  String get historyChargedEnergy => 'ЗАРЯЖЕННАЯ ЭНЕРГИЯ';

  @override
  String get historyEnergyUnit => 'кВт·ч оценка';

  @override
  String get historySocDelta => 'ДЕЛЬТА SOC';

  @override
  String get historySocDeltaUnit => '%';

  @override
  String get historyParkedDrain => 'СТОЯНОЧНЫЙ РАСХОД';

  @override
  String get historyDrainUnit => 'кВт·ч отложено';

  @override
  String get historyEfficiency => 'ЭФФЕКТИВНОСТЬ';

  @override
  String get historyEfficiencyUnit => 'Вт·ч/км';

  @override
  String get historyRegen => 'РЕКУПЕРАЦИЯ';

  @override
  String get timelineTitle => 'ВРЕМЕННАЯ ШКАЛА';

  @override
  String get timelineTrip => 'ПОЕЗДКА';

  @override
  String get timelineCharge => 'ЗАРЯДКА';

  @override
  String get timelineEmpty => 'Нет сеансов в выбранном периоде.';

  @override
  String timelineParkedFor(Object duration) {
    return 'Стоянка $duration';
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
  String get sessionLogTitle => 'ЖУРНАЛ СЕАНСОВ';

  @override
  String get sessionLogEmpty => 'Пока нет сеансов поездок или зарядок.';

  @override
  String get sessionLogHeaderSession => 'СЕАНС';

  @override
  String get sessionLogHeaderStart => 'НАЧАЛО';

  @override
  String get sessionLogHeaderDuration => 'ДЛИТЕЛЬНОСТЬ';

  @override
  String get sessionLogHeaderSoc => 'SOC';

  @override
  String get sessionLogHeaderEnergy => 'ЭНЕРГИЯ / РАССТОЯНИЕ';

  @override
  String get sessionLogHeaderStatus => 'СТАТУС';

  @override
  String get sessionTypeCharging => 'Зарядка';

  @override
  String get sessionTypeTrip => 'Поездка';

  @override
  String get historyEmptyPanel => 'Данных истории пока нет.';

  @override
  String get tripHeaderSubtitle => 'Сеансы поездок';

  @override
  String get tripPageTitle => 'Автоматическое обнаружение поездок';

  @override
  String get tripDbRows => 'СТРОК БД';

  @override
  String get tripRunWrites => 'ЗАПИСАТЬ';

  @override
  String get tripRefreshTooltip => 'Обновить сеансы поездок';

  @override
  String get tripHistoryBadge => 'ИСТОРИЯ ПОЕЗДОК';

  @override
  String get tripEmptyLatest =>
      'Строки поездок есть в базе, но запрос последнего сеанса не вернул строк.';

  @override
  String get tripEmptyNone => 'Сеансы поездок ещё не обнаружены.';

  @override
  String get bridgeErrorStatus => 'ОШИБКА_МОСТА';

  @override
  String get roomTripSessions => 'ROOM_СЕАНСЫ_ПОЕЗДОК';

  @override
  String get dbCountMismatch => 'НЕСООТВЕТСТВИЕ_СЧЁТЧИКА_БД';

  @override
  String get noTripRows => 'НЕТ_СТРОК_ПОЕЗДОК';

  @override
  String get tripMetricDistance => 'РАССТОЯНИЕ';

  @override
  String get tripMetricAvgSpeed => 'СР СКОРОСТЬ';

  @override
  String get tripMetricGearStart => 'ПЕРЕДАЧА СТАРТ';

  @override
  String get tripMetricSocRange => 'ДИАПАЗОН SOC';

  @override
  String get tripMetricEndReason => 'ПРИЧИНА ОКОНЧ';

  @override
  String get tripMetricUpdated => 'ОБНОВЛЕНО';

  @override
  String get dischargeActive => 'РАЗРЯД В РЕАЛЬНОМ ВРЕМЕНИ';

  @override
  String get dischargeEnded => 'РАЗРЯД ПОЕЗДКИ';

  @override
  String get tripDetailHint =>
      'Детализация поездки и телеметрия по кадрам будут реализованы в более поздней версии.';

  @override
  String get tripDetailTitle => 'ДЕТАЛИ ПОЕЗДКИ';

  @override
  String get tripDetailFrames => 'КАДРЫ';

  @override
  String get tripDetailRefresh => 'Обновить кадры поездки';

  @override
  String get tripDetailDuration => 'ДЛИТЕЛЬНОСТЬ';

  @override
  String get tripDetailOdometerDist => 'РАССТ ПО ОДОМЕТРУ';

  @override
  String get tripDetailSpeedEstDist => 'РАССТ ПО СКОРОСТИ';

  @override
  String get tripDetailEfficiency => 'ЭФФЕКТИВНОСТЬ';

  @override
  String get tripDetailRange => 'ЗАПАС ХОДА';

  @override
  String get tripDetailNetEnergy => 'ЧИСТАЯ ЭНЕРГИЯ';

  @override
  String get tripDetailRegen => 'РЕКУПЕРАЦИЯ';

  @override
  String get tripDetailSummary => 'СВОДКА ПОЕЗДКИ';

  @override
  String get tripDetailEstimatedCost => 'РАСЧЁТНАЯ СТОИМОСТЬ';

  @override
  String tripDetailCostBasedOnLastCharge(Object price) {
    return 'Расчёт по цене $price/кВт·ч из последней зарядки с указанной ценой.';
  }

  @override
  String tripDetailCostBasedOnSocAndLastCharge(Object price) {
    return 'Расчёт по изменению SOC и цене $price/кВт·ч из последней зарядки с указанной ценой.';
  }

  @override
  String get tripDetailCostUnavailable =>
      'Для предыдущих зарядок не указана цена за кВт·ч.';

  @override
  String get tripDetailEnergyAccounting => 'ЭНЕРГЕТИЧЕСКИЙ БАЛАНС';

  @override
  String get tripDetailMeasuredPack => 'ЧИСТАЯ ЭНЕРГИЯ БАТАРЕИ';

  @override
  String get tripDetailMeasuredPackDescription =>
      'Общая энергия, полученная от батареи за поездку.';

  @override
  String get tripDetailMeasuredTraction => 'ДВИЖЕНИЕ АВТОМОБИЛЯ';

  @override
  String get tripDetailMeasuredTractionDescription =>
      'Энергия, использованная для движения автомобиля.';

  @override
  String get tripDetailMeasuredRecovered => 'РЕКУПЕРАЦИЯ';

  @override
  String get tripDetailMeasuredRecoveredDescription =>
      'Энергия, возвращённая при рекуперативном торможении.';

  @override
  String get tripDetailMeasuredAuxiliary => 'ВСПОМОГАТЕЛЬНЫЕ СИСТЕМЫ';

  @override
  String get tripDetailMeasuredAuxiliaryDescription =>
      'Оценка расхода климата, электроники и системы 12 В.';

  @override
  String get tripDetailMeasuredVerified => 'ИЗМЕРЕНО';

  @override
  String get tripDetailMeasuredUnavailable =>
      'Для этой поездки нет измеренного энергетического баланса.';

  @override
  String get tripDetailMeasuredDisagrees =>
      'Измеренная энергия расходится с оценкой по SOC. Значения скрыты.';

  @override
  String get tripChartSpeed => 'График скорости';

  @override
  String get tripChartNotEnough => 'Недостаточно кадров скорости для графика.';

  @override
  String get tripChartPower => 'Измеренная мощность';

  @override
  String get tripChartPackPower => 'БАТАРЕЯ';

  @override
  String get tripChartDrivePower => 'ТЯГА';

  @override
  String get tripChartPowerNotEnough =>
      'Недостаточно измерений мощности для графика.';

  @override
  String get tripChartPowerDisagrees =>
      'Измеренная мощность скрыта, так как она расходится с оценкой по SOC.';

  @override
  String get tripChartElevationDistance => 'Профиль высоты по расстоянию';

  @override
  String get tripChartElevationDistanceNotEnough =>
      'Недостаточно точек высоты GPS для профиля по расстоянию.';

  @override
  String get tripChartAltitude => 'График высоты';

  @override
  String get tripChartAltitudeNotEnough =>
      'Недостаточно кадров высоты для графика.';

  @override
  String get tripChartAmbientTemp => 'График температуры снаружи';

  @override
  String get tripChartAmbientTempNotEnough =>
      'Недостаточно кадров температуры для графика.';

  @override
  String get tripDetailAmbientTemp => 'ТЕМП НАРУЖ';

  @override
  String get tripChartSoc => 'График заряда батареи';

  @override
  String get tripChartSocNotEnough =>
      'Недостаточно кадров батареи для графика.';

  @override
  String get tripChartExpandTooltip => 'Развернуть график';

  @override
  String tripChartPointCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count точки',
      many: '$count точек',
      few: '$count точки',
      one: '$count точка',
    );
    return '$_temp0';
  }

  @override
  String get tripMapRoute => 'Карта маршрута';

  @override
  String get tripMapNoGps => 'Для этой поездки не записано ни одной GPS-точки.';

  @override
  String mapSpeedSlow(Object speed) {
    return 'Медленно $speed';
  }

  @override
  String mapSpeedFast(Object speed) {
    return 'Быстро $speed';
  }

  @override
  String get tripStatusActive => 'АКТИВНА';

  @override
  String get tripStatusPendingEnd => 'ОЖИДАНИЕ ОКОНЧАНИЯ';

  @override
  String get tripEndReasonInProgress => 'В_ПРОЦЕССЕ';

  @override
  String get tripEndReasonWaitingIdle => 'ОЖИДАНИЕ_ПРОСТОЯ';

  @override
  String get mockChargeState => 'Отключено';

  @override
  String get mockPlugLabel => 'Нет';

  @override
  String get mockSourceDetails => 'Веб-телеметрия (симуляция)';

  @override
  String get dayMon => 'ПН';

  @override
  String get dayTue => 'ВТ';

  @override
  String get dayWed => 'СР';

  @override
  String get dayThu => 'ЧТ';

  @override
  String get dayFri => 'ПТ';

  @override
  String get daySat => 'СБ';

  @override
  String get daySun => 'ВС';

  @override
  String settingsAppVersion(Object build, Object version) {
    return 'Версия $version (сборка $build)';
  }

  @override
  String get settingsAppUpdateTitle => 'Обновления приложения';

  @override
  String get settingsAppUpdateDescription =>
      'Проверяет публичные релизы Eaglemetry и устанавливает проверенный APK без удаления телеметрии и настроек. Также обновляет службу Roadcast.';

  @override
  String settingsAppUpdateInstalled(Object build, Object version) {
    return 'Установлено: $version (сборка $build)';
  }

  @override
  String get settingsAppUpdateNotChecked => 'Обновления ещё не проверялись';

  @override
  String get settingsAppUpdateUnavailable => 'Состояние обновления недоступно';

  @override
  String get settingsAppUpdateChecking => 'ПРОВЕРКА';

  @override
  String settingsAppUpdateAvailable(Object build, Object version) {
    return 'Доступна версия $version (сборка $build)';
  }

  @override
  String get settingsAppUpdateUpToDate => 'Eaglemetry обновлён';

  @override
  String settingsAppUpdateIncompatible(Object reason) {
    return 'Это обновление нельзя установить автоматически: $reason';
  }

  @override
  String get settingsAppUpdateCheck => 'ПРОВЕРИТЬ';

  @override
  String get settingsAppUpdateInstall => 'ОБНОВИТЬ';

  @override
  String get settingsAppUpdateInstalling => 'ОБНОВЛЕНИЕ';

  @override
  String get settingsAppUpdateScheduled =>
      'ОБНОВЛЕНИЕ ПРОВЕРЕНО. ПРИЛОЖЕНИЕ ПЕРЕЗАПУСТИТСЯ АВТОМАТИЧЕСКИ.';

  @override
  String settingsAppUpdateCheckFailed(Object reason) {
    return 'НЕ УДАЛОСЬ ПРОВЕРИТЬ ОБНОВЛЕНИЕ: $reason';
  }

  @override
  String settingsAppUpdateInstallFailed(Object reason) {
    return 'НЕ УДАЛОСЬ ОБНОВИТЬ ПРИЛОЖЕНИЕ: $reason';
  }

  @override
  String get settingsAppUpdateReleaseNotes => 'Что нового';

  @override
  String settingsAppUpdateConfirmTitle(Object version) {
    return 'Обновить до версии $version?';
  }

  @override
  String get settingsAppUpdateConfirmDescription =>
      'Приложение загрузит и проверит обновление. Оно обновит службу Roadcast перед установкой APK. Затем приложение перезапустится.';

  @override
  String get settingsAppUpdateConfirmCancel => 'ОТМЕНА';

  @override
  String get settingsAppUpdateConfirmInstall => 'УСТАНОВИТЬ';

  @override
  String get settingsUpdateAlertTitle => 'ОШИБКА ОБНОВЛЕНИЯ';

  @override
  String get settingsUpdateAlertDismiss => 'ЗАКРЫТЬ';

  @override
  String get settingsSectionAbout => 'О ПРИЛОЖЕНИИ';

  @override
  String settingsAboutDeveloper(Object handle) {
    return 'Разработано $handle';
  }

  @override
  String get settingsAboutTagline => 'Сделано с любовью и кофе';

  @override
  String get settingsAppShellTitle => 'Интерфейс приложения';

  @override
  String get settingsAppShellDescription =>
      'Выберите, какой интерфейс открывается при запуске. Выбор сохраняется.';

  @override
  String get settingsAppShellNew => 'Новый';

  @override
  String get settingsAppShellPrevious => 'Прежний';

  @override
  String get v2Overview => 'Обзор';

  @override
  String get v2Context => 'Контекст';

  @override
  String get v2AppShellTitle => 'Интерфейс';

  @override
  String get v2AppShellDescription =>
      'Вы в новом интерфейсе — приложение открывает его по умолчанию. Поездки и Настройки ещё не перенесены и остаются в прежнем интерфейсе. Возврат к нему сохраняется и действует при следующем запуске.';

  @override
  String get v2AppShellAction => 'Перейти к прежнему интерфейсу';

  @override
  String get v2CarplayBetaOn => 'Вкл.';

  @override
  String get v2CarplayBetaOff => 'Выкл.';

  @override
  String get v2MigrationPlaceholder => 'Готово к переносу функций';

  @override
  String get v2SettingsClose => 'Закрыть настройки';

  @override
  String get v2SettingsSearch => 'Поиск';

  @override
  String get v2SettingsSearchEmpty => 'Нет категории с таким названием.';

  @override
  String get v2HistoryTrips => 'Поездки';

  @override
  String get v2HistoryCharges => 'Зарядки';

  @override
  String get v2HistoryExpand => 'Развернуть детали сессии';

  @override
  String get v2HistoryCollapse => 'Свернуть детали сессии';

  @override
  String get v2HistoryExpandHint => 'Выберите сессию, чтобы открыть её.';

  @override
  String get v2HistoryCollapseHint => 'Потяните вниз, чтобы закрыть';

  @override
  String get v2HistorySelectPrompt => 'Выберите сессию, чтобы увидеть детали.';

  @override
  String get v2HistoryFactsTitle => 'Сессия';

  @override
  String get v2HistoryChartEmpty => 'У этой сессии нет данных для графика.';

  @override
  String get v2TimeNotSynced =>
      'Время ещё не синхронизировано. Столбцы показывают измеренную энергию.';

  @override
  String energyAxisRelativeMinutes(int minutes) {
    return '+$minutes мин';
  }

  @override
  String get v2HistoryStart => 'Начало';

  @override
  String get v2HistoryEnd => 'Конец';

  @override
  String get v2HistoryDuration => 'Длительность';

  @override
  String get v2HistoryDistance => 'Расстояние';

  @override
  String get v2HistorySoc => 'SOC';

  @override
  String get v2HistoryTemperature => 'Температура';

  @override
  String get v2HistoryAltitude => 'Подъём';

  @override
  String get insightNameStart => 'Назвать старт';

  @override
  String get insightNameEnd => 'Назвать финиш';

  @override
  String get insightPlaceTitle => 'Назвать это место';

  @override
  String get insightPlaceHint => 'Имя';

  @override
  String get insightPlaceSave => 'Сохранить';

  @override
  String get insightPlaceCancel => 'Отмена';

  @override
  String insightRouteTrips(int count) {
    return '$count поездок';
  }

  @override
  String insightRouteVariants(int count) {
    return '$count путей';
  }

  @override
  String insightVariantNotEnough(int count) {
    return 'Пока мало сравнимых поездок этого маршрута ($count).';
  }

  @override
  String insightVariantNotDistinguishable(String place, int count) {
    return 'Эти два пути до $place пока нельзя различить ($count сравнений).';
  }

  @override
  String insightVariantUsedLess(String difference, String place, int count) {
    return 'Этот путь потратил на $difference Вт·ч/км меньше, чем другой до $place ($count сравнений).';
  }

  @override
  String insightVariantUsedMore(String difference, String place, int count) {
    return 'Этот путь потратил на $difference Вт·ч/км больше, чем другой до $place ($count сравнений).';
  }

  @override
  String get v2HistoryConsumed => 'Потрачено';

  @override
  String get v2HistoryRegen => 'Рекуперация';

  @override
  String get v2HistoryEfficiency => 'Эффективность';

  @override
  String get v2HistoryEnergyAdded => 'Добавлено энергии';

  @override
  String get v2HistoryAvgPower => 'Средняя мощность';

  @override
  String get v2HistoryPeakPower => 'Пиковая мощность';

  @override
  String get v2HistoryPlug => 'Разъём';

  @override
  String get v2HistoryCost => 'Оценка стоимости';

  @override
  String get v2HistoryMapExpand => 'Увеличить карту';

  @override
  String get v2HistoryMapCollapse => 'Уменьшить карту';

  @override
  String get v2HistoryEmpty => 'Автомобиль ещё не записал ни одной сессии.';

  @override
  String get v2HistoryBattery => 'Батарея';

  @override
  String v2CycleOrdinal(int ordinal) {
    return '#$ordinal';
  }

  @override
  String v2CycleSemantics(int ordinal, String percent) {
    return 'Батарея $ordinal, израсходовано $percent процентов';
  }

  @override
  String get v2CycleOpen => 'В процессе';

  @override
  String get v2CyclePartial => 'Неполный';

  @override
  String get v2CycleFrozen => 'Итоговый';

  @override
  String get v2CycleNoCapacity => 'Ёмкость неизвестна';

  @override
  String get v2CycleMixedCurrency => 'Две валюты';

  @override
  String v2CyclePartlyPriced(String percent) {
    return '$percent% с ценой';
  }

  @override
  String get v2CycleDistance => 'Пробег';

  @override
  String get v2CycleEnergy => 'Энергия';

  @override
  String get v2CycleEfficiency => 'Эффективность';

  @override
  String get v2CycleEfficiencyUnitAction => 'Изменить единицу эффективности';

  @override
  String get v2CycleCost => 'Стоимость';

  @override
  String get v2CycleCostPerKwh => 'За кВт·ч';

  @override
  String get v2CycleCapacity => 'Доступно';

  @override
  String get v2CycleEmpty =>
      'Автомобиль ещё не израсходовал батарею полностью.';

  @override
  String get v2CycleSelectPrompt =>
      'Выберите батарею, чтобы увидеть, что она проехала.';

  @override
  String get v2CycleTimelineTitle => 'Что проехала эта батарея';

  @override
  String get v2CycleTimelineEmpty => 'Сеансы этой батареи удалены.';

  @override
  String get v2CycleTimelineDrive => 'Поездка';

  @override
  String get v2CycleTimelineCharge => 'Зарядка';

  @override
  String get v2CycleTimelineParked => 'Стоянка';

  @override
  String get v2CycleTimelineDeleted => 'Сеанс удалён';

  @override
  String v2CycleTimelineShare(String percent) {
    return '$percent% этой батареи';
  }

  @override
  String get v2CycleTimelineSessions => 'Сеансы';

  @override
  String get v2SettingsDisplays => 'Экраны';

  @override
  String get v2SettingsCharge => 'Зарядка';

  @override
  String get settingsChargeDisclaimerTitle => 'Отказ от ответственности';

  @override
  String get settingsChargeDisclaimerDesc =>
      'Использование этой функции осуществляется на ваш собственный риск, так как она напрямую взаимодействует с зарядкой автомобиля и активно управляет его функциями.';

  @override
  String get v2ChargeLimitLevel => 'Уровень';

  @override
  String get v2ChargeLimitGraph => 'График';

  @override
  String get v2ChargeLimitCustom => 'Свой';

  @override
  String get v2ChargeLimitDaily => 'Дневной';

  @override
  String get v2ChargeLimitExtended => 'Продлённый';

  @override
  String get v2ChargeLimitMax => 'Максимум';

  @override
  String v2ChargeLimitProjection(String range, String unit) {
    return 'ОЦЕНКА · $range $unit прогнозируется';
  }

  @override
  String get v2ChargeLimitSemantics => 'Предел зарядки';

  @override
  String v2ChargeLimitSemanticsValue(int percent) {
    return '$percent процентов';
  }

  @override
  String get v2ChargeLimitInfoTitle => 'Какой предел зарядки выбрать?';

  @override
  String get v2ChargeLimitInfoDaily =>
      'Для ежедневных поездок и более быстрой зарядки.';

  @override
  String get v2ChargeLimitInfoExtended =>
      'Для более дальних поездок на одной зарядке.';

  @override
  String get v2ChargeLimitInfoMax =>
      'Для максимального запаса хода и более долгой зарядки.';

  @override
  String get v2ChargeLimitInfoTooltip => 'О пределах зарядки';

  @override
  String get v2ChargeLimitInfoClose => 'Закрыть информацию о пределе зарядки';

  @override
  String helpersChargeLimitValue(int percent) {
    return '$percent%';
  }

  @override
  String get v2SettingsData => 'Данные';

  @override
  String get v2SettingsDeveloper => 'Разработчик';

  @override
  String get v2SettingsAppearance => 'Оформление';

  @override
  String get v2SettingsImmersive => 'Полный экран';

  @override
  String get v2SettingsImmersiveDesc =>
      'Скрывает системные панели головного устройства. Выключите, чтобы показать строку состояния и панель навигации. Экраны рассчитаны на полный экран, поэтому при выключении некоторые размеры могут выглядеть неправильно.';

  @override
  String get v2SettingsHideStatusBar => 'Скрыть строку состояния';

  @override
  String get v2SettingsHideStatusBarDesc =>
      'Держит строку состояния скрытой при выключенном полном экране. Панель навигации остаётся, так как через неё вы выходите из приложения.';

  @override
  String get v2SettingsClimateBar => 'Полоса климата';

  @override
  String get v2SettingsClimateBarDesc =>
      'Показывает полосу температуры по нижнему краю, на всех экранах. Она остаётся там, когда карточка открывается на весь экран. Она ещё не связана с автомобилем, поэтому значения — это предпросмотр.';

  @override
  String get climateBarDriverDecrease => 'Уменьшить температуру водителя';

  @override
  String get climateBarDriverIncrease => 'Увеличить температуру водителя';

  @override
  String get climateBarPassengerDecrease => 'Уменьшить температуру пассажира';

  @override
  String get climateBarPassengerIncrease => 'Увеличить температуру пассажира';

  @override
  String get nowPlayingIdle => 'Ничего не играет';

  @override
  String get v2SettingsOperation => 'Работа';

  @override
  String get v2SettingsRetention => 'Хранение';

  @override
  String get v2SettingsDeveloperMode => 'Режим разработчика';

  @override
  String get v2SettingsDeveloperModeDesc =>
      'Показывает инженерные экраны: Roadcast Trace и Signal Lab.';

  @override
  String v2SettingsRetentionDone(int frames, int days) {
    return 'Очистка завершена: удалено кадров — $frames, сырые данные хранятся $days дн.';
  }

  @override
  String get v2SettingsSystem => 'Система';

  @override
  String get v2SettingsDanger => 'Удаление';

  @override
  String get v2SettingsEngineering => 'Инженерные экраны';

  @override
  String get v2SettingsResendHistory => 'Отправить историю в облако заново';

  @override
  String get v2SettingsResendHistoryDesc =>
      'Отмечает все поездки и зарядки этого автомобиля для повторной выгрузки. Используйте после удаления данных в облаке для теста. Выгрузка начнётся при следующем sync.';

  @override
  String get v2SettingsResendHistoryAction => 'ОТМЕТИТЬ ДЛЯ ВЫГРУЗКИ';

  @override
  String v2SettingsResendHistoryDone(int count) {
    return 'Отмечено записей: $count. Они выгрузятся при следующем sync.';
  }

  @override
  String v2SettingsResendHistoryFailed(String error) {
    return 'Не удалось отметить историю: $error';
  }

  @override
  String get v2SettingsExperience => 'Эксперименты';

  @override
  String get v2SettingsNotMigrated => 'Пока недоступно';

  @override
  String get v2SettingsTraceDesc =>
      'Читает согласованную схему CAN и текущее значение каждого сигнала.';

  @override
  String v2SettingsAutoStartFailed(String error) {
    return 'Не удалось изменить автозапуск: $error';
  }

  @override
  String v2SettingsEventFileFailed(String error) {
    return 'Не удалось изменить журнал событий: $error';
  }

  @override
  String v2SettingsWipeDone(int trips, int charges, int frames) {
    return 'Удалено: поездок — $trips, зарядок — $charges, кадров — $frames.';
  }

  @override
  String v2SettingsWipeFailed(String error) {
    return 'Не удалось удалить: $error';
  }

  @override
  String get v2CarplayTitle => 'CarPlay';

  @override
  String get v2AndroidAutoTitle => 'Android Auto';

  @override
  String get v2CarplayStatusTitle => 'Подключение';

  @override
  String get v2AndroidAutoStatusTitle => 'Подключение';

  @override
  String get v2CarplayUnavailable =>
      'Этот head unit не предоставляет службу CarPlay.';

  @override
  String get v2AndroidAutoUnavailable =>
      'Этот head unit не предоставляет службу Android Auto.';

  @override
  String get v2CarplayConnecting => 'Подключение к рендереру CarPlay…';

  @override
  String get v2AndroidAutoConnecting => 'Подключение к рендереру Android Auto…';

  @override
  String get v2CarplayBlackScreenHint =>
      'Если изображение остаётся чёрным, сеанс CarPlay не активен. Подключите iPhone — видео запустится само.';

  @override
  String get v2AndroidAutoBlackScreenHint =>
      'Если изображение остаётся чёрным, сеанс Android Auto не активен. Подключите телефон Android — видео запустится само.';

  @override
  String get v2ProjectionTouchTitle => 'Калибровка касания';

  @override
  String get v2ProjectionTouchHelp =>
      'Коснитесь проецируемого экрана и подстройте так, чтобы касание попадало туда, куда вы смотрите. Значение сохраняется.';

  @override
  String get v2ProjectionTouchStepFine => 'Точно';

  @override
  String get v2ProjectionTouchStepCoarse => 'Грубо';

  @override
  String get v2ProjectionTouchOffsetY => 'Сдвиг по вертикали';

  @override
  String get v2ProjectionTouchScaleY => 'Масштаб по вертикали';

  @override
  String get v2ProjectionTouchOffsetX => 'Сдвиг по горизонтали';

  @override
  String get v2ProjectionTouchScaleX => 'Масштаб по горизонтали';

  @override
  String get v2ProjectionTouchReset => 'Сбросить калибровку';

  @override
  String get v2CarplayDragHandle =>
      'Потяните, чтобы изменить размер карточки CarPlay';

  @override
  String get v2AndroidAutoDragHandle =>
      'Потяните, чтобы изменить размер карточки Android Auto';

  @override
  String get v2CarplayReattach => 'Переподключить';

  @override
  String get v2AndroidAutoReattach => 'Переподключить';

  @override
  String get v2CarplayBuffer => 'Буфер';

  @override
  String get v2AndroidAutoBuffer => 'Буфер';

  @override
  String get v2CarplayStateAvailable => 'Служба найдена';

  @override
  String get v2AndroidAutoStateAvailable => 'Служба найдена';

  @override
  String get v2CarplayStateBound => 'Подключено';

  @override
  String get v2AndroidAutoStateBound => 'Подключено';

  @override
  String get v2CarplayStateAttached => 'Рендеринг';

  @override
  String get v2AndroidAutoStateAttached => 'Рендеринг';

  @override
  String get v2CarplayErrorUnreachable =>
      'Не удалось получить доступ к службе CarPlay.';

  @override
  String get v2AndroidAutoErrorUnreachable =>
      'Не удалось получить доступ к службе Android Auto.';

  @override
  String get v2CarplayErrorRenderer => 'Рендерер CarPlay отклонил запрос.';

  @override
  String get v2AndroidAutoErrorRenderer =>
      'Рендерер Android Auto отклонил запрос.';

  @override
  String get v2CarplayErrorBuffer => 'Неверный размер буфера рендеринга.';

  @override
  String get v2AndroidAutoErrorBuffer => 'Неверный размер буфера рендеринга.';

  @override
  String get v2CarplayErrorGeneric => 'CarPlay сообщил об ошибке.';

  @override
  String get v2AndroidAutoErrorGeneric => 'Android Auto сообщил об ошибке.';

  @override
  String get v2CarplayExpand => 'Развернуть CarPlay на весь экран';

  @override
  String get v2AndroidAutoExpand => 'Развернуть Android Auto на весь экран';

  @override
  String get v2CarplayCollapse => 'Свернуть CarPlay';

  @override
  String get v2AndroidAutoCollapse => 'Свернуть Android Auto';

  @override
  String get v2ChargingEnergy => 'Энергия';

  @override
  String get v2ChargingAmperageTitle => 'Сила тока зарядки';

  @override
  String get v2ChargingAmperageDescription =>
      'Уменьшите ток при использовании общей или незнакомой сети.';

  @override
  String v2ChargingAmperageRange(int min, int max) {
    return 'Диапазон автомобиля $min–$max А';
  }

  @override
  String get v2ChargingCommandFailed => 'Автомобиль не принял команду зарядки.';

  @override
  String get v2ChargingAmperageUnit => 'А';

  @override
  String v2ChargingAmperageValue(int amps) {
    return '$amps А';
  }

  @override
  String get v2ChargingAmperageDecrease => 'Уменьшить силу тока зарядки';

  @override
  String get v2ChargingAmperageIncrease => 'Увеличить силу тока зарядки';

  @override
  String get v2ChargingAmperageClose => 'Закрыть управление силой тока';

  @override
  String get v2ChargingStopButton => 'Остановить зарядку';

  @override
  String get v2ChargingForceButton => 'Принудительная зарядка';

  @override
  String get v2ChargingForceActive => 'Принудительная зарядка активна';

  @override
  String get v2RangeVehicleRange => 'Запас хода автомобиля';

  @override
  String get v2RangeEstimateCaption => 'Оценка по завершённым поездкам';

  @override
  String get v2RangeEstimateDelayed =>
      'Оценка отложена · обновление истории ожидается';

  @override
  String get v2RangeEstimateReadDelayed =>
      'Оценка отложена · ошибка чтения запаса хода';

  @override
  String get v2RangeEstimateUnavailable => 'Оценка недоступна';

  @override
  String get v2RangeEstimateReadFailed => 'Оценка недоступна · ошибка чтения';

  @override
  String get v2ChargeGraphLoadFailed => 'Не удалось загрузить сеанс зарядки.';

  @override
  String get v2ChargeGraphEmpty => 'Нет доступных сеансов зарядки.';

  @override
  String get v2ChargeGraphNoData => 'В этом сеансе нет данных для графика.';

  @override
  String v2ChargeGraphPowerTick(int power) {
    return '$power';
  }

  @override
  String get v2ChargeGraphSemantics =>
      'SOC и мощность сеанса зарядки по времени';

  @override
  String get v2ChargeGraphRangeGainedEstimate =>
      'Полученный запас хода · ОЦЕНКА';

  @override
  String get v2ChargeGraphEnergyAdded => 'Добавленная энергия';

  @override
  String get v2ChargeGraphCostEstimate => 'Стоимость · ОЦЕНКА';

  @override
  String get v2ChargeGraphDuration => 'Длительность';

  @override
  String get v2ChargeGraphTargetReached => 'Лимит достигнут';

  @override
  String v2ChargeGraphDurationMinutes(int minutes) {
    return '$minutes мин';
  }

  @override
  String v2ChargeGraphDurationHoursMinutes(int hours, int minutes) {
    return '$hours ч $minutes мин';
  }

  @override
  String get v2LastChargeSession => 'Последний сеанс зарядки';

  @override
  String get v2ChargeSummaryNoEnergy => 'В этом сеансе нет измеренной энергии.';

  @override
  String get v2ChargeClimateWarningTitle => 'Климат расходует вашу зарядку';

  @override
  String v2ChargeClimateWarningHigh(String climate, String charging) {
    return 'Система климата потребляет $climate кВт из поступающих $charging кВт. Аккумулятор получает намного меньше, чем показывает зарядное устройство.';
  }

  @override
  String v2ChargeClimateWarningOutweighs(String climate) {
    return 'Система климата потребляет $climate кВт — столько же, сколько даёт зарядное устройство. Аккумулятор почти ничего не получает.';
  }

  @override
  String get v2ChargeSummaryBatteryEnergy => 'Энергия, переданная аккумулятору';

  @override
  String get v2ChargeSummaryClimateEnergy =>
      'Энергия, потреблённая системой климата во время зарядки';

  @override
  String get v2ChargeSummarySemantics =>
      'Распределение энергии сеанса между аккумулятором и системой климата';

  @override
  String get actionSave => 'СОХРАНИТЬ';

  @override
  String get actionClear => 'ОЧИСТИТЬ';

  @override
  String get settingsChargeCostTitle => 'Цена зарядки по умолчанию';

  @override
  String get settingsChargeCostDesc =>
      'Тариф за кВт·ч для оценки стоимости зарядки. Введите значение на клавиатуре.';

  @override
  String settingsChargeCostSaved(Object value) {
    return 'Сохранено: $value';
  }

  @override
  String get settingsChargeCostNotSaved => 'Цена по умолчанию не задана';

  @override
  String get settingsChargeCostEdit => 'Задать цену';

  @override
  String get v2MoneyKeypadSave => 'Сохранить';

  @override
  String get v2MoneyKeypadClear => 'Очистить сумму';

  @override
  String get v2MoneyKeypadDelete => 'Удалить последнюю цифру';

  @override
  String get v2MoneyKeypadClose => 'Закрыть клавиатуру цены';

  @override
  String get v2ChargeCostTitle => 'Цена зарядки';

  @override
  String get v2ChargeCostDescription =>
      'Действует только для этой зарядки. Введите цену за кВт·ч или полную сумму.';

  @override
  String get v2ChargeCostFieldRate => 'Цена/кВт·ч';

  @override
  String get v2ChargeCostFieldTotal => 'Всего оплачено';

  @override
  String get v2ChargeCostUnitRate => '/кВт·ч';

  @override
  String get v2ChargeCostEdit => 'Изменить цену этой зарядки';

  @override
  String get v2ChargeCostFailed => 'Цена зарядки не сохранена';

  @override
  String get settingsRoadcastTitle => 'Roadcast';

  @override
  String get settingsRoadcastUnavailable => 'Состояние демона недоступно';

  @override
  String settingsRoadcastRunning(
    Object frameCount,
    Object hz,
    Object signalCount,
  ) {
    return '$signalCount сигналов, $frameCount кадров @ $hz Гц';
  }

  @override
  String get settingsRoadcastStopped => 'Демон не передаёт данные';

  @override
  String settingsRoadcastInstalled(Object commit) {
    return 'Установлено: $commit';
  }

  @override
  String get settingsRoadcastNotChecked => 'Обновления edge ещё не проверялись';

  @override
  String settingsRoadcastUpdateAvailable(Object commit) {
    return 'Доступно обновление edge: $commit';
  }

  @override
  String get settingsRoadcastUpToDate => 'Roadcast edge обновлён';

  @override
  String settingsRoadcastIncompatible(Object reason) {
    return 'Несовместимое обновление: $reason';
  }

  @override
  String get settingsRoadcastCheck => 'ПРОВЕРИТЬ';

  @override
  String get settingsRoadcastChecking => 'ПРОВЕРКА';

  @override
  String get settingsRoadcastUpdate => 'ОБНОВИТЬ';

  @override
  String get settingsRoadcastUpdating => 'ОБНОВЛЕНИЕ';

  @override
  String get settingsRoadcastRestart => 'ПЕРЕЗАПУСК';

  @override
  String get settingsRoadcastRestarting => 'ПЕРЕЗАПУСК';

  @override
  String get settingsRoadcastRestartSuccess => 'ДЕМОН ROADCAST ПЕРЕЗАПУЩЕН';

  @override
  String settingsRoadcastRestartFailed(Object reason) {
    return 'НЕ УДАЛОСЬ ПЕРЕЗАПУСТИТЬ ROADCAST: $reason';
  }

  @override
  String settingsRoadcastCheckFailed(Object reason) {
    return 'НЕ УДАЛОСЬ ПРОВЕРИТЬ ROADCAST: $reason';
  }

  @override
  String settingsRoadcastUpdateSuccess(Object commit) {
    return 'ROADCAST ОБНОВЛЁН ДО $commit';
  }

  @override
  String settingsRoadcastUpdateFailed(Object reason) {
    return 'НЕ УДАЛОСЬ ОБНОВИТЬ ROADCAST: $reason';
  }

  @override
  String get chargeCostDialogTitle => 'СТОИМОСТЬ ЗАРЯДКИ';

  @override
  String get chargeCostPerKwhLabel => 'ЦЕНА ЗА кВт·ч';

  @override
  String get chargeCostPerKwhHint =>
      'Установите ноль, чтобы оставить пустым — используется, когда сумма оплаты не указана.';

  @override
  String get chargeCostPaidLabel => 'ОПЛАЧЕНО';

  @override
  String get chargeCostPaidHint => 'Имеет приоритет над ценой за кВт·ч.';

  @override
  String get settingsSensorLab => 'Лаборатория датчиков';

  @override
  String get settingsSensorLabDesc =>
      'Наблюдайте наклон автомобиля и толчки в реальном времени во время движения.';

  @override
  String get settingsSensorLabOpen => 'Открыть';

  @override
  String get sensorLabTitle => 'Лаборатория датчиков';

  @override
  String get sensorLabCalibrate => 'Обнулить';

  @override
  String get sensorLabReset => 'Сброс';

  @override
  String get sensorLabUnavailable => 'Датчики движения недоступны';

  @override
  String get sensorLabWaiting => 'Ожидание датчиков…';

  @override
  String get sensorLabLevel => 'Уровень';

  @override
  String get sensorLabPitch => 'Тангаж';

  @override
  String get sensorLabRoll => 'Крен';

  @override
  String get sensorLabForces => 'Силы';

  @override
  String get sensorLabVertical => 'Вертикаль (толчки)';

  @override
  String get sensorLabHorizontal => 'Торможение / поворот';

  @override
  String get sensorLabPeak => 'пик';

  @override
  String get sensorLabRoadTrace => 'График дороги (вертикаль)';

  @override
  String get sensorLabBumps => 'Толчки';

  @override
  String get sensorLabSessionPeak => 'Пиковый толчок';

  @override
  String get sensorLabRate => 'Частота выборки';

  @override
  String get canLiveMute => 'Отключить';

  @override
  String get canLiveUnmute => 'Включить';

  @override
  String get canLiveMutedList => 'Отключённые';

  @override
  String get canLiveSortRecency => 'Недавние';

  @override
  String get canLiveSortRate => 'Активные';

  @override
  String get canLiveSortName => 'Имя';

  @override
  String get canLiveMetricActive => 'Меняются сейчас';

  @override
  String get canLiveMetricRate => 'Изменений/с';

  @override
  String get canLiveWaiting => 'Ожидание демона моста CAN';

  @override
  String get canLiveStale => 'Демон перестал публиковать';

  @override
  String get canLiveNeverChanged => 'не менялся';

  @override
  String get canLiveShowSilent => 'Показать неактивные';

  @override
  String get liveTripTitle => 'ПОЕЗДКА LIVE';

  @override
  String get liveTripRowTitle => 'АКТИВНАЯ ПОЕЗДКА';

  @override
  String get liveTripOpen => 'ОТКРЫТЬ LIVE-ПОЕЗДКУ';

  @override
  String get tripNoCompletedSessions => 'Завершённых поездок пока нет.';

  @override
  String get liveTripStatusLive => 'LIVE';

  @override
  String get liveTripSpeed => 'СКОРОСТЬ';

  @override
  String get liveTripVehicleSpeedUnavailable =>
      'Поток скорости автомобиля недоступен';

  @override
  String get liveTripCanSpeedRaw => 'CAN-КАНДИДАТ СКОРОСТИ';

  @override
  String get liveTripSoc => 'SOC';

  @override
  String get liveTripSocStart => 'SOC В НАЧАЛЕ';

  @override
  String get liveTripSocChange => 'ИЗМЕНЕНИЕ SOC';

  @override
  String get liveTripSocCurrent => 'ТЕКУЩИЙ SOC';

  @override
  String get liveTripDrivePower => 'ТЯГОВАЯ МОЩНОСТЬ';

  @override
  String get liveTripRoadIncline => 'ТЕКУЩИЙ УКЛОН ДОРОГИ';

  @override
  String get inclineReadoutTitle => 'Уклон';

  @override
  String get compassReadoutTitle => 'Компас';

  @override
  String get compassNorth => 'С';

  @override
  String get compassNortheast => 'СВ';

  @override
  String get compassEast => 'В';

  @override
  String get compassSoutheast => 'ЮВ';

  @override
  String get compassSouth => 'Ю';

  @override
  String get compassSouthwest => 'ЮЗ';

  @override
  String get compassWest => 'З';

  @override
  String get compassNorthwest => 'СЗ';

  @override
  String get compassHeld => 'Стоянка. Последнее направление.';

  @override
  String get compassNoFix => 'Нет сигнала GPS';

  @override
  String get compassGpsOff => 'GPS выключен';

  @override
  String get compassNoPermission => 'Нет разрешения на геолокацию';

  @override
  String get liveTripEcoCoach => 'ECO COACH';

  @override
  String get liveTripEcoBeta => 'БЕТА';

  @override
  String get liveTripEcoObserving => 'Сбор образцов вождения';

  @override
  String get liveTripEcoAcceleration => 'УСКОР.';

  @override
  String get liveTripEcoJerk => 'РЫВОК';

  @override
  String get liveTripEcoCycles => 'РАЗГОН→ТОРМОЗ';

  @override
  String get liveTripEcoReasonStopped => 'Стоянка — оценка приостановлена';

  @override
  String get liveTripEcoReasonEfficient => 'Плавная умеренная нагрузка';

  @override
  String get liveTripEcoReasonDemand => 'Высокая тяговая нагрузка';

  @override
  String get liveTripEcoReasonAcceleration => 'Резкое ускорение';

  @override
  String get liveTripEcoReasonJerk => 'Резкое изменение ускорения';

  @override
  String get liveTripEcoReasonCoasting => 'Движение накатом без педалей';

  @override
  String get liveTripEcoReasonRegen => 'Рекуперация энергии';

  @override
  String get liveTripEcoReasonCycle => 'Разгон с последующим торможением';

  @override
  String get liveTripAverageConsumption => 'СРЕДНИЙ РАСХОД VCU';

  @override
  String get liveTripAverageConsumption1 => 'СРЕДНИЙ РАСХОД VCU 1';

  @override
  String get liveTripTotalOdometerCandidate => 'КАНДИДАТ ОДОМЕТРА';

  @override
  String get liveTripPedal => 'ПЕДАЛЬ ГАЗА';

  @override
  String get liveTripBrake => 'ТОРМОЗ';

  @override
  String get liveTripBrakeOn => 'НАЖАТ';

  @override
  String get liveTripBrakeOff => 'ОТПУЩЕН';

  @override
  String get liveTripRegenTorque => 'МОМЕНТ РЕКУП.';

  @override
  String get liveTripRegenLevel => 'УРОВЕНЬ РЕКУП.';

  @override
  String get liveTripPackPower => 'МОЩН. ПАКЕТА V x I';

  @override
  String get liveTripVhalPower => 'МОЩНОСТЬ VHAL';

  @override
  String get liveTripGear => 'ПЕРЕДАЧА';

  @override
  String get liveTripAltitude => 'ВЫСОТА';

  @override
  String get liveTripGps => 'GPS';

  @override
  String get liveTripBus => 'ШИНА CAN';

  @override
  String get liveTripPollAge => 'ВОЗРАСТ ОПРОСА';

  @override
  String get liveTripImpliedScale => 'РАСЧ. МАСШТАБ СКОРОСТИ';

  @override
  String get liveTripSectionInstant => 'МГНОВЕННЫЕ СИГНАЛЫ';

  @override
  String get liveTripSectionTotals => 'ИТОГИ ПОЕЗДКИ';

  @override
  String get liveTripSourceVhal => 'VHAL';

  @override
  String get liveTripBadgeDerived => 'V x I';

  @override
  String get liveTripBadgeStale => 'УСТАРЕЛО';

  @override
  String get liveTripCanOffline =>
      'CAN-мост offline: live-данные Roadcast недоступны';

  @override
  String get liveTripMapTitle => 'Маршрут в реальном времени';

  @override
  String get liveTripChartPower => 'Траектория мощности';

  @override
  String get liveTripChartPowerNotEnough =>
      'Недостаточно выборок мощности для графика.';

  @override
  String liveTripSourceCan(Object frameId) {
    return 'CAN $frameId';
  }

  @override
  String liveTripTotalsUpdated(Object age) {
    return 'Room, $age назад';
  }

  @override
  String liveTripWindowMinutes(Object minutes) {
    return 'последние $minutes мин';
  }

  @override
  String liveRoadcastWindowSeconds(int seconds) {
    return 'последние $seconds с в RAM';
  }

  @override
  String get liveChargeTitle => 'ЗАРЯДКА В ЭФИРЕ';

  @override
  String get liveChargeOpen => 'ОТКРЫТЬ СЕССИЮ';

  @override
  String get liveChargeRowTitle => 'АКТИВНАЯ СЕССИЯ';

  @override
  String get liveChargeSectionPack => 'БАТАРЕЯ';

  @override
  String get liveChargeSectionInput => 'ВХОД ЗАРЯДКИ';

  @override
  String get liveChargeSectionTotals => 'ИТОГИ СЕССИИ';

  @override
  String get liveChargeInputPower => 'ВХОДНАЯ МОЩНОСТЬ';

  @override
  String get liveChargePackCurrent => 'ТОК БАТАРЕИ';

  @override
  String get liveChargePackPower => 'МОЩНОСТЬ БАТАРЕИ';

  @override
  String get liveChargeCurrentRaw => 'СЧЁТ ШИНЫ';

  @override
  String get liveChargeCurrentScale => 'МАСШТАБ';

  @override
  String get liveChargeCurrentScaleValue => '0,1 А/бит (подтв.)';

  @override
  String get liveChargeZeroAssumed => 'НУЛЬ (ГИПОТЕЗА)';

  @override
  String get liveChargeZeroObserved => 'НУЛЬ ИЗМЕРЕННЫЙ';

  @override
  String liveChargeZeroSamples(int count) {
    return '$count проб';
  }

  @override
  String get liveChargeZeroWaiting => 'нужен покой';

  @override
  String get liveChargeZeroOffset => 'ОШИБКА СМЕЩЕНИЯ';

  @override
  String get liveChargeZeroNote =>
      'Значения в амперах используют предполагаемый нуль 5000. Наблюдаемый нуль накапливается в покое; разрыв между ними — ошибка каждого измерения тока.';

  @override
  String get liveChargeObcInputVolts => 'ВХОДНОЕ НАПРЯЖЕНИЕ';

  @override
  String get liveChargeObcInputCurrent => 'ВХОДНОЙ ТОК';

  @override
  String get liveChargeObcState => 'СОСТОЯНИЕ ЗАРЯДКИ';

  @override
  String get liveChargeObcEfficiency => 'КПД ЗУ';

  @override
  String get liveChargeChartPower => 'Входная мощность';

  @override
  String get liveChargeChartCurrent => 'Ток батареи (оц.)';

  @override
  String get liveChargeChartSoc => 'Уровень заряда';

  @override
  String get liveChargeChartNotEnough => 'Ожидание данных шины.';

  @override
  String get liveChargeEnergyAdded => 'ДОБАВЛЕНО ЭНЕРГИИ';

  @override
  String get liveChargeEta => 'ВРЕМЯ ДО ПОЛНОГО';

  @override
  String liveChargeEtaTarget(int percent) {
    return 'ВРЕМЯ ДО $percent%';
  }

  @override
  String get liveChargeBadgeEstimate => 'ОЦ';

  @override
  String get liveChargeCanOffline =>
      'CAN-мост offline: ток и напряжение батареи недоступны';

  @override
  String get liveChargeNoLiveSession => 'Нет открытой сессии зарядки.';

  @override
  String get chargeDetailCost => 'СТОИМОСТЬ';

  @override
  String get chargeDetailEditCost => 'ИЗМЕНИТЬ СТОИМОСТЬ';

  @override
  String get chargeDetailCostPerKwh => 'ЗА кВт·ч';

  @override
  String get chargeDetailSectionOverview => 'ОБЗОР';

  @override
  String get chargeDetailSectionEnergy => 'ЭНЕРГИЯ И СТОИМОСТЬ';

  @override
  String get chargeDetailSectionCurves => 'КРИВЫЕ';

  @override
  String get chargeDetailSectionContext => 'КОНТЕКСТ';

  @override
  String get chargeDetailPeakPower => 'ПИКОВАЯ МОЩНОСТЬ';

  @override
  String get chargeDetailSocRate => 'СКОРОСТЬ SOC';

  @override
  String get chargeDetailEnergyRate => 'СКОРОСТЬ ЭНЕРГИИ';

  @override
  String get chargeDetailSocPerHour => '%/ч';

  @override
  String chargeDetailSamples(int count) {
    return '$count тчк';
  }

  @override
  String get chargeDetailNoCost => 'Нажмите, чтобы задать цену';

  @override
  String get chargeDetailStartedAt => 'НАЧАЛО';

  @override
  String get chargeDetailEndedAt => 'КОНЕЦ';

  @override
  String liveChargeLoss(Object kw) {
    return '$kw кВт теряется в ЗУ';
  }

  @override
  String get liveChargeWallPower => 'МОЩНОСТЬ ИЗ СЕТИ';

  @override
  String get liveChargeMeasured => 'ИЗМ';

  @override
  String get energyMonitorTab => 'Монитор энергии';

  @override
  String get rangeReasonCollectionStopped => 'Сбор данных остановлен.';

  @override
  String get rangeReasonWaitingForSignal => 'Ожидание сигнала.';

  @override
  String get rangeReasonSignalError => 'Ошибка сигнала.';

  @override
  String get rangeReasonUnpublishedSignal => 'Машина не передаёт это значение.';

  @override
  String get rangeReasonOutOfRange => 'Значение вне диапазона.';

  @override
  String get rangeReasonEfficiencyLoading => 'Чтение эффективности.';

  @override
  String get rangeReasonNoValidEfficiency =>
      'Пока нет измеренной эффективности.';

  @override
  String get rangeReasonEfficiencyStale => 'Эффективность устарела.';

  @override
  String get rangeDropTitle => 'Падение запаса хода';

  @override
  String get rangeDropDistance => 'Проехали';

  @override
  String get rangeDropCarSpent => 'Машина потратила';

  @override
  String get rangeDropCarGained => 'Машина набрала';

  @override
  String get rangeDropAppSpent => 'Приложение потратило';

  @override
  String get rangeDropAppGained => 'Приложение набрало';

  @override
  String rangeDropStretch(String time) {
    return 'Измерение с $time';
  }

  @override
  String get rangeDropWaiting => 'Ожидание поездки.';

  @override
  String get rangeDropTooShort => 'Отрезок слишком короткий для сравнения.';

  @override
  String get rangeDropFrozen => 'Отрезок закрыт';

  @override
  String get energyUseTitle => 'Расход энергии';

  @override
  String get energyUseAbout => 'О расходе энергии';

  @override
  String get energyWindowCurrentDrive => 'Текущая поездка';

  @override
  String get energyWindowSincePowerOn => 'С момента включения';

  @override
  String get energyWindowLast15Minutes => 'Последние 15 минут';

  @override
  String get energyWindowLastHour => 'Последний час';

  @override
  String get energyWindowLast8Hours => 'Последние 8 часов';

  @override
  String get energyWindowSelector => 'Выберите отрезок поездки для показа';

  @override
  String get energyModeDrive => 'Поездка';

  @override
  String get energyModeParked => 'Стоянка';

  @override
  String get energyStateCharge => 'Зарядка';

  @override
  String get energyStatePoweredOn => 'Включён';

  @override
  String get energyChartEmpty => 'В этом окне поездок не записано.';

  @override
  String get energyChartEmptyParked => 'В этом окне автомобиль не стоял.';

  @override
  String get energyChartLoading => 'Чтение поездки…';

  @override
  String get energyChartFailed => 'Не удалось прочитать поездку.';

  @override
  String get energyChartSemantics => 'Расход энергии по интервалам';

  @override
  String get energyBarOpen => 'идёт';

  @override
  String get energyTraction => 'Привод';

  @override
  String get energyClimate => 'Климат';

  @override
  String get energyAuxiliary => 'Прочие системы';

  @override
  String get energyRegeneration => 'Возвращено';

  @override
  String get sessionDetailsTitle => 'Сведения о сеансе';

  @override
  String get sessionDetailsAbout => 'Об этом сеансе';

  @override
  String get sessionDetailsInfoTitle => 'Что показывает кольцо';

  @override
  String get sessionDetailsInfoClose => 'Закрыть пояснение о сеансе';

  @override
  String get sessionDetailsInfoTraction =>
      'Энергия, которую батарея отдала мотору на движение автомобиля.';

  @override
  String get sessionDetailsInfoClimate =>
      'Энергия, которую батарея отдала на обогрев и охлаждение. Автомобиль сообщает это значение сам.';

  @override
  String get sessionDetailsInfoAuxiliary =>
      'Всё, что отдала батарея и что не объясняют привод и климат: руль, насосы, свет, электроника. Это остаток после привода, поэтому в нём накапливается погрешность обоих измерений. Если автомобиль не сообщает мощность климата, эта нагрузка входит в данное значение.';

  @override
  String get sessionDetailsInfoRegeneration =>
      'Энергия, возвращённая мотором при замедлении. Измеряется по отношению к израсходованной, а не является её долей — поэтому это внутренняя дуга.';

  @override
  String get energyStatEfficiency => 'Сред.';

  @override
  String get energyStatDistance => 'Дистанция';

  @override
  String get energyStatSpeed => 'Сред. скорость';

  @override
  String get energyStatCost => 'Расч. стоимость';

  @override
  String get energyStatParkedDrain => 'Ср. расход';

  @override
  String get energyStatParkedTotal => 'Всего';

  @override
  String get energyStatParkedClimate => 'Климат';

  @override
  String get energyLedgerIn => 'Пришло';

  @override
  String get energyLedgerOut => 'Ушло';

  @override
  String get energyLedgerBalance => 'Баланс';

  @override
  String get energyLedgerSoc => 'SOC';

  @override
  String get energyLedgerIncludesEstimate => 'Включает оценку расхода во сне.';

  @override
  String get unitKmPerKwh => 'км/кВт·ч';

  @override
  String get unitKwhPer50km => 'кВт·ч/50км';

  @override
  String get unitKwhPer100km => 'кВт·ч/100км';

  @override
  String get efficiencyAverageWindow => 'Ср. · последние 15 мин';

  @override
  String get efficiencyTimeNotSynced =>
      'Время ещё не синхронизировано. Линия показывает измеренную эффективность.';

  @override
  String get efficiencyLessRange => 'Меньше запаса хода';

  @override
  String get efficiencyAxisUnit => 'Вт·ч/км';

  @override
  String get efficiencySmoothnessLabel => 'Плавность вождения';

  @override
  String get efficiencySmoothnessWindow => 'последние 30 с';

  @override
  String get efficiencyAbout => 'Об этой карточке';

  @override
  String get efficiencyInfoClose => 'Закрыть пояснение об эффективности';

  @override
  String get efficiencyInfoTitle => 'Как читать эту карточку';

  @override
  String get efficiencyInfoLinesLabel => 'Две линии';

  @override
  String get efficiencyInfoLines =>
      'Верхняя линия — расход поездки после возврата энергии рекуперацией. Нижняя линия — то, что автомобиль берёт до этого возврата. Зелёная область между ними — возвращённая энергия.';

  @override
  String get efficiencyInfoScaleLabel => 'Шкала';

  @override
  String get efficiencyInfoScale =>
      'Шкала — Вт·ч/км, ноль сверху, поэтому линия выше — лучше. Верхняя линия зелёная, когда поездка лучше оценки запаса хода автомобиля. Разрыв — это интервал, о котором автомобиль не сообщил.';

  @override
  String get efficiencyInfoAverageLabel =>
      'Большое число и значение автомобиля';

  @override
  String get efficiencyInfoAverage =>
      'Это среднее за последние 15 минут: расстояние, делённое на энергию, которую отдала батарея. Нажмите, чтобы изменить единицу. Автомобиль считает свои кВт·ч/100 км по последним реальным 100 км, а это могут быть многие поездки и многие дни. Поэтому два числа разные, и оба верны.';

  @override
  String get efficiencyInfoSmoothnessLabel => 'Полоса сбоку';

  @override
  String get efficiencyInfoSmoothness =>
      'Полоса показывает плавность вождения, а не эффективность. Ползунок — последние 30 секунд, малая метка — последние 5 секунд. Метка выше ползунка показывает более плавное вождение.';

  @override
  String get signalLabTitle => 'Лаборатория сигналов';

  @override
  String get signalLabOpen => 'Открыть лабораторию сигналов';

  @override
  String get signalLabDescription =>
      'Инженерный вид всех сигналов CAN, которые декодирует демон.';

  @override
  String get signalLabTabInspector => 'ИНСПЕКТОР';

  @override
  String get signalLabTabScope => 'ОСЦИЛЛОГРАФ';

  @override
  String get signalLabSearchHint => 'Имя сигнала или 0x315';

  @override
  String get signalLabTierFresh => 'Свежий';

  @override
  String get signalLabTierPublished => 'Опубликован';

  @override
  String get signalLabTierNever => 'Никогда';

  @override
  String get signalLabColumnSignal => 'Сигнал';

  @override
  String get signalLabColumnFrame => 'Кадр';

  @override
  String get signalLabColumnRaw => 'Сырое';

  @override
  String get signalLabColumnValue => 'Значение';

  @override
  String get signalLabColumnUnit => 'Единица';

  @override
  String get signalLabColumnAge => 'Возраст';

  @override
  String get signalLabColumnTier => 'Уровень';

  @override
  String get signalLabColumnRange => 'Мин./макс. сессии';

  @override
  String get signalLabRawCounts => 'отсчёты';

  @override
  String get signalLabUncalibrated => 'ОЦ';

  @override
  String get signalLabUncalibratedHint =>
      'Масштаб не согласован. Измерение — это счётчик.';

  @override
  String get signalLabInvalid => 'НЕВЕРНО';

  @override
  String get signalLabDisconnected =>
      'Roadcast не подключён. Сигналы читать нельзя.';

  @override
  String get signalLabEmpty => 'Ни один сигнал не соответствует фильтру.';

  @override
  String get signalLabScopeEmpty =>
      'Выберите до четырёх сигналов в инспекторе, чтобы построить график.';

  @override
  String get signalLabScopeFull =>
      'На осциллографе четыре графика. Сначала удалите один.';

  @override
  String get signalLabFreeze => 'Заморозить';

  @override
  String get signalLabResume => 'Возобновить';

  @override
  String get signalLabClearTraces => 'Очистить графики';

  @override
  String get signalLabResetSession => 'Сбросить сессию';

  @override
  String get signalLabTrace => 'График';

  @override
  String signalLabCounts(int fresh, int published, int never) {
    return '$fresh свежих, $published опубликовано, $never никогда';
  }

  @override
  String get v1WelcomeTitle => 'Интерфейс Версии 1.0';

  @override
  String get v1WelcomeBody =>
      'Добро пожаловать в Версию 1.0! В этом релизе представлен новый интерфейс приложения. Он продолжает совершенствоваться и получать исправления на основе ваших отзывов.\n\nЕсли вы захотите вернуться к старому режиму, вы можете переключиться на него в любое время в Настройках. Приложение запомнит ваш выбор и будет всегда открываться в нем.';

  @override
  String get v1WelcomeConfirm => 'Исследовать новый режим';

  @override
  String get v1WelcomeUseLegacy => 'Использовать старый режим';

  @override
  String get v2ProjectionBetaTitle => 'CarPlay / Android Auto (бета)';

  @override
  String get v2ProjectionBetaDescription =>
      'Показывает вкладку подключенного телефона и отображает в ней экран. Если телефон не подключен, вкладка не отображается. Бета-версия.';

  @override
  String get settingsReplaceOemChargingTitle => 'Заменить экран зарядки авто';

  @override
  String get settingsReplaceOemChargingDesc =>
      'Блокирует автоматическое окно заводского экрана зарядки и открывает это приложение на вкладке «Зарядка», когда зарядка начинается. Заводское приложение по-прежнему открывается со значка. Экран не занимается в режиме кемпинга или сна.';

  @override
  String get settingsExternalChargeControlTitle =>
      'Внешнее управление зарядкой (Geely Charge Control)';

  @override
  String get settingsExternalChargeControlDesc =>
      'Позволяет управлять ограничением зарядки и током, делегируя действия выделенному приложению Geely Charge Control. По умолчанию Eaglemetry работает только как анализатор телеметрии.';

  @override
  String get settingsChargeControlNotInstalled =>
      'Geely Charge Control не установлен';

  @override
  String settingsChargeControlInstalled(String version) {
    return 'Geely Charge Control установлен (v$version)';
  }

  @override
  String get settingsChargeControlDownloadAndInstall =>
      'Скачать и установить APK';

  @override
  String get settingsChargeControlOpenApp => 'Открыть приложение';

  @override
  String get settingsChargeControlInstalling => 'Установка APK...';

  @override
  String settingsChargeControlDownloadingPercent(int percent) {
    return 'Загрузка... $percent%';
  }

  @override
  String get settingsChargeControlInstalledSuccess =>
      'Установка Geely Charge Control запланирована/завершена.';

  @override
  String get settingsChargeControlLaunchFailed =>
      'Geely Charge Control не открылся.';

  @override
  String get settingsPackCapacityTitle => 'Ёмкость батареи';

  @override
  String get settingsPackCapacityDesc =>
      'Размер батареи, который приложение использует во всех расчетах энергии и эффективности. Автомобиль не сообщает достоверное значение, поэтому укажите его здесь. По умолчанию: 39,60 кВт·ч.';

  @override
  String settingsPackCapacitySaved(String value) {
    return 'Ёмкость батареи установлена: $value.';
  }

  @override
  String get settingsChargeCostApplyTitle => 'Указать цену прошлых зарядок';

  @override
  String get settingsChargeCostApplyDesc =>
      'Записывает ставку по умолчанию во все завершенные зарядки без цены. Зарядка с указанной суммой сохраняет ее.';

  @override
  String get settingsChargeCostApply => 'Применить к зарядкам без цены';

  @override
  String get settingsChargeCostApplying => 'Применение...';

  @override
  String get settingsProposalDecision => 'Ответить на предложение';

  @override
  String get settingsProposalPrompt => 'Телефон предложил это значение.';

  @override
  String get settingsProposalAccept => 'Принять';

  @override
  String get settingsProposalRefuse => 'Отклонить';

  @override
  String get settingsProposalDeciding => 'Решаем...';

  @override
  String get settingsProposalUnknown => 'Предложение';

  @override
  String settingsChargeCostApplied(int count) {
    return '$count зарядок теперь имеют ставку по умолчанию.';
  }

  @override
  String get settingsChargeCostApplyNone =>
      'Ни одна зарядка не нуждалась в цене.';

  @override
  String get settingsChargeCostApplyNoRate =>
      'Сначала сохраните ставку по умолчанию.';

  @override
  String insightNotEnoughData(int count) {
    return 'За последние 30 дней ещё мало измеренных поездок ($count пригодных).';
  }

  @override
  String get insightSubjectUnusable =>
      'У этой поездки нет измеренной энергии батареи для сравнения.';

  @override
  String insightNotDistinguishable(int count) {
    return 'Эту поездку пока нельзя отличить от ваших последних 30 дней ($count поездок).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'Эта поездка потратила на $difference Вт·ч/км меньше, чем за последние 30 дней ($count поездок).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'Эта поездка потратила на $difference Вт·ч/км больше, чем за последние 30 дней ($count поездок).';
  }

  @override
  String get navSync => 'Синхронизация';

  @override
  String get v2SyncCodeTitle => 'Код сопряжения';

  @override
  String get v2SyncNoCode => 'Код не создан';

  @override
  String get v2SyncRegisteredSubtitle =>
      'Автомобиль зарегистрирован. Ожидание привязки к телефону.';

  @override
  String get v2SyncRegisteredBody =>
      'Автомобиль зарегистрировался сам. Откройте приложение Eaglemetry Companion на телефоне и привяжите автомобиль к аккаунту.';

  @override
  String get v2SyncRegistered => 'ЗАРЕГИСТРИРОВАН';

  @override
  String get v2SyncRevokedSubtitle => 'Доступ отозван. Создайте новый код.';

  @override
  String get v2SyncRevokedBody =>
      'Доступ к этому автомобилю был отозван. Создайте новый код сопряжения, чтобы снова подключить телефон.';

  @override
  String get v2SyncRevoked => 'ОТОЗВАН';

  @override
  String get v2SyncCodeExpired => 'Код истёк. Создайте новый.';

  @override
  String get v2SyncCodeCancelled => 'Код отменён. Создайте новый.';

  @override
  String get v2SyncCreateCode => 'НОВЫЙ КОД';

  @override
  String get v2SyncCancelCode => 'ОТМЕНИТЬ КОД';

  @override
  String get v2SyncRetry => 'ПОВТОРИТЬ';

  @override
  String get v2SyncPaired => 'СОПРЯЖЁН';

  @override
  String get v2SyncPairedConnected => 'Телефон сопряжён. Подключено.';

  @override
  String get v2SyncPairingRejected => 'Телефон отклонил сопряжение.';

  @override
  String get v2SyncPairingInvalid => 'Что-то пошло не так.';

  @override
  String get v2SyncPairingStartFailed =>
      'Не удалось начать сопряжение. Попробуйте ещё раз.';

  @override
  String get v2SyncCheckingConnection => 'Проверка соединения…';

  @override
  String get v2SyncCheckingBody => 'Проверяем, доступна ли машина серверу…';

  @override
  String get v2SyncNoNetwork =>
      'Нет сетевого соединения. Проверьте Wi-Fi или хотспот.';

  @override
  String get v2SyncNoNetworkBody =>
      'У машины нет сетевого соединения. Включите Wi-Fi или хотспот и попробуйте ещё раз.';

  @override
  String get v2SyncServerUnreachable =>
      'Сервер недоступен. Проверьте соединение.';

  @override
  String get v2SyncServerUnreachableBody =>
      'Машина в сети, но сервер недоступен. Проверьте соединение и попробуйте ещё раз.';

  @override
  String get v2SyncPendingBody =>
      'Откройте приложение Eaglemetry Companion на телефоне и введите этот код. Он истекает через 5 минут.';

  @override
  String get v2SyncApprovedBody =>
      'Ваш телефон сопряжён. Машина синхронизируется с облаком, когда есть соединение.';

  @override
  String get v2SyncExpiredBody =>
      'Этот код истёк через 5 минут. Создайте новый и попробуйте ещё раз.';

  @override
  String get v2SyncRejectedBody =>
      'Телефон отклонил сопряжение. Создайте новый код и попробуйте ещё раз.';

  @override
  String get v2SyncInvalidBody =>
      'Что-то пошло не так с кодом. Создайте новый и попробуйте ещё раз.';

  @override
  String get v2SyncIdleBody =>
      'Откройте приложение Eaglemetry Companion на телефоне. Создайте код здесь и введите его там.';

  @override
  String get v2SyncExpiresInMinutes => 'Истекает через 5 минут';

  @override
  String v2SyncExpiresInClock(int minutes, String seconds) {
    return 'Истекает через $minutes:$seconds';
  }

  @override
  String v2SyncExpiresInSecs(int seconds) {
    return 'Истекает через $seconds с';
  }

  @override
  String get v2SyncDevicesTitle => 'Сопряжённые телефоны';

  @override
  String get v2SyncNoDevices => 'Нет сопряжённых телефонов';

  @override
  String get v2SyncNoDevicesBody =>
      'Машина отдаёт данные только сопряжённому телефону. Создайте код, чтобы сопрячь его.';

  @override
  String v2SyncDeviceCount(Object count) {
    return 'Сопряжено: $count';
  }

  @override
  String v2SyncPairedOn(Object date) {
    return 'Сопряжён $date';
  }

  @override
  String get v2SyncRevoke => 'ОТКЛЮЧИТЬ SYNC';

  @override
  String v2SyncRevokeConfirmTitle(Object name) {
    return 'Отключить sync для $name?';
  }

  @override
  String get v2SyncRevokeConfirmMessage =>
      'Телефон теряет доступ к машине. Машина освобождается для sync с другим телефоном. История, уже сохранённая на телефоне, остаётся там.';

  @override
  String get v2SyncRevokeConfirm => 'ОТКЛЮЧИТЬ SYNC';

  @override
  String get v2SyncRevokeCancel => 'ОТМЕНА';

  @override
  String get v2SyncForce => 'ФОРСИРОВАТЬ SYNC';

  @override
  String get v2SyncCloudTitle => 'Облачный sync';

  @override
  String get v2SyncCloudSubtitle => 'Загрузите данные машины в облако сейчас.';

  @override
  String get v2SyncCloudRunning => 'Загрузка…';

  @override
  String get v2SyncCloudNote =>
      'Отправляет телеметрию, аннотации и изменения настроек в облако. Работает само каждые 15 минут; эта кнопка запускает сейчас.';

  @override
  String v2SyncCloudMoved(int count) {
    return 'Загружено записей: $count.';
  }

  @override
  String get v2SyncCloudEmpty => 'Уже всё загружено. Нечего отправлять.';

  @override
  String get v2SyncCloudFailed => 'Загрузка не удалась. Попробуйте ещё раз.';

  @override
  String get v2SyncCloudDisabled =>
      'Облачный sync выключен в этой сборке. Ничего не загружено.';

  @override
  String get v2SyncCloudNotPaired =>
      'Сначала привяжите этот автомобиль к телефону. Ничего не загружено.';

  @override
  String get v2SyncLiveActive => 'Живые значения: передаются';

  @override
  String get v2SyncLiveIdle => 'Живые значения: ожидание телефона';

  @override
  String get v2SyncProgressLabel => 'Прогресс в облаке';

  @override
  String get v2SyncProgressUpToDate => '100% синхронизировано';

  @override
  String v2SyncProgressPending(int count) {
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
  String v2SyncProgressPendingClock(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ожидает часы автомобиля',
      many: '$count ожидают часы автомобиля',
      few: '$count ожидают часы автомобиля',
      one: '1 ожидает часы автомобиля',
    );
    return '$_temp0';
  }

  @override
  String v2SyncProgressPendingBoth(int dirty, int clock) {
    String _temp0 = intl.Intl.pluralLogic(
      dirty,
      locale: localeName,
      other: '$dirty в очереди',
      many: '$dirty в очереди',
      few: '$dirty в очереди',
      one: '1 в очереди',
    );
    String _temp1 = intl.Intl.pluralLogic(
      clock,
      locale: localeName,
      other: '$clock ожидает часы автомобиля',
      many: '$clock ожидают часы автомобиля',
      few: '$clock ожидают часы автомобиля',
      one: '1 ожидает часы автомобиля',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String v2SyncProgressDetail(int clean, int total) {
    return '$clean из $total записей в облаке';
  }

  @override
  String get v2SyncCompanionTitle => 'Eaglemetry Companion';

  @override
  String get v2SyncCompanionBeta => 'Доступна бета';

  @override
  String get v2SyncCompanionDescription =>
      'Отслеживайте поездки, историю зарядок и показатели батареи на телефоне.';

  @override
  String get v2SyncCompanionUpdateHint =>
      'Не удаётся синхронизировать? Скачайте новую версию companion!';

  @override
  String get v2SyncCompanionScanQr =>
      'Отсканируйте код для загрузки бета-версии:';

  @override
  String get v2SyncCompanionAndroid => 'Android';

  @override
  String get v2SyncCompanionIos => 'iOS';

  @override
  String get v2SyncCompanionForbidden => '403?';

  @override
  String get v2SyncCompanionBetaWarning =>
      'Приложение находится в бета-версии (версия для iOS ожидает одобрения Apple). Некоторые функции отсутствуют и возможны ошибки. Чтобы отправить отзыв, потрясите телефон!';

  @override
  String get v2SettingsStorage => 'Хранилище';

  @override
  String get v2SettingsStorageTitle => 'Сохранённая история';

  @override
  String get v2SettingsStorageDesc =>
      'Сколько места занимает сохранённая история. Измеряется без сканирования каждой записи.';

  @override
  String get v2SettingsStorageLoading => 'Проверка…';

  @override
  String v2SettingsStorageFailed(String error) {
    return 'Ошибка проверки хранилища: $error';
  }

  @override
  String v2SettingsStorageValue(String size) {
    return 'Использовано $size';
  }
}
