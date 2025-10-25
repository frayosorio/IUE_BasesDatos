CREATE OR ALTER VIEW vVentas
	AS SELECT VD.IdVenta, V.NumeroFactura, V.Fecha, V.FechaEntrega,
			VD.IdTitulo, T.Nombre Titulo, VD.Cantidad, VD.Precio, VD.Descuento,
			VD.Cantidad*VD.Precio-VD.Descuento TotalCompra,
			V.IdEstado, EV.Nombre Estado,
			V.IdEmpleado IdVendedor, E.Nombre Vendedor, TDE.Sigla+' '+E.NumeroIdentificacion IdentificacionVendedor,
			V.IdCliente, C.Nombre Cliente, TDC.Sigla+' '+C.NumeroIdentificacion IdentificacionCliente
		FROM Venta V
			JOIN VentaDetalle VD ON V.Id=VD.IdVenta
			JOIN Titulo T ON VD.IdTitulo=T.Id
			JOIN Empleado E ON V.IdEmpleado=E.Id
			JOIN TipoDocumento TDE ON E.IdTipoDocumento=TDE.Id
			JOIN EstadoVenta EV ON V.IdEstado=EV.Id
			JOIN Cliente C ON V.IdCliente=C.Id
			JOIN TipoDocumento TDC ON C.IdTipoDocumento=TDC.Id
GO