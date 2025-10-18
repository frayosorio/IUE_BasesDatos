--Se requiere un procedimiento que, dada la conformación de equipos de un grupo de un campeonato, 
--generar los registros correspondientes a los encuentros entre los equipos, 
--que corresponden a una serie todos contra todos.


CREATE OR ALTER PROCEDURE spGenerarEncuentrosGrupo
	@IdGrupo INT,
	@IdEstadio INT
AS BEGIN
	-- Validar que existan países en el grupo
	IF NOT EXISTS (SELECT 1 FROM GrupoPais WHERE IdGrupo = @IdGrupo)
    BEGIN
        RAISERROR('El grupo no tiene países asignados.', 16, 1);
        RETURN;
    END;

	DECLARE @IdCampeonato INT;
	-- Obtener el campeonato asociado al grupo
    SELECT @IdCampeonato = IdCampeonato
		FROM Grupo
		WHERE Id = @IdGrupo;


	-- CTE para listar los países del grupo
    WITH PaisesGrupo AS (
        SELECT IdPais
        FROM GrupoPais
        WHERE IdGrupo = @IdGrupo
    ),
	-- CTE para generar combinaciones de todos contra todos
	Combinaciones AS(
		SELECT P1.IdPais AS IdPais1,
			P2.IdPais AS IdPais2
			FROM PaisesGrupo P1
				CROSS JOIN PaisesGrupo P2
			WHERE P1.IdPais< P2.IdPais
	)
	-- Insertar losencuentros que no existen
	INSERT INTO Encuentro
		(IdPais1, IdPais2, IdFase, IdCampeonato, IdEstadio)
		SELECT C.IdPais1, C.IdPais2, 1, @IdCampeonato, @IdEstadio
			FROM Combinaciones C

	PRINT 'Encuentros generados correctamente para el grupo ' + CAST(@IdGrupo AS VARCHAR);
END