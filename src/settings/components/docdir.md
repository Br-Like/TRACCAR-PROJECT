# `src/settings/components`

Formulários e ações repetidos nas telas de configuração.

## `SettingsMenu.jsx`

Menu lateral de configurações. Mostra preferências, notificações, usuário, dispositivos, cercas, grupos, motoristas, calendários, atributos calculados, manutenção e comandos. Itens de gerente (aviso, servidor, usuários) ficam numa segunda lista. Alguns itens somem conforme `useFeatures` e a permissão somente leitura.

## `EditItemView.jsx`

Molde das páginas de edição: carrega o item pelo id na URL, mostra o formulário filho e salva ou apaga via REST. `DevicePage`, `UserPage` e as outras telas de item passam o endpoint e os campos para este componente.

## `CollectionActions.jsx`

Botões de cada linha de uma lista: editar, excluir (com `RemoveDialog`) e ações extras. Centraliza o `DELETE` para as coleções não repetirem essa chamada.

## `CollectionFab.jsx`

Botão flutuante “adicionar”, que navega para a rota de criação (`/settings/device`, `/settings/user`, etc.).

## `SearchHeader.jsx`

Campo de busca no topo das listas. Filtra a coleção pelo texto digitado.

## `EditAttributesAccordion.jsx`

Sanfona de atributos livres (chave, valor, tipo) no fim dos formulários. Objetos do Traccar guardam configuração extra nesse mapa; este componente edita o mapa sem a página precisar conhecer cada chave.

## `AddAttributeDialog.jsx`

Diálogo para escolher um atributo conhecido (os definidos nos hooks de `common/attributes`) e informar o valor, em vez de digitar a chave à mão.

## `BaseCommandView.jsx`

Formulário de comando: tipo suportado pelo dispositivo, atributos do comando e o botão de enviar ou salvar. `CommandPage`, `CommandDevicePage` e `CommandGroupPage` reutilizam este miolo.

## `DeviceUsersValue.jsx`

Na lista de dispositivos, mostra quantos usuários estão ligados àquele equipamento e leva à tela de conexões.

## `UserDevicesValue.jsx`

Na lista de usuários, mostra quantos dispositivos estão ligados àquele usuário.
