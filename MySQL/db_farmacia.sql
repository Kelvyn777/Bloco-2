CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(

id bigint auto_increment primary key,
comprimido_ou_liquido varchar (255),
genérico boolean
);

CREATE TABLE tb_produtos(

id bigint auto_increment primary key,
nome varchar (255),
data_validade date,
possui_receita boolean,
valor decimal (6,2),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

alter table tb_produtos add categoria_id bigint;

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(comprimido_ou_liquido,genérico) VALUES ("Comprimido",true);
INSERT INTO tb_categorias(comprimido_ou_liquido,genérico) VALUES ("Comprimido",false);
INSERT INTO tb_categorias(comprimido_ou_liquido,genérico) VALUES ("liquido",true);
INSERT INTO tb_categorias(comprimido_ou_liquido,genérico) VALUES ("liquido",false);
INSERT INTO tb_categorias(comprimido_ou_liquido,genérico) VALUES ("Comprimido e liquido",true);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("Dorflex","2022-12-12",true,8.10,1);
INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("Dipirona","2022-12-12",false,10.0,2);
INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("Dipirona","2022-12-12",false,20.0,5);
INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("morfina","2022-12-12",true,100.00,3);
INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("Dipirona","2022-12-12",false,10.0,2);
INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("Paracetamol","2022-12-12",false,15.0,1);
INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("Colirio","2022-12-12",false,10.0,4);
INSERT INTO tb_produtos(nome,data_validade,possui_receita,valor,categoria_id) VALUES("Cimegripe","2022-12-12",true,25.0,1);


SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor >= 5.00 AND valor <= 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;










