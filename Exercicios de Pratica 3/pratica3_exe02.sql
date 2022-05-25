-- Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal
CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;
USE db_pizzaria_legal;

-- O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.
-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas
CREATE TABLE IF NOT EXISTS tb_categorias(
idCategoria bigint AUTO_INCREMENT NOT NULL,
tipo varchar(20),
bordaRecheada varchar(40) NOT NULL,
tamanho varchar(20) NOT NULL,
PRIMARY KEY(idCategoria)
);

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria
CREATE TABLE IF NOT EXISTS tb_pizzas(
	idPizza bigint AUTO_INCREMENT NOT NULL,
    nomeSabor varchar(50) NOT NULL,
	valor double NOT NULL,
    pagamentoEfetuado boolean,
    pronta boolean,	
    FK_idCategoria bigint,
	PRIMARY KEY(idPizza),
    FOREIGN KEY (FK_idCategoria) REFERENCES tb_categorias(idCategoria)
);

-- Insira pelo menos 5 registros na tabela tb_categorias
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Salgada", "Sem Borda Recheada", "Grande");
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Salgada", "Sem Borda Recheada", "Média");
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Salgada", "Borda Recheada com Catupiry", "Grande");
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Salgada", "Borda Recheada com Catupiry", "Média");
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Doce", "Sem Borda Recheada", "Média");
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Doce", "Sem Borda Recheada", "Pequena");
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Doce", "Borda Recheada de Brigadeiro", "Média");
INSERT INTO tb_categorias(tipo, bordaRecheada, tamanho) VALUES ("Doce", "Borda Recheada de Brigadeiro", "Pequena");

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Margheritta", 40.00, true, false, 1);
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Mussarela", 45.00, true, false, 1);
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Scamorza", 50.00, true, false, 3);
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Mexicana", 50.00, true, false, 4);
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Calabresa", 55.00, true, true, 2);
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Pepperoni", 60.00, true, false, 2);
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Brigadeiro", 30.00, true, false, 5);
INSERT INTO tb_pizzas(nomeSabor, valor, pagamentoEfetuado, pronta, FK_idCategoria) VALUES ("Banana com Canela", 20.00, true, false, 8);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE valor > 50.00 and valor < 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nomeSabor LIKE '%M%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.FK_idCategoria = tb_categorias.idCategoria;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doces)
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.FK_idCategoria = tb_categorias.idCategoria and tb_pizzas.FK_idCategoria >= 5;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados