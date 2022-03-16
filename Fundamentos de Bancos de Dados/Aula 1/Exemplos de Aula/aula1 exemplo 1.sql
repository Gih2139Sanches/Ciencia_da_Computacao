create database aula1;
use aula1;

create table clientes(
idcli	int			not null, 
cliente varchar(40) not null
);

insert into clientes values (10,'ze');
insert into clientes values (20,'zildo');
select * from clientes;

create table vendedor(
idven	 int		 not null, 
vendedor varchar(40) not null
);

insert into vendedor values (99,'apolinario');
insert into vendedor values (999,'apolinilda');
select * from vendedor;

create table vendas(
idcli	int		     not null, 
idven	int		     not null,
produto varchar(40)  not null,
valor   decimal(7,2) not null,
dtvenda date         not null 
);

insert into vendas values (10,99,'alcool gel',20,'10/02/22');
insert into vendas values (20,99,'mouse',199,'10/02/22');
insert into vendas values (30,99,'laranja',9,'10/02/22');
insert into vendas values (10,9,'goiaba',19,'10/02/22');
select * from vendas;

select clientes.cliente, vendedor.vendedor, vendas.produto, vendas.valor
from vendas, clientes, vendedor
where vendas.idcli = clientes.idcli and
      vendas.idven = vendedor.idven;
      
select c.cliente, x.vendedor, v.produto, v.valor
from vendas v, clientes c, vendedor x
where v.idcli = c.idcli and
      v.idven = x.idven;      
      
select c.cliente, x.vendedor, v.produto, v.valor
from vendas v, clientes c, vendedor x
where v.idcli = c.idcli or
      v.idven = x.idven;  
      
select clientes.cliente, vendedor.vendedor, vendas.produto, vendas.valor
from vendas, clientes, vendedor
where vendas.idcli = clientes.idcli and
      vendas.idven = vendedor.idven;        



