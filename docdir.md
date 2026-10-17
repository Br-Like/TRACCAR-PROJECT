# Raiz do projeto

Painel web do Traccar (versão 6.16.0). Esta pasta guarda a configuração do aplicativo, o HTML de entrada e arquivos que não fazem parte de `src`. O servidor GPS em si não está aqui: o Vite só encaminha `/api` para um Traccar em `localhost:8082`.

Cada pasta do repositório tem o próprio `docdir.md`, ao lado dos arquivos que ele descreve.

## `index.html`

Página que o navegador abre. O Vite injeta o bundle de `src/index.jsx` nesse HTML. Define idioma, ícone, manifesto PWA e o elemento `#root` onde o React monta a interface.

## `index 2.html`

Protótipo estático da interface **Likesat**, feito com Tailwind via CDN. Não entra no build do Vite e não é carregado por `src`. Serve como rascunho visual separado do aplicativo React.

## `package.json`

Declara o nome `traccar`, a versão `6.16.0` e as dependências (React 19, Material UI 9, MapLibre, Redux Toolkit, Vite). Os scripts `start`, `build` e `lint` são os comandos do dia a dia.

## `package-lock.json`

Trava as versões exatas instaladas pelo npm, para que `npm ci` reproduza o mesmo conjunto de pacotes.

## `vite.config.js`

Configura o servidor de desenvolvimento na porta 3000, o proxy de `/api` e `/api/socket` para `localhost:8082`, o plugin React (SWC), o PWA (Workbox) e a cópia do plugin de texto da direita para a esquerda do MapLibre.

## `eslint.config.js`

Regras de lint (ESLint, React, importações e Prettier). O script `npm run lint` falha se houver aviso.

## `.prettierrc.json`

Opções de formatação do Prettier, aplicadas pelo ESLint.

## `.editorconfig`

Convenções de editor: charset, fim de linha e indentação, para manter o estilo igual entre ferramentas.

## `.gitignore`

Lista o que o Git não versiona, em geral `node_modules` e a pasta de build.

## `.npmrc`

Opções do npm usadas neste repositório.

## `.env`

Variáveis de ambiente lidas pelo Vite no desenvolvimento. Não deve ir para documentação pública se contiver segredo.

## `README.md`

Apresentação oficial do traccar-web: o que é o painel, como rodar `npm start` e `npm run build`, e o aviso de que o backend fica no repositório principal do Traccar.

## `LICENSE.txt`

Licença Apache 2.0 do projeto.

## `Dockerfile`

Gera a imagem de teste. A primeira etapa compila este painel (`npm run build`). A segunda copia o resultado para dentro da imagem oficial `traccar/traccar:6.16.0`, no lugar da interface que vem no pacote (`/opt/traccar/web`). A API e a tela passam a sair juntas na porta 8082.

## `docker-compose.yml`

Sobe a imagem compilada nesta máquina, publica a porta 8082 (painel e API) e as portas 5000–5150 TCP/UDP (protocolos dos rastreadores). O banco H2 e os logs ficam em volumes. É o comando para testar o painel com o servidor.

## `docker-compose.prod.yml`

Compose do servidor. Não compila o painel: usa a imagem `ghcr.io/br-like/traccar-project:latest` publicada pelo CI. As portas e os volumes têm os mesmos nomes do compose local, então o banco H2 permanece entre deploys. O workflow `cd.yml` faz `pull` e `up -d` deste arquivo.

## `.dockerignore`

Tira `node_modules`, o build local e pastas que não entram na imagem, para o `docker build` não copiar lixo para o contexto.

## `docdir.md` desta pasta

Este arquivo. Descreve os arquivos da raiz. As outras pastas têm um `docdir.md` dentro delas.
