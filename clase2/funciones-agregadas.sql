Use Northwind_S02_Lab;
go

select
avg(UnitPrice) as PrecioPromedio,
max(UnitPrice) as PrecioMayor,
min(UnitPrice) as PrecioMenor,
sum(UnitsInStock) as Stocktotal,
count (*) as NumeroProductos
from dbo.Products
where CategoryID=2

--Obtener precio promedio, precio minimo, cantidad total
--de producto con categoria 4

SELECT 
AVG(UnitPrice) AS PrecioPromedio, MIN(UnitPrice) AS PrecioMinimo, 
COUNT(*) AS CantidadProductos
 FROM dbo.Products 
WHERE CategoryID = 4; 
GO