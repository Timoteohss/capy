// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry';

  @override
  String get navBrand => 'AUTO';

  @override
  String get navTrips => 'Viagens';

  @override
  String get navCharging => 'Carga';

  @override
  String get navHistory => 'Histórico';

  @override
  String get navRoadcastTrace => 'Trace';

  @override
  String get navHelpers => 'Helpers';

  @override
  String get navSettings => 'Config';

  @override
  String get navCarplay => 'CarPlay';

  @override
  String get navAndroidAuto => 'Android Auto';

  @override
  String get appBarTitle => 'GEELY TELEMETRIA';

  @override
  String get gearD => 'D';

  @override
  String get gearP => 'P';

  @override
  String get gearR => 'R';

  @override
  String get gearN => 'N';

  @override
  String get plugNone => 'NENHUM';

  @override
  String get plugAc => 'AC';

  @override
  String get plugDc => 'DC';

  @override
  String get plugIntegration => 'INTEGRAÇÃO';

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
  String get changeModeOnChange => 'AO MUDAR';

  @override
  String get changeModeContinuous => 'CONTÍNUO';

  @override
  String changeModeUnknown(Object value) {
    return 'DESCONHECIDO($value)';
  }

  @override
  String get helpersTitle => 'HELPERS';

  @override
  String get helpersSubtitle => 'Modo de temperatura';

  @override
  String get helpersTemperatureSection => 'Modo Temperatura';

  @override
  String get helpersTemperatureModeTitle => 'Modo de temperatura';

  @override
  String get helpersTemperatureModeDesc =>
      'Liga ou desliga a interceptação dos botões de mídia para controlar temperatura e ventilador do AC.';

  @override
  String get helpersRetry => 'TENTAR DE NOVO';

  @override
  String get helpersHvacControlTitle => 'Teste de escrita HVAC';

  @override
  String get helpersHvacControlDesc =>
      'Escrita direta de clima pelo caminho do geelycontrol: HVAC_TEMPERATURE_SET no banco esquerdo e HVAC_FAN_SPEED na área 5.';

  @override
  String get helpersHvacRefresh => 'LER HVAC';

  @override
  String get helpersHvacTempDown => 'TEMP -';

  @override
  String get helpersHvacTempUp => 'TEMP +';

  @override
  String get helpersHvacFanDown => 'FAN -';

  @override
  String get helpersHvacFanUp => 'FAN +';

  @override
  String get helpersHvacNotTested => 'NÃO TESTADO';

  @override
  String get helpersHvacOk => 'OK';

  @override
  String get helpersHvacFailed => 'FALHOU';

  @override
  String get helpersHvacNoResult => 'Nenhum resultado de comando HVAC ainda';

  @override
  String get helpersHvacDetailsEmpty => 'Sem detalhes nativos';

  @override
  String get helpersFeedbackTitle => 'Feedback do detector';

  @override
  String get helpersFeedbackDisabled => 'DESATIVADO';

  @override
  String get helpersFeedbackStandby => 'MONITORANDO';

  @override
  String get helpersFeedbackActivated => 'ATIVADO';

  @override
  String get helpersFeedbackLastTrigger => 'Último gatilho';

  @override
  String get helpersFeedbackNever => 'Nunca';

  @override
  String get helpersKnobTrigger => 'Knob do farol';

  @override
  String get helpersSimulateKnob => 'SIM KNOB';

  @override
  String get helpersKnobDetectorTitle => 'Gatilho pelo knob do farol';

  @override
  String get helpersKnobSequence => 'Sequência';

  @override
  String get helpersKnobTransitions => 'Transições';

  @override
  String get helpersKnobWindow => 'Janela do knob';

  @override
  String get helpersSafetyTitle => 'Fail-safes';

  @override
  String get helpersIdleTimeout => 'Timeout ocioso';

  @override
  String get helpersHardCap => 'Teto rígido';

  @override
  String get helpersSafetyDesc =>
      'Esses limites definem quando o futuro modo ativo deve restaurar o keyserver de mídia.';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get settingsDescription =>
      'Manutenção de dados do registro local de telemetria veicular.';

  @override
  String get settingsSectionSystem => 'CONFIG. SISTEMA';

  @override
  String get settingsSectionGeneral => 'Operação Geral';

  @override
  String get settingsSectionData => 'Dados & Retenção';

  @override
  String get settingsAppTheme => 'Tema do app';

  @override
  String get settingsThemeDesc =>
      'Escolha a paleta do app. Cada bloco mostra a página, um cartão e o seu texto.';

  @override
  String get settingsDark => 'ESCURO';

  @override
  String get settingsLight => 'CLARO';

  @override
  String get settingsThemeNameLight => 'Claro';

  @override
  String get settingsThemeNameDark => 'Petróleo';

  @override
  String get settingsThemeNameMidnight => 'Meia-noite';

  @override
  String get settingsThemeNameSepia => 'Sépia';

  @override
  String get settingsThemeNameNordic => 'Nórdico';

  @override
  String get settingsThemeNameDaylight => 'Luz do dia';

  @override
  String get settingsThemeNameTokyoNeon => 'Tokyo Neon';

  @override
  String get settingsThemeNameSunsetDrive => 'Pôr do Sol';

  @override
  String get settingsThemeNameBubblegum => 'Chiclete';

  @override
  String get settingsEfficiencyUnit => 'Unidade de eficiência';

  @override
  String get settingsEfficiencyUnitDesc =>
      'Escolha como o app mostra a eficiência de condução. Toque na leitura em qualquer parte do app para alternar a mesma escolha.';

  @override
  String get settingsRetention => 'Retenção de dados brutos';

  @override
  String get settingsRetentionDesc =>
      'Mantém o histórico de viagens e cargas, compacta sessões encerradas e remove frames/eventos brutos com mais de 30 dias.';

  @override
  String get settingsRetentionRunning => 'EXECUTANDO';

  @override
  String get settingsRetentionRun => 'EXECUTAR RETENÇÃO';

  @override
  String get settingsAutoStart => 'Iniciar telemetria na inicialização';

  @override
  String get settingsAutoStartDesc =>
      'Inicia o coletor nativo após a inicialização do veículo ou substituição do pacote.';

  @override
  String get settingsGps => 'Coleta de GPS durante viagens';

  @override
  String get settingsGpsDesc =>
      'Armazena latitude, longitude, altitude e precisão GPS nos frames de telemetria quando a localização nativa está disponível.';

  @override
  String get settingsKeepBluetoothOnTitle => 'Manter o Bluetooth ligado';

  @override
  String get settingsKeepBluetoothOnDesc =>
      'Liga o radio do carro de novo quando ele desliga, para o celular continuar recebendo os dados ao vivo. O carro desliga o radio sozinho.';

  @override
  String settingsKeepBluetoothOnFailed(Object error) {
    return 'FALHA AO MANTER O BLUETOOTH LIGADO: $error';
  }

  @override
  String get settingsContinuousMode => 'Gravação contínua';

  @override
  String get settingsContinuousModeDesc =>
      'Grava um minuto de energia a cada minuto que o carro fica ligado, mesmo parado ou em ponto morto. Desligar mantém o que já foi gravado.';

  @override
  String settingsContinuousModeFailed(Object error) {
    return 'FALHA NA GRAVAÇÃO CONTÍNUA: $error';
  }

  @override
  String get settingsEventFile => 'Arquivo de log de eventos (debug)';

  @override
  String get settingsEventFileDesc =>
      'Espelha os eventos de telemetria em um arquivo JSONL para depuração. Usa armazenamento extra; os arquivos existentes são removidos ao desativar.';

  @override
  String get settingsWipe => 'Apagar banco de dados de telemetria';

  @override
  String get settingsWipeDesc =>
      'Remove permanentemente todas as sessões de viagem, carga, frames e eventos de telemetria em uma operação.';

  @override
  String get settingsWiping => 'LIMAPANDO';

  @override
  String get settingsWipeHistory => 'LIMPAR HISTÓRICO';

  @override
  String get settingsWipeDialogTitle => 'LIMPAR HISTÓRICO';

  @override
  String get settingsWipeDialogContent =>
      'Isso exclui permanentemente todas as linhas do banco de dados de telemetria local. Logs de carga não podem ser excluídos individualmente e esta ação não pode ser desfeita.';

  @override
  String get settingsCancel => 'CANCELAR';

  @override
  String get settingsWipeAll => 'LIMPAR TUDO';

  @override
  String settingsLoadFailed(Object error) {
    return 'FALHA CARREGAR CONFIG: $error';
  }

  @override
  String get settingsAutoStartEnabled => 'INICIALIZAÇÃO ATIVADA';

  @override
  String get settingsAutoStartDisabled => 'INICIALIZAÇÃO DESATIVADA';

  @override
  String settingsAutoStartError(Object error) {
    return 'FALHA ATUALIZAR INICIALIZAÇÃO: $error';
  }

  @override
  String get settingsGpsEnabled => 'COLETA GPS ATIVADA';

  @override
  String get settingsGpsDisabled => 'COLETA GPS DESATIVADA';

  @override
  String settingsGpsError(Object error) {
    return 'FALHA ATUALIZAR GPS: $error';
  }

  @override
  String settingsClearFailed(Object error) {
    return 'FALHA LIMPAR BD: $error';
  }

  @override
  String settingsRetentionFailed(Object error) {
    return 'FALHA RETENÇÃO: $error';
  }

  @override
  String get roadcastTraceTitle => 'TRACE ROADCAST';

  @override
  String get roadcastTraceSubtitle => 'Atividade CAN ao vivo';

  @override
  String get roadcastTraceRunning => 'RODANDO';

  @override
  String get roadcastTraceStopped => 'PARADO';

  @override
  String get roadcastTraceStart => 'INICIAR';

  @override
  String get roadcastTraceStop => 'PARAR';

  @override
  String get roadcastTraceBaseline => 'BASELINE';

  @override
  String get roadcastTraceClear => 'LIMPAR';

  @override
  String get roadcastTraceChangedOnly => 'SO MUDOU';

  @override
  String get roadcastTraceValidOnly => 'SO VALIDOS';

  @override
  String get roadcastTraceSearchHint => 'Filtrar sinal, CAN id, signal id';

  @override
  String get roadcastTraceMetricSignals => 'SINAIS';

  @override
  String get roadcastTraceMetricChanged => 'MUDARAM';

  @override
  String get roadcastTraceMetricSnapshots => 'SNAPSHOTS';

  @override
  String get roadcastTraceMetricSamples => 'AMOSTRAS';

  @override
  String get roadcastTraceMetricBaseline => 'BASELINE';

  @override
  String get roadcastTraceNoBaseline => '--';

  @override
  String get roadcastTraceEmpty => 'Inicie a captura ou ajuste os filtros.';

  @override
  String get roadcastTraceHeaderSignal => 'SINAL';

  @override
  String get roadcastTraceHeaderNow => 'AGORA';

  @override
  String get roadcastTraceRaw => 'CRU';

  @override
  String get roadcastTraceHeaderBaseline => 'BASELINE';

  @override
  String get roadcastTraceHeaderDelta => 'DELTA';

  @override
  String get roadcastTraceHeaderChanges => 'MUDANCAS';

  @override
  String get roadcastTraceHeaderLast => 'ULTIMA';

  @override
  String get roadcastTraceHeaderId => 'ID';

  @override
  String get roadcastTraceSelectSignal =>
      'Selecione um sinal para ver a linha do tempo.';

  @override
  String get roadcastTraceChartEmpty => 'Aguardando mais amostras';

  @override
  String get traceModeCan => 'CAN';

  @override
  String get traceModeMigration => 'MIGRAÇÃO';

  @override
  String get migrationSubtitle => '15 properties a substituir';

  @override
  String get migrationPhaseATitle => 'FASE A · LEITURA DIRETA';

  @override
  String get migrationPhaseADesc =>
      'Mesmo número dos dois lados. Migra quando uma viagem e uma carga reais fecharem sem divergência.';

  @override
  String get migrationPhaseBTitle => 'FASE B · PRECISA MEDIR';

  @override
  String get migrationPhaseBDesc =>
      'Está na store, mas o que o valor cru quer dizer ainda não foi observado no carro. Falta uma medição, não código.';

  @override
  String get migrationPhaseCTitle => 'FASE C · NÃO MIGRA';

  @override
  String get migrationPhaseCDesc =>
      'Ou a store não tem endereço para ela (quem monta o valor é o car_service), ou ela nunca entregou leitura.';

  @override
  String get migrationNoteDirect => 'Leitura direta';

  @override
  String get migrationNoteTranslated =>
      'A store fala PRND, o app fala o bitmask do AOSP — traduzido';

  @override
  String get migrationNoteChargerAc =>
      'Entrada AC do carregador (211 V), não o pacote de 395 V';

  @override
  String get migrationNoteEncodingUnknown =>
      'Está na store, codificação crua não decifrada';

  @override
  String get migrationNoteSynthetic =>
      'Montado pelo car_service; sem endereço na store';

  @override
  String get migrationColumnRaw => 'CRU';

  @override
  String migrationRamAddress(Object address) {
    return 'RAM $address';
  }

  @override
  String get migrationNoteDead => 'Nenhuma leitura em 90.347 frames gravados';

  @override
  String get migrationStatusMatching => 'BATE';

  @override
  String get migrationStatusDiverging => 'DIVERGE';

  @override
  String get migrationStatusRamOnly => 'SÓ RAM';

  @override
  String get migrationStatusStoreOnly => 'SÓ STORE';

  @override
  String get migrationStatusRejected => 'RECUSADA';

  @override
  String get migrationStatusWaiting => 'AGUARDANDO';

  @override
  String get migrationColumnRam => 'RAM';

  @override
  String get migrationColumnStore => 'STORE';

  @override
  String get migrationColumnDiff => 'DIFF';

  @override
  String get migrationShadowMode =>
      'Modo sombra: a RAM é lida sem escrever no histórico.';

  @override
  String get migrationPublishing =>
      'Publicando no store — a migração já aconteceu.';

  @override
  String get migrationBridgeOffline =>
      'O daemon da ponte CAN não está servindo.';

  @override
  String migrationLoadFailed(Object error) {
    return 'Não deu para ler o status da ponte: $error';
  }

  @override
  String get migrationEcarxWarning =>
      'O valor do store vem da property resolvida pelo ECARX: os dois lados leem endereços diferentes.';

  @override
  String get chargingTitle => 'GEELY TELEMETRY';

  @override
  String get chargingSubtitle => 'Sessões de Carga';

  @override
  String get chargingDbRows => 'LINHAS BD';

  @override
  String get chargingRunWrites => 'EXEC. GRAVAÇÕES';

  @override
  String get chargingRefreshTooltip => 'Atualizar sessões de carga';

  @override
  String get chargeMergeTitle => 'SESSÕES CONTÍNUAS INTERROMPIDAS';

  @override
  String get chargeMergeDescription =>
      'Uma ou mais sessões de carga terminaram com removed_while_charging e parecem contínuas. Revise o breakdown antes de mesclar.';

  @override
  String get chargeMergeSessionsLabel => 'SESSÕES';

  @override
  String get chargeMergeGapLabel => 'INTERVALO';

  @override
  String get chargeMergeSocLabel => 'SOC';

  @override
  String get chargeMergeFramesLabel => 'FRAMES';

  @override
  String get chargeMergeBreakLabel => 'QUEBRA';

  @override
  String get chargeMergeConfirm => 'MESCLAR SESSÕES';

  @override
  String get chargeMergeMerging => 'MESCLANDO';

  @override
  String get chargeMergeSuccess => 'Sessões de carga mescladas.';

  @override
  String get chargeMergeError => 'Não foi possível mesclar as sessões.';

  @override
  String get chartPackVoltage => 'TENSÃO BATERIA';

  @override
  String get chartVoltageUnit => 'V';

  @override
  String get chartWaitingVoltage => 'AGUARDANDO TENSÃO';

  @override
  String get chartPackCurrent => 'CORRENTE BATERIA';

  @override
  String get chartCurrentUnit => 'A';

  @override
  String get chartWaitingCurrent => 'AGUARDANDO CORRENTE';

  @override
  String get chartChargePower => 'POTÊNCIA CARGA';

  @override
  String get chartPowerUnit => 'kW';

  @override
  String get chartWaitingPower => 'AGUARDANDO POTÊNCIA';

  @override
  String get historySectionTitle => 'HISTÓRICO SESSÕES CARGA';

  @override
  String get historyRows => 'LINHAS';

  @override
  String get historyHeadersStatus => 'STATUS';

  @override
  String get historyHeadersWindow => 'JANELA SESSÃO';

  @override
  String get historyHeadersPlug => 'PLUG';

  @override
  String get historyHeadersSoc => 'SOC INÍCIO/FIM';

  @override
  String get historyHeadersOdometer => 'ODÔMETRO';

  @override
  String get historyHeadersPower => 'POTÊNCIA';

  @override
  String get historyHeadersEndReason => 'MOTIVO FIM';

  @override
  String get historyHeadersId => 'ID / ATUALIZADO';

  @override
  String get historySampleBadge => 'DADOS EXEMPLO';

  @override
  String get detailBack => 'Voltar';

  @override
  String get detailTitle => 'DETALHE CARGA';

  @override
  String get detailFrames => 'FRAMES';

  @override
  String get detailStatus => 'STATUS';

  @override
  String get detailRefresh => 'Atualizar frames de carga';

  @override
  String get detailDuration => 'DURAÇÃO';

  @override
  String get detailSocRange => 'FAIXA SOC';

  @override
  String get detailSocDelta => 'DELTA SOC';

  @override
  String get detailEnergyEst => 'ENERGIA EST';

  @override
  String get detailEnergyUnit => 'kWh';

  @override
  String get chargeCostLabel => 'CUSTO';

  @override
  String get detailAvgPower => 'POT. MÉDIA';

  @override
  String get detailAvgPowerUnit => 'kW';

  @override
  String get detailPlug => 'PLUG';

  @override
  String get detailOdometer => 'ODÔMETRO';

  @override
  String get detailEndReason => 'MOTIVO FIM';

  @override
  String get detailAmbientTemp => 'TEMP. EXTERNA';

  @override
  String get chartSocTrace => 'TRAÇO SOC';

  @override
  String get chartSocUnit => '%';

  @override
  String get chartNotEnough => 'Frames insuficientes para gráfico.';

  @override
  String get chargeMapLocation => 'Local da Recarga';

  @override
  String get chargeMapNoGps =>
      'Nenhum ponto GPS registrado para esta sessão de carga.';

  @override
  String get statusCharging => 'CARREGANDO';

  @override
  String get statusConnected => 'CONECTADO';

  @override
  String get statusDisconnected => 'DESCONECTADO';

  @override
  String get statusComplete => 'COMPLETO';

  @override
  String get endReasonInProgress => 'EM_ANDAMENTO';

  @override
  String get endReasonWaitingCharge => 'AGUARDANDO_CARGA';

  @override
  String get endReasonPlugDisconnected => 'PLUG_DESCONECTADO';

  @override
  String get endReasonWaitingPower => 'AGUARDANDO_ENERGIA';

  @override
  String get endReasonCompleted => 'COMPLETO';

  @override
  String get liveError => 'ERRO AO VIVO';

  @override
  String get bridgeError => 'ERRO_BRIDGE';

  @override
  String get noDbRows => 'SEM_LINHAS_BD / VISUALIZAÇÃO_EXEMPLO';

  @override
  String get roomChargeSessions => 'ROOM_SESSOES_CARGA';

  @override
  String get historyPageTitle => 'Histórico Bateria';

  @override
  String get historyHeaderSubtitle => 'Histórico Bateria';

  @override
  String get historyPageDesc =>
      'Visão combinada de viagens, sessões de carga e métricas de bateria validadas.';

  @override
  String get historyRangeChip => 'PERÍODO';

  @override
  String get historySessionsChip => 'SESSÕES';

  @override
  String get historyRefreshTooltip => 'Atualizar histórico';

  @override
  String get rangeToday => 'Hoje';

  @override
  String get range24h => '24h';

  @override
  String get range7d => '7d';

  @override
  String get range30d => '30d';

  @override
  String get historyTrips => 'VIAGENS';

  @override
  String get historyTripsUnit => 'sessões';

  @override
  String get historyCharges => 'CARGAS';

  @override
  String get historyChargesUnit => 'sessões';

  @override
  String get historyDistance => 'DISTÂNCIA';

  @override
  String get historyDistanceUnitOdometer => 'km ODÔMETRO';

  @override
  String get historyDistanceUnitSpeed => 'km EST VEL';

  @override
  String get historyDistanceUnitMissing => 'km AUSENTE';

  @override
  String get historyChargedEnergy => 'ENERGIA CARREGADA';

  @override
  String get historyEnergyUnit => 'kWh estimado';

  @override
  String get historySocDelta => 'DELTA SOC';

  @override
  String get historySocDeltaUnit => '%';

  @override
  String get historyParkedDrain => 'DRENO ESTACIONADO';

  @override
  String get historyDrainUnit => 'kWh diferido';

  @override
  String get historyEfficiency => 'EFICIÊNCIA';

  @override
  String get historyEfficiencyUnit => 'Wh/km';

  @override
  String get historyRegen => 'REGEN';

  @override
  String get timelineTitle => 'LINHA DO TEMPO';

  @override
  String get timelineTrip => 'VIAGEM';

  @override
  String get timelineCharge => 'CARGA';

  @override
  String get timelineEmpty => 'Nenhuma sessão no período selecionado.';

  @override
  String timelineParkedFor(Object duration) {
    return 'Estacionado por $duration';
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
  String get sessionLogTitle => 'REGISTRO SESSÕES';

  @override
  String get sessionLogEmpty => 'Nenhuma sessão de viagem ou carga ainda.';

  @override
  String get sessionLogHeaderSession => 'SESSÃO';

  @override
  String get sessionLogHeaderStart => 'INÍCIO';

  @override
  String get sessionLogHeaderDuration => 'DURAÇÃO';

  @override
  String get sessionLogHeaderSoc => 'SOC';

  @override
  String get sessionLogHeaderEnergy => 'ENERGIA / DISTÂNCIA';

  @override
  String get sessionLogHeaderStatus => 'STATUS';

  @override
  String get sessionTypeCharging => 'Carga';

  @override
  String get sessionTypeTrip => 'Viagem';

  @override
  String get historyEmptyPanel => 'Nenhum dado de histórico disponível ainda.';

  @override
  String get tripHeaderSubtitle => 'Sessões de Viagem';

  @override
  String get tripPageTitle => 'Detecção Automática de Viagens';

  @override
  String get tripDbRows => 'LINHAS BD';

  @override
  String get tripRunWrites => 'EXEC. GRAVAÇÕES';

  @override
  String get tripRefreshTooltip => 'Atualizar sessões de viagem';

  @override
  String get tripHistoryBadge => 'HISTÓRICO VIAGENS';

  @override
  String get tripEmptyLatest =>
      'Existem linhas de viagem no banco, mas a consulta da última sessão não retornou linhas.';

  @override
  String get tripEmptyNone => 'Nenhuma sessão de viagem detectada ainda.';

  @override
  String get bridgeErrorStatus => 'ERRO_BRIDGE';

  @override
  String get roomTripSessions => 'ROOM_SESSOES_VIAGEM';

  @override
  String get dbCountMismatch => 'DIVERGÊNCIA_CONTAGEM_BD';

  @override
  String get noTripRows => 'SEM_LINHAS_VIAGEM';

  @override
  String get tripMetricDistance => 'DISTÂNCIA';

  @override
  String get tripMetricAvgSpeed => 'VEL. MÉDIA';

  @override
  String get tripMetricGearStart => 'MARCHA INÍCIO';

  @override
  String get tripMetricSocRange => 'FAIXA SOC';

  @override
  String get tripMetricEndReason => 'MOTIVO FIM';

  @override
  String get tripMetricUpdated => 'ATUALIZADO';

  @override
  String get dischargeActive => 'DESCARGA TEMPO REAL';

  @override
  String get dischargeEnded => 'DESCARGA VIAGEM';

  @override
  String get tripDetailHint =>
      'Detalhamento de viagem e telemetria por frame será implementado em uma versão futura.';

  @override
  String get tripDetailTitle => 'DETALHE VIAGEM';

  @override
  String get tripDetailFrames => 'FRAMES';

  @override
  String get tripDetailRefresh => 'Atualizar frames de viagem';

  @override
  String get tripDetailDuration => 'DURAÇÃO';

  @override
  String get tripDetailOdometerDist => 'DIST ODÔMETRO';

  @override
  String get tripDetailSpeedEstDist => 'DIST EST VEL';

  @override
  String get tripDetailEfficiency => 'EFICIÊNCIA';

  @override
  String get tripDetailRange => 'RENDIMENTO';

  @override
  String get tripDetailNetEnergy => 'ENERGIA LÍQ';

  @override
  String get tripDetailRegen => 'REGEN';

  @override
  String get tripDetailSummary => 'RESUMO DA VIAGEM';

  @override
  String get tripDetailEstimatedCost => 'CUSTO ESTIMADO';

  @override
  String tripDetailCostBasedOnLastCharge(Object price) {
    return 'Baseado no preço de $price/kWh do último carregamento com valor informado.';
  }

  @override
  String tripDetailCostBasedOnSocAndLastCharge(Object price) {
    return 'Estimado pela variação do SOC e pelo preço de $price/kWh do último carregamento com valor informado.';
  }

  @override
  String get tripDetailCostUnavailable =>
      'Nenhum carregamento anterior tem preço por kWh.';

  @override
  String get tripDetailEnergyAccounting => 'BALANÇO DE ENERGIA';

  @override
  String get tripDetailMeasuredPack => 'ENERGIA LÍQUIDA DA BATERIA';

  @override
  String get tripDetailMeasuredPackDescription =>
      'Total retirado da bateria durante a viagem.';

  @override
  String get tripDetailMeasuredTraction => 'MOVIMENTO DO VEÍCULO';

  @override
  String get tripDetailMeasuredTractionDescription =>
      'Energia usada para movimentar o veículo.';

  @override
  String get tripDetailMeasuredRecovered => 'RECUPERADA POR REGENERAÇÃO';

  @override
  String get tripDetailMeasuredRecoveredDescription =>
      'Energia devolvida pela frenagem regenerativa.';

  @override
  String get tripDetailMeasuredAuxiliary => 'SISTEMAS AUXILIARES';

  @override
  String get tripDetailMeasuredAuxiliaryDescription =>
      'Estimativa de climatização, eletrônica e sistema de 12 V.';

  @override
  String get tripDetailMeasuredVerified => 'MEDIDO';

  @override
  String get tripDetailMeasuredUnavailable =>
      'Não há balanço de energia medido para esta viagem.';

  @override
  String get tripDetailMeasuredDisagrees =>
      'A energia medida diverge da estimativa por SOC. Os valores estão ocultos.';

  @override
  String get tripChartSpeed => 'Traçado Velocidade';

  @override
  String get tripChartNotEnough =>
      'Frames de velocidade insuficientes para gráfico.';

  @override
  String get tripChartPower => 'Potência Medida';

  @override
  String get tripChartPackPower => 'BATERIA';

  @override
  String get tripChartDrivePower => 'TRAÇÃO';

  @override
  String get tripChartPowerNotEnough =>
      'Medições de potência insuficientes para o gráfico.';

  @override
  String get tripChartPowerDisagrees =>
      'A potência medida está oculta porque diverge da estimativa por SOC.';

  @override
  String get tripChartElevationDistance => 'Perfil de Elevação por Distância';

  @override
  String get tripChartElevationDistanceNotEnough =>
      'Pontos de altitude GPS insuficientes para o perfil por distância.';

  @override
  String get tripChartAltitude => 'Traçado Altitude';

  @override
  String get tripChartAltitudeNotEnough =>
      'Frames de altitude insuficientes para gráfico.';

  @override
  String get tripChartAmbientTemp => 'Traçado Temperatura Externa';

  @override
  String get tripChartAmbientTempNotEnough =>
      'Frames de temperatura insuficientes para gráfico.';

  @override
  String get tripDetailAmbientTemp => 'TEMP. EXTERNA';

  @override
  String get tripChartSoc => 'Traçado Bateria';

  @override
  String get tripChartSocNotEnough =>
      'Frames de bateria insuficientes para gráfico.';

  @override
  String get tripChartExpandTooltip => 'Expandir gráfico';

  @override
  String tripChartPointCount(int count) {
    return '$count pontos';
  }

  @override
  String get tripMapRoute => 'Mapa da Rota';

  @override
  String get tripMapNoGps => 'Nenhum ponto GPS registrado para esta viagem.';

  @override
  String mapSpeedSlow(Object speed) {
    return 'Lento $speed';
  }

  @override
  String mapSpeedFast(Object speed) {
    return 'Rápido $speed';
  }

  @override
  String get tripStatusActive => 'ATIVO';

  @override
  String get tripStatusPendingEnd => 'FIM PENDENTE';

  @override
  String get tripEndReasonInProgress => 'EM_ANDAMENTO';

  @override
  String get tripEndReasonWaitingIdle => 'AGUARDANDO_OCIOSO';

  @override
  String get mockChargeState => 'Desconectado';

  @override
  String get mockPlugLabel => 'Nenhum';

  @override
  String get mockSourceDetails => 'Telemetria web simulada';

  @override
  String get dayMon => 'SEG';

  @override
  String get dayTue => 'TER';

  @override
  String get dayWed => 'QUA';

  @override
  String get dayThu => 'QUI';

  @override
  String get dayFri => 'SEX';

  @override
  String get daySat => 'SÁB';

  @override
  String get daySun => 'DOM';

  @override
  String settingsAppVersion(Object build, Object version) {
    return 'Versão $version (build $build)';
  }

  @override
  String get settingsAppUpdateTitle => 'Atualizações do app';

  @override
  String get settingsAppUpdateDescription =>
      'Verifica os releases públicos do Eaglemetry e instala um APK validado sem apagar telemetria ou configurações. Também atualiza o serviço Roadcast.';

  @override
  String settingsAppUpdateInstalled(Object build, Object version) {
    return 'Instalado: $version (build $build)';
  }

  @override
  String get settingsAppUpdateNotChecked =>
      'Atualizações ainda não foram verificadas';

  @override
  String get settingsAppUpdateUnavailable =>
      'Estado da atualização indisponível';

  @override
  String get settingsAppUpdateChecking => 'VERIFICANDO';

  @override
  String settingsAppUpdateAvailable(Object build, Object version) {
    return 'Versão $version (build $build) disponível';
  }

  @override
  String get settingsAppUpdateUpToDate => 'Eaglemetry está atualizado';

  @override
  String settingsAppUpdateIncompatible(Object reason) {
    return 'Esta atualização não pode ser instalada automaticamente: $reason';
  }

  @override
  String get settingsAppUpdateCheck => 'VERIFICAR';

  @override
  String get settingsAppUpdateInstall => 'ATUALIZAR';

  @override
  String get settingsAppUpdateInstalling => 'ATUALIZANDO';

  @override
  String get settingsAppUpdateScheduled =>
      'ATUALIZAÇÃO VALIDADA. O APP SERÁ REINICIADO AUTOMATICAMENTE.';

  @override
  String settingsAppUpdateCheckFailed(Object reason) {
    return 'VERIFICAÇÃO DE ATUALIZAÇÃO FALHOU: $reason';
  }

  @override
  String settingsAppUpdateInstallFailed(Object reason) {
    return 'ATUALIZAÇÃO DO APP FALHOU: $reason';
  }

  @override
  String get settingsAppUpdateReleaseNotes => 'Novidades';

  @override
  String settingsAppUpdateConfirmTitle(Object version) {
    return 'Atualizar para $version?';
  }

  @override
  String get settingsAppUpdateConfirmDescription =>
      'O app baixará e validará a atualização. Ele atualizará o serviço Roadcast antes de instalar o APK. Depois, o app reiniciará.';

  @override
  String get settingsAppUpdateConfirmCancel => 'CANCELAR';

  @override
  String get settingsAppUpdateConfirmInstall => 'INSTALAR';

  @override
  String get settingsUpdateAlertTitle => 'ERRO DE ATUALIZAÇÃO';

  @override
  String get settingsUpdateAlertDismiss => 'FECHAR';

  @override
  String get settingsSectionAbout => 'SOBRE';

  @override
  String settingsAboutDeveloper(Object handle) {
    return 'Desenvolvido por $handle';
  }

  @override
  String get settingsAboutTagline => 'Feito com amor e café';

  @override
  String get settingsAppShellTitle => 'Interface do app';

  @override
  String get settingsAppShellDescription =>
      'Escolha qual interface abre ao iniciar o app. Sua escolha fica salva.';

  @override
  String get settingsAppShellNew => 'Nova';

  @override
  String get settingsAppShellPrevious => 'Anterior';

  @override
  String get v2Overview => 'Visão geral';

  @override
  String get v2Context => 'Contexto';

  @override
  String get v2AppShellTitle => 'Interface';

  @override
  String get v2AppShellDescription =>
      'Você está na nova interface, que o app abre por padrão. Viagens e Configurações ainda não migraram, então continuam na interface anterior. Voltar para ela fica salvo e vale também no próximo início.';

  @override
  String get v2AppShellAction => 'Usar a interface anterior';

  @override
  String get v2CarplayBetaOn => 'Ligado';

  @override
  String get v2CarplayBetaOff => 'Desligado';

  @override
  String get v2MigrationPlaceholder => 'Pronto para migrar funções';

  @override
  String get v2SettingsClose => 'Fechar as configurações';

  @override
  String get v2SettingsSearch => 'Pesquisar';

  @override
  String get v2SettingsSearchEmpty => 'Nenhuma categoria tem esse nome.';

  @override
  String get v2HistoryTrips => 'Viagens';

  @override
  String get v2HistoryCharges => 'Carregamentos';

  @override
  String get v2HistoryExpand => 'Expandir o detalhe da sessão';

  @override
  String get v2HistoryCollapse => 'Fechar o detalhe da sessão';

  @override
  String get v2HistoryExpandHint => 'Selecione uma sessão para abri-la.';

  @override
  String get v2HistoryCollapseHint => 'Arraste para baixo para fechar';

  @override
  String get v2HistorySelectPrompt =>
      'Selecione uma sessão para ver o detalhe.';

  @override
  String get v2HistoryFactsTitle => 'Sessão';

  @override
  String get v2HistoryChartEmpty => 'Esta sessão não tem dados de gráfico.';

  @override
  String get v2TimeNotSynced =>
      'Hora ainda não sincronizada. As barras mostram a energia medida.';

  @override
  String energyAxisRelativeMinutes(int minutes) {
    return '+$minutes min';
  }

  @override
  String get v2HistoryStart => 'Início';

  @override
  String get v2HistoryEnd => 'Fim';

  @override
  String get v2HistoryDuration => 'Duração';

  @override
  String get v2HistoryDistance => 'Distância';

  @override
  String get v2HistorySoc => 'SOC';

  @override
  String get v2HistoryTemperature => 'Temperatura';

  @override
  String get v2HistoryAltitude => 'Subida';

  @override
  String get insightNameStart => 'Nomear início';

  @override
  String get insightNameEnd => 'Nomear fim';

  @override
  String get insightPlaceTitle => 'Nomear este lugar';

  @override
  String get insightPlaceHint => 'Nome';

  @override
  String get insightPlaceSave => 'Guardar';

  @override
  String get insightPlaceCancel => 'Cancelar';

  @override
  String insightRouteTrips(int count) {
    return '$count viagens';
  }

  @override
  String insightRouteVariants(int count) {
    return '$count caminhos';
  }

  @override
  String insightVariantNotEnough(int count) {
    return 'Ainda não há viagens comparadas suficientes desta rota ($count).';
  }

  @override
  String insightVariantNotDistinguishable(String place, int count) {
    return 'Estes dois caminhos até $place ainda não se distinguem ($count comparadas).';
  }

  @override
  String insightVariantUsedLess(String difference, String place, int count) {
    return 'Este caminho usou $difference Wh/km a menos que o outro até $place ($count comparadas).';
  }

  @override
  String insightVariantUsedMore(String difference, String place, int count) {
    return 'Este caminho usou $difference Wh/km a mais que o outro até $place ($count comparadas).';
  }

  @override
  String get v2HistoryConsumed => 'Consumido';

  @override
  String get v2HistoryRegen => 'Regenerado';

  @override
  String get v2HistoryEfficiency => 'Eficiência';

  @override
  String get v2HistoryEnergyAdded => 'Energia adicionada';

  @override
  String get v2HistoryAvgPower => 'Potência média';

  @override
  String get v2HistoryPeakPower => 'Potência máxima';

  @override
  String get v2HistoryPlug => 'Conector';

  @override
  String get v2HistoryCost => 'Custo est.';

  @override
  String get v2HistoryMapExpand => 'Ampliar o mapa';

  @override
  String get v2HistoryMapCollapse => 'Reduzir o mapa';

  @override
  String get v2HistoryEmpty => 'O carro ainda não gravou nenhuma sessão.';

  @override
  String get v2HistoryBattery => 'Bateria';

  @override
  String v2CycleOrdinal(int ordinal) {
    return '#$ordinal';
  }

  @override
  String v2CycleSemantics(int ordinal, String percent) {
    return 'Bateria $ordinal, $percent por cento usada';
  }

  @override
  String get v2CycleOpen => 'Em curso';

  @override
  String get v2CyclePartial => 'Parcial';

  @override
  String get v2CycleFrozen => 'Final';

  @override
  String get v2CycleNoCapacity => 'Capacidade desconhecida';

  @override
  String get v2CycleMixedCurrency => 'Duas moedas';

  @override
  String v2CyclePartlyPriced(String percent) {
    return '$percent% com preço';
  }

  @override
  String get v2CycleDistance => 'Distância';

  @override
  String get v2CycleEnergy => 'Energia';

  @override
  String get v2CycleEfficiency => 'Eficiência';

  @override
  String get v2CycleEfficiencyUnitAction => 'Mudar a unidade de eficiência';

  @override
  String get v2CycleCost => 'Custo';

  @override
  String get v2CycleCostPerKwh => 'Por kWh';

  @override
  String get v2CycleCapacity => 'Utilizável';

  @override
  String get v2CycleEmpty => 'O carro ainda não usou uma bateria inteira.';

  @override
  String get v2CycleSelectPrompt =>
      'Selecione uma bateria para ver o que ela moveu.';

  @override
  String get v2CycleTimelineTitle => 'O que esta bateria moveu';

  @override
  String get v2CycleTimelineEmpty => 'As sessões desta bateria foram apagadas.';

  @override
  String get v2CycleTimelineDrive => 'Viagem';

  @override
  String get v2CycleTimelineCharge => 'Carga';

  @override
  String get v2CycleTimelineParked => 'Estacionado';

  @override
  String get v2CycleTimelineDeleted => 'Sessão apagada';

  @override
  String v2CycleTimelineShare(String percent) {
    return '$percent% desta bateria';
  }

  @override
  String get v2CycleTimelineSessions => 'Sessões';

  @override
  String get v2SettingsDisplays => 'Telas';

  @override
  String get v2SettingsCharge => 'Carga';

  @override
  String get settingsChargeDisclaimerTitle => 'Aviso de responsabilidade';

  @override
  String get settingsChargeDisclaimerDesc =>
      'O uso desta funcionalidade é por sua conta e risco, pois atua diretamente no carregamento do carro e ativamente controla funções do veículo.';

  @override
  String get v2ChargeLimitLevel => 'Nível';

  @override
  String get v2ChargeLimitGraph => 'Gráfico';

  @override
  String get v2ChargeLimitCustom => 'Personalizado';

  @override
  String get v2ChargeLimitDaily => 'Diário';

  @override
  String get v2ChargeLimitExtended => 'Estendido';

  @override
  String get v2ChargeLimitMax => 'Máximo';

  @override
  String v2ChargeLimitProjection(String range, String unit) {
    return 'EST · $range $unit projetados';
  }

  @override
  String get v2ChargeLimitSemantics => 'Limite de carga';

  @override
  String v2ChargeLimitSemanticsValue(int percent) {
    return '$percent por cento';
  }

  @override
  String get v2ChargeLimitInfoTitle => 'Qual limite de carga escolher?';

  @override
  String get v2ChargeLimitInfoDaily =>
      'Para a condução diária e tempos de carregamento mais curtos.';

  @override
  String get v2ChargeLimitInfoExtended =>
      'Para percorrer distâncias maiores com uma única carga.';

  @override
  String get v2ChargeLimitInfoMax =>
      'Para obter a autonomia máxima e tempos de carregamento mais longos.';

  @override
  String get v2ChargeLimitInfoTooltip => 'Sobre limites de carga';

  @override
  String get v2ChargeLimitInfoClose => 'Fechar informações do limite de carga';

  @override
  String helpersChargeLimitValue(int percent) {
    return '$percent%';
  }

  @override
  String get v2SettingsData => 'Dados';

  @override
  String get v2SettingsDeveloper => 'Desenvolvedor';

  @override
  String get v2SettingsAppearance => 'Aparência';

  @override
  String get v2SettingsImmersive => 'Tela cheia';

  @override
  String get v2SettingsImmersiveDesc =>
      'Oculta as barras de sistema da central. Desligue para mostrar a barra de status e a barra de navegação. As telas são feitas para o ecrã inteiro, por isso alguns tamanhos podem ficar estranhos quando está desligado.';

  @override
  String get v2SettingsHideStatusBar => 'Esconder a barra de status';

  @override
  String get v2SettingsHideStatusBarDesc =>
      'Mantém a barra de status escondida com o ecrã inteiro desligado. A barra de navegação fica, porque é por ela que sai da aplicação.';

  @override
  String get v2SettingsClimateBar => 'Barra de climatização';

  @override
  String get v2SettingsClimateBarDesc =>
      'Mostra uma faixa de temperatura na borda inferior, em todos os ecrãs. Fica lá quando um cartão abre em ecrã inteiro. Ainda não está ligada ao veículo, portanto os valores são uma antevisão.';

  @override
  String get climateBarDriverDecrease => 'Diminuir a temperatura do condutor';

  @override
  String get climateBarDriverIncrease => 'Aumentar a temperatura do condutor';

  @override
  String get climateBarPassengerDecrease =>
      'Diminuir a temperatura do passageiro';

  @override
  String get climateBarPassengerIncrease =>
      'Aumentar a temperatura do passageiro';

  @override
  String get nowPlayingIdle => 'Nada a tocar';

  @override
  String get v2SettingsOperation => 'Operação';

  @override
  String get v2SettingsRetention => 'Retenção';

  @override
  String get v2SettingsDeveloperMode => 'Modo desenvolvedor';

  @override
  String get v2SettingsDeveloperModeDesc =>
      'Mostra as telas de engenharia: Roadcast Trace e Signal Lab.';

  @override
  String v2SettingsRetentionDone(int frames, int days) {
    return 'Retenção concluída: $frames quadros removidos, dados brutos mantidos por $days dias.';
  }

  @override
  String get v2SettingsSystem => 'Sistema';

  @override
  String get v2SettingsDanger => 'Apagar';

  @override
  String get v2SettingsEngineering => 'Telas de engenharia';

  @override
  String get v2SettingsResendHistory => 'Reenviar histórico para a nuvem';

  @override
  String get v2SettingsResendHistoryDesc =>
      'Marca todas as viagens e recargas deste carro para envio de novo. Use depois de apagar os dados da nuvem para um teste. O envio começa no próximo sync.';

  @override
  String get v2SettingsResendHistoryAction => 'MARCAR PARA ENVIO';

  @override
  String v2SettingsResendHistoryDone(int count) {
    return '$count registros marcados. Eles sobem no próximo sync.';
  }

  @override
  String v2SettingsResendHistoryFailed(String error) {
    return 'Não foi possível marcar o histórico: $error';
  }

  @override
  String get v2SettingsExperience => 'Experimentos';

  @override
  String get v2SettingsNotMigrated => 'Ainda não disponível';

  @override
  String get v2SettingsTraceDesc =>
      'Lê o esquema CAN negociado e o valor ao vivo de cada sinal.';

  @override
  String v2SettingsAutoStartFailed(String error) {
    return 'Falha ao mudar o início automático: $error';
  }

  @override
  String v2SettingsEventFileFailed(String error) {
    return 'Falha ao mudar o log de eventos: $error';
  }

  @override
  String v2SettingsWipeDone(int trips, int charges, int frames) {
    return 'Apagado: $trips viagens, $charges cargas, $frames quadros.';
  }

  @override
  String v2SettingsWipeFailed(String error) {
    return 'Falha ao apagar: $error';
  }

  @override
  String get v2CarplayTitle => 'CarPlay';

  @override
  String get v2AndroidAutoTitle => 'Android Auto';

  @override
  String get v2CarplayStatusTitle => 'Conexão';

  @override
  String get v2AndroidAutoStatusTitle => 'Conexão';

  @override
  String get v2CarplayUnavailable =>
      'Este head unit não expõe o serviço CarPlay.';

  @override
  String get v2AndroidAutoUnavailable =>
      'Este head unit não expõe o serviço Android Auto.';

  @override
  String get v2CarplayConnecting => 'Conectando ao renderizador do CarPlay…';

  @override
  String get v2AndroidAutoConnecting =>
      'Conectando ao renderizador do Android Auto…';

  @override
  String get v2CarplayBlackScreenHint =>
      'Se a imagem continuar preta, nenhuma sessão de CarPlay está ativa. Conecte seu iPhone e o vídeo inicia sozinho.';

  @override
  String get v2AndroidAutoBlackScreenHint =>
      'Se a imagem continuar preta, nenhuma sessão de Android Auto está ativa. Conecte seu telefone Android e o vídeo inicia sozinho.';

  @override
  String get v2ProjectionTouchTitle => 'Calibração do toque';

  @override
  String get v2ProjectionTouchHelp =>
      'Toque no ecrã projetado e ajuste até o toque cair onde olha. O valor fica guardado.';

  @override
  String get v2ProjectionTouchStepFine => 'Fino';

  @override
  String get v2ProjectionTouchStepCoarse => 'Grosso';

  @override
  String get v2ProjectionTouchOffsetY => 'Desvio vertical';

  @override
  String get v2ProjectionTouchScaleY => 'Escala vertical';

  @override
  String get v2ProjectionTouchOffsetX => 'Desvio horizontal';

  @override
  String get v2ProjectionTouchScaleX => 'Escala horizontal';

  @override
  String get v2ProjectionTouchReset => 'Repor a calibração';

  @override
  String get v2CarplayDragHandle =>
      'Arraste para redimensionar o cartão do CarPlay';

  @override
  String get v2AndroidAutoDragHandle =>
      'Arraste para redimensionar o cartão do Android Auto';

  @override
  String get v2CarplayReattach => 'Reconectar';

  @override
  String get v2AndroidAutoReattach => 'Reconectar';

  @override
  String get v2CarplayBuffer => 'Buffer';

  @override
  String get v2AndroidAutoBuffer => 'Buffer';

  @override
  String get v2CarplayStateAvailable => 'Serviço encontrado';

  @override
  String get v2AndroidAutoStateAvailable => 'Serviço encontrado';

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
      'Não foi possível acessar o serviço CarPlay.';

  @override
  String get v2AndroidAutoErrorUnreachable =>
      'Não foi possível acessar o serviço Android Auto.';

  @override
  String get v2CarplayErrorRenderer =>
      'O renderizador do CarPlay recusou a solicitação.';

  @override
  String get v2AndroidAutoErrorRenderer =>
      'O renderizador do Android Auto recusou a solicitação.';

  @override
  String get v2CarplayErrorBuffer =>
      'O tamanho do buffer de renderização é inválido.';

  @override
  String get v2AndroidAutoErrorBuffer =>
      'O tamanho do buffer de renderização é inválido.';

  @override
  String get v2CarplayErrorGeneric => 'O CarPlay relatou um erro.';

  @override
  String get v2AndroidAutoErrorGeneric => 'O Android Auto relatou um erro.';

  @override
  String get v2CarplayExpand => 'Expandir o CarPlay para tela cheia';

  @override
  String get v2AndroidAutoExpand => 'Expandir o Android Auto para tela cheia';

  @override
  String get v2CarplayCollapse => 'Recolher o CarPlay';

  @override
  String get v2AndroidAutoCollapse => 'Recolher o Android Auto';

  @override
  String get v2ChargingEnergy => 'Energia';

  @override
  String get v2ChargingAmperageTitle => 'Amperagem de carga';

  @override
  String get v2ChargingAmperageDescription =>
      'Reduza a corrente ao usar um circuito compartilhado ou desconhecido.';

  @override
  String v2ChargingAmperageRange(int min, int max) {
    return 'Faixa do veículo $min–$max A';
  }

  @override
  String get v2ChargingCommandFailed =>
      'O carro não aceitou o comando de carga.';

  @override
  String get v2ChargingAmperageUnit => 'A';

  @override
  String v2ChargingAmperageValue(int amps) {
    return '$amps A';
  }

  @override
  String get v2ChargingAmperageDecrease => 'Diminuir amperagem de carga';

  @override
  String get v2ChargingAmperageIncrease => 'Aumentar amperagem de carga';

  @override
  String get v2ChargingAmperageClose => 'Fechar controle de amperagem de carga';

  @override
  String get v2ChargingStopButton => 'Parar Carregamento';

  @override
  String get v2ChargingForceButton => 'Forçar Carga';

  @override
  String get v2ChargingForceActive => 'Forçar Carga Ativo';

  @override
  String get v2RangeVehicleRange => 'Autonomia do veículo';

  @override
  String get v2RangeEstimateCaption => 'Estimativa de viagens fechadas';

  @override
  String get v2RangeEstimateDelayed =>
      'Estimativa atrasada · atualização do histórico pendente';

  @override
  String get v2RangeEstimateReadDelayed =>
      'Estimativa atrasada · falha na leitura da autonomia';

  @override
  String get v2RangeEstimateUnavailable => 'Estimativa indisponível';

  @override
  String get v2RangeEstimateReadFailed =>
      'Estimativa indisponível · falha de leitura';

  @override
  String get v2ChargeGraphLoadFailed => 'A sessão de carga não foi carregada.';

  @override
  String get v2ChargeGraphEmpty => 'Nenhuma sessão de carga está disponível.';

  @override
  String get v2ChargeGraphNoData =>
      'Esta sessão de carga não tem dados para o gráfico.';

  @override
  String v2ChargeGraphPowerTick(int power) {
    return '$power';
  }

  @override
  String get v2ChargeGraphSemantics =>
      'SOC e potência da sessão de carga ao longo do tempo';

  @override
  String get v2ChargeGraphRangeGainedEstimate => 'Alcance ganho · EST';

  @override
  String get v2ChargeGraphEnergyAdded => 'Energia adicionada';

  @override
  String get v2ChargeGraphCostEstimate => 'Custo · EST';

  @override
  String get v2ChargeGraphDuration => 'Duração';

  @override
  String get v2ChargeGraphTargetReached => 'Meta atingida';

  @override
  String v2ChargeGraphDurationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String v2ChargeGraphDurationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String get v2LastChargeSession => 'Última sessão de carga';

  @override
  String get v2ChargeSummaryNoEnergy =>
      'Esta sessão de carga não tem energia medida.';

  @override
  String get v2ChargeClimateWarningTitle => 'A climatização usa a sua carga';

  @override
  String v2ChargeClimateWarningHigh(String climate, String charging) {
    return 'A climatização consome $climate kW dos $charging kW que entram. A bateria ganha muito menos do que o carregador mostra.';
  }

  @override
  String v2ChargeClimateWarningOutweighs(String climate) {
    return 'A climatização consome $climate kW, tanto quanto o carregador fornece. A bateria não ganha quase nada.';
  }

  @override
  String get v2ChargeSummaryBatteryEnergy => 'Energia fornecida à bateria';

  @override
  String get v2ChargeSummaryClimateEnergy =>
      'Energia consumida pela climatização durante a carga';

  @override
  String get v2ChargeSummarySemantics =>
      'Divisão da energia da sessão entre a bateria e a climatização';

  @override
  String get actionSave => 'SALVAR';

  @override
  String get actionClear => 'LIMPAR';

  @override
  String get settingsChargeCostTitle => 'Preço padrão de carga';

  @override
  String get settingsChargeCostDesc =>
      'Tarifa por kWh usada para estimar o custo das recargas. Digite o valor no teclado.';

  @override
  String settingsChargeCostSaved(Object value) {
    return 'Salvo: $value';
  }

  @override
  String get settingsChargeCostNotSaved => 'Sem preço padrão salvo';

  @override
  String get settingsChargeCostEdit => 'Definir preço';

  @override
  String get v2MoneyKeypadSave => 'Salvar';

  @override
  String get v2MoneyKeypadClear => 'Apagar o valor';

  @override
  String get v2MoneyKeypadDelete => 'Apagar o último dígito';

  @override
  String get v2MoneyKeypadClose => 'Fechar o teclado de preço';

  @override
  String get v2ChargeCostTitle => 'Preço da recarga';

  @override
  String get v2ChargeCostDescription =>
      'Vale apenas para esta recarga. Digite o preço por kWh ou o total pago.';

  @override
  String get v2ChargeCostFieldRate => 'Preço/kWh';

  @override
  String get v2ChargeCostFieldTotal => 'Total pago';

  @override
  String get v2ChargeCostUnitRate => '/kWh';

  @override
  String get v2ChargeCostEdit => 'Editar o preço desta recarga';

  @override
  String get v2ChargeCostFailed => 'O preço da recarga não foi salvo';

  @override
  String get settingsRoadcastTitle => 'Roadcast';

  @override
  String get settingsRoadcastUnavailable => 'Estado do daemon indisponível';

  @override
  String settingsRoadcastRunning(
    Object frameCount,
    Object hz,
    Object signalCount,
  ) {
    return '$signalCount sinais, $frameCount frames @ $hz Hz';
  }

  @override
  String get settingsRoadcastStopped => 'Daemon não está servindo';

  @override
  String settingsRoadcastInstalled(Object commit) {
    return 'Instalado: $commit';
  }

  @override
  String get settingsRoadcastNotChecked =>
      'Atualizações edge ainda não foram verificadas';

  @override
  String settingsRoadcastUpdateAvailable(Object commit) {
    return 'Atualização edge disponível: $commit';
  }

  @override
  String get settingsRoadcastUpToDate => 'Roadcast edge está atualizado';

  @override
  String settingsRoadcastIncompatible(Object reason) {
    return 'Atualização incompatível: $reason';
  }

  @override
  String get settingsRoadcastCheck => 'VERIFICAR';

  @override
  String get settingsRoadcastChecking => 'VERIFICANDO';

  @override
  String get settingsRoadcastUpdate => 'ATUALIZAR';

  @override
  String get settingsRoadcastUpdating => 'ATUALIZANDO';

  @override
  String get settingsRoadcastRestart => 'REINICIAR';

  @override
  String get settingsRoadcastRestarting => 'REINICIANDO';

  @override
  String get settingsRoadcastRestartSuccess => 'DAEMON ROADCAST REINICIADO';

  @override
  String settingsRoadcastRestartFailed(Object reason) {
    return 'REINÍCIO DO ROADCAST FALHOU: $reason';
  }

  @override
  String settingsRoadcastCheckFailed(Object reason) {
    return 'VERIFICAÇÃO DO ROADCAST FALHOU: $reason';
  }

  @override
  String settingsRoadcastUpdateSuccess(Object commit) {
    return 'ROADCAST ATUALIZADO PARA $commit';
  }

  @override
  String settingsRoadcastUpdateFailed(Object reason) {
    return 'ATUALIZAÇÃO DO ROADCAST FALHOU: $reason';
  }

  @override
  String get chargeCostDialogTitle => 'CUSTO DA RECARGA';

  @override
  String get chargeCostPerKwhLabel => 'PREÇO POR kWh';

  @override
  String get chargeCostPerKwhHint =>
      'Zere para deixar em branco — usado quando o valor pago estiver vazio.';

  @override
  String get chargeCostPaidLabel => 'VALOR PAGO';

  @override
  String get chargeCostPaidHint => 'Tem prioridade sobre o preço por kWh.';

  @override
  String get settingsSensorLab => 'Laboratório de sensores';

  @override
  String get settingsSensorLabDesc =>
      'Veja a inclinação do carro e sinta os trancos ao vivo enquanto dirige.';

  @override
  String get settingsSensorLabOpen => 'Abrir';

  @override
  String get sensorLabTitle => 'Laboratório de sensores';

  @override
  String get sensorLabCalibrate => 'Zerar aqui';

  @override
  String get sensorLabReset => 'Reiniciar';

  @override
  String get sensorLabUnavailable => 'Sensores de movimento indisponíveis';

  @override
  String get sensorLabWaiting => 'Aguardando sensores…';

  @override
  String get sensorLabLevel => 'Nível';

  @override
  String get sensorLabPitch => 'Inclinação';

  @override
  String get sensorLabRoll => 'Rolagem';

  @override
  String get sensorLabForces => 'Forças';

  @override
  String get sensorLabVertical => 'Vertical (trancos)';

  @override
  String get sensorLabHorizontal => 'Freada / curva';

  @override
  String get sensorLabPeak => 'pico';

  @override
  String get sensorLabRoadTrace => 'Traçado da via (vertical)';

  @override
  String get sensorLabBumps => 'Trancos';

  @override
  String get sensorLabSessionPeak => 'Pico de tranco';

  @override
  String get sensorLabRate => 'Taxa de amostragem';

  @override
  String get canLiveMute => 'Silenciar';

  @override
  String get canLiveUnmute => 'Reativar';

  @override
  String get canLiveMutedList => 'Silenciados';

  @override
  String get canLiveSortRecency => 'Recentes';

  @override
  String get canLiveSortRate => 'Mais ativos';

  @override
  String get canLiveSortName => 'Nome';

  @override
  String get canLiveMetricActive => 'Mudando agora';

  @override
  String get canLiveMetricRate => 'Mudanças/s';

  @override
  String get canLiveWaiting => 'Aguardando o daemon da ponte CAN';

  @override
  String get canLiveStale => 'Daemon parou de publicar';

  @override
  String get canLiveNeverChanged => 'nunca mudou';

  @override
  String get canLiveShowSilent => 'Mostrar parados';

  @override
  String get liveTripTitle => 'TRIP AO VIVO';

  @override
  String get liveTripRowTitle => 'SESSÃO DE VIAGEM ATIVA';

  @override
  String get liveTripOpen => 'ABRIR VIAGEM AO VIVO';

  @override
  String get tripNoCompletedSessions => 'Nenhuma viagem concluída ainda.';

  @override
  String get liveTripStatusLive => 'AO VIVO';

  @override
  String get liveTripSpeed => 'VELOCIDADE';

  @override
  String get liveTripVehicleSpeedUnavailable =>
      'Stream de velocidade do veículo indisponível';

  @override
  String get liveTripCanSpeedRaw => 'CANDIDATO VELOCIDADE CAN';

  @override
  String get liveTripSoc => 'SOC';

  @override
  String get liveTripSocStart => 'SOC INICIAL';

  @override
  String get liveTripSocChange => 'VARIAÇÃO SOC';

  @override
  String get liveTripSocCurrent => 'SOC ATUAL';

  @override
  String get liveTripDrivePower => 'POTÊNCIA DE TRAÇÃO';

  @override
  String get liveTripRoadIncline => 'INCLINAÇÃO ATUAL DA VIA';

  @override
  String get inclineReadoutTitle => 'Inclinação';

  @override
  String get compassReadoutTitle => 'Bússola';

  @override
  String get compassNorth => 'N';

  @override
  String get compassNortheast => 'NE';

  @override
  String get compassEast => 'L';

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
  String get compassHeld => 'Parado. Última direção.';

  @override
  String get compassNoFix => 'Sem sinal de GPS';

  @override
  String get compassGpsOff => 'O GPS está desligado';

  @override
  String get compassNoPermission => 'Sem permissão de localização';

  @override
  String get liveTripEcoCoach => 'ECO COACH';

  @override
  String get liveTripEcoBeta => 'BETA';

  @override
  String get liveTripEcoObserving => 'Coletando amostras da condução';

  @override
  String get liveTripEcoAcceleration => 'ACEL';

  @override
  String get liveTripEcoJerk => 'JERK';

  @override
  String get liveTripEcoCycles => 'ACEL→FREIO';

  @override
  String get liveTripEcoReasonStopped => 'Parado — nota pausada';

  @override
  String get liveTripEcoReasonEfficient => 'Demanda moderada e suave';

  @override
  String get liveTripEcoReasonDemand => 'Demanda de tração alta';

  @override
  String get liveTripEcoReasonAcceleration => 'Aceleração brusca';

  @override
  String get liveTripEcoReasonJerk => 'Mudança brusca na aceleração';

  @override
  String get liveTripEcoReasonCoasting => 'Embalando sem pedal nem freio';

  @override
  String get liveTripEcoReasonRegen => 'Recuperando energia';

  @override
  String get liveTripEcoReasonCycle => 'Acelerou e freou logo depois';

  @override
  String get liveTripAverageConsumption => 'CONSUMO MÉDIO VCU';

  @override
  String get liveTripAverageConsumption1 => 'CONSUMO MÉDIO VCU 1';

  @override
  String get liveTripTotalOdometerCandidate => 'CANDIDATO ODÔMETRO';

  @override
  String get liveTripPedal => 'PEDAL ACELERADOR';

  @override
  String get liveTripBrake => 'FREIO';

  @override
  String get liveTripBrakeOn => 'PISADO';

  @override
  String get liveTripBrakeOff => 'SOLTO';

  @override
  String get liveTripRegenTorque => 'TORQUE REGEN';

  @override
  String get liveTripRegenLevel => 'NÍVEL REGEN';

  @override
  String get liveTripPackPower => 'POT. PACK V x I';

  @override
  String get liveTripVhalPower => 'POTÊNCIA VHAL';

  @override
  String get liveTripGear => 'MARCHA';

  @override
  String get liveTripAltitude => 'ALTITUDE';

  @override
  String get liveTripGps => 'SINAL GPS';

  @override
  String get liveTripBus => 'BARRAMENTO CAN';

  @override
  String get liveTripPollAge => 'IDADE DO POLL';

  @override
  String get liveTripImpliedScale => 'ESCALA IMPLÍCITA DA VELOCIDADE';

  @override
  String get liveTripSectionInstant => 'SINAIS INSTANTÂNEOS';

  @override
  String get liveTripSectionTotals => 'TOTAIS DA VIAGEM';

  @override
  String get liveTripSourceVhal => 'VHAL';

  @override
  String get liveTripBadgeDerived => 'V x I';

  @override
  String get liveTripBadgeStale => 'PARADO';

  @override
  String get liveTripCanOffline =>
      'Ponte CAN offline: valores Roadcast ao vivo indisponíveis';

  @override
  String get liveTripMapTitle => 'Rota ao Vivo';

  @override
  String get liveTripChartPower => 'Traçado Potência';

  @override
  String get liveTripChartPowerNotEnough =>
      'Amostras de potência insuficientes para gráfico.';

  @override
  String liveTripSourceCan(Object frameId) {
    return 'CAN $frameId';
  }

  @override
  String liveTripTotalsUpdated(Object age) {
    return 'Room, há $age';
  }

  @override
  String liveTripWindowMinutes(Object minutes) {
    return 'últimos $minutes min';
  }

  @override
  String liveRoadcastWindowSeconds(int seconds) {
    return 'últimos $seconds s em RAM';
  }

  @override
  String get liveChargeTitle => 'CARGA AO VIVO';

  @override
  String get liveChargeOpen => 'ABRIR SESSÃO AO VIVO';

  @override
  String get liveChargeRowTitle => 'SESSÃO ATIVA';

  @override
  String get liveChargeSectionPack => 'PACOTE';

  @override
  String get liveChargeSectionInput => 'ENTRADA DO CARREGADOR';

  @override
  String get liveChargeSectionTotals => 'TOTAIS DA SESSÃO';

  @override
  String get liveChargeInputPower => 'POTÊNCIA DE ENTRADA';

  @override
  String get liveChargePackCurrent => 'CORRENTE DO PACOTE';

  @override
  String get liveChargePackPower => 'POTÊNCIA NO PACOTE';

  @override
  String get liveChargeCurrentRaw => 'CONTAGEM DO BARRAMENTO';

  @override
  String get liveChargeCurrentScale => 'ESCALA';

  @override
  String get liveChargeCurrentScaleValue => '0,1 A/bit (confirmada)';

  @override
  String get liveChargeZeroAssumed => 'ZERO ASSUMIDO';

  @override
  String get liveChargeZeroObserved => 'ZERO OBSERVADO';

  @override
  String liveChargeZeroSamples(int count) {
    return '$count amostras';
  }

  @override
  String get liveChargeZeroWaiting => 'precisa de repouso';

  @override
  String get liveChargeZeroOffset => 'ERRO DE OFFSET';

  @override
  String get liveChargeZeroNote =>
      'Os valores em ampère usam um zero assumido de 5000 contagens. O zero observado acumula com o pacote em repouso; a diferença entre os dois é o erro que toda leitura em ampère carrega.';

  @override
  String get liveChargeObcInputVolts => 'TENSÃO DE ENTRADA';

  @override
  String get liveChargeObcInputCurrent => 'CORRENTE DE ENTRADA';

  @override
  String get liveChargeObcState => 'ESTADO DO CARREGADOR';

  @override
  String get liveChargeObcEfficiency => 'RENDIMENTO DO OBC';

  @override
  String get liveChargeChartPower => 'Potência de Entrada';

  @override
  String get liveChargeChartCurrent => 'Corrente do Pacote (est.)';

  @override
  String get liveChargeChartSoc => 'Estado de Carga';

  @override
  String get liveChargeChartNotEnough => 'Aguardando amostras do barramento.';

  @override
  String get liveChargeEnergyAdded => 'ENERGIA ADICIONADA';

  @override
  String get liveChargeEta => 'TEMPO ATÉ CHEIO';

  @override
  String liveChargeEtaTarget(int percent) {
    return 'TEMPO ATÉ $percent%';
  }

  @override
  String get liveChargeBadgeEstimate => 'EST';

  @override
  String get liveChargeCanOffline =>
      'Ponte CAN offline: corrente e tensão do pacote indisponíveis';

  @override
  String get liveChargeNoLiveSession => 'Nenhuma sessão de carga aberta.';

  @override
  String get chargeDetailCost => 'CUSTO';

  @override
  String get chargeDetailEditCost => 'EDITAR CUSTO';

  @override
  String get chargeDetailCostPerKwh => 'POR kWh';

  @override
  String get chargeDetailSectionOverview => 'VISÃO GERAL';

  @override
  String get chargeDetailSectionEnergy => 'ENERGIA E CUSTO';

  @override
  String get chargeDetailSectionCurves => 'CURVAS';

  @override
  String get chargeDetailSectionContext => 'CONTEXTO';

  @override
  String get chargeDetailPeakPower => 'POTÊNCIA DE PICO';

  @override
  String get chargeDetailSocRate => 'TAXA DE SOC';

  @override
  String get chargeDetailEnergyRate => 'TAXA DE ENERGIA';

  @override
  String get chargeDetailSocPerHour => '%/h';

  @override
  String chargeDetailSamples(int count) {
    return '$count pts';
  }

  @override
  String get chargeDetailNoCost => 'Toque para definir um preço';

  @override
  String get chargeDetailStartedAt => 'INÍCIO';

  @override
  String get chargeDetailEndedAt => 'FIM';

  @override
  String liveChargeLoss(Object kw) {
    return '$kw kW perdidos no carregador';
  }

  @override
  String get liveChargeWallPower => 'POTÊNCIA DA PAREDE';

  @override
  String get liveChargeMeasured => 'MED';

  @override
  String get energyMonitorTab => 'Monitor de energia';

  @override
  String get rangeReasonCollectionStopped => 'Coleta parada.';

  @override
  String get rangeReasonWaitingForSignal => 'Aguardando o sinal.';

  @override
  String get rangeReasonSignalError => 'Erro no sinal.';

  @override
  String get rangeReasonUnpublishedSignal => 'O carro nao envia este valor.';

  @override
  String get rangeReasonOutOfRange => 'Valor fora da faixa.';

  @override
  String get rangeReasonEfficiencyLoading => 'Lendo a eficiencia.';

  @override
  String get rangeReasonNoValidEfficiency => 'Ainda sem eficiencia medida.';

  @override
  String get rangeReasonEfficiencyStale => 'A eficiencia esta desatualizada.';

  @override
  String get rangeDropTitle => 'Queda de autonomia';

  @override
  String get rangeDropDistance => 'Rodou';

  @override
  String get rangeDropCarSpent => 'Carro gastou';

  @override
  String get rangeDropCarGained => 'Carro ganhou';

  @override
  String get rangeDropAppSpent => 'App gastou';

  @override
  String get rangeDropAppGained => 'App ganhou';

  @override
  String rangeDropStretch(String time) {
    return 'Medindo desde $time';
  }

  @override
  String get rangeDropWaiting => 'Aguardando uma viagem.';

  @override
  String get rangeDropTooShort => 'O trecho e curto demais para comparar.';

  @override
  String get rangeDropFrozen => 'Trecho encerrado';

  @override
  String get energyUseTitle => 'Uso de energia';

  @override
  String get energyUseAbout => 'Sobre o uso de energia';

  @override
  String get energyWindowCurrentDrive => 'Viagem atual';

  @override
  String get energyWindowSincePowerOn => 'Desde ligado';

  @override
  String get energyWindowLast15Minutes => 'Últimos 15 minutos';

  @override
  String get energyWindowLastHour => 'Última hora';

  @override
  String get energyWindowLast8Hours => 'Últimas 8 horas';

  @override
  String get energyWindowSelector => 'Escolha o trecho de condução a mostrar';

  @override
  String get energyModeDrive => 'Dirigindo';

  @override
  String get energyModeParked => 'Estacionado';

  @override
  String get energyStateCharge => 'Carregando';

  @override
  String get energyStatePoweredOn => 'Ligado';

  @override
  String get energyChartEmpty => 'Nenhuma condução registrada nesta janela.';

  @override
  String get energyChartEmptyParked => 'O carro não ficou parado nesta janela.';

  @override
  String get energyChartLoading => 'Lendo a viagem…';

  @override
  String get energyChartFailed => 'Não foi possível ler a viagem.';

  @override
  String get energyChartSemantics => 'Energia usada por intervalo';

  @override
  String get energyBarOpen => 'em andamento';

  @override
  String get energyTraction => 'Motor';

  @override
  String get energyClimate => 'Climatização';

  @override
  String get energyAuxiliary => 'Demais sistemas';

  @override
  String get energyRegeneration => 'Recuperado';

  @override
  String get sessionDetailsTitle => 'Detalhes da sessão';

  @override
  String get sessionDetailsAbout => 'Sobre esta sessão';

  @override
  String get sessionDetailsInfoTitle => 'O que o anel mostra';

  @override
  String get sessionDetailsInfoClose => 'Fechar a explicação da sessão';

  @override
  String get sessionDetailsInfoTraction =>
      'Energia que a bateria enviou ao motor para mover o carro.';

  @override
  String get sessionDetailsInfoClimate =>
      'Energia que a bateria enviou ao aquecimento e ao resfriamento. O carro informa este valor.';

  @override
  String get sessionDetailsInfoAuxiliary =>
      'Tudo o que a bateria forneceu e que a tração e a climatização não explicam: direção, bombas, luzes, eletrônica. É o que sobra depois da tração, então carrega o erro das duas leituras. Se o carro não informa a potência de climatização, essa carga está dentro deste valor.';

  @override
  String get sessionDetailsInfoRegeneration =>
      'Energia que o motor devolveu nas desacelerações. Medida contra o que foi gasto, não é uma fatia disso — por isso é o arco interno.';

  @override
  String get energyStatEfficiency => 'Méd.';

  @override
  String get energyStatDistance => 'Distância';

  @override
  String get energyStatSpeed => 'Vel. média';

  @override
  String get energyStatCost => 'Custo est.';

  @override
  String get energyStatParkedDrain => 'Consumo méd.';

  @override
  String get energyStatParkedTotal => 'Total';

  @override
  String get energyStatParkedClimate => 'Clima';

  @override
  String get energyLedgerIn => 'Entrou';

  @override
  String get energyLedgerOut => 'Saiu';

  @override
  String get energyLedgerBalance => 'Saldo';

  @override
  String get energyLedgerSoc => 'SOC';

  @override
  String get energyLedgerIncludesEstimate => 'Inclui a estimativa do sono.';

  @override
  String get unitKmPerKwh => 'km/kWh';

  @override
  String get unitKwhPer50km => 'kWh/50km';

  @override
  String get unitKwhPer100km => 'kWh/100km';

  @override
  String get efficiencyAverageWindow => 'Méd. · últimos 15 min';

  @override
  String get efficiencyTimeNotSynced =>
      'Hora ainda não sincronizada. A linha mostra a eficiência medida.';

  @override
  String get efficiencyLessRange => 'Menos autonomia';

  @override
  String get efficiencyAxisUnit => 'Wh/km';

  @override
  String get efficiencySmoothnessLabel => 'Suavidade de condução';

  @override
  String get efficiencySmoothnessWindow => 'últimos 30 s';

  @override
  String get efficiencyAbout => 'Sobre este cartão';

  @override
  String get efficiencyInfoClose => 'Fechar a explicação de eficiência';

  @override
  String get efficiencyInfoTitle => 'Como ler este cartão';

  @override
  String get efficiencyInfoLinesLabel => 'As duas linhas';

  @override
  String get efficiencyInfoLines =>
      'A linha de cima é o que a condução custa depois de a regeneração devolver energia. A linha de baixo é o que o carro tira antes desse crédito. A área verde entre as duas é a energia devolvida.';

  @override
  String get efficiencyInfoScaleLabel => 'A escala';

  @override
  String get efficiencyInfoScale =>
      'A escala é Wh/km com o zero em cima, por isso uma linha mais alta é melhor. A linha de cima fica verde quando a condução é melhor que a estimativa de autonomia do carro. Uma quebra é um intervalo que o carro não comunicou.';

  @override
  String get efficiencyInfoAverageLabel => 'O número grande e o valor do carro';

  @override
  String get efficiencyInfoAverage =>
      'É a média dos últimos 15 minutos: a distância, dividida pela energia que a bateria deu. Toque para mudar a unidade. O carro calcula os seus kWh/100 km sobre os últimos 100 km reais, que podem ser muitas viagens e muitos dias. Por isso os dois números são diferentes, e os dois estão certos.';

  @override
  String get efficiencyInfoSmoothnessLabel => 'A barra ao lado';

  @override
  String get efficiencyInfoSmoothness =>
      'A barra mostra a suavidade da condução, não a eficiência. O cursor é os últimos 30 segundos, a marca pequena os últimos 5 segundos. Uma marca acima do cursor mostra condução mais suave.';

  @override
  String get signalLabTitle => 'Laboratório de sinais';

  @override
  String get signalLabOpen => 'Abrir laboratório de sinais';

  @override
  String get signalLabDescription =>
      'Vista de engenharia de cada sinal CAN que o daemon decodifica.';

  @override
  String get signalLabTabInspector => 'INSPETOR';

  @override
  String get signalLabTabScope => 'OSCILOSCÓPIO';

  @override
  String get signalLabSearchHint => 'Nome do sinal ou 0x315';

  @override
  String get signalLabTierFresh => 'Recente';

  @override
  String get signalLabTierPublished => 'Publicado';

  @override
  String get signalLabTierNever => 'Nunca';

  @override
  String get signalLabColumnSignal => 'Sinal';

  @override
  String get signalLabColumnFrame => 'Quadro';

  @override
  String get signalLabColumnRaw => 'Bruto';

  @override
  String get signalLabColumnValue => 'Valor';

  @override
  String get signalLabColumnUnit => 'Unidade';

  @override
  String get signalLabColumnAge => 'Idade';

  @override
  String get signalLabColumnTier => 'Nível';

  @override
  String get signalLabColumnRange => 'Mín./máx. da sessão';

  @override
  String get signalLabRawCounts => 'contagens';

  @override
  String get signalLabUncalibrated => 'EST';

  @override
  String get signalLabUncalibratedHint =>
      'Sem escala negociada. A contagem é a medição.';

  @override
  String get signalLabInvalid => 'INVÁLIDO';

  @override
  String get signalLabDisconnected =>
      'O Roadcast não está conectado. Nenhum sinal pode ser lido.';

  @override
  String get signalLabEmpty => 'Nenhum sinal corresponde a este filtro.';

  @override
  String get signalLabScopeEmpty =>
      'Selecione até quatro sinais no inspetor para traçá-los.';

  @override
  String get signalLabScopeFull =>
      'O osciloscópio tem quatro traços. Remova um primeiro.';

  @override
  String get signalLabFreeze => 'Congelar';

  @override
  String get signalLabResume => 'Retomar';

  @override
  String get signalLabClearTraces => 'Limpar traços';

  @override
  String get signalLabResetSession => 'Reiniciar sessão';

  @override
  String get signalLabTrace => 'Traçar';

  @override
  String signalLabCounts(int fresh, int published, int never) {
    return '$fresh recentes, $published publicados, $never nunca';
  }

  @override
  String get v1WelcomeTitle => 'Experiência Versão 1.0';

  @override
  String get v1WelcomeBody =>
      'Bem-vindo à Versão 1.0! Esta versão lança uma nova experiência para o aplicativo. A nova interface continuará recebendo melhorias, ajustes e correções com base em feedbacks.\n\nCaso prefira o modo antigo, você pode alternar a qualquer momento nas Configurações. O aplicativo lembrará da sua preferência e abrirá sempre no modo escolhido.';

  @override
  String get v1WelcomeConfirm => 'Explorar Nova Experiência';

  @override
  String get v1WelcomeUseLegacy => 'Usar Modo Antigo';

  @override
  String get v2ProjectionBetaTitle => 'CarPlay / Android Auto (Beta)';

  @override
  String get v2ProjectionBetaDescription =>
      'Mostra a aba do telefone conectado e renderiza a imagem nela. Sem telefone conectado, nenhuma aba aparece. Desativado, os serviços de projeção da central nem chegam a iniciar. Ainda em beta.';

  @override
  String get settingsReplaceOemChargingTitle =>
      'Substituir tela de carga do carro';

  @override
  String get settingsReplaceOemChargingDesc =>
      'Bloqueia o popup automático da tela de carga de fábrica e abre este app em Carregamento quando uma carga começa. O app de fábrica continua abrindo pelo ícone. Este app não toma a tela no modo acampamento ou soneca.';

  @override
  String get settingsExternalChargeControlTitle =>
      'Controle de Carga Externo (Geely Charge Control)';

  @override
  String get settingsExternalChargeControlDesc =>
      'Permite controlar limite de carga e amperagem delegando as operações para o aplicativo dedicado Geely Charge Control. Por padrão, o Eaglemetry opera exclusivamente como analisador de telemetria.';

  @override
  String get settingsChargeControlNotInstalled =>
      'Geely Charge Control não está instalado';

  @override
  String settingsChargeControlInstalled(String version) {
    return 'Geely Charge Control instalado (v$version)';
  }

  @override
  String get settingsChargeControlDownloadAndInstall => 'Baixar e Instalar APK';

  @override
  String get settingsChargeControlOpenApp => 'Abrir Aplicativo';

  @override
  String get settingsChargeControlInstalling => 'Instalando APK...';

  @override
  String settingsChargeControlDownloadingPercent(int percent) {
    return 'Baixando... $percent%';
  }

  @override
  String get settingsChargeControlInstalledSuccess =>
      'Instalação do Geely Charge Control agendada/concluída.';

  @override
  String get settingsChargeControlLaunchFailed =>
      'O Geely Charge Control não abriu.';

  @override
  String get settingsPackCapacityTitle => 'Capacidade da bateria';

  @override
  String get settingsPackCapacityDesc =>
      'O tamanho da bateria que o app usa em todos os valores de energia e eficiência. O carro não informa um valor confiável, então indique-o aqui. Padrão: 39,60 kWh.';

  @override
  String settingsPackCapacitySaved(String value) {
    return 'Capacidade da bateria definida em $value.';
  }

  @override
  String get settingsChargeCostApplyTitle => 'Precificar as cargas antigas';

  @override
  String get settingsChargeCostApplyDesc =>
      'Grava o valor padrão em todas as cargas terminadas que não têm preço. Uma carga com valor pago mantém o valor dela.';

  @override
  String get settingsChargeCostApply => 'Aplicar às cargas sem preço';

  @override
  String get settingsChargeCostApplying => 'A aplicar...';

  @override
  String get settingsProposalDecision => 'Responder à proposta';

  @override
  String get settingsProposalPrompt => 'Um celular propôs este valor.';

  @override
  String get settingsProposalAccept => 'Aceptar';

  @override
  String get settingsProposalRefuse => 'Recusar';

  @override
  String get settingsProposalDeciding => 'Decidindo...';

  @override
  String get settingsProposalUnknown => 'Proposta';

  @override
  String settingsChargeCostApplied(int count) {
    return '$count cargas agora têm o valor padrão.';
  }

  @override
  String get settingsChargeCostApplyNone => 'Nenhuma carga precisava de preço.';

  @override
  String get settingsChargeCostApplyNoRate =>
      'Guarde primeiro um valor padrão.';

  @override
  String insightNotEnoughData(int count) {
    return 'Ainda não há viagens medidas suficientes nos últimos 30 dias ($count utilizáveis).';
  }

  @override
  String get insightSubjectUnusable =>
      'Esta viagem não tem energia medida da bateria para comparar.';

  @override
  String insightNotDistinguishable(int count) {
    return 'Esta viagem ainda não se distingue da sua média dos últimos 30 dias ($count viagens).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'Esta viagem usou $difference Wh/km a menos que os últimos 30 dias ($count viagens).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'Esta viagem usou $difference Wh/km a mais que os últimos 30 dias ($count viagens).';
  }

  @override
  String get navSync => 'Sincronizar';

  @override
  String get v2SyncCodeTitle => 'Código de emparelhamento';

  @override
  String get v2SyncNoCode => 'Nenhum código aberto';

  @override
  String get v2SyncRegisteredSubtitle =>
      'Carro registrado. Aguardando o celular vincular.';

  @override
  String get v2SyncRegisteredBody =>
      'O carro se registrou sozinho. Abra o app Eaglemetry Companion no celular e vincule o carro a sua conta.';

  @override
  String get v2SyncRegistered => 'REGISTRADO';

  @override
  String get v2SyncRevokedSubtitle => 'Acesso revogado. Crie um novo código.';

  @override
  String get v2SyncRevokedBody =>
      'O acesso a este carro foi revogado. Gere um novo código de pareamento para conectar seu celular novamente.';

  @override
  String get v2SyncRevoked => 'REVOGADO';

  @override
  String get v2SyncCodeExpired => 'O código expirou. Gere um novo.';

  @override
  String get v2SyncCodeCancelled => 'Código cancelado. Faça um novo.';

  @override
  String get v2SyncCreateCode => 'NOVO CÓDIGO';

  @override
  String get v2SyncCancelCode => 'CANCELAR CÓDIGO';

  @override
  String get v2SyncRetry => 'TENTAR DE NOVO';

  @override
  String get v2SyncPaired => 'EMPARELHADO';

  @override
  String get v2SyncPairedConnected => 'Celular emparelhado. Conectado.';

  @override
  String get v2SyncPairingRejected => 'O celular recusou o emparelhamento.';

  @override
  String get v2SyncPairingInvalid => 'Algo deu errado.';

  @override
  String get v2SyncPairingStartFailed =>
      'Não foi possível iniciar o emparelhamento. Tente de novo.';

  @override
  String get v2SyncCheckingConnection => 'Verificando conexão…';

  @override
  String get v2SyncCheckingBody => 'Verificando se o carro alcança o servidor…';

  @override
  String get v2SyncNoNetwork =>
      'Sem conexão de rede. Verifique o Wi-Fi ou o hotspot.';

  @override
  String get v2SyncNoNetworkBody =>
      'O carro está sem conexão de rede. Ligue o Wi-Fi ou um hotspot e tente de novo.';

  @override
  String get v2SyncServerUnreachable =>
      'Não alcança o servidor. Verifique a conexão.';

  @override
  String get v2SyncServerUnreachableBody =>
      'O carro está na rede mas não alcança o servidor. Verifique a conexão e tente de novo.';

  @override
  String get v2SyncPendingBody =>
      'Abra o app Eaglemetry Companion no celular e digite este código. Ele expira em 5 minutos.';

  @override
  String get v2SyncApprovedBody =>
      'Seu celular está emparelhado. O carro sincroniza com a nuvem quando tem conexão.';

  @override
  String get v2SyncExpiredBody =>
      'Este código expirou após 5 minutos. Gere um novo para tentar de novo.';

  @override
  String get v2SyncRejectedBody =>
      'O celular recusou o emparelhamento. Gere um novo código e tente de novo.';

  @override
  String get v2SyncInvalidBody =>
      'Algo deu errado com o código. Gere um novo e tente de novo.';

  @override
  String get v2SyncIdleBody =>
      'Abra o app Eaglemetry Companion no celular. Gere um código aqui e digite lá.';

  @override
  String get v2SyncExpiresInMinutes => 'Expira em 5 minutos';

  @override
  String v2SyncExpiresInClock(int minutes, String seconds) {
    return 'Expira em $minutes:$seconds';
  }

  @override
  String v2SyncExpiresInSecs(int seconds) {
    return 'Expira em ${seconds}s';
  }

  @override
  String get v2SyncDevicesTitle => 'Telefones emparelhados';

  @override
  String get v2SyncNoDevices => 'Nenhum telefone emparelhado';

  @override
  String get v2SyncNoDevicesBody =>
      'O carro entrega dados só a um telefone emparelhado. Faça um código para emparelhar um.';

  @override
  String v2SyncDeviceCount(Object count) {
    return '$count emparelhados';
  }

  @override
  String v2SyncPairedOn(Object date) {
    return 'Emparelhado em $date';
  }

  @override
  String get v2SyncRevoke => 'REMOVER SYNC';

  @override
  String v2SyncRevokeConfirmTitle(Object name) {
    return 'Remover o sync de $name?';
  }

  @override
  String get v2SyncRevokeConfirmMessage =>
      'O celular perde o acesso ao carro. O carro fica livre para sincronizar com outro celular. O histórico que já está no celular permanece lá.';

  @override
  String get v2SyncRevokeConfirm => 'REMOVER SYNC';

  @override
  String get v2SyncRevokeCancel => 'CANCELAR';

  @override
  String get v2SyncForce => 'FORÇAR SYNC';

  @override
  String get v2SyncCloudTitle => 'Sync na nuvem';

  @override
  String get v2SyncCloudSubtitle =>
      'Envie os dados do carro para a nuvem agora.';

  @override
  String get v2SyncCloudRunning => 'Enviando…';

  @override
  String get v2SyncCloudNote =>
      'Envia telemetria, anotações e mudanças de preferência para a nuvem. Roda sozinho a cada 15 minutos; este botão roda agora.';

  @override
  String v2SyncCloudMoved(int count) {
    return '$count registros enviados.';
  }

  @override
  String get v2SyncCloudEmpty => 'Já está em dia. Nada a enviar.';

  @override
  String get v2SyncCloudFailed => 'Envio falhou. Tente de novo.';

  @override
  String get v2SyncCloudDisabled =>
      'Sync na nuvem está desligado nesta versão. Nada foi enviado.';

  @override
  String get v2SyncCloudNotPaired =>
      'Pareie este carro com o seu celular primeiro. Nada foi enviado.';

  @override
  String get v2SyncLiveActive => 'Valores ao vivo: enviando';

  @override
  String get v2SyncLiveIdle => 'Valores ao vivo: aguardando o celular';

  @override
  String get v2SyncProgressLabel => 'Progresso na nuvem';

  @override
  String get v2SyncProgressUpToDate => '100% em dia';

  @override
  String v2SyncProgressPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pendentes',
      one: '1 pendente',
    );
    return '$_temp0';
  }

  @override
  String v2SyncProgressPendingClock(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aguardando relógio do carro',
      one: '1 aguardando relógio do carro',
    );
    return '$_temp0';
  }

  @override
  String v2SyncProgressPendingBoth(int dirty, int clock) {
    String _temp0 = intl.Intl.pluralLogic(
      dirty,
      locale: localeName,
      other: '$dirty pendentes',
      one: '1 pendente',
    );
    String _temp1 = intl.Intl.pluralLogic(
      clock,
      locale: localeName,
      other: '$clock aguardando relógio do carro',
      one: '1 aguardando relógio do carro',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String v2SyncProgressDetail(int clean, int total) {
    return '$clean de $total registros na nuvem';
  }

  @override
  String get v2SyncCompanionTitle => 'Eaglemetry Companion';

  @override
  String get v2SyncCompanionBeta => 'Beta disponível';

  @override
  String get v2SyncCompanionDescription =>
      'Acompanhe suas viagens, histórico de recargas e métricas da bateria no seu celular.';

  @override
  String get v2SyncCompanionUpdateHint =>
      'Não consegue sincronizar? Baixe a versão nova do companion!';

  @override
  String get v2SyncCompanionScanQr =>
      'Escaneie o código para baixar a versão beta:';

  @override
  String get v2SyncCompanionAndroid => 'Android';

  @override
  String get v2SyncCompanionIos => 'iOS';

  @override
  String get v2SyncCompanionForbidden => '403?';

  @override
  String get v2SyncCompanionBetaWarning =>
      'O app está em beta (a versão de iOS está em fase de aprovação da Apple). Features estão faltando e bugs com certeza existem. Para dar feedback, balance o celular!';

  @override
  String get v2SettingsStorage => 'Armazenamento';

  @override
  String get v2SettingsStorageTitle => 'Histórico salvo';

  @override
  String get v2SettingsStorageDesc =>
      'Quanto espaço o histórico salvo ocupa no disco. Medido sem varrer cada registro.';

  @override
  String get v2SettingsStorageLoading => 'Verificando…';

  @override
  String v2SettingsStorageFailed(String error) {
    return 'Falha ao verificar armazenamento: $error';
  }

  @override
  String v2SettingsStorageValue(String size) {
    return '$size usados';
  }
}
