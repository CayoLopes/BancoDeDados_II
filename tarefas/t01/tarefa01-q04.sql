SELECT f.nome, f.salario, d.descricao AS departamento
FROM funcionario f
JOIN departamento d ON f.cod_depto = d.codigo
WHERE f.codigo != d.cod_gerente  
ORDER BY d.codigo;