-- ATIVIDADE 05 --

--> Aula 5: Funções de Agregação e Agrupamento 

/*
1. Conte quantos livros estão cadastrados na biblioteca usando COUNT. 
*/

	SELECT COUNT(titulo) AS qtd_livros FROM livro;

/*
2. Descubra a média de tempo de empréstimo dos livros utilizando AVG. 
*/
	--> CAST(() AS 'TIPO') -> Converte o valor para o tipo solicitado 
	--> ROUND() -> Arredonda o valor para inteiro, levando em consideração os valores antes da virgula  
	SELECT ROUND(AVG(data_devolucao - data_emprestimo)) AS qtd_emprestimo FROM emprestimo WHERE (status = 'devolvido');

/*
3. Encontre o livro mais antigo e o mais recente utilizando MIN e MAX. 
*/

	SELECT titulo, ano_publicacao 
		FROM livro
		WHERE ano_publicacao IN (
			(SELECT MAX(ano_publicacao) FROM livro), 
			(SELECT MIN(ano_publicacao) FROM livro)
	);
	
/*
4. Liste quantos empréstimos cada usuário já fez, agrupando por nome do usuário.
*/

	SELECT us.nome, COUNT(*) AS qtd_emprestimo
		FROM emprestimo em
		INNER JOIN usuario us ON em.id_usuario = us.id_usuario
		GROUP BY us.id_usuario ORDER BY qtd_emprestimo DESC;

/*
	5. Mostre quantos livros existem por gênero, agrupando os resultados.
*/

SELECT genero, COUNT(*) AS quantidade FROM livro GROUP BY genero ORDER BY quantidade DESC;
