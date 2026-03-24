-- Definindo dois valores como chave primaria (n:n)
/*
CREATE TABLE carac_clente (
	id_carac INT REFERENCES caracteristicas(id_carac),
	id_cliente INT REFERENCES cliente(id_cliente),
	PRIMARY KEY (id_carac, id_cliente)
);
*/


/*
-- comandos simples de selects com métodos de comparação --

SELECT * FROM aula06.automoveis WHERE valor = 30000;

SELECT * FROM aula06.automoveis WHERE valor >= 30000;

SELECT * FROM aula06.automoveis WHERE valor > 30000;

SELECT * FROM aula06.automoveis WHERE valor < 30000;

SELECT * FROM aula06.automoveis WHERE valor <> 30000;

SELECT * FROM aula06.automoveis WHERE valor >= 30000 AND valor <= 50000;

SELECT * FROM aula06.automoveis WHERE valor >= 30000 ORDER BY valor DESC;

SELECT * FROM aula06.automoveis ORDER BY valor DESC;

SELECT * FROM aula06.automoveis WHERE valor >= 30000 OR valor <= 40000;

SELECT * FROM aula06.automoveis WHERE NOT (valor >= 30000) ORDER BY valor DESC;
*/


/*
-- Retorna as duas vilhas com o valor da soma
SELECT
	(SELECT valor FROM aula06.automoveis WHERE id_auto = 2) +
 	(SELECT valor FROM aula06.automoveis WHERE id_auto = 5)
FROM aula06.automoveis WHERE id_auto = 2 or id_auto = 5 ;
*/

-- Retorna a soma dos valores dos id_auto igual a 2 ou a 5
SELECT SUM (valor) FROM aula06.automoveis WHERE id_auto = 2 OR id_auto = 5;

SELECT COUNT(*) FROM aula06.automoveis;

SELECT COUNT(*) FROM aula06.automoveis WHERE id_cliente = 3;

ALTER TABLE aula06.automoveis ADD COLUMN sexo CHAR;

-- comando IN permite pesquisar na coluna informada 
UPDATE aula06.cliente SET sexo = 'F' WHERE id_cliente IN (4,9,14);

-- COALESCE(campo, '') -> força o [null] receber o valor
UPDATE aula06.cliente SET sexo = 'M' WHERE COALESCE (sexo, '') <> 'F';

SELECT * FROM AULA06.cliente;

SELECT COUNT (*) FROM aula06.cliente WHERE sexo = 'F';
SELECT COUNT (*) FROM aula06.cliente WHERE sexo = 'M';

-- GROUP BY permite agrupar valores por GRUPO BY [coluna]
SELECT sexo, COUNT (*) FROM aula06.cliente GROUP BY SEXO;

SELECT
	CASE WHEN sexo = 'F' THEN
		'Feminimo'
	ELSE
		'Masculino'
	END AS sexo,
	COUNT (*),


	-- Declarando apelido
	/*.. from aula06.cliente as cl*/