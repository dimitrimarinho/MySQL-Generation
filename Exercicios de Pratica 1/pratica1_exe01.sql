-- Crie um banco de dados para um serviço de RH de uma empresa
CREATE DATABASE IF NOT EXISTS db_generationRH;
USE db_generationRH;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH
CREATE TABLE IF NOT EXISTS colaboradores(
id bigint NOT NULL AUTO_INCREMENT,
nome varchar(50) NOT NULL, 
cargo varchar(50),
salario double NOT NULL,
feriasAcumuladas boolean,
saldoFGTS double,
PRIMARY KEY(id)
);

-- Insira nesta tabela no mínimo 5 dados (registros)
INSERT INTO colaboradores(nome, cargo, salario, feriasAcumuladas, saldoFGTS) VALUES ("Ivete Sangalo Nascimento", "Diretora Artística", 10000.00, true, 200000.00);
INSERT INTO colaboradores(nome, cargo, salario, feriasAcumuladas, saldoFGTS) VALUES ("Milton Nascimento Oliveira", "Gerente Geral", 6000.00, false, 100000.00);
INSERT INTO colaboradores(nome, cargo, salario, feriasAcumuladas, saldoFGTS) VALUES ("Elcilene Bastos Mendonça", "Auxiliar de Serviços Gerais", 1300.00, false, 2680.00);
INSERT INTO colaboradores(nome, cargo, salario, feriasAcumuladas, saldoFGTS) VALUES ("Jessica Lopes de Souza", "Front End Pleno", 4000.00, true, 6000.00);
INSERT INTO colaboradores(nome, cargo, salario, feriasAcumuladas, saldoFGTS) VALUES ("Juliano Paes Albuquerque", "Zelador", 1200.00, false, 2250.00);

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000
SELECT * FROM colaboradores WHERE salario > 2000;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000
SELECT * FROM colaboradores WHERE salario < 2000;

-- Atualize um registro desta tabela através de uma query de atualização.
UPDATE colaboradores SET cargo = "Front End Sênior", salario = 6500.00 WHERE id = 4;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados