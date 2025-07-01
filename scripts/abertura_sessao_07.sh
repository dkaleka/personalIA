#!/bin/bash
# Abertura automática da Sessão 07 — Projeto PersonalIA

SESSAO="07"
DATA=$(date '+%Y-%m-%d %H:%M')
USUARIO="Daniel"
GPT="ChatGPT (GPT-4.1)"

echo "---------------------------------------"
echo "🚀 Abertura de Sessão $SESSAO — $DATA"
echo "---------------------------------------"

# 1. Prompt de abertura (modelo pronto)
cat > ~/personalIA/Logs/prompt_abertura_sessao07.md <<EOF
# ✅ Prompt de Abertura — Sessão $SESSAO

**Data:** $DATA  
**Sessão:** $SESSAO  
**Supervisor:** $USUARIO  
**Condutor Cognitivo:** $GPT  
**Status Sistema:** [PRONTO: snapshot, git e automações OK]

---

## 📚 Diretrizes Operacionais (Resumo)
- GPT = condutor, supervisor, controlador, consultor e conselheiro
- Usuário = executor, supervisor externo, validador
- Sempre seguir ordem de prioridade ou dependência
- Preservar performance do GPT acima de tudo
- Nunca dispersar tarefas vivas em tarefas que não objetivem a conclusão bem sucedida do projeto
- Usar fluxos de 3 abas:
    - Aba 1: GPT condutor (controle/coordenação)
    - Aba 2: GPT auxiliar (tarefas pesadas/contexto)
    - Aba 3: Outra IA (tarefas sem contexto)
- Todos os acessos via links RAW do GitHub oficial

---

## 🔄 Checagens Obrigatórias de Sessão
- [ X ] Validar status do sistema (RAM, disco, swap, Wi-Fi)
- [ X ] Verificar sincronização com GitHub (git pull/push)
- [ X ] Conferir e atualizar checklist_execucao.csv
- [ X ] Confirmar backup (Timeshift)
- [ X ] Carregar e ler diretrizes obrigatórias do projeto

---

## 📋 Checklist das Tarefas Vivas
- (Preencher com as pendências do checklist_execucao.csv, usando SSS#TTT)

---

## 🚦 Status dos Scripts/Automação
- gptcmd: [ATIVADO/DESATIVADO]
- CopyQ: [OK/NÃO OK]
- Cron de pendências: [ATIVO/DESATIVADO]

---

## 🛑 Alerta Cognitivo — Limite de Sessão GPT
Sempre que o chat ultrapassar 100 interações, ou apresentar lentidão, perda de rastreabilidade, ou pedidos repetidos de instruções, **encerrar imediatamente a sessão** e abrir nova.

---

## ⚠️ Observação Final
- Toda comunicação relevante é registrada no checklist e changelog.
- Nenhuma decisão operacional é perdida ou dispersa.

---
EOF

echo "[1/6] Prompt de abertura salvo em Logs/prompt_abertura_sessao07.md"

# 2. Status do sistema — exemplo de comandos automáticos
echo "[2/6] Status do sistema:"
echo "--- RAM ---"
free -h
echo "--- Disco ---"
df -h ~/
echo "--- Swap ---"
swapon --show
echo "--- Wi-Fi ---"
nmcli dev status | grep wifi

# 3. Sincronização GitHub
echo "[3/6] Checando sincronização com GitHub..."
cd ~/personalIA
git pull
git status

# 4. Carregar e ler diretrizes obrigatórias
echo "[4/6] Leitura obrigatória das diretrizes gerais:"
head -n 20 ~/personalIA/Logs/diretrizes_gerais.md

# 5. Checklist de pendências vivas (resumo)
echo "[5/6] Principais pendências (extraídas do checklist_execucao.csv):"
head -n 20 ~/personalIA/Logs/checklist_execucao.csv

# 6. Lembrete final
echo "[6/6] Sessão 07 pronta para execução — continue com o fluxo do projeto!"

echo "---------------------------------------"
echo "Abertura concluída. Pronto para operar!"
echo "---------------------------------------"
