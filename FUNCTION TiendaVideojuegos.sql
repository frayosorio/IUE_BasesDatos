--Crear una función escalar que permita calcular el total de una venta
CREATE FUNCTION fTotalVenta(@IdVenta INT)
RETURNS DECIMAL(10,2)
AS BEGIN
	DECLARE @Total DECIMAL(10,2)

	SELECT @Total = SUM(Cantidad*Precio-Descuento)
		FROM VentaDetalle
		WHERE IdVenta=@IdVenta

	RETURN @Total
END
GO

--Crear una función de tabla que permita listar los títulos incluidos en una venta
CREATE OR ALTER FUNCTION fTitulosVenta(@IdVenta INT)
RETURNS TABLE
AS
RETURN (
	SELECT T.Nombre Titulo, VD.Cantidad, VD.Precio, VD.Descuento,
			VD.Cantidad*VD.Precio-VD.Descuento TotalCompra
		FROM VentaDetalle VD
			JOIN Titulo T ON VD.IdTitulo=T.Id
		WHERE VD.IdVenta=@IdVenta
)
GO

--Crear una función de tabla Multisentencia para obtener el resumen de una venta
CREATE OR ALTER FUNCTION fResumenVenta(@IdVenta INT)
RETURNS @Resumen TABLE(
	NumeroFactura INT,
	Cliente VARCHAR(150),
	Vendedor VARCHAR(150),
	Fecha DATE,
	Total Decimal(10,2)
)
AS
BEGIN
	DECLARE @Total DECIMAL(10,2)

	SELECT @Total = SUM(Cantidad*Precio-Descuento)
		FROM VentaDetalle
		WHERE IdVenta=@IdVenta

	INSERT INTO @Resumen
		(NumeroFactura, Cliente, Vendedor, Fecha, Total)
		SELECT V.NumeroFactura, C.Nombre+' - '+TDC.Sigla+' '+C.NumeroIdentificacion, E.Nombre+' - '+TDE.Sigla+' '+E.NumeroIdentificacion, V.Fecha, @Total
			FROM Venta V
			JOIN Empleado E ON V.IdEmpleado=E.Id
			JOIN TipoDocumento TDE ON E.IdTipoDocumento=TDE.Id
			JOIN Cliente C ON V.IdCliente=C.Id
			JOIN TipoDocumento TDC ON C.IdTipoDocumento=TDC.Id
		WHERE V.Id=@IdVenta

	RETURN
END
GO