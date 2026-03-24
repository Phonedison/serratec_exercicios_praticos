-- ATIVIDADE 04 --
--> Aula 4: Consultas e Junção de Tabelas (DQL) 

/*1. Selecione todos os livros cadastrados no banco de dados.*/

SELECT * from livro;

SELECT * from emprestimo;

/*2. Liste o nome do usuário e o título do livro de todos os empréstimos realizados, utilizando um JOIN.*/

	SELECT us.nome, li.titulo
		FROM emprestimo em
		INNER JOIN usuario us
			ON em.id_usuario = us.id_usuario
		INNER JOIN livro li
			ON em.id_livro = li.id_livro;
			

/*3. Selecione todos os empréstimos que ainda não foram devolvidos (status = 'emprestado').*/

	SELECT * FROM emprestimo WHERE status = 'emprestado' AND data_devolucao IS NULL;

/*
-- alterei o valor da tabela para conseguir testar o comandos
UPDATE  emprestimo SET status = 'devolvido' WHERE data_devolucao IS NOT NULL;
*/

/*4. Liste todos os autores e os livros que eles escreveram.*/

SELECT autor, titulo FROM livro ORDER BY autor;

/*5. Crie uma consulta que mostre todos os usuários e os livros que já pegaram emprestado, incluindo usuários que nunca pegaram livros.*/

	SELECT us.nome, li.titulo
		FROM emprestimo em
		-- pega todos os usuarios que foram ou não listados na tabela emprestimo
		FULL OUTER JOIN usuario us
			ON em.id_usuario = us.id_usuario
		-- pega apenas os livros presentes na tabela emprestimo 
		LEFT JOIN livro li
			ON em.id_livro = li.id_livro;
