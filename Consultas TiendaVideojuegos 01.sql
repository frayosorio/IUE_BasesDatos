--Listar los registros de la tabla TIPOS DE DOCUMENTO
SELECT * FROM TipoDocumento

--Listar los registros de la tabla Pais
SELECT * FROM Pais

--Listar los registros de la tabla CIUDAD
SELECT * 
	FROM Ciudad
		JOIN Pais ON Ciudad.IdPais=Pais.Id
	WHERE Ciudad.Nombre LIKE '%do'

--Listar los registros de la tabla PLATAFORMA
SELECT * FROM Plataforma
	WHERE Portable = 1

--Listar los registros de la tabla CATEGORIA
SELECT * FROM Categoria

--Listar los registros de la tabla FORMATO
SELECT * FROM Formato

--Listar los registros de la tabla DESARROLLADOR
SELECT D.*, P.Nombre
	FROM Desarrollador D
		JOIN Pais P ON D.IdPais = P.Id
	WHERE P.Nombre = 'JAPÓN'

--Listar los registros de la tabla TITULO
SELECT * FROM Titulo
	JOIN Desarrollador ON Titulo.IdDesarrollador = Desarrollador.Id
	JOIN TituloCategoria ON Titulo.Id = TituloCategoria.IdTitulo
	JOIN Categoria ON TituloCategoria.IdCategoria = Categoria.Id