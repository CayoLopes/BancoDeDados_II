-- Inserir funcionários
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('Ana Silva', 'F', '1985-07-23', 5000, 1),
('Carlos Souza', 'M', '1990-03-15', 4500, 2),
('Fernanda Lima', 'F', '1987-12-05', 6000, 1),
('João Oliveira', 'M', '1982-01-17', 5500, 3),
('Mariana Costa', 'F', '1995-06-11', 4800, 2);

-- Inserir departamentos
INSERT INTO departamento (descricao, cod_gerente) VALUES
('Recursos Humanos', 1),
('Tecnologia', 2),
('Financeiro', 3);

-- Inserir projetos
INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Projeto A', 'Projeto de melhoria de processos', 1, 1, '2025-05-01', '2025-12-01'),
('Projeto B', 'Desenvolvimento de sistema', 2, 2, '2025-03-01', '2025-09-01'),
('Projeto C', 'Planejamento estratégico', 3, 3, '2025-06-01', '2025-11-01');

-- Inserir atividades
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Recrutamento', 'Recrutamento de novos funcionários', 1, '2025-05-01', '2025-06-01'),
('Desenvolvimento', 'Desenvolvimento de sistemas', 2, '2025-03-01', '2025-08-01'),
('Planejamento', 'Planejamento de metas financeiras', 3, '2025-06-01', '2025-09-01');

-- Inserir atividades em projetos
INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1),
(2, 2),
(3, 3);
