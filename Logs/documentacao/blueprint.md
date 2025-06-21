
# 🔥 Projeto: Scraping Cognitivo + IA Pessoal — Instagram e TikTok

## 📅 Data: 2025-06-21
## 🏗️ Versão: 1.0

---

## 🎯 Objetivo Geral
Desenvolver uma infraestrutura de dados inteligente, pessoal e escalável, com scraping dos conteúdos salvos/favoritos no Instagram e TikTok, integrados a uma memória cognitiva persistente, versionada e auditável.

---

## 🧠 Arquitetura Cognitiva

- 🧠 GPT: Condutor cognitivo, planejamento, controle do pipeline, geração de código e controle de versionamento.
- 💻 Ambiente Local: Executor dos scripts de scraping, atualização de logs, snapshots e upload para GitHub.
- 🌐 GitHub: Memória cognitiva externa, versionamento dos arquivos de estado, blueprint, logs e dados.
- ☁️ Nuvem (futuro): Mega ou NextCloud para armazenamento de mídias (opcional).

---

## 🗂️ Estrutura de Pastas

/Scraping/
├── /Logs/
│   ├── contexto.json
│   ├── estado_global.json
│   ├── log_execucao.csv
│   ├── /versoes/
│   └── /documentacao/
│       ├── blueprint.md
│       └── changelog.md
├── /Instagram/
│   ├── data/
│   ├── medias/
│   └── cookies.json
├── /TikTok/
│   ├── data/
│   ├── medias/
│   └── cookies.json
├── /notebooks/
├── /scripts/
└── README.md
