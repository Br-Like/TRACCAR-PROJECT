# `src/reports`

Relatórios em `/reports/...`. Cada página busca um endpoint `/api/reports/*` com dispositivo, grupo e período vindos da query string, mostra a tabela e exporta Excel ou outros formatos.

## `CombinedReportPage.jsx`

Relatório combinado (`/reports/combined`). Junta viagens, paradas e eventos do período numa visão só. Atalho do topo do menu de relatórios.

## `EventReportPage.jsx`

Eventos (`/reports/events`): ignição, alarmes, cercas, manutenção. Dá para filtrar o tipo e exportar. O texto de cada evento passa por `formatEventData`.

## `GeofenceReportPage.jsx`

Entradas e saídas de cerca (`/reports/geofences`): qual dispositivo, qual cerca e quando.

## `TripReportPage.jsx`

Viagens (`/reports/trips`): início, fim, distância, duração, velocidade média e máxima, motorista e endereços.

## `StopReportPage.jsx`

Paradas (`/reports/stops`): onde o veículo ficou parado, por quanto tempo e o endereço.

## `SummaryReportPage.jsx`

Resumo (`/reports/summary`): totais por dispositivo no período (distância, horas de motor, velocidade máxima, consumo quando existe).

## `ChartReportPage.jsx`

Gráfico (`/reports/chart`) com Recharts. O usuário escolhe atributos numéricos da rota (velocidade, combustível, rpm) e vê a série no tempo. Aceita um dispositivo por vez.

## `PositionsReportPage.jsx`

Rota ponto a ponto (`/reports/route`): tabela de posições e o traçado no mapa. É o detalhe bruto da viagem, diferente do replay.

## `ScheduledPage.jsx`

Relatórios agendados (`/reports/scheduled`). Lista e remove envios periódicos por e-mail. Quem está em modo somente leitura não vê este item.

## `LogsPage.jsx`

Log do servidor (`/reports/logs`). Pede ao socket para incluir logs e mostra as linhas que chegam. Útil para ver o que o rastreador está mandando.

## `StatisticsPage.jsx`

Estatísticas do servidor (`/reports/statistics`), só para administrador: mensagens, requisições e usuários ao longo dos dias. Inclui o seletor `StatisticsTypeSelect`, também usado pela página de estatísticas por dispositivo.

## `DeviceStatisticsPage.jsx`

Estatísticas por dispositivo (`/reports/device-statistics`): quantas mensagens cada equipamento enviou no período. Aberta a partir de `StatisticsPage`.

## `AuditPage.jsx`

Auditoria (`/reports/audit`), só para administrador. Lista quem alterou o quê (usuário, ação, objeto e data) a partir de `/api/audit`.
