#!/bin/bash

echo "🧠 Iniciando processo de encerramento da Sessão 03..."

# Diretório raiz do projeto
cd ~/personalIA || { echo "❌ Diretório ~/personalIA não encontrado."; exit 1; }

# Validação do status do Git
echo "🔍 Verificando status do Git..."
git status

# Adiciona os arquivos atualizados
echo "🧠 Adicionando arquivos atualizados..."
git add Logs/*.md
git add scripts/*.sh
git add README.md

# Commit com mensagem de encerramento
echo "🧠 Commitando alterações..."
git commit -m "🧠 Encerramento Sessão 03 — Atualização de arquivos, inclusão de checklist, blueprint e histórico"

# Push final
echo "🚀 Enviando para o GitHub (via SSH)..."
git push

# Verificação final
echo "🔍 Validando sincronização..."
git pull

echo "✅ Encerramento concluído. Estado cognitivo sincronizado com GitHub."
