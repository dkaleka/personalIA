# 📜 Diretrizes Cognitivas Gerais — Projeto PersonalIA

## 🧠 Estado Cognitivo Permanente

→ Este documento contém as diretrizes soberanas e operacionais do Projeto PersonalIA.  
→ São **mandatórias, perpétuas e aplicáveis a qualquer sessão**, até revogação explícita registrada em changelog.  

---

## 🔥 Protocolo de Abertura Cognitiva Modular

→ Toda sessão inicia com o carregamento do protocolo `/Logs/prompt_abertura.md`.  
→ Este protocolo define:  
- Setup e arquitetura.  
- Papéis do GPT e do usuário.  
- Diretrizes ativas.  
- Histórico referenciado.  
- Pendências operacionais.  

→ ✔️ Inclui validação cognitiva obrigatória:  
1️⃣ ✔️ O que foi entendido?  
2️⃣ ✔️ Existem dúvidas, inconsistências ou alertas?  
3️⃣ ✔️ Quais são as próximas tarefas ou prioridades?  

---

## 🏗️ Setup Cognitivo

→ Diretório raiz: `~/personalIA/`  
→ Subpastas:  
- Logs → `~/personalIA/Logs/`  
- Scripts → `~/personalIA/scripts/`  
- Checklists → `~/personalIA/Checklists/`  
- Blueprints → `~/personalIA/Blueprints/`

→ Arquivos críticos carregados:  
- `/Logs/registro_oficial_estado_atual.md`  
- `/Logs/diretrizes_gerais.md`  
- `/Logs/checklist_execucao.md`  
- `/Logs/lembretes_e_ideias.md`  
- Histórico integral: `/Logs/historico_chat_sessao0X.md`  

---

## 🔥 Diretrizes Operacionais Mandatórias

1️⃣ **Rastreamento Cognitivo Absoluto**  
→ Nenhuma tarefa avança sem logs, snapshots, checklists e changelog atualizados.

2️⃣ **Comandos com Caminho Absoluto**  
→ Sempre incluir o caminho completo (`~/personalIA/...`).  
→ Nunca assumir navegação manual via `cd`.  

3️⃣ **Captura de Output com Prefixo e Clipboard**  
→ Todo comando que gera output relevante utiliza:  
```bash
g <comando>
