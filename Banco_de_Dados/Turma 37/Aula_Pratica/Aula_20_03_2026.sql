INSERT INTO aula03.categoria
(nome, ativo)
VALUES 
('periféricos', true),
('notebooks', true),
('monitores',true),
('capas', true),
('celular', true),
('cabo', true),
('fone', true),
('placa de vídeo', true),
('placa mãe', true);


INSERT INTO aula03.produto
(nome, valor, id_categoria)
VALUES
('Teclado', 150.9,13),
('Mouse', 200.0, 13),
('Acer', 1500.9,14),
('Lenovo', 2000.0,14),
('Acer', 2000.0,15),
('Samsung', 3400.0,15),
('Xiaomi', 50.0,16),
('Samsung', 20.0,16),
('RTX 2060', 2000.0,20),
('RTX 4060', 6000.0,20);

SELECT * FROM aula03.produto;
SELECT * FROM aula03.categoria;

UPDATE aula03.produto SET nome = 'Produto ' || nome; 
DELETE FROM aula03.produto WHERE nome = 'Produto Acer' AND valor =1500.9;
DELETE FROM aula03.produto WHERE nome = 'Produto Lenovo' AND valor = 2000;