create database AlquilerCoches;
go

use AlquilerCoches;
go

create table ClienteDemo(
	IdCliente int primary key,
	Nombre varchar(80),
	DNI char(8) unique
);
go

--alter table ClienteDemo
--add DNI char(8) NULL;
--go

--drop table ClienteDemo;
--go

insert into ClienteDemo (IdCliente,Nombre, DNI)
values (1,'Pedro','12345678');
go
insert into ClienteDemo (IdCliente,Nombre, DNI)
values (2,'Ana','87654321');
go

select * from ClienteDemo;
go

update ClienteDemo
set Nombre='Wilder'
where IdCliente=1;
go

alter table ClienteDemo
add DepartInicial char(2) null
default 'LI';
go

insert into ClienteDemo (IdCliente,Nombre, DNI)
values (3,'Juan','74185263');
go

update ClienteDemo
set DepartInicial='SL'
where IdCliente=2;
go

create table Agencia(
	idAgencia int primary key identity not null,
	Agencia varchar(100)
);
go

select * from Agencia;
go

insert into Agencia (Agencia)
values ('Los andes');
go

insert into Agencia (Agencia)
values ('Los pinos');
go