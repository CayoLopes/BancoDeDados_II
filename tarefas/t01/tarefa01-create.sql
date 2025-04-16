-- Departamentos
INSERT INTO departamento (descricao) VALUES 
('Tecnologia'), 
('RH'), 
('Marketing'),
('Financeiro'),
('Operações');

-- Funcionários (10 pessoas)
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('João Silva', 'M', '1985-06-12', 5000.00, 1),
('Maria Souza', 'F', '1990-03-23', 6000.00, 2),
('Pedro Santos', 'M', '1988-10-05', 5500.00, 1),
('Ana Paula', 'F', '1995-08-15', 4500.00, 3),
('Carlos Lima', 'M', '1980-01-30', 7000.00, 4),
('Fernanda Costa', 'F', '1992-12-12', 4800.00, 2),
('Ricardo Borges', 'M', '1986-04-08', 5300.00, 1),
('Juliana Almeida', 'F', '1991-07-19', 6200.00, 3),
('Bruno Teixeira', 'M', '1989-11-03', 5100.00, 5),
('Patrícia Melo', 'F', '1993-02-27', 4700.00, 5);

-- Atualizando gerentes nos departamentos (mantemos os IDs 1–5 como gerentes)
UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 5;

-- Projetos
INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Sistema ERP', 'Desenvolvimento de ERP', 1, 1, '2023-01-01', '2023-12-31'),
('Recrutamento Digital', 'Sistema para RH', 2, 2, '2023-02-01', '2023-08-31'),
('Campanha de Marketing', 'Promoção online', 3, 4, '2023-03-01', '2023-09-30'),
('Automação Financeira', 'Sistema de relatórios', 4, 5, '2023-04-01', '2023-10-31'),
('Logística Inteligente', 'Sistema para entregas', 5, 3, '2023-05-01', '2023-11-30');

-- Atividades
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Análise de Requisitos', 'Levantamento com cliente', 1, '2023-01-01', '2023-01-15'),
('Modelagem de Dados', 'Criação do modelo ER', 1, '2023-01-16', '2023-01-30'),
('Desenvolvimento Backend', 'API em Node.js', 3, '2023-02-01', '2023-03-31'),
('Frontend React', 'Criação de interfaces', 4, '2023-03-01', '2023-04-30'),
('Testes e QA', 'Validação do sistema', 5, '2023-05-01', '2023-06-30'),
('Documentação', 'Criação de manuais', 6, '2023-06-01', '2023-06-15'),
('Revisão Técnica', 'Revisão de código', 7, '2023-06-16', '2023-06-30');

-- Atividades em Projetos
INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 4),
(4, 5),
(2, 6),
(1, 7);