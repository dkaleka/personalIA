#!/bin/bash
SESSAO_NUM=$1
cd ~/personalIA || exit
clear
echo "🟢 CHECKLIST — INÍCIO DA SESSÃO ${SESSAO_NUM}"
git pull
free -h && df -h && swapon --show | tee >(xclip -selection clipboard)
last_snapshot=$(sudo timeshift --list | grep "Snapshot" | tail -1)
echo "Último snapshot: $last_snapshot"
[[ -f Logs/checklist_execucao.md ]] && echo "✅ Checklist encontrado"
[[ -f Logs/diretrizes_gerais.md ]] && echo "✅ Diretrizes carregadas"
grep -i "pendente" Logs/checklist_execucao.md | wc -l | xargs -I{} echo "🚨 Pendências detectadas: {}"
./scripts/S-abrir_sessao.sh ${SESSAO_NUM}
