-- ATIVIDADE 02 --
--> Aula 2: Criando o Banco de Dados (DDL) 

/* 1. Crie um banco de dados chamado biblioteca */
CREATE DATABASE biblioteca;

/* 2. Crie uma tabela livro com os seguintes campos:
	id (chave primária, auto incremento),
	titulo (não nulo), autor (não nulo),
	ano_publicacao (não nulo),
	genero (não nulo),
	quantidade_estoque (não nulo)
*/

CREATE TABLE livro (
 	-- alterei o nome do id para id_livro para evitar conflito na referência da chave em outra tabela 
	id_livro SERIAL PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	ano_publicacao DATE NOT NULL,
	genero VARCHAR(50) NOT NULL,
	quantidade_estoque INT NOT NULL
);

/* 3. Crie uma tabela usuario com os campos:
	id (chave primária, auto incremento),
	nome (não nulo),
	cpf (único),
	email (único),
	telefone (não nulo),
	endereco (não nulo)
*/

CREATE TABLE usuario (
	-- alterei o nome do id para id_usuario para evitar conflito na referência da chave em outra tabela;
	id_usuario SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cpf  CHAR(11) NOT NULL,
	email VARCHAR(100) NOT NULL,
	telefone VARCHAR(100) NOT NULL,
	endereco VARCHAR(150) NOT NULL
	-- destrinchando o campo endereço (poderia ser utilizado em outra tabela e puxado pra essa)
	/*rua VARCHAR(150) NOT NULL,
	numero_residencia VARCHAR(10) NOT NULL,
	complemento VARCHAR(100) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	estado CHAR(2) NOT NULL,
	cep CHAR(8) NOT NULL*/
);

/* 4. Crie uma tabela emprestimo com os seguintes campos:
	id (chave primária, autoincremento),
	id_usuario (chave estrangeira referenciando usuario),
	id_livro (chave estrangeira referenciando livro),
	data_emprestimo (não nulo),
	data_devolucao (pode ser nulo)
	status (ENUM: "emprestado", "devolvido") 
*/

-- Criei o status_emprestimo tipo enum para limitar o campo ‘status’ com valores fixos;
CREATE TYPE status_emprestimo AS ENUM ('emprestado', 'devolvido');

CREATE TABLE emprestimo (
	id_emprestimo SERIAL PRIMARY KEY,
	id_usuario INT NOT NULL REFERENCES usuario (id_usuario),
	id_livro INT NOT NULL REFERENCES livro (id_livro),
	data_empresto DATE NOT NULL,
	data_devoluncao DATE,
	status status_emprestimo
);

/* 5. Escreva um comando SQL para alterar a tabela livro, adicionando um campo editora
VARCHAR(100).
*/

ALTER TABLE livro ADD editora VARCHAR(100);

--- --- --- ---

-- ATIVIDADE 03 --
--> Aula 3: Integridade Referencial e Manipulação de Dados (DML) 

/* 1. Insira 10 registros na tabela livro com informações fictícias.*/
INSERT INTO livro
	(titulo, autor, ano_publicacao, genero, quantidade_estoque, editora)
VALUES
	('Dom Casmurro', 'Machado de Assis', '1899-01-01','Romance', 12, 'Editora Garnier'), -- 1
	('O Hobbit', 'J.R.R. Tolkien', '1937-09-21','Fantasia', 8, 'George Allen & Unwin'),-- 2
	('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', '1954-07-29','Fantasia', 8, 'George Allen & Unwin'), -- 3
	('1984', 'George Orwell', '1949-06-08','Distopia', 15, 'Secker & Warburg'),-- 4
	('A Revolução dos Bichos', 'George Orwell', '1945-08-17','Sátira', 10, 'Secker & Warburg'), -- 5
	('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', '1997-06-26','Fantasia', 9, 'Secker & Warburg'),-- 6
	('Código Limpo', 'Robert C. Martin', '2008-08-01','Tecnologia', 6, 'Prentice Hall'), -- 7
	('O Alquimista', 'Paulo Coelho', '1988-01-01','Ficção', 12, 'Rocco'), -- 8
	('A Arte da Guerra', 'Sun Tzu', '0500-01-01','Estratégia', 11, 'Shambhala Publications'), -- 9
	('Percy Jackson: O ladrão de raios', 'Rick Riordan', '2005-06-28','Ficção', 15, 'Intrínseca'); -- 10
	
	
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

/* 4. Tente remover um usuário específico da tabela usuario que possui um empréstimo. O que aconteceu? Explique o que ocorreu? */
DELETE FROM emprestimo WHERE id_usuario = 2; -- Utilizando a foreign key de outra tabela para excluir, o erro é que "a relação não existe, já que os dados da tabela emprestimo não foram preenchidos"
DELETE FROM usuario WHERE id_usuario = 2; -- Utilizando a chave da própria tabela para excluir, não ocorre erro pois não tem dados sendo utilizados como parâmetros.
-- Agora, se existe dados na tabela 'emprestimo' que utiliza o id_usuario da tabela 'usuario' como uma chave extrangeira, a exclusão 
/* 5. (DESAFIO) Explique a diferença entre DELETE FROM e TRUNCATE TABLE. Em qual situação cada um deve ser utilizado? */


-- SELECT * FROM usuario;
-- SELECT * FROM livro;
