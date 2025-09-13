--Trigger para actualizar existencia despues de una VENTA
CREATE TRIGGER tVentaDetalle_ActualizarExistenciaVenta
ON VentaDetalle
AFTER INSERT
AS BEGIN
	UPDATE T
		SET T.Existencia=T.Existencia - I.Cantidad
		FROM Titulo T
			JOIN Inserted I ON T.Id = I.IdTitulo
END