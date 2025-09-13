--Agregar campo para registrar las existencias para las ventas
ALTER TABLE Titulo
    ADD Existencia INT NOT NULL DEFAULT 0;

--Actualizar el campo EXISTENCIA en un valor inicial
UPDATE Titulo
	SET Existencia = 10

--Consultar EXISTENCIA
SELECT Id, Nombre, Existencia
	FROM Titulo

--Insertar el DETALLE de una VENTA
INSERT INTO VentaDetalle (IdVenta, IdTitulo, Cantidad, Precio, Descuento) VALUES(1, 1, 2, 75000, 0);

INSERT INTO VentaDetalle (IdVenta, IdTitulo, Cantidad, Precio, Descuento) VALUES(2, 1, 3, 75000, 0);

INSERT INTO VentaDetalle (IdVenta, IdTitulo, Cantidad, Precio, Descuento) 
	VALUES(3, 1, 1, 75000, 0),
	(3, 2, 3, 100000, 0);

