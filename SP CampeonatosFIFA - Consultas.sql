SELECT * FROM vgrupos
	WHERE Campeonato LIKE '%2024%'

SELECT * FROM vEncuentros
	WHERE Campeonato LIKE '%2024%'

SELECT * FROM vEstadios
	WHERE Pais LIKE '%Colombia%'

EXEC spGenerarEncuentrosGrupo 26, 63