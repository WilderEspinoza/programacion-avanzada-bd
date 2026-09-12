Use Northwind_S02_Lab;
go

SELECT ProductID, ProductName, UnitsInStock
from dbo.Products
WHERE UnitsInStock BETWEEN 10 AND 20
ORDER BY ProductName

SELECT ProductID, ProductName, CategoryID
FROM dbo.Products
WHERE CategoryID IN (1, 4,6)
ORDER BY ProductName

SELECT ProductID, ProductName, UnitPrice, CategoryID 
FROM dbo.Products
 WHERE UnitPrice BETWEEN 10 AND 30 
 AND 
 CategoryID IN (2, 7, 8);
 GO



SELECT *
FROM products
WHERE unitsinstock BETWEEN 10 AND 30
AND categoryid IN (2, 7, 8)