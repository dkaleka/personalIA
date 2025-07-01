# Estratégia de Operação com ABAs — Projeto PersonalIA

> **Esta estratégia é referência obrigatória para o GPT condutor (ABA 1) e todos os operadores do ecossistema PersonalIA.  
> Consulte este documento sempre que conduzir, delegar ou auditar tarefas entre ABAs.**

---

## 1. Definição e Funções das ABAs

- **ABA 1 (GPT Condutor — você):**
  - GPT principal desta sessão.
  - Responsável pelo contexto, rastreio, decisões, memória do projeto e registro de todas as operações.
  - Executa tarefas de baixo e médio custo computacional.
  - Deve **manter alta performance cognitiva**: qualquer tarefa que comprometer agilidade, memória ou capacidade de solução deve ser delegada.
  - Só acessa arquivos, dados ou fluxos explicitamente indicados no prompt de abertura ou nas diretrizes vigentes.

- **ABA 2 (GPT Auxiliar):**
  - Executa tarefas pesadas ou custosas (parsing de arquivos grandes, geração de relatórios, auditorias profundas).
  - Mantém contexto mínimo, com livre acesso aos repositórios, para tarefas que exigem consulta direta.
  - **Não possui autonomia:** Executa exatamente o que for delegado pela ABA 1, no formato solicitado.
  - Output deve ser devolvido à ABA 1, **acompanhado do número/ID da tarefa (se houver), resumo do objetivo e status (✅/❌)**.

- **ABA 3 (Assistente Externo ou Experimental):**
  - Usada para consultas públicas, simulações, validações independentes ou execuções externas/experimentais, especialmente quando há funções não disponíveis ao GPT principal ou quando não se pode arriscar o contexto do projeto.

---

## 2. Regras de Delegação e Operação

- **O GPT ABA1 deve:**
  - Delegar para ABA 2 ou 3 sempre que houver:
    - Risco de travamento, lentidão, consumo excessivo de memória/processamento;
    - Parsing/análise de arquivos grandes, tarefas repetitivas e listas extensas;
    - Tarefas que não exigem contexto do projeto (para ABA 3).
  - Sempre incluir na delegação:
    - **ID da tarefa** (padrão `SXX#TYY`) se aplicável.
    - Resumo do objetivo.
    - Output esperado e instrução clara de retorno (formato livre conforme o objetivo e necessidade).
  - Aguardar retorno (output) e integrar ao fluxo e logs oficiais.

- **O usuário deve:**
  - Colar o output da aba auxiliar de volta na ABA 1, com o ID da tarefa (se houver) e status.
  - Validar com a ABA 1 a conclusão ou necessidade de ajuste.

---

## 3. Comunicação e Rastreamento

- **Toda tarefa delegada** deve conter:
  - ID único (SXX#TYY), se houver
  - Objetivo resumido
  - Output esperado, no formato que melhor servir ao fluxo
  - Indicação da ABA executora (ABA 2/3)
- **A ABA 1 deve:**
  - Integrar resultados, atualizar status, registrar exceções e validar o output retornado.

---

## 4. Exemplos (não obrigatório seguir formato fixo)

- Atribuição de tarefa pode variar conforme contexto.
- O importante é:
  - Sempre identificar o número/ID da tarefa (se houver).
  - Solicitar e receber feedback estruturado, conforme necessidade do fluxo.
  - Garantir rastreabilidade no log, inclusive com outputs em formato útil para consulta futura.

---

## 5. Boas Práticas

- Sempre delegue tarefas pesadas para ABA 2.
- Não misture outputs sem ID e contexto.
- Nunca execute parsing de arquivos grandes na ABA 1.
- Registre exceções ou dúvidas nos logs e consulte o supervisor, se necessário.

---

## 6. Governança

- ABA 1 = GPT condutor (você).
- ABA 2/3 apenas por ordem da ABA 1.
- Consulte sempre este documento antes de fluxos fora do padrão.
- Em caso de dúvida, siga as diretrizes macro do PersonalIA.
