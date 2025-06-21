#!/bin/bash

declare -A READMES

READMES["Instagram"]="📸 Pasta Instagram → Contém dados coletados do Instagram.\n- /data → Dados estruturados em CSV e JSON.\n- /medias → Imagens e vídeos baixados."
READMES["Instagram/data"]="📑 Dados estruturados do Instagram.\nFormatos: CSV, JSON."
READMES["Instagram/medias"]="🖼️ Arquivos de mídia do Instagram (imagens, vídeos)."

READMES["TikTok"]="🎥 Pasta TikTok → Dados coletados do TikTok.\n- /data → Dados estruturados.\n- /medias → Arquivos de mídia."
READMES["TikTok/data"]="📑 Dados estruturados do TikTok.\nFormatos: CSV, JSON."
READMES["TikTok/medias"]="🖼️ Arquivos de mídia do TikTok (imagens, vídeos)."

READMES["notebooks"]="📓 Notebooks Jupyter.\nContém os notebooks do pipeline (scraping, classificação, automação)."
READMES["Logs"]="🗂️ Logs e registros do projeto.\n- Histórico de execuções.\n- Versionamento.\n- Estado atual dos processos."
READMES["scripts"]="⚙️ Scripts auxiliares.\n- git_sync.sh → Sincronização automática com GitHub.\n- Scripts para controle de estado, versionamento e automações futuras."

for pasta in "${!READMES[@]}"
do
    mkdir -p "$pasta"
    echo -e "${READMES[$pasta]}" > "$pasta/README.md"
    echo "✔️ README.md criado em $pasta"
done

echo "🚀 Todos os README.md foram gerados com sucesso!"
