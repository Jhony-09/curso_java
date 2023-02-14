#Se crea la DB viajes
CREATE SCHEMA `viajes` ;


---------------------------- CREAMOS LA TABLA TURISTA LA CUAL ESTARAN LOS DATOS DE CADA VISITANTE -----------------------
CREATE TABLE `turista` (
  `id_turista` int NOT NULL,
  `pais` varchar(100) NOT NULL,
  `sexo` char(1) NOT NULL,
  `edad` int NOT NULL,
  PRIMARY KEY (`id_turista`)
)

 -------------- Se crea la tabla recorrido, TOMAREMOS LOS DATOS DEL LUGAR QUE VISITARAN Y DE LA ACTIVIDAD QUE REALIZARAN------------------------
CREATE TABLE `recorrido` (
  `id_recorrido` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_recorrido`),
  UNIQUE KEY `nombre` (`nombre`)
)

-------------------- CREAMOS LA TABLA IDIOMA PARA IDENTIFICAR EL IDIOMA QUE HABLA CADA TURISTA------------------

CREATE TABLE `idioma` (
  `id_idioma` int NOT NULL AUTO_INCREMENT,
  `idioma` varchar(50) NOT NULL,
  PRIMARY KEY (`id_idioma`)
)



-------------------- CREAMOS LA TABLA BITACORA PARA VISUALIZAR LA ACTIVDAD REALIZADA POR EL TURISTA-------------

CREATE TABLE `bitacora` (
  `id_bitacora` int NOT NULL,
  `id_turista` int NOT NULL,
  `id_recorrido` int NOT NULL,
  `fecha` date NOT NULL,
  KEY `id_bitacora` (`id_bitacora`),
  KEY `id_recorrido` (`id_recorrido`),
  CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`id_bitacora`) REFERENCES `turista` (`id_turista`),
  CONSTRAINT `bitacora_ibfk_2` FOREIGN KEY (`id_recorrido`) REFERENCES `recorrido` (`id_recorrido`)
)

------------------------------- INGRESAMOS DATOS A LA LATABA 'turista' ---------------------------------

INSERT INTO Turista (id_Turista, pais, sexo, edad, nombre) VALUES(1,'Guatemala', 'M', '19', 'Marta');
INSERT INTO Turista (id_Turista, pais, sexo, edad, nombre) VALUES(2, 'Paris', 'F', '25', 'Alejandra');
INSERT INTO turista (id_turista, pais, sexo, edad, nombre) VALUES (3, 'EE.UU', 'M', '30', 'Jhonn');

-------------------------------- INGRESAMOS DATOS A LA TABLA RECORRIDO ------------------------------

INSERT INTO recorrido (id_recorrido, nombre, descripcion) VALUES (1, 'Nadar', 'Balneario las Islas');
INSERT INTO recorrido (id_recorrido, nombre, descripcion) VALUES (2, 'Caminata', 'Escalamiento del volcan de pacaya');
INSERT INTO recorrido (id_recorrido, nombre, descripcion) VALUES (3, 'Visita', 'Ciudad de la Antigua Guatemala');

----------------------------- ACTUALIZAMOS DATOS E IDENTIFICAMOS EL IDIOMA DE CADA TURISTA SEGUN SU NACIONALIDAD ---------------

UPDATE turista SET idioma = '2' WHERE id_turista = '1';
UPDATE turista SET idioma = '3' WHERE id_turista = '2';
UPDATE turista SET idioma = '1'  WHERE id_turista ='3';





