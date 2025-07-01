#!/bin/bash
echo "🧼 Iniciando limpeza de fluxos antigos de terminal..."

# Lista de arquivos e diretórios a remover
ITENS=(
  "$HOME/personalIA/scripts/term_capture.sh"
  "$HOME/personalIA/scripts/gptclip.sh"
  "$HOME/personalIA/scripts/gptclip_test.sh"
  "$HOME/logs_terminal"
  "$HOME/logs_terminal_antigo"
  "$HOME/.term_capture_enabled"
  "$HOME/.gptclip_enabled"
)

# Exibir o que será removido
echo "🔍 Serão verificados e, se existirem, removidos os seguintes arquivos/diretórios:"
for ITEM in "${ITENS[@]}"; do
  echo " - $ITEM"
done

read -p "❓ Deseja realmente prosseguir com a remoção? [s/N] " confirm
if [[ "$confirm" != "s" && "$confirm" != "S" ]]; then
  echo "❌ Operação cancelada."
  exit 1
fi

# Remover arquivos/diretórios
for ITEM in "${ITENS[@]}"; do
  if [ -e "$ITEM" ]; then
    rm -rf "$ITEM"
    echo "✅ Removido: $ITEM"
  else
    echo "ℹ️ Não encontrado (ignorando): $ITEM"
  fi
done

echo "✅ Limpeza finalizada com sucesso."
