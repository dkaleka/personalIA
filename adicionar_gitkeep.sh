#!/bin/bash

# 🗂️ Lista de pastas que precisam existir no GitHub
PASTAS=(
    "Instagram/data"
    "Instagram/medias"
    "TikTok/data"
    "TikTok/medias"
    "notebooks"
    "Logs"
    "scripts"
)

# 🔄 Loop para criar as pastas (se não existirem) e o .gitkeep dentro
for pasta in "${PASTAS[@]}"
do
    mkdir -p "$pasta"
    touch "$pasta/.gitkeep"
    echo "✔️ Pasta e .gitkeep adicionados em $pasta"
done

echo "🚀 Todas as pastas agora estão preparadas para o Git."
