#!/bin/bash
SESSAO_NUM=$1
DATA_HORA=$(date +%Y-%m-%d_%H-%M)
cd ~/personalIA || exit
git pull
free -h && df -h | tee >(xclip -selection clipboard)
ARQ=Logs/abertura_sessao_${SESSAO_NUM}.md
cat <<EOT > "$ARQ"
# 🟢 Abertura da Sessão ${SESSAO_NUM}
🕓 ${DATA_HORA}
---
- Diretório sincronizado.
- Sistema verificado.
EOT
echo "[OK] Sessão ${SESSAO_NUM} iniciada."
