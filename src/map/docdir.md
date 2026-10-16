# `src/map`

Camada de mapa reutilizada pela tela principal, pelo replay, pelas cercas e pelos relatórios de rota. O MapLibre é criado uma vez em `core/MapView.jsx`; os arquivos desta pasta acrescentam fontes e camadas em cima dessa instância.

## `MapView` não está aqui

O mapa em si fica em `core/`. Os arquivos abaixo são camadas que qualquer página pode montar como filhas de `MapView`.

## `MapCamera.js`

Move a câmera para um dispositivo, um conjunto de posições ou uma linha. Usado quando o usuário seleciona um dispositivo ou abre uma rota, para o mapa enquadrar o que importa.

## `MapCurrentLocation.js`

Pede a geolocalização do navegador e mostra onde o usuário está. Serve para comparar a posição da pessoa com a dos rastreadores.

## `MapMarkers.js`

Desenha os marcadores dos dispositivos (ícone da categoria, cor do status, seta de direção e, se ligado, o nome). Agrupa marcadores próximos quando o cluster está ativo. O clique seleciona o dispositivo.

## `MapPositionMarkers.jsx`

Marcadores de posições históricas (início, fim e pontos de uma rota), diferentes dos marcadores ao vivo de `MapMarkers`.

## `MapRoutePath.js`

Linha da rota. Pode colorir os trechos pela velocidade. Usada no replay e no relatório de posições.

## `MapRoutePoints.jsx`

Pontos clicáveis ao longo da rota. O clique abre o detalhe daquela posição. Também pode exibir o controle de velocidade.

## `MapRouteCoordinates.js`

Rota desenhada a partir de uma lista de coordenadas já pronta (não de objetos de posição). Usada quando a geometria vem pronta do servidor.

## `MapGeofence.js`

Desenha as cercas do Redux no mapa (polígono, linha ou círculo). Na tela principal elas aparecem como referência; na edição, o desenho interativo fica em `draw/`.

## `MapPadding.js`

Aplica margem interna na câmera do lado em que o painel cobre o mapa, para o dispositivo selecionado não ficar escondido atrás da lista.

## `MapScale.js`

Mostra ou esconde a escala do MapLibre conforme a preferência do usuário.
