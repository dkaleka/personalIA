-e 

## Entrada em 23/06/2025 11:27
DIR=~/personalIA/Logs
FILE=$DIR/log_clipboard.md
mkdir -p "$DIR"
echo -e "

## Entrada em $(date '+%d/%m/%Y %H:%M')
$(copyq selection)" >> "$FILE"
notify-send "CopyQ" "✅ Item salvo no log: $FILE"
