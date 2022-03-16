/*Fundamentos de Banco de Dados*/ 
/*Nome: Giovana Sanches Clemente 2CC*/ 

/* Quest�o 1 */
create database fib2022;
use fib2022;

/* Quest�o 2 */
create table agenda(
idagenda int,
nome	 varchar(40)  not null,
fone	 varchar(20)  not null,
dtnasc	 datetime     null,
altura	 decimal(4,2) null
primary key(idagenda)
);

insert into agenda values(1,'Marcia','9947851458','10/02/02',1.57);
insert into agenda values(2,'Jo�o','9679467545','20/04/08',1.80);
insert into agenda values(3,'Robson','9978155856','02/05/96',1.72);

select * from agenda;

/* Quest�o 3 */
--https://cliente.americanas.com.br/simple-login/cadastro/pf?next=https%3A%2F%2Fwww.americanas.com.br%2Fbusca%2Fcasa-bahia

create table cadastro(
idcliente int  identity not null,
nome      varchar(50)   not null,
email     varchar(50)   not null,
senha     varchar(20)   not null,
cpf       int           not null,
dtnasc    datetime      not null,
sexo      varchar(2)    not null,
telefone  varchar(20)   not null,
primary key (email));

insert into cadastro values('Fernada da Silva','fernada_silva@gmail.com','21587',475145216,'04/10/19','f','997812364');
insert into cadastro values('Jos� Amandes','jose_amands@gmail.com','47946',577948600,'02/12/2019','m','998544522');
insert into cadastro values('Maria Joanina Martins','maria-martinsa@gmail.com','25485',123159000,'24/08/18','f','979482554');

select * from cadastro;

/* Quest�o 4 */
create table email_cli(
idcliente  int  identity not null,
nome       varchar(50)   not null,
sobrenome  varchar(50)   not null,
email      varchar(50)   not null,
senha      varchar(20)   not null,
);

insert into email_cli values('tarsila','Santana','tarsila@gmail.com','84596');
insert into email_cli values('Amanda','Nunes','Aman-nunis@gmail.com','54861');
insert into email_cli values('Pamella','Andrade','Pam_Andrade@gmail.com','17695');

select * from email_cli;

/* Quest�o 5 */
create table alunos(
nome                    varchar (50) not null,
idade                   int          not null,
sexo                    varchar (2)  not null,
email                   varchar (50) not null,
classe                  int          not null,
curso                   varchar (30) not null,
estagio                 varchar (20) not null,
localizacaodoestagio    varchar (40) not null,
tempodeestagio          varchar (15) not null,
telefone                int          not null,
);

insert into alunos values('Frederico Soares',16,'m','fred_@gmail.com',2,'administracao','programador','senai','100 horas',99874152);
insert into alunos values('Jos� Amandes',22,'m','jose_amands@gmail.com',8,'Ci�ncia Cont�veis','contador','senai','60 horas',998754155);
insert into alunos values('Maria Joanina Martins',26,'f','maria-martinsa@gmail.com',3,'Design','UX/UI','senai','40 horas',967154851);

select * from alunos;

/* Quest�o 6 */
create table produtos(
codprud  int  identity  not null,
nome     varchar (50)   not null,
lote     int            not null,
preco    decimal (7,2)  not null,
marca    varchar (50)   not null,
primary key(nome)
);

insert into produtos values('cereal',245978,'15.20','Tigr�o');
insert into produtos values('suco de laranja',587965,'10.5','dell vale');
insert into produtos values('caf� em p�',245978,'15.20','Forte');

select * from produtos;
