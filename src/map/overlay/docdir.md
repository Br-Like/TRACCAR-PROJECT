# `src/map/overlay`

Camadas extras por cima do mapa-base, configuradas nos atributos do servidor ou do usuário.

## `MapOverlay.jsx`

Lê as sobreposições ativas e cria uma camada raster para cada uma. O componente interno `MapOverlayLayer` adiciona a source e a layer no mapa e as remove ao desligar.

## `useMapOverlays.js`

Traduz a preferência do usuário em definições de source: URLs de tiles customizados ou camadas do OpenWeather (nuvens, precipitação, etc.) quando há chave de API. `MapOverlay` consome essa lista.
