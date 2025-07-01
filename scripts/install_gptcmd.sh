#!/usr/bin/env bash
# Installation script for “gptcmd”
# Usage: ./install_gptcmd.sh

set -e

# 1. Dependencies
if ! command -v xclip >/dev/null; then
  sudo apt update
  sudo apt install -y xclip
fi

# 2. Paths
SCRIPTS_DIR="$HOME/personalIA/scripts"
CAPTURE="$SCRIPTS_DIR/term_capture.sh"
BASHRC="$HOME/.bashrc"

# 3. Create capture script
mkdir -p "$SCRIPTS_DIR"
cat > "$CAPTURE" << 'EOF'
#!/usr/bin/env bash
# term_capture.sh – capture & format last command + output → clipboard + buffer

BUFFER_FILE="$HOME/.gptcmd_buffer"
PREFIX="$(whoami)@$(hostname):"
DIR="$(pwd)\$"

CMD="$*"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"

# Run the command and capture output
OUTPUT="$(eval "$CMD" 2>&1)"

# Determine content
if [ -z "$OUTPUT" ]; then
  CONTENT="VAZIO"
elif [ "$(echo "$OUTPUT" | wc -l)" -gt 20 ]; then
  FIRST="$(echo "$OUTPUT" | head -n10)"
  LAST="$(echo "$OUTPUT" | tail -n10)"
  CONTENT="$FIRST
<\"conteúdo parcial\">
$LAST"
else
  CONTENT="$OUTPUT"
fi

# Build block
BLOCK="📤 Output do comando: $PREFIX $DIR $CMD

🕓 $TIMESTAMP

---

$CONTENT

---

🔁 Qual é a sua conclusão?"

# Ensure buffer exists
mkdir -p "$(dirname "$BUFFER_FILE")"
touch "$BUFFER_FILE"

# Append block + delimiter
printf "%s\n---BLOCK END---\n" "$BLOCK" >> "$BUFFER_FILE"

# Trim buffer to last 5 blocks
awk 'BEGIN{RS="---BLOCK END---";ORS=RS}
     {blocks[NR]=$0}
     END{
       start=NR-5+1; if(start<1) start=1;
       for(i=start;i<=NR;i++) printf "%s", blocks[i]
     }' "$BUFFER_FILE" > "${BUFFER_FILE}.tmp" \
  && mv "${BUFFER_FILE}.tmp" "$BUFFER_FILE"

# Copy only the latest block to clipboard
printf "%s" "$BLOCK" | xclip -selection clipboard
EOF

chmod +x "$CAPTURE"

# 4. Add functions to .bashrc (guarded by markers)
grep -q '### gptcmd start ###' "$BASHRC" || cat >> "$BASHRC" << 'EOF'

### gptcmd start ###
export GPTCMD_ENABLED=0
# Prefix invocation
gptcmd() {
  "$HOME/personalIA/scripts/term_capture.sh" "$@"
  eval "$@"
}
# Enable automatic capture on every command
gptcmd-on() {
  export GPTCMD_ENABLED=1
  export OLD_PROMPT_COMMAND="$PROMPT_COMMAND"
  export PROMPT_COMMAND='if [ "$GPTCMD_ENABLED" -eq 1 ]; then LASTCMD=$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//"); '"$HOME"'/personalIA/scripts/term_capture.sh "$LASTCMD"; fi; '"$OLD_PROMPT_COMMAND"
  echo "gptcmd ativado"
}
# Disable automatic capture
gptcmd-off() {
  export GPTCMD_ENABLED=0
  export PROMPT_COMMAND="$OLD_PROMPT_COMMAND"
  echo "gptcmd desativado"
}
# Status
gptcmd-status() {
  if [ "$GPTCMD_ENABLED" -eq 1 ]; then
    echo "gptcmd está ATIVADO"
  else
    echo "gptcmd está DESATIVADO"
  fi
}
### gptcmd end ###
EOF

# 5. Source new settings
source "$BASHRC"

echo "✅ gptcmd instalado com sucesso!"
echo "- Use 'gptcmd-on', 'gptcmd-off', 'gptcmd-status' ou prefixe qualquer comando com 'gptcmd'."
