CREATE FUNCTION fTablaPosiciones(@idGrupo int)
RETURNS @TablaPosiciones TABLE(
	IdPais int,
	Pais varchar(100),
	PJ int,
	PG int,
	PE int,
	PP int,
	GF int,
	GC int,
	Puntos int
)
AS
BEGIN
	INSERT INTO @TablaPosiciones
		SELECT P.Id, P.Pais, COUNT(*), 
			SUM(CASE WHEN (P.Id=E.IdPais1 AND Goles1>Goles2) OR (P.Id=E.IdPais2 AND Goles2>Goles1)
							THEN 1
							ELSE 0
							END), 
			SUM(CASE WHEN (P.Id=E.IdPais1 AND Goles1=Goles2) OR (P.Id=E.IdPais2 AND Goles2=Goles1)
							THEN 1
							ELSE 0
							END), 
			SUM(CASE WHEN (P.Id=E.IdPais1 AND Goles1<Goles2) OR (P.Id=E.IdPais2 AND Goles2<Goles1)
							THEN 1
							ELSE 0
							END), 
			SUM(CASE WHEN P.Id=E.IdPais1 
							THEN Goles1
							ELSE Goles2
							END),
			SUM(CASE WHEN P.Id=E.IdPais1 
							THEN Goles2
							ELSE Goles1
							END),
			SUM(CASE WHEN P.Id=E.IdPais1 AND Goles1>Goles2 THEN 3
					WHEN P.Id=E.IdPais2 AND Goles2>Goles1 THEN 3
					WHEN Goles2=Goles1 THEN 1
					ELSE 0
					END)
			FROM GrupoPais GP
				JOIN Pais P ON GP.IdPais=P.Id
				JOIN Encuentro E ON (P.Id=E.IdPais1 OR P.Id=E.IdPais2)
			WHERE GP.IdGrupo=@idGrupo
				AND E.IdFase=1
			GROUP BY P.Id, P.Pais

	RETURN
END
