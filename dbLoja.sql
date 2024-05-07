-- apagando bd se existir
drop database dbLoja;

--criando banco de dados
create database dbLoja;

-- acessando bd
use dbLoja

-- vizualizando bd
show databases;

-- criando as tabelas no db
create table tbFuncionarios(
codfunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
cpf char(14) not null unique,
telcel char(10),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
primary key(codfunc)
);

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
cnpj char(16) not null unique,
primary key (codForn)
);

create table tbClientes(
codCli int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key (codCli)
);

create table tbUsuarios(
codUsu int auto_increment,
nome varchar(50),
senha varchar(20),
codfunc int not null,
primary key(codUsu),
foreign key(codfunc) references tbFuncionarios(codfunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
valor decimal(9,2),
quantidade int,
data date,
hora time,
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);


-- vizualizando as tabelas criadas
show tables;

-- vizualizando as estruturas das tabelas
describe tbUsuarios;
desc tbFuncionarios;

--inserindo valores/resgistros nas tabelas
insert into tbFuncionarios(nome,email,cpf,telcel,logradouro,numero,cep,bairro,cidade,estado)
	values('gustavo pereira','gustavo.mata1014@gmail.com','478.425.742-10','95827-4742','Rua Macedo','244','06783-000','Vila Gilda','Sao Paulo','SP');
insert into tbFuncionarios(nome,email,cpf,telcel,logradouro,numero,cep,bairro,cidade,estado)
	values('gus pera','gusmata1014@gmail.com','545.758.542-10','97576-4742','Rua Loco','368','07683-000','Vila Calu','Sao Paulo','SP');

insert into tbUsuarios(nome,senha,codfunc)
	values('gustavo.pereira','deximbranco',1);
insert into tbUsuarios(nome,senha,codfunc)
	values('gus.pera','deximpreto',2);

-- vizualizando os egistros nos campos das tabelas
select * from tbFuncionarios;
select * from tbUsuarios;
