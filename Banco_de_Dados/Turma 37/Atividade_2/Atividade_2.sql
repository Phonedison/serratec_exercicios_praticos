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
	data_emprestimo DATE NOT NULL,
	data_devoluncao DATE,
	id_usuario INT NOT NULL,
	id_livro INT NOT NULL,
	status status_emprestimo,

	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

/* 5. Escreva um comando SQL para alterar a tabela livro, adicionando um campo editora
VARCHAR(100).
*/

	ALTER TABLE livro ADD editora VARCHAR(100);
