-- Crie um banco de dados para um registro de uma escola
CREATE DATABASE IF NOT EXISTS db_EscolaGeneration;
USE db_EscolaGeneration;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola
CREATE TABLE IF NOT EXISTS estudantes(
id bigint NOT NULL AUTO_INCREMENT,
nome varchar(50) NOT NULL, 
classe varchar(50),
mensalidade double NOT NULL,
aprovado boolean,
nota_mediaGeral double,
PRIMARY KEY(id)
);

-- Insira nesta tabela no mínimo 8 dados (registros)
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Ivete Sangalo Nascimento", "3º ano", 2000.00, true, 8.6);
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Milton Nascimento Oliveira", "1º ano", 1300.00, true, 9.0);
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Elcilene Bastos Mendonça", "5ª série", 900.00, false, 5.4);
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Jessica Lopes de Souza", "8ª série", 1000.00, true, 7.5);
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Andrei Lançanova Ferreira", "1ª série", 500.00, true, 7.9);
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Dimitri Santana Marinho", "3º ano", 1300.00, true, 10.0);
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Gabriela Sá Santos", "2º ano", 1400.00, true, 9.2);
INSERT INTO estudantes(nome, classe, mensalidade, aprovado, nota_mediaGeral) VALUES ("Altino Dourado Peixe", "7ª série", 980.00, false, 4.7);

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0
SELECT * FROM estudantes WHERE nota_mediaGeral > 7.0;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM estudantes WHERE nota_mediaGeral < 7.0;

-- Atualize um registro desta tabela através de uma query de atualização.
UPDATE estudantes SET mensalidade = 800.00 WHERE id = 6;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados