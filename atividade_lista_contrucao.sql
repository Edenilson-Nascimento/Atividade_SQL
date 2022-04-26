 create database db_construindo_vidas;

use db_construindo_vidas;

create table  tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

insert into tb_categorias(descricao) values ("Naturais");

insert into tb_categorias(descricao) values ("Indistrias");

insert into tb_categorias(descricao) values ("Vendação");

insert into tb_categorias(descricao) values ("Proteção");

insert into tb_categorias(descricao) values ("Estruturais");


select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2),
unidade varchar(10),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("Tintas", 45.00,"2L",4);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("Portas", 75.00,"4",2);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("Areias", 300.00,"3CB",1);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("Janelas", 25.00,"4",3);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("Tijolos", 500.00,"1000",4);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("metais", 250.00,"50un",5);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("Madeira", 200.00,"50un",1);

insert into tb_produtos(nome,preco,unidade,categoria_id) values ("Agrião", 20.00,"6kg",4);

select * from tb_produtos
where preco > 100.00;

select * from tb_produtos
where preco between 70.00 and 150.00;

select * from tb_produtos
where nome like '%c%';

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.descricao = "estruturais";