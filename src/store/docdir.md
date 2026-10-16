# `src/store`

Estado global (Redux Toolkit). Os componentes leem com `useSelector` e alteram despachando actions. Não há classes: cada arquivo cria um slice com `createSlice`.

## `index.js`

Junta os reducers (`session`, `devices`, `events`, `motion`, `geofences`, `groups`, `drivers`, `maintenances`, `calendars`, `messages`), registra o `throttleMiddleware` e exporta a store e as actions. É o objeto passado ao `<Provider>` em `index.jsx`.

## `session.js`

Sessão corrente: objeto do servidor, usuário logado, se o socket está aberto, logs do servidor, última posição por dispositivo e o histórico curto da rota ao vivo. `updatePositions` também corta esse histórico pelo limite `web.liveRouteLength`.

## `devices.js`

Dispositivos indexados por id, o id selecionado no mapa e a flag `loaded`. `refresh` substitui a lista; `update` faz merge do que chega pelo socket; `selectId` marca o dispositivo clicado; `remove` apaga um id.

## `events.js`

Fila de eventos recentes (ignição, alarme, cerca, etc.) mostrada na gaveta da tela principal. O socket acrescenta itens; a interface descarta os antigos.

## `motion.js`

Segmentos de movimento e parada por dispositivo, calculados por `MotionController` a partir dos eventos. A barra da lista de dispositivos lê `items`.

## `geofences.js`

Cercas virtuais carregadas por `CachingController`. O mapa e a tela de cercas leem esta coleção.

## `groups.js`

Grupos de dispositivos. Usados para filtrar a lista, herdar atributos e enviar comandos em lote.

## `drivers.js`

Motoristas cadastrados. A lista e o cartão de status usam o nome do motorista associado à posição.

## `maintenances.js`

Planos de manutenção (por quilometragem ou horas). A tela de configurações edita esses registros; o slice guarda a cópia em memória.

## `calendars.js`

Calendários de horário (quando uma notificação ou um comando pode disparar). Mesmo papel de cache dos outros slices de coleção.

## `messages.js`

Fila de avisos (snackbar): texto, severidade e duração. `MessageHandler` consome e remove cada item.

## `throttleMiddleware.js`

Atrasa actions muito frequentes (posições ao vivo) para a interface não redesenhar dezenas de vezes por segundo. O intervalo cresce com a taxa de eventos, entre 1,5 s e 30 s.
