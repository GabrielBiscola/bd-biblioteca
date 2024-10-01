INSERT INTO tb_autores (nome, data_nascimento) 
VALUES 
('Jorge Amado', '1912-08-10'),
('Clarice Lispector', '1920-12-10'),
('Machado de Assis', '1839-06-21');

INSERT INTO tb_livros (nome, ano_publicacao, id_autor) 
VALUES 
('Gabriela, Cravo e Canela', 1958, '1'),
('A Hora da Estrela', 1977, '2'),
('Dom Casmurro', 1899, '3');

INSERT INTO tb_membros (nome, data_adesao) 
VALUES 
('Ana Silva', '2023-01-15'),
('Carlos Souza', '2023-03-10'),
('Mariana Oliveira', '2023-06-22');

INSERT INTO tb_emprestimos (data_emprestimo, data_devolucao, id_livro, id_membro) 
VALUES 
('2023-09-01', '2023-09-15', 2, 3),
('2023-09-10', '2023-09-24', 3, 2),
('2023-09-15', '2023-09-29', 1, 1);