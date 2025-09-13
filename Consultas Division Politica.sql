SELECT *
	FROM vwCiudades
	WHERE CapitalRegion = 1
		AND Pais='COLOMBIA'

SELECT *
	FROM vwCiudades
	WHERE Region = 'Antioquia'

UPDATE Ciudad
	SET CapitalRegion=1
	WHERE Id=72