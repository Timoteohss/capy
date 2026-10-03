// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Eaglemetry Companion';

  @override
  String get pairingTitle => 'Emparelhar com o carro';

  @override
  String get pairingBody => 'Escreva o código de 6 dígitos que o carro mostra.';

  @override
  String get pairingCodeHint => '000000';

  @override
  String get pairingAction => 'Emparelhar';

  @override
  String get pairingForget => 'Esquecer este carro';

  @override
  String get pairingInvalidCode => 'Escreva os 6 dígitos do carro.';

  @override
  String get pairingRejected => 'O carro recusou este código.';

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
  String get homePairedTitle => 'Emparelhado';

  @override
  String get homePairedBody =>
      'Este celular lê o histórico do carro pela sua conta na nuvem.';

  @override
  String get homeNoteLabel => 'Nota';

  @override
  String get homeNoteBody =>
      'O carro é a fonte. Este telefone guarda o histórico longo depois de um sync.';

  @override
  String get syncTitle => 'Sincronização';

  @override
  String get syncAction => 'SINCRONIZAR';

  @override
  String get syncRunning => 'SINCRONIZANDO';

  @override
  String get syncProgressLabel => 'Progresso na nuvem';

  @override
  String get syncProgressUpToDate => '100% em dia';

  @override
  String syncProgressPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pendentes',
      one: '1 pendente',
    );
    return '$_temp0';
  }

  @override
  String syncProgressDetail(int clean, int total) {
    return '$clean de $total registros na nuvem';
  }

  @override
  String get syncNeverRun => 'Ainda sem sincronização';

  @override
  String syncHolding(int trips, int charges) {
    return '$trips viagens, $charges cargas neste telefone';
  }

  @override
  String syncLastRun(Object time) {
    return 'Última sincronização: $time';
  }

  @override
  String syncResultCompleted(Object records) {
    return '$records registros chegaram da nuvem.';
  }

  @override
  String get syncResultNothing => 'O carro não tinha nada novo.';

  @override
  String get syncResultFailed =>
      'O sync nao alcancou a nuvem. Verifique a conexao e tente novamente.';

  @override
  String get syncResultCloudDisabled =>
      'Sincronização em nuvem desativada nesta compilação.';

  @override
  String get syncResultPhoneOffline =>
      'Este celular não alcançou a nuvem. Verifique a conexão e tente novamente.';

  @override
  String get syncResultCarSilent =>
      'O carro não enviou nada para a nuvem. Se ele tem viagens novas, verifique a conexão dele.';

  @override
  String get syncStreamTrips => 'Viagens';

  @override
  String get syncStreamCharges => 'Cargas';

  @override
  String get syncStreamCycles => 'Ciclos';

  @override
  String get syncStreamIntervals => 'Intervalos';

  @override
  String get syncStreamEvents => 'Eventos';

  @override
  String get syncStreamFrames => 'Registros';

  @override
  String get syncStreamTracks => 'Rotas';

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
    return 'Sessão $index de $count';
  }

  @override
  String get syncWipeAction => 'LIMPAR DADOS LOCAIS';

  @override
  String get syncWipeTitle => 'Limpar os dados locais?';

  @override
  String get syncWipeBody =>
      'Este celular apaga todas as viagens, cargas e registros que baixou. O carro mantém os dele. O próximo sync copia o histórico de novo, do começo.';

  @override
  String get syncWipeCancel => 'CANCELAR';

  @override
  String get syncWipeConfirm => 'LIMPAR';

  @override
  String get syncStreamWaiting => 'Esperando';

  @override
  String get navSync => 'Sincronizar';

  @override
  String get navHistory => 'Histórico';

  @override
  String get navTrips => 'Viagens';

  @override
  String get navCharges => 'Recargas';

  @override
  String get navBattery => 'Bateria';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get navComingSoon => 'Em breve.';

  @override
  String get historyTrips => 'Viagens';

  @override
  String get historyCharges => 'Cargas';

  @override
  String get historyEmpty => 'Ainda não há nada. Sincronize com o carro.';

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
    return 'O arquivo não pôde ser lido: $reason';
  }

  @override
  String get historyRoute => 'Trajeto';

  @override
  String get historyNoRoute => 'Esta viagem não tem posição registrada.';

  @override
  String get historyMapExpand => 'Ampliar o mapa';

  @override
  String get historyMapCollapse => 'Reduzir o mapa';

  @override
  String get historyDuration => 'Duração';

  @override
  String get historyDistance => 'Distância';

  @override
  String get historySoc => 'Carga';

  @override
  String get historyConsumed => 'Gasto';

  @override
  String get historyRegenerated => 'Recuperado';

  @override
  String get historyEfficiency => 'Eficiência';

  @override
  String get historyClimb => 'Subida';

  @override
  String get historyTemperature => 'Externa';

  @override
  String get historyStart => 'Conectado';

  @override
  String get historyEnd => 'Desconectado';

  @override
  String get historyEnergy => 'Energia';

  @override
  String get historyPeakPower => 'Pico';

  @override
  String get historyAveragePower => 'Média';

  @override
  String get historyPeakAndAverage => 'Pico e média';

  @override
  String get historyChargingPower => 'Potência de recarga';

  @override
  String get historyChargeLocation => 'Local';

  @override
  String get historyChargeCost => 'Custo';

  @override
  String get historyEditCost => 'Editar o preço desta recarga';

  @override
  String get chargeCostTitle => 'Preço da recarga';

  @override
  String get chargeCostDescription =>
      'Vale apenas para esta recarga. Digite o preço por kWh ou o total pago.';

  @override
  String get chargeCostFieldRate => 'Preço/kWh';

  @override
  String get chargeCostFieldTotal => 'Total pago';

  @override
  String get chargeCostUnitRate => '/kWh';

  @override
  String get moneyKeypadSave => 'Salvar';

  @override
  String get moneyKeypadClear => 'Apagar o valor';

  @override
  String get moneyKeypadDelete => 'Apagar o último dígito';

  @override
  String get moneyKeypadClose => 'Fechar o teclado de preço';

  @override
  String get historyVoltage => 'Tensão da bateria';

  @override
  String historyFrameCount(Object count) {
    return '$count amostras registradas';
  }

  @override
  String get historyBattery => 'Bateria';

  @override
  String get historyEnergyBalance => 'Balanço de energia';

  @override
  String get historyEvents => 'Eventos';

  @override
  String get eventTripArmed => 'Viagem armada';

  @override
  String get eventTripStarted => 'Viagem iniciada';

  @override
  String get eventTripPendingEnd => 'Viagem finalizando';

  @override
  String get eventTripCancelled => 'Viagem cancelada';

  @override
  String get eventTripEnded => 'Viagem encerrada';

  @override
  String get eventTripRecovered => 'Viagem recuperada';

  @override
  String get eventChargePlugConnected => 'Plugue conectado';

  @override
  String get eventChargeStarted => 'Recarga iniciada';

  @override
  String get eventChargeEnded => 'Recarga encerrada';

  @override
  String get eventChargePlugDisconnected => 'Plugue desconectado';

  @override
  String get eventChargeRecovered => 'Recarga recuperada';

  @override
  String get eventChargeLimitReached => 'Meta de carga atingida';

  @override
  String get historyTraction => 'Tração';

  @override
  String get historyAuxiliary => 'Outros sistemas';

  @override
  String get historyRecovered => 'Recuperado';

  @override
  String historyTotalDelivered(Object energy) {
    return '$energy kWh entregues no total';
  }

  @override
  String historyNetConsumed(Object energy) {
    return '$energy kWh consumidos no total';
  }

  @override
  String historyWh(Object energy) {
    return '$energy Wh';
  }

  @override
  String get historyPerMinute => 'Gasto e recuperado';

  @override
  String historyPerColumn(int minutes) {
    return '$minutes min por coluna';
  }

  @override
  String get historyTerrain => 'Terreno e clima';

  @override
  String get historyAltitude => 'Altitude';

  @override
  String get historyOutsideTemp => 'Temperatura externa';

  @override
  String get historyDriveMode => 'Modo de condução';

  @override
  String get historyDriveModeNormal => 'Normal';

  @override
  String get historyDriveModeEco => 'Eco';

  @override
  String get historyDriveModeSport => 'Sport';

  @override
  String get historyDriveModeOther => 'Outro';

  @override
  String get historyClimate => 'Climatização';

  @override
  String historyClimateShare(int percent) {
    return 'Ligada em $percent% da viagem';
  }

  @override
  String get historyClimateCooling => 'Resfriando';

  @override
  String get historyClimateHeating => 'Aquecendo';

  @override
  String get historyClimateBoth => 'Resfriou e aqueceu';

  @override
  String historyClimateBlower(Object level) {
    return 'Ventilador $level';
  }

  @override
  String historyClimateSetpoint(Object degrees) {
    return 'Cabine em $degrees °C';
  }

  @override
  String get historyClimateOff => 'A climatização ficou desligada.';

  @override
  String get historyClimateInAux =>
      'A energia dela está contada em Outros sistemas. O carro não informa o valor.';

  @override
  String historyDriveModeShare(Object mode, int percent) {
    return '$mode $percent%';
  }

  @override
  String get onboardingSkip => 'Pular';

  @override
  String get onboardingNext => 'Próximo';

  @override
  String get onboardingStart => 'Começar';

  @override
  String get onboardingBack => 'Voltar';

  @override
  String get onboardingSlide1Title => 'Conheça o Eaglemetry';

  @override
  String get onboardingSlide1Body =>
      'A energia do seu carro, registrada a cada viagem.';

  @override
  String get onboardingSlide2Title => 'Veja cada viagem e carga';

  @override
  String get onboardingSlide2Body =>
      'O Eaglemetry lê as suas viagens e cargas do carro pela sua conta na nuvem.';

  @override
  String get onboardingSlide3Title => 'Emparelhe em segundos';

  @override
  String get onboardingSlide3Body =>
      'Escreva o código de 6 dígitos que o carro mostra na tela. O histórico fica no seu telefone.';

  @override
  String get onboardingPairTitle => 'Emparelhe com o seu carro';

  @override
  String get onboardingPairBody =>
      'Escreva o código de 6 dígitos mostrado na tela do carro, em Sync.';

  @override
  String get onboardingCodeLabel => 'Código de 6 dígitos';

  @override
  String get onboardingPairing => 'Emparelhando';

  @override
  String get onboardingSyncingTitle => 'Sincronizando';

  @override
  String get onboardingSyncingBody =>
      'O telefone puxa os registros nesta ordem: viagens, cargas, ciclos e depois frames.';

  @override
  String get onboardingStreamWaiting => 'Aguardando';

  @override
  String onboardingWritten(int done) {
    return '$done gravados';
  }

  @override
  String onboardingCounted(int done, int total) {
    return '$done de $total';
  }

  @override
  String get onboardingPairedTitle => 'Carro emparelhado.';

  @override
  String onboardingPairedBody(int records) {
    return '$records registros estão neste telefone.';
  }

  @override
  String get onboardingPairedNothing =>
      'O carro ainda não tinha nada para enviar.';

  @override
  String get onboardingSyncFailed =>
      'O carro não foi alcançado. Faça o sync depois na aba Sync.';

  @override
  String get onboardingSyncCloudDisabled =>
      'Sincronização em nuvem desativada nesta compilação. O sync fica neste celular.';

  @override
  String get onboardingSyncPhoneOffline =>
      'Este celular não alcançou a nuvem. Verifique a conexão e faça o sync depois na aba Sync.';

  @override
  String get onboardingSyncCarSilent =>
      'O carro ainda não enviou nada. Se ele tem viagens, verifique a conexão dele e tente de novo.';

  @override
  String get onboardingContinue => 'Continuar';

  @override
  String get onboardingLoginTitle => 'Bem-vindo de volta';

  @override
  String get onboardingLoginBody => 'Entre na sua conta do Eaglemetry.';

  @override
  String get onboardingCreateTitle => 'Crie a sua conta';

  @override
  String get onboardingCreateBody =>
      'Uma conta para este app. As viagens ficam neste telefone.';

  @override
  String get onboardingEmailLabel => 'Email';

  @override
  String get onboardingEmailHint => 'voce@exemplo.com';

  @override
  String get onboardingPasswordLabel => 'Senha';

  @override
  String get onboardingShowPassword => 'Mostrar a senha';

  @override
  String get onboardingHidePassword => 'Esconder a senha';

  @override
  String get onboardingLogIn => 'Entrar';

  @override
  String get onboardingLoggingIn => 'Entrando';

  @override
  String get onboardingCreating => 'Criando a conta';

  @override
  String get onboardingForgotPassword => 'Esqueceu a senha?';

  @override
  String get onboardingCreateAccount => 'Criar conta';

  @override
  String get onboardingHaveAccount => 'Já tenho uma conta';

  @override
  String get onboardingWelcomeTitle => 'Você entrou.';

  @override
  String onboardingWelcomeBody(Object email) {
    return 'Conectado como $email. Agora, emparelhe com o seu carro.';
  }

  @override
  String get onboardingContinueToPairing => 'Ir para o emparelhamento';

  @override
  String get accountInvalidEmail => 'Escreva um email válido.';

  @override
  String accountWeakPassword(int count) {
    return 'A senha precisa de pelo menos $count caracteres, incluindo letras maiúsculas, minúsculas e números.';
  }

  @override
  String get accountWrongCredentials => 'O email ou a senha está errado.';

  @override
  String get accountEmailNotConfirmed =>
      'Confirme o endereço pelo email primeiro.';

  @override
  String get accountAlreadyRegistered =>
      'Este endereço já tem uma conta. Entre.';

  @override
  String get accountRateLimited => 'Tentativas demais. Espere e tente de novo.';

  @override
  String get accountNetwork => 'O servidor de contas não foi alcançado.';

  @override
  String get accountUnconfigured => 'Este build não tem servidor de contas.';

  @override
  String get accountUnknown => 'O servidor de contas recusou esta ação.';

  @override
  String get accountConfirmEmail => 'Abra o seu email e confirme o endereço.';

  @override
  String get accountResetSent =>
      'Se esse endereço tem conta, o email de troca de senha está a caminho.';

  @override
  String get syncStreamAnnotations => 'Anotações';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get settingsBeta => 'Beta';

  @override
  String get settingsBetaDesc =>
      'Recursos ainda em teste. Eles podem mudar ou parar de funcionar.';

  @override
  String get settingsBetaAbrpSync => 'Sincronizar dados com ABRP';

  @override
  String get settingsBetaAbrpSyncDesc =>
      'Lê os dados do carro ao vivo por Bluetooth e envia para o A Better Routeplanner. O celular pede a permissão de Bluetooth quando você liga isto.';

  @override
  String get settingsAbrpTokenLabel => 'Seu token do ABRP';

  @override
  String get settingsAbrpTokenHint => 'ex.: 12345678-abcd-...';

  @override
  String get settingsAbrpTokenHelp =>
      'Pegue o token no app do ABRP: Ajustes, Modelo do carro, Live Data, Generic (Iternio).';

  @override
  String get settingsAbrpApiKeyLabel => 'Sua API key do ABRP';

  @override
  String get settingsAbrpApiKeyHint => 'ex.: 12345678-abcd-...';

  @override
  String get settingsAbrpApiKeyHelp =>
      'Obrigatoria. O Eaglemetry nao traz chave propria, porque a Iternio limita cada chave a poucas requisicoes por segundo. Crie a sua com o botao (i) acima.';

  @override
  String get settingsAbrpHelpTitle => 'Como conectar o ABRP';

  @override
  String get settingsAbrpHelpClose => 'Fechar a ajuda do ABRP';

  @override
  String get settingsAbrpHelpApiKeyTitle => 'API key';

  @override
  String get settingsAbrpHelpApiKeySteps =>
      'Abra a pagina de API keys do ABRP abaixo. Va em API Keys e depois Create Key. Ponha App Name = Eaglemetry e aperte Create Key. Copie a chave gerada no campo API KEY.';

  @override
  String get settingsAbrpHelpApiKeyLink =>
      'https://abetterrouteplanner.com/home/app/api-keys/telemetry';

  @override
  String settingsAbrpHelpLinkFailed(Object url) {
    return 'Nao foi possivel abrir o navegador. O endereco e $url';
  }

  @override
  String get settingsAbrpHelpTokenTitle => 'Token do usuario';

  @override
  String get settingsAbrpHelpTokenSteps =>
      'Abra o app do ABRP. Va em Veiculo, depois Dados em tempo real, depois Generic. Aperte Copy Token e cole o token no campo do token.';

  @override
  String get settingsAbrpStateStreaming => 'Enviando dados ao vivo para o ABRP';

  @override
  String get settingsAbrpStateIdle => 'Aguardando o stream do carro';

  @override
  String settingsAbrpStateError(String message) {
    return 'Erro: $message';
  }

  @override
  String get settingsAbrpStateDisabled => 'Envio desligado';

  @override
  String get settingsThemeDesc =>
      'O tema é compartilhado com o carro quando os dois sincronizam.';

  @override
  String get settingsAccount => 'Conta';

  @override
  String settingsSignedInAs(String email) {
    return 'Conectado como $email';
  }

  @override
  String get settingsSignOut => 'Sair da conta';

  @override
  String get settingsSignedOut => 'Nenhuma conta está conectada neste celular.';

  @override
  String get settingsNoAccountServer => 'Este build não tem servidor de conta.';

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
  String get insightNameStart => 'Nomear início';

  @override
  String get insightNameEnd => 'Nomear fim';

  @override
  String get insightNameLocation => 'Nomear local';

  @override
  String get insightPlaceTitle => 'Nomear este lugar';

  @override
  String get insightPlaceHint => 'Nome';

  @override
  String get insightPlaceSave => 'Salvar';

  @override
  String get insightPlaceCancel => 'Cancelar';

  @override
  String get navInsights => 'Insights';

  @override
  String get insightsTitle => 'Insights';

  @override
  String get insightsSubtitle => 'Rotas entre lugares nomeados';

  @override
  String get insightsInfoTitle => 'Como os insights funcionam';

  @override
  String get insightsInfoBody =>
      'Os insights comparam suas viagens medidas entre lugares nomeados.\n\nUma viagem é medida quando o carro registrou energia da bateria, minutos integrados e a leitura confere com a bateria.\n\nCada direção é separada: ir a um lugar e voltar são duas rotas diferentes.\n\nAs comparações precisam de ao menos 4 viagens medidas na mesma direção. Até lá a rota fica bloqueada e mostra quantas faltam.\n\nAbra uma rota para ver todas as viagens medidas, da mais para a menos eficiente.';

  @override
  String get insightsInfoClose => 'Entendi';

  @override
  String insightRouteTrips(int count) {
    return '$count viagens';
  }

  @override
  String insightMeasuredOf(int measured, int total) {
    return '$measured de $total viagens medidas';
  }

  @override
  String get insightRankingTitle => 'Ranking da rota';

  @override
  String get insightRankingBest => 'Melhor viagem';

  @override
  String insightRouteMissingTrips(int count) {
    return 'Faltam $count viagens medidas para as comparações começarem';
  }

  @override
  String get insightsNoRoutesTitle => 'Nenhuma rota ainda';

  @override
  String get insightsNoRoutesBody =>
      'Nomeie os pontos de início e fim nas viagens para agrupar rotas e ver estatísticas de consumo aqui.';

  @override
  String get navJourneys => 'Jornadas';

  @override
  String get journeysTitle => 'Jornadas';

  @override
  String get journeysNew => 'Nova jornada';

  @override
  String get journeysEmptyTitle => 'Nenhuma jornada criada';

  @override
  String get journeysEmptyDesc =>
      'Agrupe viagens e recargas em um evento nomeado, como férias ou uma viagem de fim de semana.';

  @override
  String get journeyName => 'Nome';

  @override
  String get journeyNameHint => 'ex: Férias no Rio';

  @override
  String get journeyNote => 'Observação';

  @override
  String get journeyNoteHint => 'Detalhes opcionais ou memórias';

  @override
  String get journeyStartDate => 'Data de início';

  @override
  String get journeyEndDate => 'Data de fim';

  @override
  String get journeySave => 'Salvar';

  @override
  String get journeyEdit => 'Editar jornada';

  @override
  String get journeyDelete => 'Excluir jornada';

  @override
  String get journeyDeleteConfirm =>
      'Tem certeza de que deseja excluir esta jornada? As viagens e recargas continuarão no seu histórico.';

  @override
  String journeySessionsCount(int trips, int charges) {
    return '$trips viagens · $charges recargas';
  }

  @override
  String get journeySessionsInWindow => 'Viagens e recargas nesta jornada';

  @override
  String get journeyNoSessionsInWindow =>
      'Nenhuma viagem ou recarga encontrada nesta janela de tempo.';

  @override
  String get journeyCost => 'Custo das recargas';

  @override
  String journeyParkedDuration(String duration) {
    return 'Estacionado por $duration';
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
  String insightNotEnoughData(int count) {
    return 'Ainda não há viagens medidas suficientes nos últimos 30 dias ($count utilizáveis).';
  }

  @override
  String get insightSubjectUnusable =>
      'Esta rota não tem energia medida da bateria para comparar.';

  @override
  String insightNotDistinguishable(int count) {
    return 'Esta rota ainda não se distingue da sua média dos últimos 30 dias ($count viagens).';
  }

  @override
  String insightTripUsedLess(String difference, int count) {
    return 'Esta rota usou $difference Wh/km a menos que os últimos 30 dias ($count viagens).';
  }

  @override
  String insightTripUsedMore(String difference, int count) {
    return 'Esta rota usou $difference Wh/km a mais que os últimos 30 dias ($count viagens).';
  }

  @override
  String get insightClaimTitle => 'Afirmação Principal';

  @override
  String get insightBaselineTitle => 'Linha de Base';

  @override
  String get insightBaseline30d => 'Média dos últimos 30 dias';

  @override
  String get insightBaselineVariant => 'Outro caminho da rota';

  @override
  String get insightConfidenceSupported => 'Confirmado';

  @override
  String get insightConfidenceDistinguishable => 'Abaixo do ruído';

  @override
  String get insightConfidenceInsufficient => 'Dados insuficientes';

  @override
  String insightSupportSample(int count) {
    return '$count viagens consideradas';
  }

  @override
  String get insightMeasured => 'Medido';

  @override
  String get insightReference => 'Referência';

  @override
  String insightExclusionNeverRecorded(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens sem registro de energia',
      one: '1 viagem sem registro de energia',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNoMinuteBuckets(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens sem intervalos por minuto',
      one: '1 viagem sem intervalos por minuto',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionSignContradiction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens com fluxo de energia inconsistente',
      one: '1 viagem com fluxo de energia inconsistente',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionUnconfirmedSign(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens com fluxo de energia não confirmado',
      one: '1 viagem com fluxo de energia não confirmado',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionTooShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens menores que 0,5 km',
      one: '1 viagem menor que 0,5 km',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotClosed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens não finalizadas',
      one: '1 viagem não finalizada',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionVersionMismatch(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens em versão anterior',
      one: '1 viagem em versão anterior',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOutsideWindow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens fora da janela de 30 dias',
      one: '1 viagem fora da janela de 30 dias',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionNotOnRoute(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens em outra rota',
      one: '1 viagem em outra rota',
    );
    return '$_temp0';
  }

  @override
  String insightExclusionOtherVariant(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count viagens em outro caminho',
      one: '1 viagem em outro caminho',
    );
    return '$_temp0';
  }

  @override
  String get insightConsideredTripsTitle => 'Viagens Consideradas';

  @override
  String get insightNoConsideredTrips => 'Nenhuma viagem considerada ainda';

  @override
  String get insightRouteTrendTitle => 'Tendência da Rota';

  @override
  String get insightNoRouteTrips => 'Nenhuma viagem nesta rota ainda';

  @override
  String get settingsNominatimTitle => 'Sugestão de nome';

  @override
  String get settingsNominatimOptIn => 'Sugerir nome com Nominatim';

  @override
  String get settingsNominatimOptInDesc =>
      'Usa o Nominatim (OpenStreetMap) para sugerir um endereço quando você nomeia um local. Cache por célula de 100 m por 30 dias, 1 requisição por segundo. Desligado por padrão.';

  @override
  String get settingsNominatimAttribution => '© OpenStreetMap contributors';

  @override
  String get settingsStorageTitle => 'Armazenamento usado';

  @override
  String get settingsStorageDesc =>
      'Quanto espaço o histórico ocupa neste celular.';

  @override
  String get settingsStorageLoading => 'Verificando…';

  @override
  String settingsStorageFailed(String error) {
    return 'Falha ao verificar armazenamento: $error';
  }

  @override
  String settingsStorageValue(String size) {
    return '$size usados';
  }

  @override
  String get controlCardTitle => 'Controles do carro';

  @override
  String get controlCardDesc =>
      'Eles mudam o que o carro faz ou registra. Só valem quando o carro confirma.';

  @override
  String get controlStatusPending => 'Aguardando o carro';

  @override
  String get controlStatusConfirmed => 'Confirmado pelo carro';

  @override
  String get controlStatusStale => 'Aguardando — novo valor proposto';

  @override
  String get controlStatusRefused => 'Recusado pelo carro';

  @override
  String get controlStatusReportedOnly => 'O carro roda isso sem proposta';

  @override
  String get controlKeyPackCapacity => 'Capacidade da bateria';

  @override
  String get controlKeyChargeCost => 'Preço padrão da recarga';

  @override
  String get controlDesiredLabel => 'Proposto:';

  @override
  String get controlReportedLabel => 'Carro mostra:';

  @override
  String get controlValueMissing => 'não definido';

  @override
  String get controlProposeAction => 'Propor novo valor';

  @override
  String get controlProposing => 'Propondo…';

  @override
  String get controlProposeFieldHint => 'Novo valor';

  @override
  String get controlProposeCancel => 'Cancelar';

  @override
  String get controlProposeSend => 'Propor';

  @override
  String controlProposedStatus(String status) {
    return 'Proposto. Status: $status.';
  }

  @override
  String get controlProposedStatusUnknown => 'Proposto. Aguardando o carro.';

  @override
  String get controlNoRowsForKey => 'Sem proposta nem confirmação ainda.';

  @override
  String get controlNoRows => 'Nenhum controle proposto ainda.';

  @override
  String get controlNoVehicle =>
      'Este celular não consegue identificar um carro que ele possua, então recusa propor.';

  @override
  String get controlUnconfigured =>
      'Entre na conta e conecte este celular à nuvem para mudar os controles do carro.';

  @override
  String controlLastError(String error) {
    return 'Não foi possível ler os controles do carro: $error';
  }

  @override
  String get controlRefresh => 'Atualizar status';

  @override
  String get controlRefreshing => 'Atualizando…';

  @override
  String syncPending(int count) {
    return '$count edições deste celular ainda faltam enviar.';
  }

  @override
  String get syncNothingPending => 'Nada está esperando para ser enviado.';

  @override
  String get syncAutoNote =>
      'O sync roda sozinho a cada 10 minutos com o app aberto. Este botão é temporário: ele força o sync agora.';

  @override
  String get syncLastRunTitle => 'Último sync';
}
