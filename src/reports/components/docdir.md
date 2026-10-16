# `src/reports/components`

Peças compartilhadas pelas páginas de relatório.

## `ReportsMenu.jsx`

Menu lateral dos relatórios. Monta os links preservando `deviceId` e `groupId` da URL, para trocar de relatório sem perder o filtro. Esconde logs agendados, estatísticas e auditoria conforme permissão.

## `ReportFilter.jsx`

Barra de filtro: dispositivos, grupos, período (hoje, ontem, semana, personalizado) e botões de mostrar, exportar e agendar. Exporta `updateReportParams`, que grava esses filtros na query string. Quase toda página de relatório renderiza este componente no topo.

## `ColumnSelect.jsx`

Seletor de colunas da tabela. O usuário liga e desliga campos; a escolha fica na preferência, para o relatório abrir do jeito que ele deixou.

## `ResizeHandle.jsx`

Divisor arrastável entre o mapa e a tabela nos relatórios que mostram os dois. A posição do divisor é guardada para a próxima visita.
