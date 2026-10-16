# `src/common/util`

Funções puras e hooks sem JSX de página. Formatam valores, checam permissão e falam com a API.

## `fetchOrThrow.js`

`fetch` que lança erro se a resposta não for `ok`, com o texto devolvido pelo servidor. Os formulários usam esta função para o `useCatch` mostrar a mensagem da API.

## `permissions.js`

Hooks de permissão a partir do usuário logado:

- `useAdministrator` — flag de administrador.
- `useManager` — administrador ou gerente.
- `useDeviceReadonly` — não pode alterar dispositivos.
- `useRestriction` — lê uma restrição (`readonly`, `limitCommands`, etc.).

Menus e botões de excluir somem quando o hook correspondente é verdadeiro.

## `preferences.js`

`usePreference` lê um valor da interface (local). `useAttributePreference` lê primeiro o atributo do usuário e, se não houver, o do servidor. Mapa, unidades e colunas passam por aqui.

## `usePersistedState.js`

Estado React espelhado no `localStorage`, sincronizado entre abas. Guarda filtros e opções que devem sobreviver ao recarregar. Exporta também `savePersistedState`.

## `useFeatures.js`

Lê os interruptores `ui.disable*` (comandos salvos, grupos, motoristas, manutenção, eventos, atributos calculados, calendários). Administrador ignora o desligamento. O menu de configurações usa o resultado para esconder seções.

## `formatter.js`

Formata valores para a tela: booleano, número, porcentagem, temperatura, tensão, consumo, data/hora, status, alarme, rumo, distância, altitude, velocidade, volume, horas, coordenada e endereço. Também devolve a cor do status e o nível da bateria, e monta o título de uma notificação.

## `converter.js`

Converte unidades a partir do que o servidor manda (nós, metros, litros) para a unidade do usuário (km/h, mph, milhas, pés, galões) e de volta, para gravar no formato cru.

## `attributeUnits.js`

Aplica `converter` aos atributos tipados: `attributeFromRaw` e `attributeToRaw` na edição, `attributeUnitString` e `formatAttributeNumber` na exibição.

## `useAttributeUnits.js`

Hook que junta a preferência de unidades com `attributeUnits`, para um formulário formatar sem repetir a lógica.

## `colors.js`

Escala de cor “turbo” para velocidade. `getSpeedColor` (exportação padrão) e `interpolateTurbo` pintam a rota e a legenda.

## `duration.js`

`snackBarDurationShortMs` (1500) e `snackBarDurationLongMs` (2750), durações dos avisos.

## `stringUtils.js`

`prefixString` monta chaves de tradução (`deviceStatus` + `online`). `unprefixString` remove o prefixo ao ler o valor de volta.

## `deviceCategories.js`

Lista de categorias de dispositivo (carro, caminhão, pessoa, barco, etc.) com a chave de tradução. O formulário do dispositivo e os ícones do mapa usam a mesma lista.

## `deviceEquality.js`

Comparador estável de dois objetos de dispositivo. A lista virtualizada usa para não redesenhar a linha quando o objeto mudou de referência mas os campos visíveis são os mesmos.

## `exportExcel.js`

Gera um `.xlsx` com ExcelJS e dispara o download (FileSaver). Os relatórios chamam esta função no botão de exportar.
