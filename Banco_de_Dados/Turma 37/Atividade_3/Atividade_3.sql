-- ATIVIDADE 03 --

--> Aula 3: Integridade Referencial e Manipulação de Dados (DML) 

/* 1. Insira 10 registros na tabela livro com informações fictícias.*/

INSERT INTO livro
	(titulo, autor, ano_publicacao, genero, quantidade_estoque, editora)
VALUES
	('Dom Casmurro', 'Machado de Assis', '1899-01-01','Romance', 12, 'Editora Garnier'),
	('O Hobbit', 'J.R.R. Tolkien', '1937-09-21','Fantasia', 8, 'George Allen & Unwin'),
	('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', '1954-07-29','Fantasia', 8, 'George Allen & Unwin'),
	('1984', 'George Orwell', '1949-06-08','Distopia', 15, 'Secker & Warburg'),
	('A Revolução dos Bichos', 'George Orwell', '1945-08-17','Sátira', 10, 'Secker & Warburg'),
	('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', '1997-06-26','Fantasia', 9, 'Secker & Warburg'),
	('Código Limpo', 'Robert C. Martin', '2008-08-01','Tecnologia', 6, 'Prentice Hall'),
	('O Alquimista', 'Paulo Coelho', '1988-01-01','Ficção', 12, 'Rocco'),
	('A Arte da Guerra', 'Sun Tzu', '0500-01-01','Estratégia', 11, 'Shambhala Publications'),
	('Percy Jackson: O ladrão de raios', 'Rick Riordan', '2005-06-28','Ficção', 15, 'Intrínseca');
	
	
/* 2. Insira 5 registros na tabela usuario com diferentes usuários. */

	INSERT INTO usuario
		(nome, cpf, email, telefone, endereco)
	VALUES
		('Lucas Almeida','12345678901', 'lucas.almeida@email.com','(21) 98888-1111','Estrada União e Industria - xxx'),
		('Mariana Souza','98765432100', 'mariana.souza@teste.com','(11) 97777-2222','Estrada União e Industria - xxx'),
		('Rafael Pereira','45612378910', 'rafael.pereira@email.com','(31) 96666-3333','Estrada União e Industria - xxx'),
		('Juliana Costa','74185296300', 'juliana.costa@balacobaco.com','(41) 95555-4444','Estrada União e Industria - xxx'),
		('Bruno Martins','15935748620', 'bruno.martins@email.com','(51) 94444-5555','Estrada União e Industria - xxx');
		

/* 3. Atualize o telefone de um usuário específico usando o comando UPDATE. */
UPDATE usuario SET telefone = '(22) 96666-6666' WHERE nome = 'Juliana Costa'; 

/* 4. Tente remover um usuário específico da tabela usuario que possui um empréstimo.
O que aconteceu? Explique o que ocorreu? */

-- Quando não tem dados na tabela emprestimo :
	DELETE FROM emprestimo WHERE id_usuario = 1; 
	/*
	Utilizando a foreign key de outra tabela para excluir,
	o erro é que "a relação não existe, já que os dados da tabela emprestimo não foram preenchidos"
	
	--> Mensagem: DELETE 0
	*/

	DELETE FROM usuario WHERE id_usuario = 2;
	/*
	Utilizando a chave da própria tabela para excluir, não ocorre erro e nem executa o comando
	pois não tem dados sendo utilizados como parâmetros na tabela 'emprestimo'.
	
	--> Mensagem: DELETE 1
	*/

-- Quando tem dados na tabela emprestimo :
-- Agora, se existe dados na tabela 'emprestimo' que utiliza o id_usuario da tabela 'usuario' como uma chave extrangeira.
	INSERT INTO emprestimo
		(id_usuario, id_livro, data_emprestimo, status)
	VALUES
		(3, 5, '2026-03-02', 'emprestado'),
		(4, 1, '2026-03-02', 'emprestado'),
		(3, 7, '2026-03-02', 'emprestado'),
		(1, 1, '2026-03-02', 'emprestado');

	DELETE FROM usuario WHERE id_usuario = 3; 

	/*
	O comando 'delete' apresenta uma mensagem informando que 'atualização
	ou exclusão em tabela "usuario" viola a restrição de chave estrangeira na tabela 'emprestimo'.
	
	Primeira mensagem -> 
	ERROR: atualização ou exclusão em tabela "usuario" viola restrição de chave estrangeira "emprestimo_id_usuario_fkey" em "emprestimo"
	Chave (id_usuario)=(2) ainda é referenciada pela tabela "emprestimo". 
	
	Segunda mensagem ->
	ERRO:  atualização ou exclusão em tabela "usuario" viola restrição de chave estrangeira "emprestimo_id_usuario_fkey" em "emprestimo"
	SQL state: 23503
	Detail: Chave (id_usuario)=(2) ainda é referenciada pela tabela "emprestimo".
	*/
	
SELECT * FROM usuario;
SELECT * FROM emprestimo;
SELECT * FROM livro;

/* 5. (DESAFIO) Explique a diferença entre DELETE FROM e TRUNCATE TABLE. Em qual situação cada um deve ser utilizado? */

/* 	DELETE FROM: é mais indicado quando você precisa remover registros específicos usando filtros (como o WHERE).
Essa operação pode ser revertida em alguns casos (dependendo da transação) e mantém o controle dos valores incrementais
da tabela, como IDs auto-incremento.

	TRUNCATE TABLE: já é utilizado para apagar todos os dados da tabela de uma vez, de forma mais rápida.
	Não permite desfazer a ação e normalmente reinicia os valores incrementais, como contadores de ID.
*/

---

