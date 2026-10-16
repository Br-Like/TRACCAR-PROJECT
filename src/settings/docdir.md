# `src/settings`

Cadastros da conta e do servidor, sob `/settings/...`. O padrão é uma página de lista e uma página de edição por entidade. A lista usa `EditItemView` indiretamente nas telas de item; as coleções usam tabela, busca e o botão de adicionar.

## `PreferencesPage.jsx`

Preferências do usuário (`/settings/preferences`): mapa, unidades, colunas da lista de dispositivos, sons de evento e opções de interface. Grava atributos do usuário, não um recurso separado.

## `DevicesPage.jsx`

Lista de dispositivos (`/settings/devices`), com busca, conexão a usuários e atalho de comando.

## `DevicePage.jsx`

Cria ou edita um dispositivo (`/settings/device` e `/settings/device/:id`): identificador único, nome, grupo, categoria, telefone, modelo e atributos.

## `DeviceConnectionsPage.jsx`

Liga o dispositivo a usuários (`/settings/device/:id/connections`). Define quem enxerga aquele equipamento.

## `UsersPage.jsx`

Lista de usuários (`/settings/users`). Visível para gerente e administrador.

## `UserPage.jsx`

Cria ou edita usuário (`/settings/user` e `/settings/user/:id`): nome, e-mail, senha, administrador, gerente, somente leitura, limite de dispositivos, mapa e atributos. Também edita o próprio usuário.

## `UserConnectionsPage.jsx`

Liga o usuário a dispositivos (`/settings/user/:id/connections`). O inverso de `DeviceConnectionsPage`.

## `GroupsPage.jsx`

Lista de grupos (`/settings/groups`).

## `GroupPage.jsx`

Cria ou edita grupo (`/settings/group` e `/settings/group/:id`): nome e grupo pai.

## `GroupConnectionsPage.jsx`

Liga o grupo a usuários e a outros objetos (`/settings/group/:id/connections`).

## `GeofencePage.jsx`

Cria ou edita cerca (`/settings/geofence` e `/settings/geofence/:id`). O desenho fica no mapa (`MapGeofenceEdit`); esta página guarda nome, calendário e atributos.

## `DriversPage.jsx`

Lista de motoristas (`/settings/drivers`).

## `DriverPage.jsx`

Cria ou edita motorista (`/settings/driver` e `/settings/driver/:id`): nome e identificador único (o código que o equipamento envia).

## `CalendarsPage.jsx`

Lista de calendários (`/settings/calendars`).

## `CalendarPage.jsx`

Cria ou edita calendário (`/settings/calendar` e `/settings/calendar/:id`). Monta a regra semanal (dias e faixas de hora) no formato iCalendar que o servidor entende.

## `NotificationsPage.jsx`

Lista de notificações (`/settings/notifications`): tipo de evento, canais (web, e-mail, SMS, push) e a quais dispositivos se aplicam.

## `NotificationPage.jsx`

Cria ou edita uma notificação (`/settings/notification` e `/settings/notification/:id`).

## `CommandsPage.jsx`

Lista de comandos salvos (`/settings/commands`), reutilizáveis em vários dispositivos.

## `CommandPage.jsx`

Cria ou edita o comando salvo (`/settings/command` e `/settings/command/:id`): tipo e atributos.

## `CommandDevicePage.jsx`

Envia um comando agora para um dispositivo (`/settings/device/:id/command`). Não grava um comando novo; dispara `POST /api/commands/send`.

## `CommandGroupPage.jsx`

O mesmo envio, para todos os dispositivos de um grupo (`/settings/group/:id/command`). O componente interno se chama `CommandDevicePage` (o arquivo exporta esse nome).

## `MaintenancesPage.jsx`

Lista de manutenções (`/settings/maintenances`). O componente exportado chama-se `MaintenacesPage`.

## `MaintenancePage.jsx`

Cria ou edita um plano de manutenção (`/settings/maintenance` e `/settings/maintenance/:id`): nome, tipo (odômetro ou horas) e período.

## `ComputedAttributesPage.jsx`

Lista de atributos calculados (`/settings/attributes`). São expressões que o servidor avalia em cada posição.

## `ComputedAttributePage.jsx`

Cria ou edita o atributo calculado (`/settings/attribute` e `/settings/attribute/:id`): atributo de destino, expressão e tipo.

## `AccumulatorsPage.jsx`

Ajusta odômetro e horas de motor de um dispositivo (`/settings/accumulators/:deviceId`). Corrige os contadores quando o valor do equipamento não bate com o real.

## `SharePage.jsx`

Gera um link temporário de acompanhamento (`/settings/:type/:id/share`) para dispositivo ou posição, com data de expiração.

## `AnnouncementPage.jsx`

Aviso global (`/settings/announcement`), para gerente. Envia uma mensagem que os usuários veem ao entrar.

## `ServerPage.jsx`

Configuração do servidor (`/settings/server`), só administrador: registro aberto, SMTP, mapa padrão, atributos forçados e limites. É a tela que altera o objeto carregado por `ServerProvider`.
