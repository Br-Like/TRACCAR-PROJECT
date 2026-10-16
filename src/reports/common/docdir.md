# `src/reports/common`

Funções de apoio dos relatórios, sem serem páginas.

## `useReportStyles.js`

Estilos compartilhados (tabela, mapa ao lado, barra de filtro) via `tss-react`. As páginas importam esse `makeStyles` para ficar com o mesmo layout.

## `scheduleReport.js`

Cria um relatório agendado: recebe dispositivos, grupos e o tipo de relatório e envia `POST` para a API de agendamento. O botão “agendar” de `ReportFilter` chama esta função.

## `formatEventData.jsx`

Monta o texto legível de um evento (tipo traduzido, velocidade na unidade do usuário, atributos extras). As páginas de eventos e o relatório combinado usam o mesmo formato, para a descrição não divergir.
