#!/bin/bash
SESSAO_NUM=$1
cd ~/personalIA || exit
ARQ=Logs/historico_chat_sessao${SESSAO_NUM}.md
if [ -f "$ARQ" ]; then
  git add "$ARQ"
  git commit -m "📘 Histórico da sessão ${SESSAO_NUM}"
  git push
  echo "[OK] Histórico da sessão ${SESSAO_NUM} enviado."
else
  echo "[ERRO] Arquivo $ARQ não encontrado."
fi
