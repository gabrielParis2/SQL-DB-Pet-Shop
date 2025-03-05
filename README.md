📌 Estudo SQL - Banco de Dados Pet Shop
Este repositório foi criado com o objetivo de aprofundar meus conhecimentos em SQL, preparando-me para a área de Análise de Dados.

O banco de dados simula a operação de um Pet Shop, incluindo informações sobre animais, donos, serviços, funcionários e atendimentos. Além do SQL, pretendo utilizar este banco como base para a criação de dashboards em BI e análises em Excel.

📂 Estrutura do Repositório
📁 dump/ → Contém o backup do banco de dados para importação no MySQL.
📁 scripts/ → Scripts SQL organizados para facilitar a execução:

01_criacao_tabelas.sql → Criação das tabelas e relacionamentos.
02_inserts_iniciais.sql → Dados iniciais para popular as tabelas.
03_exercicios.sql → Consultas SQL realizadas para prática e análise de dados.
🛠️ Como Usar
1️⃣ Importar o Banco de Dados
Para restaurar o banco de dados no MySQL, use o comando:

sh
Copiar
Editar
mysql -u root -p < dump/backup_petshop.sql
(Altere root pelo seu usuário do MySQL se necessário.)

2️⃣ Executar os Scripts
Após importar o banco, execute os arquivos na sequência para recriar os dados:

sh
Copiar
Editar
mysql -u root -p pet_shop < scripts/01_criacao_tabelas.sql
mysql -u root -p pet_shop < scripts/02_inserts_iniciais.sql
mysql -u root -p pet_shop < scripts/03_exercicios.sql
📊 Próximos Passos
Criar dashboards em Power BI e análises no Excel com base nesses dados.
Melhorar consultas SQL, incluindo procedures, views e triggers.
Simular mais cenários reais para expandir o banco.
💡 Contribuições e sugestões são bem-vindas! Se quiser trocar ideias, fique à vontade para abrir uma issue ou entrar em contato. 😃
