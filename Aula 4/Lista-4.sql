-- Lista de Exerc�cios Aula 4 --
-- Aula 4
create database aula4;
use aula4;

-- Exerc�cio 1 --
/* Criar e Testar as tabelas da aula 4 */
-- tabela PAI
create table pessoa(
idpessoa	int	identity not null,
nome		varchar(40)	 not null,
fone		varchar(20)	 null,
email		varchar(40)	 null
primary key(idpessoa)
);

-- tabela FILHO
create table carro(
idcarro		int			identity,
marca		varchar(40) not null,
modelo		varchar(40) not null,
idpessoa	int			not null
primary key(idcarro)
foreign key(idpessoa) references pessoa(idpessoa)
);

-- default
create table colegas(
idcol	int			identity,	
nome	varchar(40)	not null,
cidade	varchar(60)	default 'Santa Cruz do Rio Pardo',
idade	int 		default 16
primary key (idcol)
);

-- unique
create table colegas2(
idcol	int			identity	not null,
cpf		varchar(20) unique		not null,	
nome	varchar(40)				not null,
cidade	varchar(60)	default 'Santa Cruz do Rio Pardo',
idade	int 		default 16
primary key (idcol, cpf)
);

-- check
create table colegas3(
idcol	int			identity,
cpf		varchar(20) unique,	
nome	varchar(40)	not null,
cidade	varchar(60)	default 'Santa Cruz do Rio Pardo',
idade	int 		default 16,
sexo	varchar(1)	check(upper(sexo)='M' or upper(sexo)='F') 
primary key (idcol, nome)
);

-- Exerc�cio 2 --
/* Inserir registros nas tabelas e quando poss�vel for�ar erro */
-- Tabela Pessoa
insert into pessoa values("Santa Cecília da Silva", "9987535676", "santac@gmail.com");
insert into pessoa values("Juan Sebastião Almada", "9987535676", "juansebastiaoalmada@dosnu.com.br");
-- Tabela Carro
insert into carro values("CHEVROLET","Corsa",1);
insert into carro values("FIAT","Siena",1);
-- Tabela Colegas
insert into colegas values("George Júnior", default, "22");
insert into colegas values("Benício Diogo Oliveira", default, "22");
-- Tabela Colegas 2
insert into colegas2 values("766565455", "Fabricio dos Santos", default, default);
insert into colegas2 values("766565455", "Rita Mariane Eloá Peixoto", default, "34");
-- Tabela Colegas 3
insert into colegas3 values("866546577", "Ana Júlia Ferreira", default, "35", "f");
insert into colegas3 values("864466776", "Ana Júlia Ferreira", default, default, "f");

-- Exerc�cio 3 --
/* Testar chave prim�ria for�ando o erro */
insert into colegas values(1, "George Júnior", "São Paulo", default);

-- Exerc�cio 4 --
/* Testar chave composta for�ando o erro */
insert into colegas2 values("766565455", "Elza Patrícia", default, default);

-- Exerc�cio 5 --
/* Testar chave estrangeira for�ando o erro */
insert into carros values("FORD", "Focus", 1);

-- Exerc�cio 6 --
/* Criar uma tabela de fornecedores(codfor, nome e fone) com a chave prim�ria codfor - PAI*/
create table fornecedores(
codfor int not null,
nome varchar(50)not null,
telefone varchar(20) not null,
primary key(codfor)
);

-- Exerc�cio 7 --
/* Criar uma tabela de produtos(codpro, codfor, produto e pre�o) com a chave prim�ria codpro e a chave estrangeira codfor - FILHO */
create table produtos(
codprod int not null,
codfor int not null,
telefone varchar(20) not null,
nome varchar(50) not null,
produto varchar(50) not null,
preco decimal(7,2) not null,
primary key(codprod),
foreign key (codpro) references fornecedores(codfor)
);

-- Exerc�cio 8 --
/* Inserir 2 registros na tabela fornecedor - PAI*/
insert into fornecedores values(001,'jo�o da Silva','994753915');
insert into fornecedores values(002,'Joaquina da Silva','99475321');

select * from fornecedores

-- Exerc�cio 9 --
/* Inserir 3 registros na tabela produtos - FILHO */
insert into produtos values(001,001,'99354725','Amelia','poltrona',499.99);
insert into produtos values(002,002,'televis�o',200.0);
insert into produtos values(003,001,'cafeteira',120.0);

select * from produtos

-- Exerc�cio 10 --
/* Tentar inserir produtos sem PAI */
insert into values();

-- Exerc�cio 11 --
/* incluir fornecedor sem filho */
insert into values();

-- Exerc�cio 12 --
/* Tentar excluir tabela PAI */

-- Exerc�cio 13 --
/* Criar uma tabela que utilize chave prim�ria e UNIQUE */
create table

-- Exerc�cio 14 --
/* Criar um relacionamento entre PAI e FILHO utilizando chave prim�ria e unique nas 2 tabelas e chave estrangeira */

-- Exerc�cio 15 --
/* Criar uma tabela que utilize default e check */
create table ();

-- Exerc�cio 16 --
/* Criar uma tabela que utilize TODAS as contraints */
create table ();

-- Exerc�cio 17 --
/* Alterar a estrutra de qualquer uma das tabelas acima incluindo 2 campos */
alter table ();

-- Exerc�cio 18 --
/* Alterar a estrutura de qualquer uma das tabelas acima excluindo 2 campos */
alter table ();

-- Exerc�cio 19 --
/* Alterar a estrutura de qualquer uma das tabelas acima aumentando o tamanho de um campo varchar e diminuindo o tamanho de outro */
alter table ();

-- Exerc�cio 20 --
/* Deletar todos os registros de uma tabela */
delete from colegas3;

-- Exerc�cio 21 --
/* Deletar uma tabela e um banco de dados*/
create database temporario;

drop table colegas;
drop database temporario;

-- Exerc�cio 22 --
/* Deletar o banco de dados */
drop database aula4;


