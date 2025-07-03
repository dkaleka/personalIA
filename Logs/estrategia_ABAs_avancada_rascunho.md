# Estratégia Avançada de ABAs — PersonalIA/ÓMICRON (Rascunho)

## 1. Delegação e Autonomia

- **ABA1** detém autonomia total sobre a orquestração do projeto, seguindo as diretrizes do PersonalIA.
- **ABA2** existe para executar tarefas delegadas pela ABA1, especialmente aquelas que consumiriam recursos computacionais ou cognitivos excessivos da ABA1.
- A função da ABA2 é operacional e tática: executar instruções detalhadas, retornar outputs conforme solicitado e liberar a ABA1 para funções de comando, decisão e integração.

## 2. Comunicação e Templates

- Toda delegação da ABA1 para ABA2 será acompanhada de um **prompt de input claro**, especificando:
  - Objetivo da tarefa
  - Nível de detalhamento esperado
  - Formato da resposta
  - Critérios de aceitação ou checkpoints intermediários, se necessário
- A ABA2 deve responder exatamente conforme as instruções recebidas, podendo solicitar esclarecimento caso algo não esteja claro.

## 3. Aceite e Validação

- A ABA1 avalia cada output da ABA2 e tem autonomia para:
  - Aceitar o resultado como entregue.
  - Solicitar ajustes, complementações ou nova execução parcial/total da tarefa.
  - Integrar o output ao repositório apenas após validação.

## 4. Auto-monitoramento e Triggers de Delegação

- ABA1 deve praticar auto-monitoramento contínuo de sua capacidade cognitiva e desempenho (tokens, lentidão, travamentos, contexto, etc.).
- Sempre que identificar risco de perda de performance (excesso de arquivos, mensagens muito longas, chunking pesado), ABA1 deve **delegar imediatamente** a tarefa para ABA2 ou Google Notebook, indicando claramente no log a motivação.
- **Exemplo de gatilho:**  
  - “Se a resposta exceder X tokens ou envolver análise de mais de Y arquivos, delegue para ABA2.”
  - “Se a aba estiver lenta ou travando, chunking ou grandes sínteses devem ser migradas para ABA2.”

## 5. Métricas de Qualidade e Revisão

- ABA1 é responsável por garantir:
  - Cobertura adequada da tarefa (nada omitido).
  - Coerência, ausência de redundância, clareza e aderência ao objetivo.
- O usuário supervisor revisa periodicamente os outputs das ABAs, podendo solicitar revisão, ajuste ou reprocessamento conforme julgar necessário.
- Todo processo deve ser registrado nos logs e/ou checklists do repositório.

## 6. Referência Oficial

- Esta estratégia deve ser **referenciada oficialmente** pelo link `.raw` do arquivo principal de estratégia de ABAs.
- Recomenda-se incluir também um índice centralizador (`operacao_abas.md`) reunindo os principais links e instruções.

---

*Rascunho salvo em: Logs/estrategia_ABAs_avancada_rascunho.md*
