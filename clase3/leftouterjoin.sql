use Northwind_S02_Lab;
go

/**
LEFT OUTER JOIN
*/
SELECT
c.CustomerID,
c.ContactName,
o.OrderID,
o.OrderDate
FROM dbo.Customers as c
LEFT OUTER JOIN dbo.Orders as o
ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerID, o.OrderDate


/**
Muestra todos los productos y su categoria 
cuando exista
ProductID
ProductName
CategoryName
*/
SELECT
p.ProductID,
p.ProductName,
c.CategoryName
FROM dbo.Products as p
LEFT OUTER JOIN dbo.Categories as c
ON p.CategoryID = c.CategoryID;