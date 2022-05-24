# Crie um banco de dados para um brechó online, onde o sistema trabalhará com as informações dos produtos deste e-commerce
CREATE DATABASE IF NOT EXISTS BrechoGeneration;
USE BrechoGeneration;

# Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce
CREATE TABLE IF NOT EXISTS produtos(
id bigint AUTO_INCREMENT,
tipoDePeca varchar(100),
marca varchar(30),
cor varchar(30),
preco float,
tamanho varchar(10),
PRIMARY KEY (id)
);

# Insira nesta tabela no mínimo 8 dados (registros)
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Camisa", "Adidas", "Cinza", 100.00, "GG");
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Tênis de Basquete", "Nike", "Azul", 300.00, "40");
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Saia", "Zizane", "Vermelha", 95.00, "M");
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Bermuda", "Renner", "Preta", 55.00, "G");
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Meia", "Centauro", "Branca", 20.00, "39-42");
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Cueca", "Zorba", "Azul Marinho", 35.00, "M");
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Pulseira", "Riachuelo", "Marrom", 20.00, "NA");
INSERT INTO produtos(tipoDePeca, marca, cor, preco, tamanho) VALUES ("Boné", "Shein", "Amarelo", 20.00, "NA");

# Faça um SELECT que retorne todos os produtos com o valor maior do que 50
SELECT * FROM produtos WHERE preco > 50;

# Faça um SELECT que retorne todos os produtos com o valor menor do que 50
SELECT * FROM produtos WHERE preco < 50;

# Faça um SELECT que retorne o produto com ID = 2
SELECT * FROM produtos WHERE id = 2;

# Atualize um registro desta tabela através de uma query de atualização
UPDATE produtos SET preco = 150.00, cor = "Preto" WHERE marca = "Adidas";

# Faça um DELETE dos produtos com ID = 2 e ID = 3
DELETE FROM produtos WHERE id = 2 or id = 3; 

# Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados
