#!/bin/bash

# 🚀 Script de sincronização do repositório Git

# 📅 Data e hora para logs
DATA=$(date '+%Y-%m-%d %H:%M:%S')
TIMESTAMP=$(date '+%Y%m%d_%H%M')

# 🔍 Mostrar status atual
echo "🔍 Verificando status do repositório..."
git status

# 🔄 Fazer pull com merge
echo "🔄 Fazendo pull do GitHub..."
git pull origin main --allow-unrelated-histories --no-rebase

# ➕ Adicionar todos os arquivos alterados
echo "➕ Adicionando novos arquivos..."
git add .

# 📝 Criar commit automático
echo "📝 Commitando alterações..."
git commit -m "🔄 Sync automático - $DATA"

# 🚀 Fazer push para o GitHub
echo "🚀 Enviando alterações para o GitHub..."
git push origin main

echo "✅ Sincronização concluída em $DATA"
