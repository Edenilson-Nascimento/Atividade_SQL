 create database db_pizzaria_legal;

use  db_pizzaria_legal;

create table  tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

insert into tb_categorias(descricao) values ("Salgada");

insert into tb_categorias(descricao) values ("doce");

insert into tb_categorias(descricao) values ("grande");

insert into tb_categorias(descricao) values ("media");

insert into tb_categorias(descricao) values ("broto");

insert into tb_categorias(descricao) values ("familia");

select * from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2),
tamanho char,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Frango catupiry", 45.00,"G",1);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Portuguesa", 35.00,"M",1);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Marguerita", 40.00,"G",3);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Brigadeiro", 25.00,"B",2);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Romeu&Julieta", 55.00,"G",2);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Napolitano", 28.00,"M",4);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Muçarela", 55.00,"G",1);

insert into tb_pizzas(nome,preco,tamanho,categoria_id) values ("Carne seca", 65.00,"F",6);

select * from tb_pizzas
where preco > 45.00;

select * from tb_pizzas
where preco between 50.00 and 100.00;

select * from tb_pizzas
where nome like '%M%';

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.descricao = "doce";

