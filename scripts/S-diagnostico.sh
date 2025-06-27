#!/bin/bash
# 📋 S-diagnostico.sh — Health Check do Projeto PersonalIA

echo "📍 Diagnóstico do Sistema - PersonalIA"
echo "📅 Data/Hora: $(date)"
echo "🖥️ Hostname: $(hostname)"
echo "🌐 IP Local: $(hostname -I | awk '{print $1}')"
echo "🧠 Usuário: $USER"
echo

echo "🔑 Verificando chave SSH carregada:"
ssh-add -l || echo "❌ Nenhuma chave carregada no agente SSH"
echo

echo "📦 Verificando status do repositório Git:"
cd ~/personalIA/scripts || { echo "❌ Pasta de scripts não encontrada!"; exit 1; }
git status
echo

echo "📁 Espaço em disco na raiz:"
df -h /
echo

echo "📂 Espaço em disco na pasta pessoal:"
du -sh ~/
echo

echo "💾 Memória RAM e Swap:"
free -h
echo

echo "🔄 Serviços e partições de swap:"
swapon --show
echo

echo "⏱️ Tempo de atividade do sistema:"
uptime -p
echo

echo "🛡️ Permissões dos scripts críticos:"
ls -l ~/personalIA/scripts/S-00*.sh
echo

echo "📜 Últimos logs do sistema (warnings e erros):"
journalctl -p 3..4 -b -n 20 --no-pager
echo

echo "✅ Diagnóstico concluído."
