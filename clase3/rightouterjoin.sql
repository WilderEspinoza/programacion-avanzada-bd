/**
RIGHT OUTER JOIN
*/
use Northwind_S02_Lab;
go

SELECT
c.CustomerID,
c.ContactName,
o.OrderID,
o.OrderDate
FROM dbo.Customers as c
RIGHT OUTER JOIN dbo.Orders as o
ON c.CustomerID = o.CustomerID;

/**
Muestren todos los proveedores de productos aunque el 
proveedor ya no exista
SupplierID
CompanyName
ProductName
*/
SELECT
s.SupplierID,
s.CompanyName,
p.ProductName
FROM
dbo.Suppliers as s RIGHT OUTER JOIN
dbo.Products as p
ON s.SupplierID = p.SupplierID;