# Tarefa 01 - Consultas Aninhadas

## Scripts de Criação e Povoamento
- [Esquema relacional](tarefa01-create.sql)
- [Dados iniciais](tarefa01-inserts.sql)

## Consultas Resolvidas

| Questão |
|---------|
| [Questão 01](tarefa01-q01.sql) |
| [Questão 04](tarefa01-q04.sql) |
| [Questão 08](tarefa01-q08.sql) |
| [Questão 14](tarefa01-q14.sql) |
| [Questão 17](tarefa01-q17.sql) | 


## VIEW 
Uma **VIEW** é como uma "tabela virtual" baseada numa consulta.

### Exemplo:
```sql
CREATE VIEW funcionarios_ativos AS
SELECT nome, salario
FROM funcionario
WHERE ativo = TRUE;
```
Você pode usar ela depois como se fosse uma tabela:
```sql
SELECT * FROM funcionarios_ativos;
```

---

## CTE
Uma **CTE** é uma consulta temporária que você cria antes da principal. Ajuda a organizar código.

### Exemplo:
```sql
WITH salarios_altos AS (
  SELECT * FROM funcionario WHERE salario > 5000
)
SELECT nome FROM salarios_altos;
```

---

## NATURAL JOIN
Faz o join automaticamente **pelas colunas com o mesmo nome**.

### Exemplo:
```sql
SELECT * FROM funcionario
NATURAL JOIN departamento;
```

---

## CROSS JOIN
Faz a **combinação de todas as linhas** das duas tabelas.

### Exemplo:
```sql
SELECT f.nome, p.nome
FROM funcionario f
CROSS JOIN projeto p;
```
---

## Window Functions no PostgreSQL

Elas permitem fazer cálculos **sem agrupar as linhas** 

### Exemplo: `ROW_NUMBER()`
```sql
SELECT nome, salario,
       ROW_NUMBER() OVER (ORDER BY salario DESC) AS posicao
FROM funcionario;
```