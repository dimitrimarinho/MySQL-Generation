# 1) Crie um banco de dados para a quitanda Generation, onde o sistema trabalhará com as informações dos produtos desta empresa. 
CREATE DATABASE IF NOT EXISTS quitandaGeneration; 
USE quitandaGeneration;

# 2) Crie uma tabela de produtos e determine 5 atributos relevantes destes produtos para se trabalhar com o sistema da quitanda.
CREATE TABLE IF NOT EXISTS produtos(   
id bigint AUTO_INCREMENT,
nome varchar(30) NOT NULL,
preco float NOT NULL, 
classificacao varchar(30),
prazoValidade date,
telefoneFornecedor varchar(30),
PRIMARY KEY(id)
);

# Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Alface", 2.00, "Verdura", DATE '2022-05-27', "31 9806 5243");
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Tomate", 4.55, "Fruta", DATE '2022-05-27', "51 9897 8291");
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Cebola", 5.56, "Legume", DATE '2022-05-31', "11 94444 4339");
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Cenoura", 9.95, "Legume", DATE '2022-06-08', "17 99116 2657");
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Beterraba", 3.75, "Legume", DATE '2022-06-06', "31 9806 5243");
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Mandioca", 2.27, "Legume", DATE '2022-05-27', "32 8437 2981");
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Rúcula", 6.15, "Verdura", DATE '2022-05-28', "31 9806 5243");
INSERT INTO quitandageneration.produtos(nome, preco, classificacao, prazoValidade, telefoneFornecedor) VALUES ("Banana da Prata", 9.38, "Fruta", DATE '2022-06-02', "81 9337 5075");

# Faça um SELECT que retorne todos os produtos que sejam frutas.
SELECT * FROM quitandageneration.produtos WHERE classificacao = "Fruta";

# Faça um SELECT que retorne todos os produtos que sejam legumes .
SELECT * FROM quitandageneration.produtos WHERE classificacao = "Legume";

# Atualize um registro desta tabela através de uma query de atualização.
UPDATE quitandageneration.produtos SET preco = 10.50, prazoValidade = (DATE '2022-05-31') WHERE id = 2;

# Faça um DELETE de todas às verduras.
DELETE FROM quitandageneration.produtos WHERE classificacao = "Verdura";

# Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.