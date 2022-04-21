create database Escola;

use Escola;

Create table tb_alunos(
id bigint auto_increment,
Nome varchar(255),
idade int,
Nota float,
Matricula boolean,
turma varchar(255),
primary key(id)
);

select * from tb_alunos;

select *from tb_alunos
where nota > 7;

select *from tb_alunos
where nota < 7;

update tb_alunos
set nota= 8.5
where id = 3; 



insert into tb_alunos(nome,idade,nota,matricula,turma) values("aluno8", 10, 6.5, true, "7°");