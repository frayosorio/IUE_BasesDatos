--Crear la base de datos
CREATE DATABASE TiendaVideojuegos

--Ir a la base de datos
USE  TiendaVideojuegos

--Crear la tabla PAIS
CREATE TABLE Pais(
	Id INT IDENTITY NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	CodigoAlfa VARCHAR(5) NOT NULL
)

--Agregar clave primaria de ka tabla PAIS
ALTER TABLE Pais
	ADD CONSTRAINT pk_Pais_Id PRIMARY KEY(Id)

--Crear indices de la tabla PAIS
CREATE UNIQUE INDEX ix_Pais_Nombre
	ON Pais(Nombre)

CREATE UNIQUE INDEX ix_Pais_CodigoAlfa
	ON Pais(CodigoAlfa)

--Crear tabla PLATAFORMA
CREATE TABLE Plataforma(
	Id INT IDENTITY NOT NULL,
	CONSTRAINT pk_Plataforma_Id PRIMARY KEY (Id),
	Nombre VARCHAR(50) NOT NULL,
	Portable BIT NOT NULL,
	Año INT NULL
)