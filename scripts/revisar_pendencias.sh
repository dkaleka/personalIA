#!/bin/bash
# Script: revisar_pendencias.sh
# Verifica tarefas PENDENTES no checklist e notifica o usuário

CHECKLIST="$HOME/personalIA/Logs/checklist_execucao.csv"

if [ ! -f "$CHECKLIST" ]; then
    echo "❌ Arquivo checklist não encontrado: $CHECKLIST"
    exit 1
fi

PENDENTES=$(grep -i ',pendente' "$CHECKLIST")

if [[ -n "$PENDENTES" ]]; then
    echo "⚠️  Tarefas pendentes encontradas:"
    echo "$PENDENTES"
    notify-send "PersonalIA" "Tarefas pendentes encontradas!\nConsulte o checklist."
else
    echo "✅ Nenhuma tarefa pendente encontrada."
fi
