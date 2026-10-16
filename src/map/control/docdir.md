# `src/map/control`

Controles flutuantes por cima do mapa.

## `MapSwitcher.jsx`

Botão que troca o estilo do mapa (ruas, satélite, estilo do servidor). Lê os estilos de `useMapStyles` e persiste a escolha.

## `MapGeocoder.jsx`

Campo de busca de endereço. Consulta o geocoder configurado no servidor, voa até o resultado e solta um marcador temporário.

## `MapRuler.jsx`

Mede distância. O usuário clica pontos no mapa e o controle soma os trechos e mostra o total na unidade preferida.

## `MapSpeedLegend.jsx`

Legenda de cores da rota por velocidade (escala turbo). Só aparece quando a rota está colorida por velocidade.

## `MapNotification.jsx`

Botão de eventos no canto do mapa. Abre a gaveta de eventos da tela principal e indica quando há notificações novas.
