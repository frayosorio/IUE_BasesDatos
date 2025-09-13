CREATE TRIGGER tActualizarCapitalRegion
ON Ciudad
FOR INSERT, UPDATE
AS BEGIN
	--Validar que se esta actualizando una capital de region
	IF EXISTS(SELECT * FROM Inserted WHERE CapitalRegion=1)
	BEGIN
		-- Verificar si la inserción o actualización causaría que haya más de una capital de región
		IF EXISTS(SELECT 1
					FROM Inserted I
						JOIN Ciudad C ON I.IdRegion=C.IdRegion
					WHERE I.CapitalRegion=1 AND C.CapitalRegion=1 AND C.Id<>I.Id
					GROUP BY I.IdRegion
					HAVING COUNT(*) > 1)
		BEGIN
			RAISERROR('No se acepta más de una capital por región', 16, 1)
			ROLLBACK TRANSACTION
		END

		-- Si se está estableciendo una ciudad como capital, asegurarse de que las demás no lo sean
		UPDATE Ciudad
			SET CapitalRegion=0
			FROM Ciudad C
				JOIN Inserted I ON C.IdRegion=I.IdRegion
					AND C.Id<>I.Id
				
		
	END
END
GO
