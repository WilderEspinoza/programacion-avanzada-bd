/*
Mostrar clientes cuyo columna city sea igual obtenida para ALFKI
*/

SELECT City
FROM Customers
WHERE CustomerID = 'ALFKI';

SELECT 
CustomerID,
CompanyName,
City
FROM Customers
WHERE City = (
SELECT City
FROM Customers
WHERE CustomerID = 'ALFKI'
)
ORDER BY CompanyName