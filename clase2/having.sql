Use Northwind_S02_Lab;
go

select CustomerID, COUNT(OrderID) as NroPedidos
FROM dbo.Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) >2
ORDER BY NroPedidos desc;

