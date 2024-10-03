-- Novos inserts
INSERT INTO tb_autores (nome, data_nascimento) 
VALUES 
('Guimarães Rosa', '1908-06-27'),
('Graciliano Ramos', '1892-10-27'),
('Aluísio Azevedo', '1857-04-14');

INSERT INTO tb_livros (nome, ano_publicacao, id_autor) 
VALUES 
('Memórias Póstumas de Brás Cubas', 1881, '3'),
('Grande Sertão: Veredas', 1956, '4'),
('Vidas Secas', 1938, '5'),
('O Cortiço', 1890, '6');

INSERT INTO tb_membros (nome, data_adesao) 
VALUES
('João Pereira', '2023-07-05'),
('Fernanda Costa', '2023-08-12'),
('Pedro Santos', '2023-09-01'),
('Beatriz Almeida', '2023-09-20');

INSERT INTO tb_autores (nome, data_nascimento) 
VALUES 
('José de Alencar', '1829-05-01'),
('Manuel Bandeira', '1886-04-19'),
('Rachel de Queiroz', '1910-11-17'),
('Érico Veríssimo', '1905-12-17');

INSERT INTO tb_livros (nome, ano_publicacao, id_autor) 
VALUES 
('A Hora da Estrela', 1977, (SELECT id_autor FROM tb_autores WHERE nome = 'Clarice Lispector')),
('Capitães da Areia', 1937, (SELECT id_autor FROM tb_autores WHERE nome = 'Jorge Amado')),
('Iracema', 1865, (SELECT id_autor FROM tb_autores WHERE nome = 'José de Alencar')),
('Liberdade, Liberdade', 1934, (SELECT id_autor FROM tb_autores WHERE nome = 'Manuel Bandeira')),
('O Quinze', 1935, (SELECT id_autor FROM tb_autores WHERE nome = 'Rachel de Queiroz')),
('O Tempo e o Vento', 1949, (SELECT id_autor FROM tb_autores WHERE nome = 'Érico Veríssimo'));

SET autocommit = 0;
COMMIT;