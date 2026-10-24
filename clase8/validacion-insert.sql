SELECT COUNT_BIG(*) AS TotalImportado,
COUNT(DISTINCT PedidoID) as  IdsDiferentes,
MIN(FechaPedido) as PrimeraFecha,
MAX(FechaPedido) as UltimaFecha
from dbo.PedidosPractica;

select Pais, COUNT_BIG(*) AS Pedidos,
CAST(SUM(CostoEnvio) as decimal(18,2)) as CostoEnvio
from dbo.PedidosPractica
group by Pais
Order by Pedidos desc;