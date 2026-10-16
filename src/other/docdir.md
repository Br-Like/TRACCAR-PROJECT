# `src/other`

Páginas que não são o mapa principal, nem configurações, nem relatórios. Cada uma tem rota própria em `Navigation.jsx`.

## `ReplayPage.jsx`

Replay de rota (`/replay`). Busca as posições do período, desenha o trajeto e deixa o usuário reproduzir o movimento com controle de velocidade. É o “tocar a viagem” a partir do menu de relatórios.

## `GeofencesPage.jsx`

Tela de cercas (`/geofences`): mapa mais a lista. Dali o usuário abre a edição de uma cerca.

## `GeofencesList.jsx`

Lista das cercas do Redux, com busca. O clique seleciona a cerca e o mapa enquadra a geometria. Usada dentro de `GeofencesPage`.

## `PositionPage.jsx`

Detalhe de uma posição (`/position/:id`): mapa, endereço, atributos do ponto (velocidade, ignição, satélites) e atalhos para a posição na rede.

## `NetworkPage.jsx`

Detalhe de rede da posição (`/network/:positionId`): células e Wi-Fi usados na localização, quando o equipamento envia esses dados.

## `EventPage.jsx`

Detalhe de um evento (`/event/:id`): tipo, dispositivo, hora, posição ligada ao evento e atributos (por exemplo o tipo de alarme).

## `EmulatorPage.jsx`

Emulador de dispositivo (`/emulator`). Envia posições de teste para o servidor no protocolo escolhido, para experimentar o rastreamento sem um aparelho físico. Restrito a quem administra.

## `StreamPage.jsx`

Player de vídeo (`/stream`) com HLS (`hls.js`), para dispositivos que publicam uma câmera. Abre o stream configurado no dispositivo.
