Use Northwind_S02_Lab;
go

select CustomerID, CompanyName, Country
from dbo.Customers
where Country = 'USA'
GO

SELECT ProductID, ProductName, UnitPrice
from dbo.Products
WHERE UnitPrice >= 20