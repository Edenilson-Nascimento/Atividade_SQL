/*Crie um banco de dados para uma plataforma de Cursos Online (EAD). O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.

    1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
    2. Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
    3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
    4. Insira 5 registros na tabela tb_categorias.
    5. Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
    6. Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
    7. Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
    8. Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
    9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
    10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
    11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/



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
