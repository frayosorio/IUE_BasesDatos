--Ir a la base de datos
USE  TiendaVideojuegos606

--Instrucciones para agregar los tipos de documento
SET IDENTITY_INSERT TipoDocumento ON
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(11, 'Registro civil', 'RC');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(12, 'Tarjeta de identidad', 'TI');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(13, 'C�dula de ciudadan�a', 'CC');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(21, 'Tarjeta de extranjer�a', 'TE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(22, 'C�dula de extranjer�a', 'CE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(31, 'N�mero de Identificaci�n Tributaria', 'NIT ');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(41, 'Pasaporte', 'PS');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(42, 'Documento de Identificaci�n Extranjero', 'NIE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(50, 'N�mero de Identificaci�n Tributaria Otro Pa�s', 'NITE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(91, 'N�mero Unico de Identificaci�n Personal (Adquiriente)', 'NIUP');
SET IDENTITY_INSERT TipoDocumento OFF