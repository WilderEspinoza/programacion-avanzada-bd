
select EmployeeID, LastName, FirstName
from Employees
where LastName IN ('Perez','Mamani', 'Chavez')

begin tran;

insert into Employees (EmployeeID, LastName, FirstName, City, Country)
values
(8,'Perez', 'Pancho', 'Lima', 'Perú'),
(9,'Mamani', 'Maria', 'Lima', 'Perú'),
(10,'Chavez', 'Pepe', 'Lima', 'Perú');

select EmployeeID, LastName, FirstName
from Employees
where LastName IN ('Perez','Mamani', 'Chavez');

rollback;

select EmployeeID, LastName, FirstName
from Employees
where LastName IN ('Perez','Mamani', 'Chavez');

/*a esta misma transaccion ingresar 3 empleados con los apellidos: Perez, Mamani y Chavez */