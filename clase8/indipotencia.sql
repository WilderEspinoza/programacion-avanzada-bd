IF NOT EXISTS(SELECT 1 FROM dbo.PedidosPractica where PedidoID=9000009)
BEGIN
	INSERT INTO dbo.PedidosPractica
	(PedidoID, ClienteID, FechaPedido, CostoEnvio, Empresa, Pais)
	VALUES
	(9000009, 'PRD01', '20261001',20, 'Empresa de prueba', 'Canada');

END;

UPDATE dbo.PedidosPractica
SET CostoEnvio = 30
where PedidoID = 9000009
and CostoEnvio < 30;

select @@ROWCOUNT AS FilasAfectadas;

select * from dbo.PedidosPractica;