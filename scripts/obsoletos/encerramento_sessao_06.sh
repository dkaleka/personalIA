#!/bin/bash
# Encerramento automático da Sessão 06 — Projeto PersonalIA

SESSAO="06"
DATA=$(date '+%Y-%m-%d %H:%M')
USUARIO="Daniel"
GPT="ChatGPT (GPT-4.1)"

echo "---------------------------------------"
echo "🔒 Encerramento de Sessão $SESSAO — $DATA"
echo "---------------------------------------"

# 1. Checklist: garantir status real das tarefas
echo "[1/8] Atualizando checklist_execucao.csv..."
# Se quiser editar manualmente, descomente a linha abaixo:
# nano ~/personalIA/Logs/checklist_execucao.csv

# 2. Changelog
echo "[2/8] Registrando mudanças no changelog.md..."
echo "- Sessão $SESSAO encerrada em $DATA por $USUARIO/$GPT" >> ~/personalIA/Logs/changelog.md

# 3. Prompt de fechamento (modelo pronto)
echo "[3/8] Salvando prompt_fechamento.md..."
cat > ~/personalIA/Logs/prompt_fechamento.md <<EOF
# ✅ Prompt de Fechamento — Sessão $SESSAO

**Data:** $DATA  
**Sessão:** $SESSAO  
**Supervisor:** $USUARIO  
**Condutor Cognitivo:** $GPT  

---

## Resumo da Sessão

- Implantação de rotina cron para notificação automática de tarefas pendentes.
- Atualização e padronização do prompt de abertura e das diretrizes gerais do projeto.
- Procedimentos documentados para encerramento/abertura de sessões.
- Estrutura de 3 abas consolidada, logs automatizados, performance preservada.

---

## Pendências migradas para próxima sessão

- Revisão contínua de tarefas vivas no checklist.
- Implementação de alerta cognitivo em todas as sessões.
- Validação contínua dos fluxos de automação (clipboard, gptcmd, etc).

---

## Checklist de tarefas
- Consulte checklist_execucao.csv para status final.

---

## 🛑 Alerta Cognitivo
Sempre que o chat ultrapassar 100 interações, ou apresentar lentidão, perda de rastreabilidade, ou pedidos repetidos de instruções, **encerrar imediatamente a sessão** e abrir nova.
EOF

# 4. Backup GitHub + Timeshift
echo "[4/8] Commitando e fazendo push no GitHub..."
cd ~/personalIA
git add Logs/checklist_execucao.csv Logs/changelog.md Logs/prompt_fechamento.md
git commit -m "Encerramento da Sessão 06 ($DATA)"
git push

# 5. Snapshot opcional
echo "[5/8] Lembrete: Crie snapshot Timeshift manual, se julgar necessário."

# 6. Confirma leitura de diretrizes
echo "[6/8] Confirme leitura obrigatória das diretrizes antes do próximo ciclo:"
echo "cat ~/personalIA/Logs/diretrizes_gerais.md | less"

# 7. Alerta cognitivo já incluído no prompt de fechamento

# 8. Sinalizar pendências centralizadas
echo "[8/8] Confira se todas as pendências estão no checklist e NÃO em históricos paralelos!"

echo "---------------------------------------"
echo "Encerramento concluído. Pronto para iniciar nova sessão!"
echo "---------------------------------------"
