#!/usr/bin/env bash
# Uninstall script for “gptcmd”
# Usage: ./uninstall_gptcmd.sh

set -e

# Paths
SCRIPTS_DIR="$HOME/personalIA/scripts"
CAPTURE="$SCRIPTS_DIR/term_capture.sh"
BUFFER_FILE="$HOME/.gptcmd_buffer"
BASHRC="$HOME/.bashrc"

# 1. Remove capture script & buffer
rm -f "$CAPTURE"
rm -f "$BUFFER_FILE"

# 2. Remove functions from .bashrc
if grep -q '### gptcmd start ###' "$BASHRC"; then
  sed -i '/### gptcmd start ###/,/### gptcmd end ###/d' "$BASHRC"
fi

# 3. Reload shell settings (silently)
source "$BASHRC" 2>/dev/null || true

echo "✅ gptcmd desinstalado com sucesso!"
