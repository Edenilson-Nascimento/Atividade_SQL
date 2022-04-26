/*Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

    1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
    2. Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
    3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
    4. Insira 5 registros na tabela tb_categorias.
    5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
    6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
    7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
    8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
    9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
    10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
    11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
 
 */
 
 
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
