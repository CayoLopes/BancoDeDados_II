import pypyodbc

# Conexão com ODBC
conn_str = "DRIVER={PostgreSQL Unicode};SERVER=localhost;PORT=5432;DATABASE=atividadesbd;UID=postgres;PWD=postgres"
conn = pypyodbc.connect(conn_str)
cursor = conn.cursor()

# Inserir uma nova atividade
cursor.execute("""
    INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
    VALUES (?, ?, ?, ?, ?)
""", ("Nova Atividade", "Atividade via ODBC", 1, "2025-05-20", "2025-06-01"))
conn.commit()

# Atualizar responsável de um projeto
cursor.execute("""
    UPDATE projeto SET cod_responsavel = ? WHERE codigo = ?
""", (2, 1))
conn.commit()

# Listar projetos e suas atividades
cursor.execute("""
    SELECT p.nome, a.nome FROM projeto p
    JOIN atividade_projeto ap ON ap.cod_projeto = p.codigo
    JOIN atividade a ON a.codigo = ap.cod_atividade
""")
for row in cursor.fetchall():
    print("Projeto:", row[0], "| Atividade:", row[1])

cursor.close()
conn.close()
