/*Exemplo aula*/


CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(


nome varchar (55),
data_nascimento date,
turma int,
nota decimal(4,2)

);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("paozin","2003-04-6",57, 9.9);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota >7;

SELECT * FROM tb_alunos WHERE nota <7;


UPDATE tb_alunos SET nota = 6 WHERE id=8

