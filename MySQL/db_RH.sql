CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_Holerite(

id bigint auto_increment primary key,
nome varchar (55),
data_pagamento date,
codigo int,
salario float

);

SELECT * FROM  tb_Holerite;

INSERT INTO  tb_Holerite(nome,data_pagamento,codigo,salario)VALUES("Stark","2022-08-25",57, 600000.00);

SELECT * FROM  tb_Holerite;

SELECT * FROM  tb_Holerite WHERE salario >2000;

SELECT * FROM  tb_Holerite WHERE salario <2000;