IF NOT EXISTS (SELECT 1 FROM dbo.PedidosPractica)
BEGIN
	INSERT INTO dbo.PedidosPractica
	(PedidoID, ClienteID, FechaPedido, CostoEnvio, Empresa, Pais)
	SELECT TOP(12)
	o.OrderID, o.CustomerID, CAST(o.OrderDate as DATE), CAST(COALESCE(o.Freight,0) as DECIMAL(12,2)),
	c.CompanyName, c.Country
	FROM
	Northwind_S02_Lab.dbo.Orders as o
	inner join Northwind_S02_Lab.dbo.Customers as c
	on c.CustomerID = o.CustomerID
	WHERE c.Country = 'Germany' 
	order by o.OrderID;

END;

