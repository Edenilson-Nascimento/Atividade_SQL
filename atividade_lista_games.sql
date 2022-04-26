create database  db_generation_game_online;

use  db_generation_game_online;

create table tb_classes(
id bigint  auto_increment,
descrição varchar(255) not null,

primary key(id)
);


insert into tb_classes (descrição) values ("Assassino");

insert into tb_classes (descrição) values ("Atirador");

insert into tb_classes (descrição) values ("Mago");

insert into tb_classes (descrição) values ("Lutador");

insert into tb_classes (descrição) values ("Tanque");

alter table tb_classes
add selecionado boolean;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
ataque float not null,
defesa float not null,
classe_id bigint,

primary key (id),
FOREIGN KEY (classe_id) References tb_classes(id)
);


insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Yugo", 2500, 3000, 1);

insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Long", 2000, 3000, 3);

insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Shen", 3500, 2000, 5);

insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Jeny", 2500, 4000, 2);

insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Allice", 3000, 2500, 1);

insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Sarah", 2500, 3000, 4);

insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Clayt", 2800, 3500, 4);

insert into tb_personagens (nome, ataque, defesa, classe_id) values ("Shom", 2500, 2800, 5);

select * from tb_personagens
where ataque > 2000;

select * from tb_personagens
where defesa between 1000 and 2000;

select * from tb_personagens
where nome like '%c%';


select * from tb_personagens;
select * from tb_classes;

select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id;

select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id
where tb_classes.descrição = 'Assassino';




