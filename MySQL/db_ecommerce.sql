CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(

id bigint auto_increment primary key,
nome varchar (55),
data_fabricacao date,
marca varchar (55),
valor float

);

SELECT * FROM  tb_produtos;

INSERT INTO  tb_produtos(nome,data_fabricacao,marca,valor)VALUES("Whey","2022-08-25","growth", 100.00);

SELECT * FROM tb_produtos;

SELECT * FROM  tb_produtos WHERE valor >500;

SELECT * FROM  tb_produtos WHERE valor <500;

UPDATE tb_produtos SET valor = 350 WHERE id=4