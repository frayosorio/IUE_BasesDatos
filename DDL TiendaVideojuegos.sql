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
--Agregar campo INDICATIVO a la tabla  PAIS
ALTER TABLE Pais
	ADD Indicativo INT 

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

--Crear indice de la tabla PLATAFORMA
CREATE UNIQUE INDEX ix_Plataforma_Nombre
	ON Plataforma(Nombre)

--Crear tabla CATEGORIA
CREATE TABLE Categoria(
	Id INT IDENTITY NOT NULL,
	CONSTRAINT pk_Categoria_Id PRIMARY KEY (Id),
	Nombre VARCHAR(50) NOT NULL
)

--Crear indice de la tabla CATEGORIA
CREATE UNIQUE INDEX ix_Categoria_Nombre
	ON Categoria(Nombre)

--Crear tabla FORMATO
CREATE TABLE Formato(
	Id INT IDENTITY NOT NULL,
	CONSTRAINT pk_Formato_Id PRIMARY KEY (Id),
	Nombre VARCHAR(50) NOT NULL
)

--Crear indice de la tabla FORMATO
CREATE UNIQUE INDEX ix_Formato_Nombre
	ON Formato(Nombre)

--Crear tabla DESARROLLADOR
CREATE TABLE Desarrollador(
	Id INT IDENTITY NOT NULL,
	CONSTRAINT pk_Desarrolador_Id PRIMARY KEY (Id),
	Nombre VARCHAR(100) NOT NULL,
	IdPais INT NOT NULL,
	CONSTRAINT fk_Desarrollador_IdPais FOREIGN KEY (IdPais) REFERENCES Pais(Id)
)

--Crear indice de la tabla DESARROLLADOR
CREATE UNIQUE INDEX ix_Desarrollador_Nombre
	ON Desarrollador(Nombre)

--Crear tabla CIUDAD
CREATE TABLE Ciudad(
	Id INT IDENTITY NOT NULL,
	CONSTRAINT pk_Ciudad_Id PRIMARY KEY (Id),
	Nombre VARCHAR(100) NOT NULL,
	IdPais INT NOT NULL,
	CONSTRAINT fk_Ciudad_IdPais FOREIGN KEY (IdPais) REFERENCES Pais(Id)
)

--Crear indice de la tabla CIUDAD
CREATE UNIQUE INDEX ix_Ciudad_Nombre
	ON Ciudad(IdPais, Nombre)

--Crear tabla TITULO
CREATE TABLE Titulo(
	Id INT IDENTITY NOT NULL,
	CONSTRAINT pk_Titulo_Id PRIMARY KEY (Id),
	Nombre VARCHAR(100) NOT NULL,
	Año INT NULL,
	Version VARCHAR(20) NOT NULL DEFAULT '1',
	PrecioActual FLOAT NOT NULL DEFAULT 0,
	IdDesarrollador INT NOT NULL,
	CONSTRAINT fk_Titulo_IdDesarrollador FOREIGN KEY (IdDesarrollador) REFERENCES Desarrollador(Id)
)

--Crear indice de la tabla CIUDAD
CREATE UNIQUE INDEX ix_Ciudad_Nombre
	ON Ciudad(IdPais, Nombre)
