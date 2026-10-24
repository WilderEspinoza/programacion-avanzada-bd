SELECT 
MIN(UnitPrice) as minimo,
MAX(UnitPrice) as maximo
FROM Products
WHERE SupplierID = 2;


SELECT ProductID,
ProductName,
UnitPrice,
SupplierID
FROM Products
WHERE UnitPrice > ALL(
	SELECT UnitPrice FROM Products WHERE SupplierID = 2
)
AND UnitPrice<>2;