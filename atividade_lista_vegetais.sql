 create database cidade_dos_vegetais;

use cidade_dos_vegetais;

create table  tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

insert into tb_categorias(descricao) values ("Maduro");

insert into tb_categorias(descricao) values ("Verde");

insert into tb_categorias(descricao) values ("Enlatados");

insert into tb_categorias(descricao) values ("Congelados");

insert into tb_categorias(descricao) values ("Pomoções");


select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2),
peso varchar(10),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("Abobrina", 45.00,"20kg",1);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("Berinjela", 35.00,"5kg",1);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("brócolis", 60.00,"4kg",3);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("Chuchu", 25.00,"7kg",2);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("Pepeno", 55.00,"10kg",2);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("Alface", 28.00,"50kg",4);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("Colve-flor", 20.00,"12kg",4);

insert into tb_produtos(nome,preco,peso,categoria_id) values ("Agrião", 20.00,"6kg",4);

select * from tb_produtos
where preco > 50.00;

select * from tb_produtos
where preco between 50.00 and 150.00;

select * from tb_produtos
where nome like '%c%';

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.descricao = "verde";
