create database aula3
use aula3;

-- exemplo1: 
-- criando tabela de clientes
create table clientes
(
idcli	int			not null,
nome	varchar(40)	not null,
fone	varchar(18)	null
primary key(idcli)
);

insert into clientes values (1,'José','9999-9999');
-- forçando erro chave primaria
insert into clientes values (1,'Marçal','7777-8888');
select * from clientes;
-- arrumando erro
insert into clientes values (2,'Marçal','7777-8888');
select * from clientes;


-- exemplo2:
-- utilizando constraint de auto-incremento
create table cds 
(
cod_cd			int			identity,
nome_cd			varchar(30)	not null,
dt_lancamento	datetime	not null
primary key(nome_cd)
);

-- primary key seria melhor em campos como:
-- id / codigo
-- CPF / RG / EMAIL

insert into cds values ('Quatro Estações','10/10/2019');
-- forçando erro chave primaria
insert into cds values ('Quatro Estações','10/10/2019');
select * from cds;
-- arrumando erro
insert into cds values ('Dois','10/10/2019');
select * from cds;


-- exemplo3:
-- criando tabela de clientes com chave composta
drop table clientes;
create table clientes
(
codigo_cli	int			not null,
nome_cli	varchar(40)	not null,
fone_cli	varchar(18)	null,
primary key(codigo_cli,nome_cli)
);

insert into clientes values (1,'ze','9999-9999');
insert into clientes values (2,'ze','9999-9999');
insert into clientes values (1,'maria','9999-9999');
select * from clientes;
-- forçando erro chave composta
insert into clientes values (1,'ze','1111-2222');
