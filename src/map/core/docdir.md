# `src/map/core`

Núcleo do mapa: a instância MapLibre, os estilos de fundo e as funções de geometria. O restante de `src/map` só adiciona camadas.

## `MapView.jsx`

Cria um único `maplibregl.Map` e o reaproveita entre as páginas (o nó DOM é movido, não recriado). Exporta o objeto `map`, o hook `useMapReady` e o componente que recebe as camadas filhas. Também carrega o plugin de texto RTL.

## `useMapStyles.js`

Lista os estilos de base (OpenStreetMap, mapas configurados no servidor, estilo customizado, Google, LocationIQ, etc.) e devolve o estilo ativo. `MapSwitcher` usa essa lista para o usuário trocar o fundo.

## `useMapLayer.js`

Hook que cria uma source e camadas MapLibre e as remove ao desmontar. Quase toda camada do projeto (`MapMarkers`, `MapRoutePath`, cercas) passa por aqui para não vazar camada ao trocar de página.

## `mapUtil.js`

Geometria e ícones, sem desenhar UI:

- `toMapCoordinates` / `fromMapCoordinates` — converte entre WGS84 e o sistema configurado (por exemplo GCJ-02).
- `prepareIcon` — monta o ícone do marcador (fundo, símbolo e cor).
- `geofenceToFeature` — transforma uma cerca da API em feature GeoJSON.
- `geometryToArea` — calcula a área desenhada.
- `reverseCoordinates` — inverte pares lon/lat quando o formato exige.
- `loadImage` e `findFonts` — imagem para ícone e fontes disponíveis no estilo.

## `preloadImages.js`

No arranque (`index.jsx`), desenha em canvas os ícones de categoria de dispositivo e de tipo de evento e os registra em `mapImages`. Exporta `mapIcons`, `mapIconKey`, `eventIcons` e `eventIconKey`, que os marcadores usam para escolher o símbolo.
