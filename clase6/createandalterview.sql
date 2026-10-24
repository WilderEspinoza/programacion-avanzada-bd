use Northwind_S02_Lab;
go

alter table dbo.Employees
add BirthDate datetime default getDate();

update dbo.Employees set BirthDate= GETDATE() ;
GO
update dbo.Employees set BirthDate= null WHERE FirstName= 'Steven';
GO


create or alter  view dbo.HappybirthadayEmployeeView
as
select FirstName, LastName, BirthDate
from dbo.Employees
where BirthDate IS NOT NULL;
go



select FirstName, LastName, BirthDate
from dbo.HappybirthadayEmployeeView


-- CREA UNA VISTA QUE MUESTRA EL CODIGO EMPLEADO, NOMBRES, APELLIDOS Y CIUDAD Y LUEGO SOLO MUESTRA EMPLEADOS DE NACIONALIDAD
--UK

create or alter  view dbo.EmployeesCountryUKView
as
select EmployeeID, FirstName, LastName, City
from dbo.Employees
where Country = 'UK';
GO


select EmployeeID, FirstName, LastName, City
from dbo.EmployeesCountryUKView


alter view dbo.HappybirthadayEmployeeView
as
select FirstName, LastName, city
from dbo.Employees;
go


select FirstName, LastName, city
from dbo.HappybirthadayEmployeeView