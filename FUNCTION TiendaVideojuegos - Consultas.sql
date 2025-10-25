SELECT *
	FROM vVentas
	WHERE IdVenta=1

SELECT NumeroFactura, Fecha, dbo.fTotalVenta(Id)
	FROM Venta
	WHERE Id=1


SELECT *
	FROM fTitulosVenta(1)

SELECT V.NumeroFactura, V.Fecha, C.Nombre Cliente, TV.*
	FROM Venta V
		JOIN Cliente C ON V.IdCliente=C.Id
		CROSS APPLY dbo.fTitulosVenta(V.Id) TV
	WHERE C.Id=52


SELECT *
	FROM fResumenVenta(29)