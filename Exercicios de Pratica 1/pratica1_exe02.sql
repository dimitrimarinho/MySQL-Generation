-- Crie um banco de dados para um e-commerce
CREATE DATABASE IF NOT EXISTS db_ecommerce_generation;
USE db_ecommerce_generation;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos
CREATE TABLE IF NOT EXISTS produtos(
id bigint NOT NULL AUTO_INCREMENT,
nome varchar(200) NOT NULL, 
quantidadeEstoque int,
preco double NOT NULL,
freteGratis boolean,
cashback double,
PRIMARY KEY(id)
);

-- Insira nesta tabela no mínimo 8 dados (registros)
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("Jogo de talher", 10, 80.00, true, 5.00);
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("Box Premmium Limitado Harry Potter: Livros + Filmes", 3, 800.00, true, 45.00);
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("Tabuleiro de Xadrez banhado a Ouro", 2, 6800.00, true, 880.00);
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("Mouse Gamer RGB", 25, 140.00, false, 9.00);
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("Potão Nutella para Confeiteiros 3 kg", 7, 170.00, true, 7.80);
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("Playstation 5", 6, 4499.00, true, 455.00);
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("Computador Gamer i7", 3, 10500.00, true, 975.00);
INSERT INTO produtos(nome, quantidadeEstoque, preco, freteGratis, cashback) VALUES ("MousePad HyperX Gaming Fury", 18, 57.00, false, 0.00);


-- Faça um SELECT que retorne todes os produtos com o preço maior do que 500
SELECT * FROM produtos WHERE preco > 500;

-- Faça um SELECT que retorne todes os produtos com o preço menor do que 500
SELECT * FROM produtos WHERE preco < 500;

-- Atualize um registro desta tabela através de uma query de atualização.
UPDATE produtos SET nome = "Box Premmium Limitado Harry Potter: Livros + Filmes", quantidadeEstoque = 1, preco = 1000.00 WHERE id = 2;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados