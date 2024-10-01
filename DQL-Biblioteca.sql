-- O livro com a data de publicação mais antigo
SELECT * FROM tb_livros WHERE ano_publicacao = (SELECT MIN(ano_publicacao) FROM tb_livros);

-- O livro com a data de publicação mais recente
SELECT * FROM tb_livros WHERE ano_publicacao = (SELECT MAX(ano_publicacao) FROM tb_livros);

-- A quantidade de livros cadastrados no banco de dados
SELECT COUNT(nome) AS quantidade_livros FROM tb_livros;

-- Consulte apenas os livros que possuam a data de devolução em 18-07-2024
SELECT * FROM tb_livros WHERE id_livro IN (SELECT id_livro FROM tb_emprestimos WHERE data_devolucao = '2024-07-18');

-- Ordene o nome dos autores em ordem crescente
SELECT nome FROM tb_autores ORDER BY nome ASC;

-- Ordene o nome dos livros em ordem decrescente
SELECT nome FROM tb_autores ORDER BY nome DESC;

-- Liste os autores que possuem livros com ano de publicação maior que a média de anos 
-- de publicação de todos os livros cadastrados.
SELECT id_autor, nome FROM tb_autores WHERE id_autor IN
(SELECT id_autor FROM tb_livros WHERE ano_publicacao > (SELECT AVG(ano_publicacao) FROM tb_livros));

-- Encontre os membros que realizaram mais de um empréstimo.
SELECT id_membro, nome FROM tb_membros WHERE id_membro IN
(SELECT id_membro FROM tb_emprestimos GROUP BY id_membro HAVING COUNT(id_membro) > 1);

-- Liste os livros que foram emprestados ao menos uma vez.
SELECT id_livro, nome FROM tb_livros WHERE id_livro IN
(SELECT id_livro FROM tb_emprestimos GROUP BY id_livro);

-- Consulte os livros que ainda não foram emprestados.
SELECT id_livro, nome FROM tb_livros WHERE id_livro NOT IN
(SELECT id_livro FROM tb_emprestimos GROUP BY id_livro);

SET @@autocommit = ON;
ROLLBACK;
COMMIT;