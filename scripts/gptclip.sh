#!/bin/bash

# 🏗️ Caminho do projeto
cd ~/personalIA || { echo "❌ Pasta ~/personalIA não encontrada."; exit 1; }

# 🧠 Executando o comando
echo "🚀 Executando: $*"
OUTPUT=$("$@")

# 🔥 Mostra no terminal
echo "$OUTPUT"

# 📋 Prepara o texto para clipboard
FORMATTED="🧠 Output da execução:\n$OUTPUT"

# 🔗 Envia para clipboard
echo -e "$FORMATTED" | xclip -selection clipboard

# ✅ Confirma
echo "✅ Output enviado para clipboard com prefixo."
