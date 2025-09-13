USE CampeonatosFIFA
GO

CREATE VIEW vGrupo
AS
	SELECT G.Id, G.Grupo, G.IdCampeonato, C.Campeonato
		FROM Grupo G
			JOIN Campeonato C ON G.IdCampeonato=C.Id;
GO

CREATE VIEW vGrupoPais
AS
    SELECT GP.IdGrupo, G.Grupo, GP.IdPais, P.Pais
        FROM GrupoPais GP
            JOIN Pais P ON GP.IdPais=P.Id
			JOIN Grupo G ON GP.IdGrupo=G.Id
GO

CREATE VIEW vEncuentro
AS
	SELECT E.Fecha, E.IdPais1, P1.Pais Pais1, E.Goles1, E.IdPais2, P2.Pais Pais2, E.Goles2,
        C.Campeonato, E.IdCampeonato, E.IdFase, F.Fase, ES.Estadio, E.IdEStadio
		FROM Encuentro E
			JOIN Pais P1 ON E.IdPais1=P1.Id
			JOIN Pais P2 ON E.IdPais2=P2.Id
			JOIN Campeonato C ON E.IdCampeonato=C.Id
            JOIN Estadio ES ON E.IdEstadio=ES.Id
            JOIN Fase F ON E.IdFase=F.Id;
GO	