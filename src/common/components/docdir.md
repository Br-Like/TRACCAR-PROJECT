# `src/common/components`

Componentes de interface usados em várias pastas.

## `LocalizationProvider.jsx`

Contexto de idioma. Carrega o JSON de `resources/l10n` conforme o idioma do usuário ou do navegador e expõe `useTranslation` (`t('chave')`). Também exporta o seletor de idioma. Sem ele, botões e rótulos ficariam na chave crua.

## `MessageHandler.jsx`

Mostra os snackbars do slice `messages`. Qualquer `useCatch` que falha aparece aqui, no canto da tela, sem cada página precisar de um alerta próprio.

## `NativeInterface.js`

Ponte com o aplicativo Android/iOS. Detecta `window.appInterface` ou `webkit.messageHandlers.appInterface`, envia mensagens (`login|token`, notificações) e escuta o token de volta. No navegador puro essas funções não fazem nada.

## `Loader.jsx`

Indicador de carregamento em tela cheia. `ServerProvider` e as rotas com `Suspense` usam enquanto os dados ou o chunk da página não chegaram.

## `NavBar.jsx`

Barra superior interna: título da página, botão de voltar e slot para ações. As telas de configuração e de relatório a usam dentro de `PageLayout`.

## `PageLayout.jsx`

Moldura de página autenticada que não é o mapa principal: menu lateral (o filho), barra e conteúdo. Configurações e relatórios passam `SettingsMenu` ou `ReportsMenu` para ela.

## `SideNav.jsx`

Coluna do menu lateral no desktop. No celular vira um drawer. `PageLayout` a usa para hospedar o menu da seção.

## `BottomMenu.jsx`

Barra inferior do celular com os destinos principais (mapa, relatórios, configurações, conta). `App.jsx` a monta quando a tela é estreita.

## `MenuItem.jsx`

Item de menu com ícone, título, link e estado selecionado. `SettingsMenu` e `ReportsMenu` só empilham estes itens.

## `StatusCard.jsx`

Cartão do dispositivo no mapa: nome, status, velocidade, endereço, ignição, sensores e botões (replay, comando, compartilhar, editar). Abre quando um marcador é selecionado.

## `AddressValue.jsx`

Mostra o endereço de uma posição. Se o servidor ainda não geocodificou, pede o geocode reverso e atualiza o texto.

## `PositionValue.jsx`

Mostra coordenadas formatadas (graus decimais ou graus-minutos-segundos, conforme a preferência) e leva ao detalhe da posição.

## `DriverValue.js`

Resolve o id do motorista para o nome cadastrado no slice `drivers`.

## `GeofencesValue.js`

Lista os nomes das cercas ligadas a um dispositivo ou notificação.

## `SelectField.jsx`

Campo de seleção com rótulo, valor vazio e lista de opções. Os formulários de configuração usam no lugar do `Select` cru do Material UI.

## `LinkField.jsx`

Campo somente leitura que parece um link: mostra um valor e navega ao clique (por exemplo, do dispositivo para o grupo).

## `PasswordField.jsx`

Campo de senha com botão de mostrar e ocultar. Login, usuário e dispositivo usam o mesmo componente.

## `FileInput.jsx`

Botão que abre o seletor de arquivo do sistema e devolve o conteúdo (imagem do dispositivo, importação de cerca).

## `QrCodeDialog.jsx`

Diálogo com o QR Code de um texto (link de compartilhamento ou identificador). Quem configura no celular aponta a câmera em vez de copiar a URL.

## `RemoveDialog.jsx`

Confirmação antes de apagar. `CollectionActions` e `EditItemView` abrem este diálogo e só então chamam o `DELETE`.

## `TermsDialog.jsx`

Termos de uso, quando o servidor tem `termsUrl`. `App.jsx` bloqueia o uso até o usuário aceitar.

## `TableShimmer.jsx`

Placeholder cinza no formato de tabela, mostrado enquanto a lista ainda está carregando.

## `SplitButton.jsx`

Botão com ação principal e seta que abre ações secundárias (por exemplo exportar em mais de um formato).

## `BackIcon.jsx`

Ícone de voltar que respeita a direção do texto: seta para a esquerda em LTR e para a direita em RTL.
