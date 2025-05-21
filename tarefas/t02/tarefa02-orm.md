# Código Python com ODBC (pypyodbc)
## [Código ODBC em Python](odbc_connect.py)

Para conectar ao banco de dados PostgreSQL via ODBC, utilizei a biblioteca `pypyodbc`, que permite executar comandos SQL em bancos de dados compatíveis com ODBC.

Operações realizadas:
- Listar projetos e atividades
- Inserir novas atividades em projetos
- Atualizar o líder de um projeto


### O que é ODBC?

ODBC (Open Database Connectivity) é uma API padrão da indústria que permite que aplicativos acessem sistemas de gerenciamento de banco de dados (SGBDs) usando drivers específicos. Em Python, bibliotecas como `pypyodbc` e `pyodbc` permitem executar instruções SQL e manipular dados independentemente do banco usado, desde que o driver esteja instalado.

---

# ORM com Python (SQLAlchemy)
## [Código ORM em Python](orm_connect.py)

Para implementar o ORM (Object-Relational Mapping), utilizei o framework **SQLAlchemy**. O ORM permite mapear tabelas do banco de dados como classes Python, facilitando a manipulação de dados sem a necessidade de escrever SQL diretamente.

Operações realizadas:
- Listar projetos e atividades
- Inserir novas atividades em projetos
- Atualizar o líder de um projeto

### O que é ORM?

ORM (Object-Relational Mapping) é uma técnica de programação que permite manipular dados de um banco relacional utilizando classes e objetos de uma linguagem orientada a objetos. Com o SQLAlchemy em Python, podemos criar modelos que representam as tabelas e interagir com o banco de forma mais intuitiva e segura.
