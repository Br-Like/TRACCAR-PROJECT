# `src/common/theme`

Aparência Material UI. `AppThemeProvider` chama estes módulos ao montar o tema.

## `index.js`

Monta o tema: paleta, direção, tipografia e overrides de componentes. É a função que recebe servidor, modo escuro e direção e devolve o objeto do `ThemeProvider`.

## `palette.js`

Cores. Lê atributos do servidor (`colorPrimary` e afins) e gera as paletas clara e escura. Assim cada instalação pode ter a cor da marca sem recompilar.

## `components.js`

Overrides dos componentes Material UI (botão, campo, papel), para o visual ficar consistente com o painel.

## `dimensions.js`

Medidas fixas do layout: largura do menu, altura da barra, largura da lista de dispositivos. Os `makeStyles` das páginas usam esses números em vez de espalhar pixels.
