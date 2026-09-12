Use Northwind_S02_Lab;
go


select CustomerID, COUNT(OrderID) AS NroPedidos
from dbo.Orders
GROUP BY CustomerID
ORDER BY NroPedidos desc

select  CategoryID, AVG(UnitPrice) as PrecioPromedio
from dbo.Products
group by CategoryID
order by CategoryID;


