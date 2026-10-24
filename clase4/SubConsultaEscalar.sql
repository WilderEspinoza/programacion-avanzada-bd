USE Northwind_S02_Lab;
GO


/*
--cual es el promedio de todos los producto
-- cuantas unidades se han vendido de cada producto
--que productos tienen un precio mayor a promedio
--como unimos el problema con sus cantidades
*/

/*productos
productName
UnitPrice
ProductID

Detalle de ordenes
ProductID
Quantity*/

SELECT avg(UnitPrice) AS PrecioPromedio
FROM Products;

SELECT ProductID,
SUM(Quantity) as UnidadesVendidas
FROM [Order Details]
GROUP BY ProductID



SELECT p.ProductName,
	   p.UnitPrice,
	   od.UnidadesVendidas
FROM Products as p
JOIN(
	SELECT ProductID,
	SUM(Quantity) as UnidadesVendidas
	FROM [Order Details]
	GROUP BY ProductID
) as od
ON od.ProductID = p.ProductID
WHERE
	P.UnitPrice > (
		SELECT avg(UnitPrice) AS PrecioPromedio
		FROM Products
	)
ORDER BY p.UnitPrice DESC;

/*Obtener el ProductName y UnitPrice de los productos cuyo stock sean mayor a 20
y cuyo precio sea menor que el promedio de todos los productos
*/

/*
que producto son stock es mayo a 20
que producto su precio es menor al promedio
*/

SELECT
p.ProductName,
p.UnitPrice
FROM Products as p
WHERE p.UnitsInStock > 20
AND p.UnitPrice < (
	SELECT avg(UnitPrice) AS PrecioPromedio
	FROM Products
)
ORDER BY p.UnitPrice DESC;