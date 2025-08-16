--Ir a la base de datos
USE  TiendaVideojuegos606

--Instrucciones para agregar los tipos de documento
SET IDENTITY_INSERT TipoDocumento ON
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(11, 'Registro civil', 'RC');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(12, 'Tarjeta de identidad', 'TI');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(13, 'Cédula de ciudadanía', 'CC');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(21, 'Tarjeta de extranjería', 'TE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(22, 'Cédula de extranjería', 'CE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(31, 'Número de Identificación Tributaria', 'NIT ');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(41, 'Pasaporte', 'PS');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(42, 'Documento de Identificación Extranjero', 'NIE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(50, 'Número de Identificación Tributaria Otro País', 'NITE');
INSERT INTO TipoDocumento(Id, Nombre, Sigla) VALUES(91, 'Número Unico de Identificación Personal (Adquiriente)', 'NIUP');
SET IDENTITY_INSERT TipoDocumento OFF