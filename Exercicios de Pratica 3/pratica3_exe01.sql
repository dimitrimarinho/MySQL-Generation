-- Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online
CREATE DATABASE IF NOT EXISTS db_generation_game_online;
USE db_generation_game_online;

-- O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
CREATE TABLE IF NOT EXISTS tb_classes(
	idClasse bigint AUTO_INCREMENT NOT NULL,
	elementoPrincipal varchar(20),
	tipoPersonagem varchar(20) NOT NULL,
	PRIMARY KEY(idClasse)
);

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
CREATE TABLE IF NOT EXISTS tb_personagens(
	idPersonagem bigint AUTO_INCREMENT NOT NULL,
	nome varchar(50) NOT NULL,
	ataque int,
	defesa int,
	sabedoria int,
	carisma int,
	FK_idClasse bigint,
	PRIMARY KEY(idPersonagem),
	FOREIGN KEY (FK_idClasse) REFERENCES tb_classes(idClasse)
);

-- Insira 5 registros na tabela tb_classes
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Terra", "Normal");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Fogo", "Normal");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Água", "Normal");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Ar", "Normal");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Terra", "Raro");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Fogo", "Raro");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Água", "Raro");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Ar", "Raro");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Terra", "Lendário");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Fogo", "Lendário");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Água", "Lendário");
INSERT INTO tb_classes(elementoPrincipal, tipoPersonagem) VALUES ("Ar", "Lendário");

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("Aang", 1700, 1800, 1700, 1800, 8);	
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("Avatar", 10000, 10000, 10000, 10000, 12);
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("Katara", 1500, 1700, 1700, 1700, 7);
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("Excadrill", 1800, 1700, 1600, 1600, 5);
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("Hamtaro", 500, 500, 500, 10000, 1);
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("Charizard", 8000, 8000, 3000, 3000, 6);
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("Lugia", 10000, 10000, 10000, 10000, 11);
INSERT INTO tb_personagens(nome, ataque, defesa, sabedoria, carisma, FK_idClasse) VALUES ("King Kong", 10000, 10000, 10000, 10000, 9);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE defesa > 1000 and defesa < 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.FK_idClasse = tb_classes.idClasse;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens do tipo Lendário)
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.FK_idClasse = tb_classes.idClasse and tipoPersonagem = "Lendário";

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados
