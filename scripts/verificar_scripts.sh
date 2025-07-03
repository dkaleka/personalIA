#!/bin/bash
cd ~/personalIA/scripts || exit

echo "🔍 Verificando integridade dos scripts do Projeto PersonalIA..."
echo "--------------------------------------------------------------"

# Lista de scripts esperados
SCRIPTS=(
  "checklist_inicio_sessao.sh"
  "checklist_termino_sessao.sh"
  "S-abrir_sessao.sh"
  "S-encerrar_sessao.sh"
  "S-backup_git.sh"
  "S-push_historico.sh"
)

FALHAS=0

for SCRIPT in "${SCRIPTS[@]}"; do
  if [[ -f "$SCRIPT" ]]; then
    if [[ -x "$SCRIPT" ]]; then
      echo "✅ $SCRIPT existe e é executável."
    else
      echo "⚠️  $SCRIPT existe, mas NÃO é executável. Corrigir com: chmod +x $SCRIPT"
      FALHAS=$((FALHAS+1))
    fi
  else
    echo "❌ $SCRIPT NÃO encontrado!"
    FALHAS=$((FALHAS+1))
  fi
done

echo "--------------------------------------------------------------"
if [[ $FALHAS -eq 0 ]]; then
  echo "✅ Todos os scripts estão íntegros e prontos para uso."
else
  echo "❗ Foram encontradas $FALHAS pendências. Corrija antes de prosseguir."
fi
