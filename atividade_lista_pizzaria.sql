/*Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
 
 */
 
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

