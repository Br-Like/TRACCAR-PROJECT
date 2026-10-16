# `.github`

Metadados do GitHub: automação de CI, atualização de dependências e imagem usada no README.

## `dependabot.yml`

Agenda do Dependabot para abrir pull requests de atualização de dependências npm.

## `FUNDING.yml`

Links de financiamento do projeto, exibidos na página do repositório no GitHub.

## `screenshot.png`

Captura do painel referenciada na tabela do `README.md`.

## `workflows/ci.yml`

Pipeline de integração contínua. Em push e pull request para `master`, executa lint e build com Node 22 e, em seguida, valida a imagem Docker sem publicá-la.

## `workflows/translation.yml`

Workflow ligado às traduções (Transifex / arquivos em `src/resources/l10n`). Atualiza ou valida os catálogos de idioma no CI.
