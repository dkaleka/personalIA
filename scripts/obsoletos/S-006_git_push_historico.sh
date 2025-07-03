#!/bin/bash

echo "🚀 Executando S-006_git_push_historico.sh..."

# 🔧 Definindo diretório raiz
cd ~/personalIA || { echo "❌ Pasta ~/personalIA não encontrada. Abortando."; exit 1; }

# 🔍 Verificando se o arquivo existe
if [ -f "Logs/historico_chat_sessao01.md" ]; then
    echo "✔️ Arquivo encontrado: Logs/historico_chat_sessao01.md"
else
    echo "❌ Arquivo historico_chat_sessao01.md não encontrado na pasta Logs."
    exit 1
fi

# ➕ Adicionando alterações
git add Logs/historico_chat_sessao01.md

# 📝 Commitando
git commit -m "🗒️ Histórico — Sessão 01 — Fundação do Projeto"

# 🚀 Fazendo push para o GitHub
git push -u origin main

# ✅ Status final
echo "✅ Push do histórico realizado com sucesso."
