DECLARE @categoria nvarchar(15) = 'Beverages';

SELECT
p.ProductName,
c.CategoryName
FROM Products as p
LEFT JOIN Categories as c
ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = @categoria
OR (c.CategoryName IS NULL AND @categoria is null)