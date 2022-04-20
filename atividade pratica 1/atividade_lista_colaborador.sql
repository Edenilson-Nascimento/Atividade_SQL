use lista_coladorador;

Create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
email varchar(255),
telefone int,
endereço varchar(255),
primary key(id)
);
select * from tb_colaboradores;

insert into tb_colaboradores(nome,idade,email,salario,endereço) values ("fulano5",30, "colaborador@gmail.com", 2500,"Rio de Janeiro");

alter table tb_colaboradores
change telefone salario float;

update tb_colaboradores
set nome='fulano1'
where id = 1;

select * from tb_colaboradores
where salario > 2000;

select * from tb_colaboradores
where salario < 2000;