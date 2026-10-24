use Northwind_S02_Lab;
go

SELECT OBJECT_ID('dbo.HappybirthadayEmployeeView', 'V') as ViewIdBefore;
go

DROP VIEW IF EXISTS dbo.HappybirthadayEmployeeView;
GO


SELECT OBJECT_ID('dbo.HappybirthadayEmployeeView', 'V') as ViewIdAfter;
go
