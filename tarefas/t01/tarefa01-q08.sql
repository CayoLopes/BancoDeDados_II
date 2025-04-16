-- View para associar departamento e gerente
CREATE OR REPLACE VIEW vw_departamento_gerente AS
SELECT 
    d.codigo AS cod_depto,
    d.descricao AS nome_departamento,
    f.nome AS nome_gerente
FROM departamento d
LEFT JOIN funcionario f ON d.cod_gerente = f.codigo;

-- View para contar o nÃºmero de projetos por departamento
CREATE OR REPLACE VIEW vw_qtd_projetos AS
SELECT 
    cod_depto,
    COUNT(*) AS total_projetos
FROM projeto
GROUP BY cod_depto;

-- Consulta final unindo as duas views
SELECT 
    dg.nome_departamento,
    dg.nome_gerente,
    COALESCE(p.total_projetos, 0) AS total_projetos
FROM vw_departamento_gerente dg
LEFT JOIN vw_qtd_projetos p ON dg.cod_depto = p.cod_depto
ORDER BY dg.nome_departamento;