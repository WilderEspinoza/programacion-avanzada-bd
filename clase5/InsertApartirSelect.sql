
select CustomerID, CompanyName
from Customers
where CustomerID ='ALFKI'
BEGIN TRAN

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Freight)
SELECT 10280, CustomerID, GETDATE(), 25
from Customers
where CustomerID ='ALFKI'

SELECT TOP (1) OrderID, CustomerID, OrderDate
from Orders
where CustomerID='ALFKI'
ORDER BY OrderID desc;

ROLLBACK;