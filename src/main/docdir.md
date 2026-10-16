# `src/main`

Tela inicial depois do login: lista de dispositivos de um lado e mapa ao vivo do outro. A rota é `/`.

## `MainPage.jsx`

Compõe a página. Lê dispositivos e posições do Redux, aplica `useFilter`, e monta a barra de ferramentas, a lista e o mapa (este último em `lazy`, para não pesar o primeiro carregamento). Em tela estreita alterna entre lista e mapa.

## `MainMap.jsx`

Mapa da tela principal. Encaixa câmera, marcadores, rota ao vivo, precisão, cercas, pontos de interesse, sobreposições, régua, geocodificador, legenda de velocidade e o botão de notificações. Recebe as posições já filtradas e a posição selecionada.

## `MainToolbar.jsx`

Barra acima da lista: busca por nome, filtro de status (todos, online, offline, desconhecido), grupos e o botão que abre a gaveta de eventos.

## `DeviceList.jsx`

Lista virtualizada (`react-window`) dos dispositivos filtrados. Repassa cada índice para `DeviceRow`.

## `DeviceRow.jsx`

Uma linha da lista: ícone de categoria, nome, status, hora da última posição e atalhos (comando, compartilhar, editar, acumuladores). O clique seleciona o dispositivo e centraliza o mapa.

## `EventsDrawer.jsx`

Painel lateral com os eventos recentes do slice `events`. Cada item leva à página do evento ou destaca o dispositivo.

## `MotionController.jsx`

Não desenha nada. A partir dos eventos de ignição e movimento, monta os segmentos do dia e grava em `state.motion`. `MotionBar` só lê o resultado.

## `useFilter.js`

Hook que devolve os dispositivos visíveis segundo o texto da busca, o status escolhido e os grupos marcados. `MainPage` usa o retorno na lista e no mapa, para os dois lados mostrarem o mesmo conjunto.
