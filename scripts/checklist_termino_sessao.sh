#!/bin/bash
SESSAO_NUM=$1
cd ~/personalIA || exit
clear
echo "🔒 CHECKLIST — ENCERRAMENTO DA SESSÃO ${SESSAO_NUM}"
cp ~/.log_clipboard.md Logs/log_terminal_sessao${SESSAO_NUM}.md
grep -i "pendente" Logs/checklist_execucao.md | wc -l | xargs -I{} echo "🚨 Pendências restantes: {}"
./scripts/S-encerrar_sessao.sh ${SESSAO_NUM}
./scripts/S-push_historico.sh ${SESSAO_NUM}
echo "👉 Snapshot recomendado: sudo timeshift --create --comments \"snapshot pós sessão ${SESSAO_NUM}\""
notify-send "✅ Sessão ${SESSAO_NUM} encerrada."
