CREATE OR ALTER VIEW dbo.CustomerOrderSumaryView
as
SELECT
c.CompanyName,
c.CustomerID,
o.OrderID,
o.OrderDate,
p.ProductName,
od.Quantity,
od.UnitPrice,
od.Quantity * od.UnitPrice as TotalPrice,
(SELECT COUNT(*) FROM dbo.Orders as ox
WHERE ox.CustomerID = c.CustomerID) as TotalOrders
FROM dbo.Customers as c
INNER JOIN dbo.Orders as o ON c.CustomerID = o.CustomerID
INNER JOIN dbo.[Order Details] as od ON od.OrderID = o.OrderID
INNER JOIN dbo.Products as p ON p.ProductID = od.ProductID
WHERE YEAR(o.OrderDate) between 1996 and 2025;
go

select top(5) * from
dbo.CustomerOrderSumaryView;
go