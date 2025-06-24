#!/bin/bash

echo "🚀 Criando arquivos oficiais de logs, diretrizes e prompts..."

mkdir -p ~/personalIA/Logs

# 🔥 diretrizes_gerais.md
cat << 'EOF' > ~/personalIA/Logs/diretrizes_gerais.md
# 📜 Diretrizes Cognitivas Gerais — Projeto PersonalIA

## 🧠 Estado Cognitivo Permanente
→ Este documento contém diretrizes cognitivas soberanas e operacionais que regem todas as interações, scripts, automações e decisões no âmbito do Projeto PersonalIA.

---

## 🔥 Diretrizes Ativas

1️⃣ Todos os códigos fornecidos pelo GPT que exijam análise do output devem incluir `| tee >(xclip -selection clipboard)` para envio automático ao clipboard.

2️⃣ Sempre avisar:  
> ⚠️ Executar no Terminal Cognitivo GPT para garantir que o output vá para a área de transferência.

3️⃣ O GPT é gestor cognitivo do projeto, responsável por organização, condução, rastreabilidade, blueprint e controle de estado.

4️⃣ Nenhuma alteração, tarefa ou desenvolvimento avança sem registro em log, snapshot ou checklist.

5️⃣ O GitHub é o Estado Cognitivo Mestre.

6️⃣ Toda sessão começa carregando:  
- `/Logs/registro_oficial_estado_atual.md`  
- `/Logs/diretrizes_gerais.md`  
- `/Logs/checklist_execucao.md`  
- `/Logs/lembretes_e_ideias.md`

7️⃣ Scripts, logs e blueprints são elementos mandatórios do ciclo operacional.

---

## 🔧 Atualizações
→ 🔄 Atualização contínua com versionamento cognitivo, changelog e snapshots.
EOF

# 🔥 changelog.md
cat << 'EOF' > ~/personalIA/Logs/changelog.md
# 🔥 Changelog — 23/06/2025

## ✔️ Operações realizadas:
- ✅ Criação do arquivo `/Logs/diretrizes_gerais.md` com diretrizes cognitivas permanentes.
- 🔥 Aplicação da diretriz de output automático para clipboard via `| tee >(xclip -selection clipboard)`.
- ✅ Rollback e remoção de funcionalidades descontinuadas: PROMPT_COMMAND global eliminado.
- ✅ Limpeza de arquivos e scripts obsoletos.
- 🔥 Atualização do Prompt Base de Abertura de Sessão com inclusão das diretrizes e estado atualizado.

## ✔️ Status:
→ Estado Cognitivo atualizado e consistente.
→ Logs, checklists e blueprints sincronizados.
→ Pronto para continuidade na próxima sessão.
EOF

# 🔥 prompt_fechamento.md
cat << 'EOF' > ~/personalIA/Logs/prompt_fechamento.md
🧠 🔥 Projeto PersonalIA — Fechamento da Sessão Vol 3 (Controle Cognitivo)

## ✔️ Histórico desta sessão:
- Desenvolvimento e ativação definitiva do Terminal Cognitivo GPT.
- Implementação do pipeline de clipboard cognitivo (`gptclip`).
- Inclusão da diretriz soberana para outputs no clipboard.
- Geração do documento `/Logs/diretrizes_gerais.md`.
- Aplicação do protocolo de limpeza, rollback e ajuste de diretórios.
- Atualização completa do Estado Cognitivo do Projeto.
- Registro formal no changelog.

## ✔️ Pendências Ativas (43 tarefas):
→ Mantidas, atualizadas e rastreadas no arquivo `/Logs/checklist_execucao.md`.

## ✔️ Estado Cognitivo Atual:
- ✅ Diretrizes atualizadas e aplicadas.
- ✅ Logs atualizados.
- ✅ Backups ativos.
- ✅ Terminal Cognitivo GPT funcional.

## 🏁 Status:
→ ✔️ Sessão encerrada com 100% de sucesso operacional.
→ 🚀 Pronto para continuidade na próxima sessão com estado cognitivo garantido.
EOF

# 🔥 prompt_abertura.md
cat << 'EOF' > ~/personalIA/Logs/prompt_abertura.md
🧠 🚀 Projeto PersonalIA — Abertura de Sessão Cognitiva (Vol 4)

## ✔️ Procedimento de Abertura:
→ Este chat faz parte do Projeto PersonalIA.  
→ Carregar imediatamente os arquivos:  
- `/Logs/registro_oficial_estado_atual.md`  
- `/Logs/diretrizes_gerais.md`  
- `/Logs/checklist_execucao.md`  
- `/Logs/lembretes_e_ideias.md`

## ✔️ Estado Cognitivo:
→ GPT é gestor cognitivo.  
→ Usuário é supervisor e auditor externo.

## ✔️ Filosofia Cognitiva:
→ 🧠 Soberania Cognitiva.  
→ 🔥 Zero fricção.  
→ 🏗️ Rastreamento total.  
→ 🚫 Zero ruído operacional.

## ✔️ Objetivos da Sessão:
- ✔️ Manutenção e evolução do pipeline cognitivo.
- ✔️ Execução das 43 pendências ativas.
- ✔️ Tuning, automações, scripts, logs e blueprints.

## ✔️ Diretrizes Cognitivas:
- ✅ Incluir `| tee >(xclip -selection clipboard)` em outputs relevantes.  
- ✅ Avisar: "Executar no Terminal Cognitivo GPT para garantir envio ao clipboard."  
- ✅ Toda operação gera logs, snapshots e atualiza o estado cognitivo.  
- ✅ GitHub é o Estado Cognitivo Mestre.

## ✔️ Ambientes:
- ✔️ Sistema Xubuntu.  
- ✔️ Terminal Cognitivo GPT ativo.  
- ✔️ Backup Timeshift ativo.

## ✔️ Estratégia:
→ 📅 Executar na ordem lógica e auditada.  
→ 🔥 Priorizar tuning, automações, depois desenvolvimento de blueprints e execução das pendências.

## ✔️ Pronto para iniciar.
EOF

echo "✅ Arquivos criados com sucesso em ~/personalIA/Logs/"
