Use Northwind_S02_Lab;
go

SELECT ProductID,
ProductName as producto,
UnitPrice as precio,
UnitsInStock as stock,
QuantityPerUnit as ValorPorInvetario,
UnitsInStock * UnitPrice as StockValorizado
FROM dbo.Products;
go

select LastName,
FirstName
from dbo.Employees;
go