-- CREATE DATABASE universidade;
-- CREATE SCHEMA aula01;

-- CREATE TABLE aula01.curso (
-- 	id_curso SERIAL PRIMARY KEY,
-- 	nome VARCHAR (100) NOT NULL,
-- 	carga_horaria INT NOT NULL
-- );

-- CREATE TABLE aula01.docente (
-- 	id_docente SERIAL PRIMARY KEY,
-- 	nome VARCHAR (100) NOT NULL,
-- 	titulacao VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE aula01.discente (
-- 	id_discente SERIAL PRIMARY KEY,
-- 	nome VARCHAR (100) NOT NULL,
-- 	id_curso INT NOT NULL REFERENCES aula01.curso(id_curso)
-- );


-- CREATE DATABASE loja;
-- CREATE SCHEMA aula03;

-- CREATE TABLE aula03.categoria (
-- id_categoria SERIAL PRIMARY KEY,
-- nome VARCHAR(100) NOT NULL,
-- ativo BOOLEAN NOT NULL
-- );

-- CREATE TABLE aula03.produto (
-- id_produto SERIAL PRIMARY KEY,
-- nome VARCHAR(100) NOT NULL,
-- valor FLOAT NOT NULL,
-- id_categoria INT NOT NULL REFERENCES aula03.categoria (id_categoria)
-- );

-- INSERT INTO aula03.categoria
-- (nome, ativo)
-- VALUES 
-- ('periféricos', true),
-- ('notebooks', true),
-- ('monitores',true),
-- ('capas', true)


-- INSERT INTO aula03.produto
-- (id_produto, nome, valor, id_categoria)
-- VALUES
-- (1, 'Teclado', 150.9,1);