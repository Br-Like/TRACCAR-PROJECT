# `src`

Código da interface. O React monta a partir daqui. Não há classes na maioria dos arquivos: a aplicação usa funções e componentes. A única classe está em `ErrorBoundary.jsx`.

## `index.jsx`

Ponto de entrada. Cria a raiz React em `#root` e envolve a árvore com limite de erro, Redux, idioma, tema, dados do servidor, roteador, fila de mensagens e a ponte com o aplicativo nativo. Também dispara o pré-carregamento dos ícones do mapa.

## `Navigation.jsx`

Tabela de rotas (`react-router`). Login, cadastro e troca de servidor ficam fora do layout autenticado. O restante (mapa, configurações, relatórios, replay, cercas, emulador, stream) entra como rotas filhas de `App`. Quase todas as páginas são carregadas com `lazy()`. Também lê `locale`, `token`, `uniqueId` e `openid` na query string para entrar sem o formulário.

## `App.jsx`

Layout das rotas autenticadas. Se não houver usuário, busca a sessão em `/api/session` ou manda para `/login`. Monta o menu inferior, o diálogo de termos e os controladores que precisam viver enquanto a sessão existe: socket, cache, atualização do PWA e movimento dos dispositivos. O `<Outlet>` renderiza a página da rota atual.

## `AppThemeProvider.jsx`

Escolhe o tema Material UI (claro, escuro ou conforme o sistema) a partir das preferências do servidor e do usuário, e aplica direção da escrita (esquerda-direita ou direita-esquerda).

## `ServerProvider.jsx`

Primeira chamada de rede da aplicação: `GET /api/server`. Guarda o objeto do servidor na sessão Redux (nome, atributos, registro aberto, cores). Enquanto isso não chega, mostra o loader. Se a chamada falha, mostra o erro com botão para tentar de novo. Sem esse dado o restante da interface não renderiza.

## `SocketController.jsx`

Mantém o WebSocket em `/api/socket`. Ao conectar, passa a receber posições, dispositivos e eventos e despacha isso para o Redux. Toca o alarme quando o evento está na lista de sons do usuário, mostra mensagens de evento e, se o socket cair, recarrega dispositivos e posições pela REST. Código de fechamento `4000` significa logout e não tenta reconectar.

## `CachingController.js`

Depois do login, baixa de uma vez cercas, grupos, motoristas, manutenções e calendários (`/api/geofences`, `/api/groups`, `/api/drivers`, `/api/maintenances`, `/api/calendars`) e grava nos slices correspondentes. Assim o mapa e os formulários não precisam buscar essas listas de novo a cada tela.

## `UpdateController.jsx`

Integração com o service worker do PWA. De tempos em tempos (atributo `serviceWorkerUpdateInterval`, padrão 1 hora) verifica se há uma versão nova. Quando há, abre um aviso com botão para recarregar e ativar o service worker atualizado.

## `ErrorBoundary.jsx`

Captura erros de renderização dos filhos e mostra o stack em um alerta, em vez de deixar a tela em branco.

Classes:

- `ErrorBoundary` — estende `React.Component`. Guarda o erro em `this.state` via `getDerivedStateFromError` e, no `render`, troca os filhos por um `Alert` com `error.stack`.

## `reactHelper.js`

Hooks usados em várias telas:

- `useAsyncTask` — efeito assíncrono com `AbortSignal`, cancelado ao desmontar.
- `useCatch` / `useCatchCallback` — executam uma função e, se ela lançar, publicam a mensagem no slice `messages`.
- `usePrevious` — devolve o valor anterior de uma variável.
- `useScrollToLoad` — dispara carregamento da próxima página ao chegar no fim da lista.
- `pageSize` — tamanho de página das coleções (50).
