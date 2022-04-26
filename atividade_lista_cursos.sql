 create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table  tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

insert into tb_categorias(descricao) values ("Desenvolvimento Web");

insert into tb_categorias(descricao) values ("Desenvolvimento Mobile");

insert into tb_categorias(descricao) values ("Desenvolvimento Games");

insert into tb_categorias(descricao) values ("Banco de Bados");

insert into tb_categorias(descricao) values ("Linguagem");


select * from tb_categorias;

create table tb_cursos(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal (6,2),
tempo_De_Duracao varchar(10),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("Java", 450.00,"4 semanas",1);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("JavaScript", 505.00,"4 semanas",1);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("Kotlin", 600.00,"4 semanas",2);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("Ingles", 250.00,"1 mês",5);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("SQL", 550.00,"2 semanas",4);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("C#", 780.00,"4 semanas",3);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("Alemão", 200.00,"1 mês",5);

insert into tb_cursos(nome,valor,tempo_De_Duracao,categoria_id) values ("Agrião", 20.00,"6kg",4);

select * from tb_cursos
where preco > 500.00;

select * from tb_cursos
where preco between 600.00 and 1000.00;

select * from tb_cursos
where nome like '%j%';

select * from tb_cursos inner join tb_categorias
on tb_cursos.categoria_id = tb_categorias.id;

select * from tb_cursos inner join tb_categorias
on tb_cursos.categoria_id = tb_categorias.id
where tb_categorias.descricao = "Desenvolvimento Web";