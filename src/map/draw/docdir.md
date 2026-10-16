# `src/map/draw`

Edição de cercas em cima do mapa.

## `MapGeofenceEdit.jsx`

Ativa o Mapbox GL Draw para criar ou alterar polígono, linha e círculo. Converte o desenho para o formato de área que a API do Traccar espera (`POLYGON`, `LINESTRING`, `CIRCLE`) e devolve a geometria para `GeofencePage`.

## `theme.js`

Estilo visual das alças e das linhas do Draw (cores e espessuras), para o editor combinar com o tema do mapa.
