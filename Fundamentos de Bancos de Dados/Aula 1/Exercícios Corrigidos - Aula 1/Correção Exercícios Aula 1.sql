-- criar banco de dados - exerc�cio 1
create database fib2022;

-- abrir banco de dados
use fib2022;

-- criar tabela - exerc�cio 2
create table agenda(
nome		varchar(45) not null,
endereco	varchar(45) not null,
bairro		varchar(30) not null,
cidade		varchar(30) not null,
estado		varchar(2)	not null,
cep			varchar(9)	null,  
fone		varchar(20) null, 
celular		varchar(20) null,
dtnasc		datetime	null
primary key(nome)
);

-- inserindo registros
insert into agenda values('Antenor Rodolfo','Rua Vai Indo, 70','Vila Giunta','Bauru',
'SP','17120-000',null,'99999-9999','03/11/1967');

insert into agenda values('Mary Beatifull','Rua Volta da Ida, 90','Bairro Bela Linda',
'Santa Cruz do Rio Pardo', 'SP','17999-999','3262-6262',null,'03/11/1967');

insert into agenda values('Marcio Marinaldo','Avenida das Bandeiras, 10-190','Jardim Brasil',
'Agudos', 'SP','17999-111','3262-6262','98787-9898',null);

-- verificando os registros
select * from agenda;

-- criar tabela exerc�cio 3
-- site americanas.com
-- https://cliente.americanas.com.br/simple-login/cadastro/pf?next=https%3A%2F%2Fwww.americanas.com.br%2F
create table clientes(
idcli		int		identity	not null,
email		varchar(40)			not null,
senha		varchar(20)			not null,
cpf			varchar(20)			not null,
nome		varchar(40)			not null,
dtnasc		datetime			not null,
sexo		varchar(1)			null,
fone		varchar(20)			null,
ofertas		varchar(1)			not null
primary key(email)
);

-- inserindo registros
insert into clientes values('ze@gmail.com','123deoliveira4','181795558-27',
'jose de oliveira','01/04/2018','m',null,'N');

-- verificando registros
select * from clientes;

-- criar tabela exerc�cio 4
-- site yahoo.com.br
-- https://login.yahoo.com/account/create?authMechanism=primary&done=https%3A%2F%2Fmail.yahoo.com%2Fd%3F.intl%3Dbr%26.lang%3Dpt-BR%26.partner%3Dnone%26.src%3Dfp&eid=100&add=1&src=ym&partner=none&lang=pt-BR&intl=br&specId=yidReg
create table email(
idemail		int		identity	not null,
nome		varchar(40)			not null,
sobrenome	varchar(40)			not null,
email		varchar(40)			not null,
senha		varchar(20)			not null,
celular		varchar(40)			not null,
dtnasc		datetime			null,
sexo		varchar(1)			null
);

-- inserir registros
insert into email values('zezinho','filho da silva','zezinho@terra.com.br','mudar123',
'99999-7777',null,null);

-- verificando registros
select * from email;

-- criar tabela exerc�cio 5
-- informa��es pessoais academicas profissionais
create table alunos(
nome		varchar(40)		not null,
email		varchar(40)		not null,
celular		varchar(20)		null,
idade		int				null,
curso		varchar(40)		not null,
ano			int				not null,
empresa		varchar(40)		null,
cargo		varchar(20)		null,
salario		decimal(7,2)	null
);

-- inserir registros
insert into alunos values ('zezao','zezao@gmail.com',null,20,'Ci�ncia da Computa��o',
2020,'fib','estagi�rio',1230.89);

-- verificando registros
select * from alunos;

-- criar tabela - exerc�cio 6
create table produtos(
codprod		int			identity	not null,
produto		varchar(30)				not null,
preco		decimal(7,2)			not null,  
cor			varchar(20)				null,
saldo		int						not null,
dtvalidade	datetime				null,
fabricante	varchar(40)				not null
primary key(produto)
);

-- inserindo registros
-- NAO COLOCAR CODIGO - Auto Incremento
insert into produtos values ('chocolate',3.45,null,100,'25/12/2019','nestle');
insert into produtos values	('luva de borracha',4.90,'azul',200,null,'bombril');

-- verificando registros
select * from produtos;

-- for�ando um erro
insert into produtos values ('chocolate',3.45,null,100,'25/12/2019','nestle');

-- corrigindo erro
insert into produtos values ('bala',0.50,null,1000,'25/12/2019','pan');

-- verificando registros
select * from produtos;
