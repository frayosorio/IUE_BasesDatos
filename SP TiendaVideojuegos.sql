--SP para consultar el historial de compras de un cliente
CREATE OR ALTER PROCEDURE spHistorialComprasCliente
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
GO

-- Crear un reporte detallado de las ventas por cliente,
-- mostrando títulos y totales acumulados tanto por factura como por cliente
CREATE OR ALTER PROCEDURE spReporteVentasClientes
	@IdCliente INT = NULL -- Si hay cliente, se filtran los datos solo de ese cliente, en caso contrario, se obtienen todos
AS BEGIN
	-- CTE (Common Table Expression: Tabla Temporal en Memoria) para obtener el detalle de cada venta
	WITH cteVentaDetalle AS (
		SELECT VD.IdVenta, V.NumeroFactura, V.Fecha, V.FechaEntrega,
			T.Nombre Titulo, VD.Cantidad, VD.Precio, VD.Descuento,
			VD.Cantidad*VD.Precio-VD.Descuento TotalCompra,
			EV.Nombre Estado,
			E.Nombre Vendedor,
			V.IdCliente, C.Nombre Cliente, TD.Sigla+' '+C.NumeroIdentificacion IdentificacionCliente
			FROM Venta V
				JOIN VentaDetalle VD ON V.Id=VD.IdVenta
				JOIN Titulo T ON VD.IdTitulo=T.Id
				JOIN Empleado E ON V.IdEmpleado=E.Id
				JOIN EstadoVenta EV ON V.IdEstado=EV.Id
				JOIN Cliente C ON V.IdCliente=C.Id
				JOIN TipoDocumento TD ON C.IdTipoDocumento=TD.Id
			WHERE @IdCliente IS NULL OR V.IdCliente=@IdCliente
		),
		-- CTE para acumular por cliente
		cteTotalesCliente AS (
			SELECT IdCliente, SUM(TotalCompra) ValorTotalComprado, SUM(Cantidad) TotalUnidadesCompradas
				FROM cteVentaDetalle
				GROUP BY IdCliente
		),
		-- CTE para acumular por venta
		cteTotalesVenta AS (
			SELECT IdVenta, SUM(TotalCompra) ValorTotalVenta, SUM(Cantidad) TotalUnidadesVenta
				FROM cteVentaDetalle
				GROUP BY IdVenta
		)
		SELECT VD.NumeroFactura, VD.Fecha, VD.Cliente, VD.IdentificacionCliente, VD.Vendedor, VD.Estado,
			VD.Titulo, VD.Cantidad, VD.Precio, VD.Descuento, VD.TotalCompra,
			TV.TotalUnidadesVenta, TV.ValorTotalVenta,
			TC.TotalUnidadesCompradas, TC.ValorTotalComprado
			FROM cteVentaDetalle VD
				JOIN cteTotalesCliente TC ON VD.IdCliente=TC.IdCliente
				JOIN cteTotalesVenta TV ON VD.IdVenta=TV.IdVenta
			ORDER BY VD.Cliente, VD.NumeroFactura
END
GO

-- Crear un ranking de los clientes que mas han gastado en videojuegos
CREATE OR ALTER PROCEDURE spTopClientes
	@Top INT = 5
AS
BEGIN
	--CTE para calcular total gastado por el cliente
	WITH cteTotalCliente AS (
		SELECT V.IdCliente, SUM(VD.Cantidad*VD.Precio-VD.Descuento) TotalGastado
			FROM Venta V
				JOIN VentaDetalle VD ON V.Id=VD.IdVenta
			GROUP BY V.IdCliente
		),
		--CTE con ranking de clientes según el gasto
		cteRanking AS (
		SELECT IdCliente, TotalGastado, RANK() OVER(ORDER BY TotalGastado DESC) Posicion
			FROM cteTotalCliente
		)
		SELECT R.Posicion,
			C.Nombre Cliente, TD.Sigla+' '+C.NumeroIdentificacion Identificacion,
			R.TotalGastado
			FROM cteRanking R
				JOIN Cliente C ON C.Id=R.IdCliente
				JOIN TipoDocumento TD ON C.IdTipoDocumento=TD.Id
			WHERE R.Posicion<=@Top
END
