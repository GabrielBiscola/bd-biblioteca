# Banco de Dados Biblioteca
Exercícios MySQL 

Você foi contratado para desenvolver um sistema de gerenciamento de uma pequena biblioteca. Para isso, é necessário criar um banco de dados que armazene informações sobre os livros, autores, membros da biblioteca e os empréstimos realizados. O nome do banco de dados será BibliotecaDB. Em seguida, insira ao menos 3 valores nas tabelas.

**EXERCICIO 1.** Criação do Banco de Dados 

**EXERCICIO 2.** Criação das Tabelas

**Requisitos do Banco de Dados:**

1. **Tabela: Autores**
   1. **Campos:**
      1. id\_autor (int, chave primária)
      1. nome (varchar)
      1. data\_nascimento (date)
1. **Tabela: Livros**
   1. **Campos:**
      1. id\_livro (int, chave primária)
      1. titulo (varchar)
      1. ano\_publicacao (int)
      1. id\_autor (int, chave estrangeira que referencia Autores(id\_autor))
1. **Tabela: Membros**
   1. **Campos:**
      1. id\_membro (int, chave primária)
      1. nome (varchar)
      1. data\_adesao (date)
1. **Tabela: Emprestimos**
   1. **Campos:**
      1. id\_emprestimo (int, chave primária)
      1. id\_membro (int, chave estrangeira que referencia Membros(id\_membro))
      1. id\_livro (int, chave estrangeira que referencia Livros(id\_livro))
      1. data\_emprestimo (date)
      1. data\_devolucao (date)

**EXERCICIO 3.** Inserir ao menos 3 valores em cada tabela

**EXERCICIO 4.** Realize as seguintes consultas**:**

a. **O livro com a data de publicação mais antigo** 
b. **O livro com a data de publicação mais recente**
c. **A quantidade de livros cadastrados no banco de dados**
d. **Consulte apenas os livros que possuam a data de devolução em 18-07-2024**
e. **Ordene o nome dos autores em ordem crescente**  
f. **Ordene o nome dos livros em ordem decrescente** 

**EXERCÍCIO 5.** Utilize subqueries para realizar as seguintes consultas: 

a. Liste os autores que possuem livros com ano de publicação maior que a média de anos de publicação de todos os livros cadastrados.

b. Encontre os membros que realizaram mais de um empréstimo.

c. Liste os livros que foram emprestados ao menos uma vez.

d. Consulte os livros que ainda não foram emprestados.


