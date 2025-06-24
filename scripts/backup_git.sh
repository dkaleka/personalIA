#!/bin/bash

echo "🚀 Iniciando backup automático no GitHub..."

# Caminho do projeto
cd ~/personalIA || { echo "❌ Pasta ~/personalIA não encontrada."; exit 1; }

# Status antes do push
echo "🔍 Status atual do Git:"
git status

# Adiciona os arquivos de logs, scripts e qualquer alteração
git add Logs/*.md
git add Scripts/*.sh
git add Checklists/*.*
git add Blueprints/*.*
git add README.md

# Snapshot do horário atual
DATA=$(date "+%Y-%m-%d %H:%M")

# Commit com mensagem padrão ou personalizada
git commit -m "🔄 Backup automático — $DATA — Logs, diretrizes, prompts e scripts atualizados"

# Push
git push

# Resultado
if [ $? -eq 0 ]; then
    echo "✅ Backup enviado com sucesso para o GitHub!"
else
    echo "❌ Erro no envio para o GitHub."
fi
