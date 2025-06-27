#!/bin/bash
# S-010_agendar_smartctl_usb.sh
# Agendamento semanal do smartctl para USB swap (/dev/sdb)

echo "🔧 Criando script de verificação em /usr/local/bin/check_usb_swap.sh..."
sudo tee /usr/local/bin/check_usb_swap.sh > /dev/null << 'EOF'
#!/bin/bash
LOGFILE="/var/log/smart_usb_swap.log"
echo "===== SMART CHECK $(date) =====" >> "$LOGFILE"
/usr/sbin/smartctl -a -d sat /dev/sdb >> "$LOGFILE" 2>&1
echo "" >> "$LOGFILE"
EOF

echo "🔐 Dando permissão de execução..."
sudo chmod +x /usr/local/bin/check_usb_swap.sh

echo "📅 Agendando via cron (domingo, 03:00)..."
CRONLINE="0 3 * * 0 /usr/local/bin/check_usb_swap.sh"
( sudo crontab -l 2>/dev/null | grep -v 'check_usb_swap.sh' ; echo "$CRONLINE" ) | sudo crontab -

echo "📝 Garantindo existência do arquivo de log..."
sudo touch /var/log/smart_usb_swap.log
sudo chown "$USER":"$USER" /var/log/smart_usb_swap.log

echo "✅ Agendamento concluído. Verificações serão salvas em /var/log/smart_usb_swap.log"
