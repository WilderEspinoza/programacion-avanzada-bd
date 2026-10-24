/**
FULL OUTER JOIN
*/
use Northwind_S02_Lab;
go
SELECT
p.ProductID,
p.ProductName,
od.OrderID,
od.Quantity
FROM dbo.Products as p
FULL OUTER JOIN
dbo.[Order Details] as od
ON p.ProductID = od.ProductID;