--Ir a la base de datos
USE  TiendaVideojuegos606

--Instrucciones para agregar los TIPOS DE DOCUMENTO
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

--Instrucciones para agregar los PAISES
SET IDENTITY_INSERT Pais ON
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 1,'COLOMBIA', 'CO', 57)
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 2,'ARGENTINA', 'AR', 54)
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 3,'BOLIVIA', 'BO', 591);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 4,'BRASIL', 'BR', 55);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 5,'CANADA', 'CA', 1);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 6,'COSTA RICA', 'CR', 506);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 7,'REPUBLICA DOMINICANA', 'DO', 809);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 8,'CUBA', 'CU', 53);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES( 9,'CHILE', 'CL', 56);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(10,'ECUADOR', 'EC', 593);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(11,'ESTADOS UNIDOS DE AMÉRICA','US', 1);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(12,'GUATEMALA', 'GT', 502);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(13,'HONDURAS', 'HN', 504);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(14,'MÉXICO', 'MX', 52);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(15,'NICARAGUA', 'NI', 505);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(16,'PANAMA', 'PA', 507);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(17,'PARAGUAY', 'PY', 595);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(18,'PERU', 'PE', 51);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(19,'URUGUAY', 'UY', 598);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(20,'VENEZUELA', 'VE', 58);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(21,'ESPAÑA', 'ES', 34);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(22,'JAPÓN', 'JP', 81);
INSERT INTO Pais (Id, Nombre, CodigoAlfa, Indicativo) VALUES(23,'FRANCIA', 'FR', 33);
SET IDENTITY_INSERT Pais OFF

--Instrucciones para agregar las CIUDADES
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Envigado', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Medellín', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Bello', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Itagüí', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Girardota', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Sabaneta', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Copacabana', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('La Estrella', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Barbosa', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Rionegro', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Caldas', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('La Ceja', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('El Retiro', 1)
INSERT INTO Ciudad(Nombre, IdPais) VALUES('Buenos Aires', 2)

--Instrucciones para agregar las PLATAFORMAS
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Atari 2600', 0, 1977)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Nintendo Entertainment System (NES)', 0, 1983)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Sega Master System', 0, 1985)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Game Boy', 1, 1989)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Sega Game Gear', 1, 1990)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Super Nintendo (SNES)', 0, 1990)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('PlayStation', 0, 1994)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('PlayStation 2', 0, 2000)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('PlayStation 3', 0, 2006)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('PlayStation 4', 0, 2013)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('PlayStation 5', 0, 2020)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Nintendo 64', 0, 1996)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Nintendo DS', 1, 2004)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Nintendo Wii', 0, 2006)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Nintendo 3DS', 1, 2011)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Nintendo Switch', 1, 2017)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('PlayStation Portable (PSP)', 1, 2004)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('PlayStation Vita', 1, 2011)
INSERT INTO Plataforma(Nombre, Portable, Año) VALUES('Xbox One', 0, 2013)

--Instrucciones para agregar las CATEGORIAS
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Acción', 'Juegos con ritmo rápido que requieren reflejos y coordinación (ej. Call of Duty, Doom).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Aventura', 'Basados en exploración y narrativa, con resolución de acertijos (ej. The Legend of Zelda).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Plataformas', 'El jugador salta y se desplaza por escenarios (ej. Super Mario Bros, Celeste).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Shooter (FPS/TPS)', 'Disparos en primera o tercera persona (ej. Halo, Fortnite).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Lucha', 'Combates uno contra uno o en equipos (ej. Street Fighter, Tekken).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Carreras', 'Competencias de velocidad en vehículos (ej. Mario Kart, Gran Turismo).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Deportes', 'Simulan deportes reales (ej. FIFA, NBA 2K).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Rol (RPG)', 'Desarrollo de personajes, historia y misiones (ej. Final Fantasy, The Witcher 3).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Acción-RPG', 'Combina combate activo con progresión de RPG (ej. Dark Souls, Diablo).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Estrategia', 'Planificación y toma de decisiones (ej. Age of Empires, StarCraft).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Simulación', 'Recrea actividades reales (ej. The Sims, Flight Simulator).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Sandbox / Mundo abierto', 'Libertad total para explorar y crear (ej. Minecraft, GTA V).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Survival', 'Enfocado en sobrevivir con recursos limitados (ej. Rust, ARK: Survival Evolved).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Terror (Horror)', 'Causar tensión y miedo al jugador (ej. Resident Evil, Silent Hill).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Puzles', 'Resolver acertijos y desafíos lógicos (ej. Tetris, Portal).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Battle Royale', 'Muchos jugadores compiten hasta que queda uno (ej. PUBG, Fortnite).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Musical / Ritmo', 'Seguir patrones musicales (ej. Guitar Hero, Just Dance).')
INSERT INTO Categoria(Nombre, Descripcion) VALUES('Party Games', 'Minijuegos para jugar en grupo (ej. Mario Party, Overcooked).)')

--Instrucciones para agregar los FORMATOS
INSERT INTO Formato(Nombre, Descripcion) VALUES('Cartucho', 'Medio sólido con chip de memoria, usado sobre todo en consolas clásicas y portátiles.')
INSERT INTO Formato(Nombre, Descripcion) VALUES('CD-ROM', 'Disco óptico con hasta 700 MB de capacidad.')
INSERT INTO Formato(Nombre, Descripcion) VALUES('DVD-ROM', 'Disco óptico con hasta 4.7 GB (o 8.5 GB en doble capa).')
INSERT INTO Formato(Nombre, Descripcion) VALUES('Blu-ray', 'Disco óptico de alta capacidad (25–50 GB o más).')
INSERT INTO Formato(Nombre, Descripcion) VALUES('UMD', 'Disco óptico pequeño usado exclusivamente por PSP.')
INSERT INTO Formato(Nombre, Descripcion) VALUES('MiniDVD', 'Variante reducida del DVD (1.4 GB).')
INSERT INTO Formato(Nombre, Descripcion) VALUES('Digital (Descarga)', 'Se descarga desde tiendas en línea, sin soporte físico.')
INSERT INTO Formato(Nombre, Descripcion) VALUES('Streaming', 'Juego ejecutado en servidores remotos y transmitido en tiempo real.')
INSERT INTO Formato(Nombre, Descripcion) VALUES('Arcade PCB', 'Placa de circuito con el juego instalado, usada en máquinas recreativas.')
INSERT INTO Formato(Nombre, Descripcion) VALUES('Tarjeta SD / Memoria flash', 'Medio sólido similar a un cartucho, pero más pequeño y con memoria flash.')
INSERT INTO Formato(Nombre, Descripcion) VALUES('Cassette de cinta', 'Usado en microordenadores antiguos.')

--Instrucciones para agregar DESARROLLADORES
SET IDENTITY_INSERT Desarrollador ON
INSERT INTO Desarrollador(Id, Nombre, IdPais) VALUES(1, 'Capcom Co. Ltd.', 22)

INSERT INTO Desarrollador(Id, Nombre, IdPais) 
	VALUES(2, 'Nintendo Co., Ltd.', 22),
		(3, 'Konami Digital Entertainment', 22),
		(4, 'Square Enix Holdings Co., Ltd.', 22),
		(5, 'Sega Corporation', 22),
		(6, 'Bandai Namco Entertainment Inc.', 22),
		(7, 'FromSoftware, Inc.', 22),
		(8, 'Rockstar Games', 11),
		(9, 'Electronic Arts (EA)', 11),
		(10, 'Blizzard Entertainment', 11),
		(11, 'Ubisoft Entertainment', 23)

SET IDENTITY_INSERT Desarrollador OFF

--Instrucciones para agregar TITULOS DE VIDEOJUEGOS
INSERT INTO Titulo(Nombre, Año, Version, PrecioActual, IdDesarrollador) 
	VALUES('Mega Man', 1987, '1', 40000, 1)
INSERT INTO Titulo(Nombre, Año, Version, PrecioActual, IdDesarrollador) 
	VALUES('Super Mario Bros.', 1985, '1', 40000, 2)

--Instrucciones para agregar CATEGORIA de los TITULOS DE VIDEOJUEGOS
INSERT INTO TituloCategoria(IdTitulo, IdCategoria) VALUES(2, 1)