create table cliente (
	idcliente serial primary key,
	nome varchar(100) not null,
	cpf varchar(11)
);

create table caracteristicas (
	idcarac serial primary key,
	dscarac varchar(100)
);

create table automoveis (
	idauto serial primary key,
	modelo varchar(100),
	marca varchar(100),
	idcliente int references cliente(idcliente)
);

create table carac_cliente (
	idcarac int references caracteristicas(idcarac),
	idcliente int references cliente(idcliente),
	primary key (idcarac, idcliente)
);

insert into cliente
	(nome, cpf)
values
	('Ricardo Oliveira', '12345678900'),
	('Renato Rosa', '01234875968'),
	('João da Silva', '78945612300'),
	('Maria das Dores', '12378945695'),
	('Marcelo Amaral', '74185296385'),
	('Adalberto Oliveira', '12345678900'),
	('Jonatas Rosa', '01234875968'),
	('Carlos da Silva', '78945612300'),
	('Joana das Dores', '12378945695'),
	('Leandro Amaral', '74185296385'),
	('Gil Oliveira', '12345678900'),
	('Epaminondas Rosa', '01234875968'),
	('Luiz da Silva', '78945612300'),
	('Elisa das Dores', '12378945695'),
	('Felipe Amaral', '74185296385');

	
insert into caracteristicas
	(dscarac)
values
	('Diamante'),
	('Ouro'),
	('Prata'),
	('Bronze'),
	('Cobre'), 
	('Negativado');

insert into carac_cliente
	(idcarac, idcliente)
values
	(1,1),
	(1,2),
	(1,5),
	(2,1),
	(2,10),
	(2,8),
	(3,7),
	(3,11),
	(4,2), 
	(4,14),
	(4,15),
	(4,3),
	(4,8),
	(4,4);


insert into automoveis 
	(modelo, marca, idcliente)
values
	('modelo1', 'marca1', 2),
	('modelo2', 'marca2', 2),
	('modelo3', 'marca1', 3),
	('modelo4', 'marca3', 4),
	('modelo1', 'marca2', 5),
	('modelo2', 'marca4', 6),
	('modelo7', 'marca1', 7),
	('modelo4', 'marca4', 7),
	('modelo1', 'marca1', 10);

alter table automoveis add column valor double precision;

update automoveis set valor = 50000 where idauto = 1;
update automoveis set valor = 54000 where idauto = 2;
update automoveis set valor = 30000 where idauto = 3;
update automoveis set valor = 70000 where idauto = 4;
update automoveis set valor = 40000 where idauto = 5;
update automoveis set valor = 25000 where idauto = 6;
update automoveis set valor = 45000 where idauto = 7;
update automoveis set valor = 80000 where idauto = 8;
update automoveis set valor = 59000 where idauto = 9;
update automoveis set valor = 74000 where idauto = 10;

--------------------------------------




/*
1- Liste todos os clientes que possuem carro do modelo 1
*/

	SELECT cli.nome, aut.modelo
		FROM cliente cli
		JOIN automoveis aut
			ON cli.idcliente  = aut.idcliente
		WHERE aut.modelo = 'modelo1';
	
/*
2- Liste todos os carros que possuem cliente com a característica Ouro
*/

	SELECT car.idauto, car.modelo, car.marca, car.idcliente
	FROM automoveis car
	LEFT JOIN carac_cliente clt
		ON car.idcliente = clt.idcliente
	WHERE clt.idcarac = 2
		

/*
3- Liste todos os carros com valor maior que 40000
*/
	SELECT * FROM automoveis
	WHERE valor > 40000
	ORDER BY valor DESC;
/*
4- Liste todos os carros que não tem cliente
*/
	SELECT * FROM cliente clt
	RIGHT JOIN automoveis car
		ON clt.idcliente = car.idcliente
	WHERE car.idcliente IS NOT NULL;

/*
5- Liste todos os clientes que não possuem carro
*/

-- mesmo esquema mas é bem mais rápido executar.
	SELECT idcliente, nome FROM cliente
	WHERE idcliente NOT IN (
		SELECT idcliente FROM automoveis WHERE idcliente IS NOT NULL
	);
	
-- mesmo esquema mas é bem mais lento executar.
	SELECT clt.idcliente, clt.nome FROM cliente clt
	LEFT JOIN automoveis car
		ON clt.idcliente = car.idcliente
	WHERE car.idcliente IS NULL;
	
/*
6- Liste todos os clientes que não possuem característica
*/

	SELECT * FROM cliente clt
	WHERE clt.idcliente NOT IN (SELECT idcliente FROM carac_cliente);
/*
7- Encontre o total de clientes, o total de características e o total de carros.
*/

SELECT 
	(SELECT COUNT(*) FROM cliente) AS total_clientes,
	(SELECT COUNT(*) FROM caracteristicas) AS total_caracteristicas,
	(SELECT COUNT(*) FROM automoveis) AS total_carros;

/*
8- Encontre o valor total dos carros do modelo 2
*/

SELECT SUM (valor) AS valor_total
FROM automoveis WHERE modelo = 'modelo2';

/*
9- Faça uma lista de valor por modelo de carros
*/
	SELECT modelo,
	SUM(valor) AS valor_total
	FROM automoveis
	GROUP BY modelo
	HAVING SUM(valor) IS NOT NULL
	ORDER BY modelo;
/*
10- Mostre quantos clientes estão em cada característica
*/

SELECT ca.dscarac, COUNT (cc.idcliente) AS qtd
FROM caracteristicas ca
LEFT JOIN carac_cliente cc
	ON cc.idcarac = ca.idcarac
GROUP BY ca.dscarac, ca.idcarac
ORDER BY ca.dscarac ASC;

/*
11- Mostre quantos clientes estão em cada marca de carro
*/

SELECT marca, COUNT(idcliente) AS qtd
FROM automoveis aut
GROUP BY marca
ORDER BY qtd DESC;