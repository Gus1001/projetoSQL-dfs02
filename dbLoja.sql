-- apagando bd se existir
drop database dbLoja;

--criando banco de dados
create database dbLoja;

-- acessando bd
use dbLoja

-- vizualizando bd
show databases;

-- criando as tabelas no db
create table tbUsuarios(
codUsu int,
nome varchar(50),
senha varchar(20)
);

create table tbFunciionarios(
codfunc int,
nome varchar(100),
email varchar(100),
cpf char(14),
telcel char(10)
);

-- vizualizando as tabelas criadas
show tables;

-- vizualizando as estruturas das tabelas
describe tbUsuarios;
desc tbFunciionarios;

--inserindo valores/resgistros nas tabelas
insert into tbUsuarios(codUsu,nome,senha)
	values(1, 'gustavo.pereira','deximbranco');

insert into tbFunciionarios(codfunc,nome,email,cpf,telcel)
	values(1, 'gustavo pereira','gustavo.mata1014@gmail.com','478.425.742-10','95827-4742');

-- vizualizando os egistros nos campos das tabelas
select * from tbUsuarios;
select * from tbFunciionarios;