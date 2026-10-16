# `src/common/attributes`

Catálogos de atributos conhecidos. Cada arquivo é um hook que devolve um mapa `{ chave: { name, type, ... } }`, já traduzido. `AddAttributeDialog` e os formulários usam esses mapas para oferecer chaves válidas em vez de texto livre. O servidor continua aceitando qualquer chave; estes arquivos só documentam as que a interface sabe explicar.

## `useDeviceAttributes.js`

Atributos do dispositivo: remetente de comando, cor de relatório, senha do aparelho, imagem, cópia de atributos no processamento, entre outros.

## `useCommonDeviceAttributes.js`

Atributos que valem tanto para dispositivo quanto para grupo (velocidade limite, polígono de precisão, etc.), para os dois formulários oferecerem o mesmo conjunto.

## `useGroupAttributes.js`

Atributos específicos de grupo, além dos comuns.

## `useUserAttributes.js`

Atributos do usuário: mapa, unidades, sons, colunas e o que a tela de preferências grava em `user.attributes`.

## `useCommonUserAttributes.js`

Atributos de usuário que também podem ser forçados no servidor (o administrador define o padrão e o usuário herda).

## `useServerAttributes.js`

Atributos do servidor em `ServerPage`: título, cores, SMTP, registro, mapa padrão, intervalos e limites globais.

## `usePositionAttributes.js`

Atributos de uma posição (ignição, bateria, combustível, satélites, rpm). Relatórios e o cartão de status usam o nome traduzido de cada chave.

## `useGeofenceAttributes.js`

Atributos de cerca, como cor e outras opções de exibição.

## `useCommandAttributes.js`

Atributos dos tipos de comando (dados, frequência, índice do canal). `BaseCommandView` mostra os campos certos para o comando escolhido.
