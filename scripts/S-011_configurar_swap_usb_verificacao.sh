#!/bin/bash
# Criar script de verificação
cat << 'EOF' | sudo tee /usr/local/bin/check_usb_swap.sh > /dev/null
#!/bin/bash
LOG_FILE="/var/log/smart_usb_swap.log"
SWAP_DEV="/dev/sdb1"

echo "===== USB SWAP CHECK $(date) =====" >> "$LOG_FILE"

if lsblk | grep -q "$SWAP_DEV"; then
    echo "✔️ Dispositivo $SWAP_DEV detectado." >> "$LOG_FILE"

    if swapon --show | grep -q "$SWAP_DEV"; then
        echo "✅ $SWAP_DEV está em uso como swap." >> "$LOG_FILE"
    else
        echo "⚠️ $SWAP_DEV detectado, mas não está ativo como swap." >> "$LOG_FILE"
    fi

    echo "📄 Últimos registros do kernel (dmesg) sobre o dispositivo:" >> "$LOG_FILE"
    dmesg | grep -i "$(basename $SWAP_DEV)" | tail -n 10 >> "$LOG_FILE"
else
    echo "❌ Dispositivo $SWAP_DEV não encontrado. Pode estar desconectado." >> "$LOG_FILE"
fi

echo "" >> "$LOG_FILE"
EOF

# Dar permissão de execução
sudo chmod +x /usr/local/bin/check_usb_swap.sh

# Limpar e criar log
sudo rm -f /var/log/smart_usb_swap.log
sudo touch /var/log/smart_usb_swap.log
sudo chmod 644 /var/log/smart_usb_swap.log

# Agendar cron semanal (domingo 03h)
( sudo crontab -l | grep -v '/usr/local/bin/check_usb_swap.sh'; echo "0 3 * * 0 /usr/local/bin/check_usb_swap.sh" ) | sudo crontab -

echo "✅ Script e agendamento configurados com sucesso."
