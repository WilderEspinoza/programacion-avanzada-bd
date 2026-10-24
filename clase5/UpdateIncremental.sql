select top (5) ProductID, ProductName, UnitPrice as PrecioAntiguo,
UnitPrice * 1.10 as PrecioEsperado
from Products
where CategoryID = 2
ORDER BY ProductID;

begin tran;
UPDATE Products
SET UnitPrice=UnitPrice * 1.10
where CategoryID = 2

select top (5) ProductID, ProductName, UnitPrice 
from Products
where CategoryID = 2
ORDER BY ProductID;
ROLLBACK;

/* ACTUALIZAR EL PRECIO DE LOS PRODUCTOS CATEGORIA 1 EN UN 30%*/