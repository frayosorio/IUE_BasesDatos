SELECT * FROM vGrupo

SELECT * FROM vGrupoPais
	WHERE IdGrupo IN (19, 20, 21, 22, 23, 24)

SELECT *
	FROM vEncuentro
	WHERE IdCampeonato=10

INSERT INTO GrupoPais
	(IdGrupo, IdPais)
	VALUES(20, 1)

DELETE FROM GrupoPais
	WHERE IdGrupo=20 AND IdPais=46

SELECT *
	FROM Fase

