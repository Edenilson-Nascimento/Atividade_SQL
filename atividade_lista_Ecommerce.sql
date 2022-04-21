Create database e_commerce;

use e_commerce;

Create table tb_de_produtos(
id bigint auto_increment,
Nome varchar(255) not null,
Tipo varchar(255) not null,
Marca varchar(255) not null,
Valor float not null,
Tem_estoque boolean,
primary key(id)
);

select * from tb_de_produtos;

select * from tb_de_produtos
where Valor > 500;

select * from tb_de_produtos
where Valor < 500;

insert into tb_de_produtos(Nome,Tipo,Marca,Valor,Tem_estoque) values ("Fones", "Acessórios", "Motorola", 149, true);

update tb_de_produtos
set Nome='Notebook',Marca='Apple', Valor=3000, Tem_estoque=false
where id = 1; 


