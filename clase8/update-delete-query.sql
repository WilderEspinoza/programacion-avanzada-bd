IF NOT EXISTS (select 1 from dbo.PedidosPractica where PedidoID= 9000003)
insert into dbo.PedidosPractica
(PedidoID, ClienteID, FechaPedido, CostoEnvio, Empresa, Pais)
values
(9000003, 'PRB01','20261001', 20,'Empresa de prueba', 'Perú');

update dbo.PedidosPractica
set CostoEnvio = 30
where PedidoID = 9000003;
select @@ROWCOUNT AS FilasActualizadas;

delete from dbo.PedidosPractica
where PedidoID = 9000003;
select @@ROWCOUNT AS FilasEliminada;

select * from dbo.PedidosPractica;