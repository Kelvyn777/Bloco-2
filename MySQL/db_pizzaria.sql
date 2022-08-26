CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(

id bigint auto_increment primary key,
descricao varchar (255),
tamanho varchar(255),
borda_recheada boolean
);

CREATE TABLE tb_pizzas(
id bigint auto_increment primary key,
sabor varchar(255),
preco decimal(6,2),
massa varchar(255),
quantidade int,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);	

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Salgada","broto",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Salgada","broto",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Salgada","Média",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Salgada","Média",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Salgada","grande",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Salgada","Grande",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Doce","broto",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Doce","broto",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Doce","Média",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Doce","Média",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Doce","grande",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Doce","Grande",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Vegetariana","broto",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Vegetariana","broto",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Vegana","broto",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES ("Vegana","broto",false);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("Frango c/catupiry",30.00,"tradicional",5,1);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("mussarela",40.00,"tradicional",5,2);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("mussarela",40.00,"tradicional",5,5);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("Prestigio",50.00,"tradicional",2,7);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("Lombo/catupiry",60.00,"tradicional",1,6);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("Doce de leite c/ banana",49.00,"tradicional",1,11);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("Brocolis c/ catupiry",40.00,"tradicional",1,13);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES ("Capim",30.00,"tradicional",1,16);

SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco DESC;
SELECT * FROM tb_pizzas WHERE preco < 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE descricao = "Doce";







