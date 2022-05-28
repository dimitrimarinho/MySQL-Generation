-- Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar
CREATE DATABASE IF NOT EXISTS db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas
-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos
CREATE TABLE IF NOT EXISTS tb_categorias(
	idCategoria bigint AUTO_INCREMENT NOT NULL,
	secaoItem varchar(30) NOT NULL,
	necessitaReceitaMedica boolean,
	PRIMARY KEY (idCategoria)
);

-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia
	-- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos
CREATE TABLE IF NOT EXISTS tb_produtos(
	idProduto bigint AUTO_INCREMENT NOT NULL,
	nomeItem varchar(30) NOT NULL,
	valor double NOT NULL,
	laboratorio varchar(50),
	quantidadeEstoque int NOT NULL,
	FK_idCategoria bigint,
	PRIMARY KEY (idProduto),
	FOREIGN KEY (FK_idCategoria) REFERENCES tb_categorias(idCategoria)
);

-- Insira 5 registros na tabela tb_categorias
INSERT INTO tb_categorias(secaoItem, necessitaReceitaMedica) VALUES ("Ansiolitico", true);
INSERT INTO tb_categorias(secaoItem, necessitaReceitaMedica) VALUES ("Analgésico", false);
INSERT INTO tb_categorias(secaoItem, necessitaReceitaMedica) VALUES ("Antiparasitário", false);
INSERT INTO tb_categorias(secaoItem, necessitaReceitaMedica) VALUES ("Relaxante Muscular", false);
INSERT INTO tb_categorias(secaoItem, necessitaReceitaMedica) VALUES ("Antibiótico", true);

-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Rivotril 2 mg", 60.00, "Roche", 10, 1);
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Novalgina 1 g", 22.00, "Sanofi", 20, 2);
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Ivermectina 6 mg", 13.00, "Vitamedic", 7, 3);
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Dorflex 1 g", 7.00, "Sanofi", 35, 4);
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Amoxicilina 500 mg", 55.00, "EMS", 16, 5);
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Taltz 80 mg", 8470.00, "Farmacam", 1, 2);
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Frontal 1 mg", 72.00, "Pfizer", 6, 1);
INSERT INTO tb_produtos(nomeItem, valor, laboratorio, quantidadeEstoque, FK_idCategoria) VALUES ("Pantelmin 30 mL", 17.00, "Janssen Pharmaceuticals", 4, 3);

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE valor > 50;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE valor > 5 and valor < 60;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nomeItem
SELECT * FROM tb_produtos WHERE nomeItem LIKE '%C%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.FK_idCategoria = tb_categorias.idCategoria;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria Analgésico)
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.FK_idCategoria = tb_categorias.idCategoria and secaoItem = "Analgésico";

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados
