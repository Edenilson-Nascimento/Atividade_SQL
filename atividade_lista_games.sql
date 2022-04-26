/*Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

    1. Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
    2. Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
    3. Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
    4. Insira 5 registros na tabela tb_classes.
    5. Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
    6. Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
    7. Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
    8. Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
    9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
    10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
    11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

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




