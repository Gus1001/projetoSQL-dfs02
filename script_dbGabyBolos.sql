-- apagando banco de dados
drop database gabybolos;

-- criando banco de dados
create database dbgabybolos;

-- acessando banco de dados
use dbgabybolos;

-- vizualizando as tabelas no banco de dados
show tables;

--criar tabelas
create table tbfunciionarios(
codfunc int,
nome varchar(100),
email varchar(100),
telefone char(9)
);

show tables;

desc tbfunciionarios;