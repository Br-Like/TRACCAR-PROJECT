# `.github/workflows`

Automações que o GitHub Actions executa no repositório.

## `ci.yml`

Pipeline automático em push e pull request para `master`. Roda em paralelo o lint (`npm run lint`, Node 22) e o build de produção (`npm run build`). Se os dois passarem, monta a imagem do `Dockerfile` com cache de camadas e `push: false`: a imagem não é publicada. Uma execução nova no mesmo ref cancela a anterior.

## `translation.yml`

Cuida da sincronização ou validação dos arquivos de idioma em `src/resources/l10n`.
