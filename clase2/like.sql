Use Northwind_S02_Lab;
go

select CustomerID, CompanyName
from dbo.Customers
where CompanyName LIKE 'C%'

select CustomerID, CompanyName
from dbo.Customers
where CompanyName LIKE '%on%'

select CustomerID, CompanyName
from dbo.Customers
where CompanyName LIKE '[A-C]%'