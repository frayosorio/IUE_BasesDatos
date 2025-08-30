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


--Consultar la cantidad de registros de la tabla PAIS
SELECT COUNT(*)
	FROM Pais

--Contar cuantas regiones hay por pais
SELECT P.Nombre, COUNT(*)
	FROM Pais P
		JOIN Region R ON P.Id=R.IdPais
	GROUP BY P.Nombre

--Averiguar que ciudades tienen 5 clientes o mas
SELECT C.Nombre, COUNT(*) TotalClientes
	FROM Ciudad C
		JOIN Cliente CL ON C.Id=CL.IdCiudad
	GROUP BY C.Nombre
	HAVING COUNT(*) >= 5

--Cuantos municipios hay por cada departamento de Colombia
SELECT R.Nombre, COUNT(*)
	FROM Pais P
		JOIN Region R ON P.Id=R.IdPais
		JOIN Ciudad C ON R.Id=C.IdRegion
	WHERE P.Nombre='Colombia'
	GROUP BY R.Nombre

--Que departamentos DE cOLOMBIA tinen mas de 100 municipios
SELECT R.Nombre, COUNT(*)
	FROM Pais P
		JOIN Region R ON P.Id=R.IdPais
		JOIN Ciudad C ON R.Id=C.IdRegion
	WHERE P.Nombre='Colombia'
	GROUP BY R.Nombre
	HAVING COUNT(*)>=100


