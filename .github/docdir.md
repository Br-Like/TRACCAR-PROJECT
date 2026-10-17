# `.github`

Metadados do GitHub: automação de CI, atualização de dependências e imagem usada no README.

## `dependabot.yml`

Agenda do Dependabot para abrir pull requests de atualização de dependências npm.

## `FUNDING.yml`

Links de financiamento do projeto, exibidos na página do repositório no GitHub.

## `screenshot.png`

Captura do painel referenciada na tabela do `README.md`.

## `workflows/ci.yml`

Pipeline de integração contínua. Em push e pull request para `master`, executa lint e build com Node 22 e, em seguida, monta a imagem Docker. Publica essa imagem no GitHub Container Registry só no push para `master`.

## `workflows/cd.yml`

Deploy depois do CI bem-sucedido em `master`. O job roda num runner self-hosted (rótulo `traccar-02`) e sobe `docker-compose.prod.yml` com a imagem publicada.

## `workflows/translation.yml`

Workflow ligado às traduções (Transifex / arquivos em `src/resources/l10n`). Atualiza ou valida os catálogos de idioma no CI.
