# `src/map/main`

Camadas usadas só no mapa ao vivo da tela principal, não no replay nem nos relatórios.

## `MapDefaultCamera.js`

Na primeira carga, enquadra todas as posições filtradas. Não recentraliza a cada atualização, para não brigar com o usuário que já arrastou o mapa.

## `MapSelectedDevice.js`

Quando há um dispositivo selecionado, acompanha a posição dele (seguir no mapa) e abre o cartão de status.

## `MapLiveRoutes.js`

Desenha o rastro recente guardado em `session.history`. O tamanho do rastro vem da preferência `web.liveRouteLength`.

## `MapAccuracy.js`

Círculo de precisão (raio de `accuracy`) em volta das posições, quando o usuário liga essa opção.

## `PoiMap.js`

Camada de pontos de interesse. Busca um arquivo (KML/GeoJSON ou URL configurada), converte para GeoJSON e desenha os pontos com os ícones do placemark.
