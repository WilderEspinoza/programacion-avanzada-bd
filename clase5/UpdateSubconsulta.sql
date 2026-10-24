
select SupplierID, CompanyName
from Suppliers
where CompanyName = 'Exotic Liquids';

select ProductID, ProductName, SupplierID, CategoryID
from Products
where SupplierID IN (
	select SupplierID
	from Suppliers
	where CompanyName = 'Exotic Liquids'
)

BEGIN TRAN;

UPDATE Products
SET CategoryID = 2
where SupplierID IN (
	select SupplierID
	from Suppliers
	where CompanyName = 'Exotic Liquids'
)

select ProductID, ProductName, SupplierID, CategoryID
from Products
where SupplierID IN (
	select SupplierID
	from Suppliers
	where CompanyName = 'Exotic Liquids'
)

rollback;