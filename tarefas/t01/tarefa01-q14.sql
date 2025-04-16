-- Criação da VIEW com a contagem de atividades por funcionário responsável
CREATE VIEW vw_atividades_por_funcionario AS
SELECT 
    f.nome AS funcionario,
    COUNT(a.codigo) AS total_atividades
FROM funcionario f
JOIN atividade a ON f.codigo = a.cod_responsavel
GROUP BY f.nome;

-- Consulta dos dados da view
SELECT * FROM vw_atividades_por_funcionario;