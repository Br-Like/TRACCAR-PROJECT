# `.github/workflows`

Automações que o GitHub Actions executa no repositório.

## `ci.yml`

Pipeline automático em push e pull request para `master`. Roda em paralelo o lint (`npm run lint`, Node 22) e o build de produção (`npm run build`). Se os dois passarem, monta a imagem do `Dockerfile`. Em pull request a imagem não é publicada. Em push para `master`, publica `ghcr.io/br-like/traccar-project` com as tags `latest` e o SHA curto do commit. Uma execução nova no mesmo ref cancela a anterior.

## `cd.yml`

Sobe depois que o workflow `CI` termina. Só faz deploy se esse CI foi um push bem-sucedido em `master`. Roda no runner self-hosted com o rótulo `traccar-02`, na máquina da rede local. Faz checkout do commit que o CI publicou, entra no GHCR e executa `docker compose -f docker-compose.prod.yml pull` e `up -d`. Não apaga o volume do banco. Deploys seguintes entram na fila em vez de interromper o que está em andamento.

## `translation.yml`

Cuida da sincronização ou validação dos arquivos de idioma em `src/resources/l10n`.
