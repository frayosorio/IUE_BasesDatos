--Listar Clientes que han comprado
SELECT DISTINCT C.Id, C.Nombre
	FROM Cliente C
		JOIN Venta V ON C.Id=V.IdCliente

EXEC spHistorialComprasCliente 31