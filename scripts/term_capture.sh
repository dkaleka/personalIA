#!/usr/bin/env bash
# term_capture.sh – captura & formata último comando + saída → clipboard + buffer

BUFFER_FILE="$HOME/.gptcmd_buffer"
PREFIX="$(whoami)@$(hostname):"
DIR="$(pwd)\$"
CMD="$*"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"

# ── Filtra prefixos gptcmd* ────────────────────────
first="${CMD%% *}"
# ignora on/off/status
if [[ "$first" == "gptcmd-on" || "$first" == "gptcmd-off" || "$first" == "gptcmd-status" ]]; then
  exit 0
fi
# ignora prefixo manual e avança para capturar só o comando real
if [[ "$first" == "gptcmd" ]]; then
  CMD="${CMD#* }"
  first="${CMD%% *}"
fi

# ── Ignora comandos interativos ────────────────────
interactive=(nano vi vim less more htop man top)
for ci in "${interactive[@]}"; do
  if [[ "$first" == "$ci" ]]; then
    exit 0
  fi
done

# ─── Comandos built-in especiais ──────────────────
if [[ "$first" == "cd" ]]; then
  # só atualizamos o bloco com VA ZIO e seguimos
  OUTPUT=""
else

  # ── Executa em subshell com Ctrl+C restaurado ───
  OUTPUT="$(bash -c "trap - SIGINT; exec $CMD" 2>&1 || true)"
fi

# ── Executa em subshell com Ctrl+C restaurado ───
OUTPUT="$(bash -c "trap - SIGINT; exec $CMD" 2>&1 || true)"

# ── Decide conteúdo para o buffer ───────────────────
if [[ -z "$OUTPUT" ]]; then
  CONTENT="VAZIO"
else
  # se tiver mais de 50 linhas, mostra 10+10
  lines=$(wc -l <<<"$OUTPUT")
  if (( lines > 50 )); then
    FIRST10="$(head -n25 <<<"$OUTPUT")"
    LAST10="$(tail -n25 <<<"$OUTPUT")"
    CONTENT="$FIRST10
<\"conteúdo parcial\">
$LAST10"
  else
    CONTENT="$OUTPUT"
  fi
fi

# ── Monta o bloco final ────────────────────────────
BLOCK="📤 Output do comando: $PREFIX$DIR $CMD

🕓 $TIMESTAMP

---

$CONTENT

---

🔁 Qual é a sua conclusão?"

# ── Garante buffer e adiciona bloco ─────────────────
mkdir -p "$(dirname "$BUFFER_FILE")"
touch "$BUFFER_FILE"
printf "%s\n---BLOCK END---\n" "$BLOCK" >> "$BUFFER_FILE"

# ── Mantém só os últimos 5 blocos ───────────────────
awk 'BEGIN{RS="---BLOCK END---";ORS=RS}
     {b[NR]=$0}
     END{
       start=NR-5+1; if(start<1) start=1;
       for(i=start;i<=NR;i++) printf "%s", b[i]
     }' "$BUFFER_FILE" > "${BUFFER_FILE}.tmp" \
  && mv "${BUFFER_FILE}.tmp" "$BUFFER_FILE"

# ── Copia o bloco mais recente para o clipboard ────
printf "%s" "$BLOCK" | xclip -selection clipboard &