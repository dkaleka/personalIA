#!/bin/bash
# S-001_check_light.sh — Verificação leve do sistema e ativação do gptmode

echo "🔧 Executando verificação leve do sistema (check_light)"
echo "🕓 2025-06-27 19:37:55"

# Ativa gptmode: captura automática do output e envio ao clipboard com formatação
export PROMPT_COMMAND='
  last_command=$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//");
  echo -e "📤 Output do comando: $last_command\n🕓 $(date +"%Y-%m-%d %H:%M:%S")\n---" > ~/.log_clipboard.md;
  $last_command | tee -a ~/.log_clipboard.md | xclip -selection clipboard;
  echo -e "\n---\n🔁 Qual é a sua conclusão?" >> ~/.log_clipboard.md;
  tail -n 100 ~/.log_clipboard.md | xclip -selection clipboard
'

echo "✅ gptmode=on (clipboard inteligente ativado)"
