#!/bin/bash

echo "🚀 Executando S-007_git_push_historico.sh..."

# Diretório raiz do projeto
cd ~/personalIA || { echo "❌ Diretório ~/personalIA não encontrado. Abortando."; exit 1; }

# Verifica se o arquivo existe
if [ ! -f "Logs/historico_chat_sessao01.md" ]; then
    echo "❌ Arquivo historico_chat_sessao01.md não encontrado em ~/personalIA/Logs/"
    exit 1
fi

echo "📄 Arquivo encontrado: Logs/historico_chat_sessao01.md"

# Adiciona alterações
git add Logs/historico_chat_sessao01.md

# Commita
git commit -m "🧠 Histórico da Sessão 01 registrado — historico_chat_sessao01.md"

# Push
git push -u origin main

echo "✅ Push realizado com sucesso."
echo "🚀 Histórico sincronizado no GitHub."
