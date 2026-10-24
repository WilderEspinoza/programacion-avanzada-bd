

select EmployeeID, FirstName, LastName
from Employees
where EmployeeID=1

BEGIN TRAN;

UPDATE Employees
SET FirstName='John',
LastName = 'Smith'
where EmployeeID=1

select EmployeeID, FirstName, LastName
from Employees
where EmployeeID=1

rollback;

select EmployeeID, FirstName, LastName
from Employees
where EmployeeID=1


/* Actualizar nombre y apellido del empleado 5*/