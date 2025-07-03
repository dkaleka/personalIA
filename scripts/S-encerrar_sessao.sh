#!/bin/bash
SESSAO_NUM=$1
DATA_HORA=$(date +%Y-%m-%d_%H-%M)
cd ~/personalIA || exit
cp ~/.log_clipboard.md Logs/log_terminal_sessao${SESSAO_NUM}.md
ARQ=Logs/fechamento_sessao_${SESSAO_NUM}.md
cat <<EOT > "$ARQ"
# 🔒 Encerramento da Sessão ${SESSAO_NUM}
📅 ${DATA_HORA}
---
- Log salvo.
- Backup concluído.
EOT
./scripts/S-backup_git.sh
echo "[OK] Sessão ${SESSAO_NUM} encerrada."
