use Northwind_S02_Lab;
go

select CustomerID,CompanyName,ContactName, Country
from Customers
where CustomerID ='LAC01'

BEGIN TRAN;

INSERT INTO Customers(CustomerID, CompanyName, ContactName, Country)
VALUES('LAC01','Lideratec Academy','Wilder','Perú')

select CustomerID,CompanyName,ContactName,Country
from Customers
where CustomerID ='LAC01'

rollback;

select CustomerID,CompanyName,ContactName,Country
from Customers
where CustomerID ='LAC01'

/* Insertar proveedor que no existe, usar la tabla Suppliers*/
