use Northwind_S02_Lab;
go

select DB_NAME() as bdactual

/**
SENTENCIA INNER JOIN
*/

SELECT p.ProductID,
p.ProductName,
c.CategoryName
FROM dbo.Products as p
INNER JOIN dbo.Categories as c
ON p.CategoryID = c.CategoryID;
/**
 obtener el nombre del proveedor y el nombre de cada
 producto que suministra,para ello usar la tablas
 Suppliers y Product con la sentencia INNER JOIN
*/
SELECT
p.ProductName,
s.CompanyName
FROM dbo.Products p 
INNER JOIN
dbo.Suppliers s
ON p.SupplierID=s.SupplierID;



