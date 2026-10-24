use Northwind_S02_Lab;
go


begin transaction

select EmployeeID, FirstName, LastName, City
from dbo.Employees
WHERE FirstName = 'Nancy';
go

update dbo.HappybirthadayEmployeeView
SET City= 'Lima'
WHERE FirstName = 'Nancy';
go

select FirstName, LastName, City
from dbo.HappybirthadayEmployeeView
WHERE FirstName = 'Nancy';
go

select EmployeeID, FirstName, LastName, City
from dbo.Employees
WHERE FirstName = 'Nancy';
go

rollback;
go