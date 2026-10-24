/*
Comparar el precio de cada producto con varios precios
pertenecientes al proveedor SupperId=2
El objetivo es comprender ANY y comprobar que SOME expresa misma condicion
*/

SELECT
productName,
UnitPrice
FROM Products
WHERE SupplierID = 2
ORDER BY UnitPrice;


SELECT ProductID,
ProductName,
UnitPrice,
SupplierID
FROM Products
WHERE UnitPrice > ANY(
	SELECT
	UnitPrice
	FROM Products
	WHERE SupplierID = 2
)
AND SupplierID<>2;