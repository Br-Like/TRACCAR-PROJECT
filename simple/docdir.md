# `simple`

Exemplo mínimo de cliente Traccar, independente do aplicativo em `src`. Não é importado pelo Vite.

## `index.html`

Página única que carrega React 17, MapLibre e Pico CSS por CDN. Implementa login, lista de dispositivos e um mapa ao vivo contra a mesma API (`/api/server`, `/api/session`, `/api/devices`, WebSocket). Serve para entender o contrato da API sem a interface completa, ou para embutir um painel reduzido.
