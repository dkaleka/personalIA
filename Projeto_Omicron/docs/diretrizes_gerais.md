# Diretrizes Gerais do Projeto ÓMICRON — Governança Cognitiva

**Versão:** 2025-07-01  
**Responsável:** GPT Condutor (com revisão e co-execução pelo usuário)  
**Repositório:** https://github.com/dkaleka/omicron

---

## **Sumário**

1. [Objetivo Geral](#objetivo-geral)
2. [Organização do Repositório](#organização-do-repositório)
3. [Governança das Sessões e Controle Cognitivo](#governança-das-sessões-e-controle-cognitivo)
4. [Fluxo de Trabalho e Delegação de Tarefas](#fluxo-de-trabalho-e-delegação-de-tarefas)
5. [Diretriz de Acesso aos Arquivos (.raw)](#diretriz-de-acesso-aos-arquivos-raw)
6. [Versionamento, Logging e Continuidade](#versionamento-logging-e-continuidade)
7. [Atualização de Conteúdos Sensíveis ao Tempo](#atualização-de-conteúdos-sensíveis-ao-tempo)
8. [Manual do Usuário/Colaborador](#manual-do-usuário-colaborador)
9. [Revisão e Atualização das Diretrizes](#revisão-e-atualização-das-diretrizes)

---

## 1. Objetivo Geral

Este repositório é o **repositório-mestre** para toda a documentação, decisões, roteiros, versões e registros do projeto ÓMICRON, servindo como **fonte de verdade** para qualquer futuro plano de negócios, apresentação, relatório técnico, comercial ou jurídico relacionado ao projeto.

---

## 2. Organização do Repositório

- **/docs/**: Manuais, diretrizes, manifestos, roteiros, sumários, instruções de alto nível.
- **/chatlogs/**: Registros cronológicos das interações, prompts, outputs de sessões, decisões e discussões importantes.
- **/controle/**: Tabelas de status, logs de revisão, checklists de módulos, pendências e lista de chunks.
- **/material_base/**: Arquivos de origem, rascunhos, transcrições de chats, versões antigas, etc.
- **/scripts/**: Ferramentas para automação, parsing, sincronização, extração de dados e outros utilitários.

---

## 3. Governança das Sessões e Controle Cognitivo

- **Todo o comando estratégico, decisões, prompts e roteiros são conduzidos e registrados pelo GPT condutor nesta aba (Aba 1), sempre salvos no repositório.**
- **Tarefas de leitura, análise de arquivos grandes ou processamento intensivo são delegadas para outras abas/IAs, sempre retornando os outputs importantes para registro aqui.**
- **Jamais depender da memória de uma única sessão: tudo relevante é documentado, rastreável e versionado.**
- **Sessões terminam com prompt/resumo de fechamento e instruções claras para continuidade.**
- **Nova sessão sempre inicia consultando o log/diretrizes anteriores para evitar perda de contexto.**

---

## 4. Fluxo de Trabalho e Delegação de Tarefas

- **Aba 1 (GPT condutor):** Comando, curadoria, auditoria e registro de decisões, roteiros e outputs.
- **Aba 2 (GPT auxiliar):** Tarefas pesadas (leitura de arquivos grandes, parsing, auditorias extensas), sempre orientadas por prompt claro e outputs devolvidos ao repositório.
- **Aba 3 (IA especialista ou outra):** Tarefas pontuais, validação técnica/jurídica/financeira, atualização de temas sensíveis ao tempo.
- **Usuário:** Executa tarefas locais (git push/pull, scripts, checagem de ambiente), revisa e aprova decisões, retorna outputs do terminal para logging.
- **Todos os outputs relevantes retornam ao repositório em formato rastreável e pronto para automação.**

---

## 5. Diretriz de Acesso aos Arquivos (.raw)

- **Sempre utilizar links raw do GitHub para leitura/processamento de arquivos por qualquer IA, colaborador ou ferramenta.**
- **Formato do link raw:**  
  `https://raw.githubusercontent.com/dkaleka/omicron/branch/path/to/file`
- **Vantagens:**  
  - Acesso direto ao conteúdo (sem interface gráfica)
  - Facilidade para parsing e automação
  - Evita perda de contexto entre diferentes sessões e plataformas

---

## 6. Versionamento, Logging e Continuidade

- **Commits frequentes e mensagens descritivas para cada alteração significativa.**
- **Cada sessão salva seu log, prompt de fechamento e instruções para próxima etapa.**
- **Inclua sempre timestamp, hash ou ID único para rastreabilidade.**
- **Evitar duplicidades e retrabalho mantendo referência clara à origem de cada decisão ou conteúdo.**
- **O ciclo de trabalho nunca depende apenas da memória do chat, nem do histórico do navegador.**

---

## 7. Atualização de Conteúdos Sensíveis ao Tempo

- **Módulos sensíveis a mudanças externas (leis, tecnologia, finanças) são marcados com tag apropriada (`SENSÍVEL_A_MUDANÇAS`).**
- **Sempre que possível, usar prompts para GPTs especialistas ou IAs auxiliares para revisão desses módulos.**
- **Registrar data, responsável e resumo de cada revisão periódica em tabela específica em /controle/**

---

## 8. Manual do Usuário/Colaborador

- **Antes de iniciar qualquer nova sessão, consulte sempre o log ou diretrizes mais recentes.**
- **Se possível, registre exceções, aprendizados ou decisões não triviais, nem que seja em bullet points.**
- **Evite retrabalho: consulte a estrutura existente, mantenha consistência e não duplique tarefas já resolvidas.**
- **Ao finalizar qualquer sessão, registre mini-resumo ou “briefing de continuidade” em /chatlogs/.**
- **Salve e organize sempre o conteúdo na estrutura recomendada deste repositório.**

---

## 9. Revisão e Atualização das Diretrizes

- **Diretrizes revisadas sempre que necessário, por decisão do GPT condutor ou sugestão do usuário.**
- **Qualquer mudança relevante deve ser imediatamente registrada, versionada e comunicada aos demais envolvidos.**
- **A governança cognitiva do projeto depende do compromisso coletivo com registro e atualização constante destas diretrizes.**

---

> *Este arquivo é a pedra fundamental do controle, rastreabilidade e continuidade do Projeto ÓMICRON.  
> Atualize sempre que decisões estratégicas, fluxos ou arquitetura de trabalho forem ajustados.*

---
