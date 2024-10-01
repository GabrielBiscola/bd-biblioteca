CREATE DATABASE db_biblioteca;

USE db_biblioteca;

CREATE TABLE tb_autores(
id_autor INT(10) NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
data_nascimento DATE NOT NULL,
PRIMARY KEY (id_autor)
);

CREATE TABLE tb_livros(
id_livro INT(10) NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
ano_publicacao INT(4),
id_autor INT(10) NOT NULL,
PRIMARY KEY (id_livro),
FOREIGN KEY (id_autor) REFERENCES tb_autores(id_autor)
);

CREATE TABLE tb_membros(
id_membro INT(10) NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
data_adesao DATE NOT NULL,
PRIMARY KEY (id_membro)
);

CREATE TABLE tb_emprestimos(
id_emprestimo INT(10) NOT NULL AUTO_INCREMENT,
data_emprestimo DATE NOT NULL,
data_devolucao DATE NOT NULL,
id_livro INT(10) NOT NULL,
id_membro INT(10) NOT NULL,
PRIMARY KEY (id_emprestimo),
FOREIGN KEY (id_livro) REFERENCES tb_livros(id_livro),
FOREIGN KEY (id_membro) REFERENCES tb_membros(id_membro)
);