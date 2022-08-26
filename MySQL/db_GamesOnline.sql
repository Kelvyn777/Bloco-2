CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(

id bigint auto_increment primary key,
lutador varchar (255),
atirador varchar(255)
);
CREATE TABLE tb_personagens(

id bigint auto_increment primary key,
nome varchar (255),
genero Varchar (255),
Bem_ou_mal boolean,
forca int,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

alter table tb_personagens add classe_id bigint;

SELECT * FROM tb_classes;

INSERT INTO tb_classes(lutador,atirador) VALUE ("Sim","Não");
INSERT INTO tb_classes(lutador,atirador) VALUE ("Não","Sim");
INSERT INTO tb_classes(lutador,atirador) VALUE ("Sim","Sim");
INSERT INTO tb_classes(lutador,atirador) VALUE ("Não","Não");
INSERT INTO tb_classes(lutador,atirador) VALUE ("Sim","Não");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Ryu","Masculino",True,3000,1);
INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Ken","Masculino",True,1500,1);
INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Naruto","Masculino",True,3500,3);
INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Madara","Masculino",True,10000,3);
INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Goku","Masculino",True,8100,3);
INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Kid boo","Masculino",True,7500,3);
INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Seiya","Masculino",True,2000,1);
INSERT INTO tb_personagens(nome,genero,bem_ou_mal,forca,classe_id) VALUE ("Ikki","Masculino",True,5000,1);

SELECT * FROM tb_personagens WHERE forca > 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";



SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id WHERE lutador = "Sim";