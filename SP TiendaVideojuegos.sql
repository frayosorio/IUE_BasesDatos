--SP para consultar el historial de compras de un cliente
ALTER PROCEDURE spHistorialComprasCliente
	@IdCliente int
AS BEGIN
	SELECT V.NumeroFactura, V.Fecha, V.FechaEntrega,
		T.Nombre Titulo, VD.Cantidad, VD.Precio, VD.Descuento,
		VD.Cantidad*VD.Precio-VD.Descuento TotalCompra,
		EV.Nombre Estado,
		E.Nombre Vendedor
		FROM Venta V
			JOIN VentaDetalle VD ON V.Id=VD.IdVenta
			JOIN Titulo T ON VD.IdTitulo=T.Id
			JOIN Empleado E ON V.IdEmpleado=E.Id
			JOIN EstadoVenta EV ON V.IdEstado=EV.Id
		WHERE V.IdCliente=@IdCliente
END