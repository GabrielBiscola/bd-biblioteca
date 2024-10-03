USE db_biblioteca;

-- INNER JOIN
-- 1. Liste os nomes dos membros que pegaram livros emprestados e o título dos livros que eles emprestaram.
SELECT M.nome AS nome_membro, L.nome AS nome_livro FROM tb_membros AS M
INNER JOIN tb_emprestimos AS E
ON M.id_membro = E.id_membro
INNER JOIN tb_livros AS L
ON E.id_livro = L.id_livro;

-- 2: Liste os autores e os livros que foram emprestados.
SELECT A.nome, L.nome FROM tb_emprestimos AS E
INNER JOIN tb_livros AS L
ON E.id_livro = L.id_livro
INNER JOIN tb_autores AS A
ON L.id_autor = A.id_autor;

-- RIGHT JOIN
-- 1: Liste todos os membros que não realizaram nenhum empréstimo.
SELECT nome FROM tb_emprestimos AS E
RIGHT JOIN tb_membros AS M
ON M.id_membro = E.id_membro
WHERE E.id_membro IS NULL;

-- 2: Liste todos os autores e seus livros que não foram emprestados.
SELECT A.nome, L.nome FROM tb_emprestimos AS E
RIGHT JOIN tb_livros AS L
ON E.id_livro = L.id_livro
RIGHT JOIN tb_autores AS A
ON L.id_autor = A.id_autor
WHERE E.id_livro IS NULL;

-- UNION
-- 1: Liste todos os livros e seus autores, incluindo livros que não têm autores associados e autores que não têm livros cadastrados.
SELECT * FROM tb_livros AS L
LEFT JOIN tb_autores AS A 
ON L.id_autor = A.id_autor
UNION
SELECT * FROM tb_livros AS L
RIGHT JOIN tb_autores AS A 
ON L.id_autor = A.id_autor
WHERE L.id_autor OR A.id_autor IS NULL;

-- 2: Liste todos os membros e livros emprestados, incluindo membros que não pegaram livros e livros que não foram emprestados.
SELECT L.nome, id_emprestimo FROM tb_livros AS L
LEFT JOIN tb_emprestimos AS E
ON L.id_livro = E.id_livro
UNION
SELECT M.nome, id_emprestimo FROM tb_membros AS M
LEFT JOIN tb_emprestimos AS E
ON M.id_membro = E.id_membro;