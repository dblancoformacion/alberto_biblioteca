﻿-- Script was generated by Devart dbForge Studio for MySQL, Version 6.0.128.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 29/08/2018 9:18:43
-- Server version: 5.5.5-10.1.32-MariaDB
-- Client version: 4.1

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

-- 
-- Set default database
--
USE alberto_biblioteca;

--
-- Definition for table autores
--
DROP TABLE IF EXISTS autores;
CREATE TABLE autores (
  id_autor INT(11) NOT NULL AUTO_INCREMENT,
  autor VARCHAR(255) NOT NULL,
  nacionalidad VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id_autor)
)
ENGINE = INNODB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 2048
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table colecciones
--
DROP TABLE IF EXISTS colecciones;
CREATE TABLE colecciones (
  id_coleccion INT(11) NOT NULL AUTO_INCREMENT,
  coleccion VARCHAR(255) DEFAULT NULL,
  capitulos INT(11) DEFAULT NULL,
  leidos INT(11) DEFAULT NULL,
  PRIMARY KEY (id_coleccion)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table editoriales
--
DROP TABLE IF EXISTS editoriales;
CREATE TABLE editoriales (
  id_editorial INT(11) NOT NULL AUTO_INCREMENT,
  editorial VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_editorial)
)
ENGINE = INNODB
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 2730
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table tematicas
--
DROP TABLE IF EXISTS tematicas;
CREATE TABLE tematicas (
  id_tematica INT(11) NOT NULL AUTO_INCREMENT,
  tematica VARCHAR(255) DEFAULT NULL,
  id_padre INT(11) DEFAULT NULL,
  PRIMARY KEY (id_tematica),
  INDEX id_padre (id_padre),
  CONSTRAINT tematicas_ibfk_1 FOREIGN KEY (id_padre)
    REFERENCES tematicas(id_tematica) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 4096
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table libros
--
DROP TABLE IF EXISTS libros;
CREATE TABLE libros (
  id_libro INT(11) NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(255) NOT NULL,
  anio VARCHAR(4) DEFAULT NULL,
  ISBN VARCHAR(255) DEFAULT NULL,
  leido TINYINT(1) DEFAULT NULL,
  id_coleccion INT(11) DEFAULT NULL,
  id_editorial INT(11) DEFAULT NULL,
  PRIMARY KEY (id_libro),
  INDEX id_coleccion (id_coleccion),
  INDEX id_editorial (id_editorial),
  CONSTRAINT libros_ibfk_1 FOREIGN KEY (id_editorial)
    REFERENCES editoriales(id_editorial) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT libros_ibfk_2 FOREIGN KEY (id_coleccion)
    REFERENCES colecciones(id_coleccion) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 2048
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table escriben
--
DROP TABLE IF EXISTS escriben;
CREATE TABLE escriben (
  id_autor INT(11) NOT NULL,
  id_libro INT(11) NOT NULL,
  PRIMARY KEY (id_autor, id_libro),
  INDEX id_libro (id_libro),
  CONSTRAINT escriben_ibfk_1 FOREIGN KEY (id_autor)
    REFERENCES autores(id_autor) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT escriben_ibfk_2 FOREIGN KEY (id_libro)
    REFERENCES libros(id_libro) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AVG_ROW_LENGTH = 1820
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table reproducen
--
DROP TABLE IF EXISTS reproducen;
CREATE TABLE reproducen (
  id_libro INT(11) NOT NULL,
  id_tematica INT(11) NOT NULL,
  PRIMARY KEY (id_libro, id_tematica),
  INDEX id_tematica (id_tematica),
  CONSTRAINT reproducen_ibfk_1 FOREIGN KEY (id_libro)
    REFERENCES libros(id_libro) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT reproducen_ibfk_2 FOREIGN KEY (id_tematica)
    REFERENCES tematicas(id_tematica) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AVG_ROW_LENGTH = 1489
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

-- 
-- Dumping data for table autores
--
INSERT INTO autores VALUES
(1, 'Owen Jones', 'Gran Bretaña'),
(2, 'Paul Preston', 'Gran Bretaña'),
(3, 'George Orwell', 'Gran Bretaña'),
(4, 'Viçenc Navarro', 'España'),
(5, 'Juan Torres', 'España'),
(6, 'Juan Antonio Recio García', 'España'),
(7, 'Luc Van Lancker', 'Belga'),
(8, 'Sebastien Ollivier', 'Francia'),
(9, 'Pierre Alexandre Gury', 'Francia');

-- 
-- Dumping data for table colecciones
--

-- Table alberto_biblioteca.colecciones does not contain any data (it is empty)

-- 
-- Dumping data for table editoriales
--
INSERT INTO editoriales VALUES
(1, 'Capitán swing'),
(2, 'Debolsillo'),
(3, 'Akal'),
(4, 'Espasa'),
(5, 'RA-MA'),
(6, 'ENI');

-- 
-- Dumping data for table tematicas
--
INSERT INTO tematicas VALUES
(1, 'temática', NULL),
(2, 'Historia', 1),
(3, 'Guerra civil española', 2),
(4, 'Informática', 1),
(5, 'Economía', 1);

-- 
-- Dumping data for table libros
--
INSERT INTO libros VALUES
(1, 'Chavs:La demonización de la clase obrera', '2012', '9788494027970', 0, NULL, 1),
(2, 'Homenaje a Cataluña', '2013', '9788499890876', 1, NULL, 2),
(3, 'Las tres Españas del 36', '2015', '9788497930611', 1, NULL, 2),
(4, 'El holocausto español', '2016', '9788499894812', 0, NULL, 2),
(5, 'Los amos del mundo:Las armas del terrorismo financiero', '2014', '9788467041354', 1, NULL, 4),
(6, 'Html5,Css3 y Jquery: Curso práctico', '2016', '9788499646237', 1, NULL, 5),
(7, 'AngularJs:Desarrolle hoy las aplicaciones web del mañana', '2016', '9782409001826', 0, NULL, 6),
(8, 'Jquery:El framework Javascript de la web 2.0', '2014', '9782746091238', 1, NULL, 6);

-- 
-- Dumping data for table escriben
--
INSERT INTO escriben VALUES
(1, 1),
(2, 3),
(2, 4),
(3, 2),
(4, 5),
(5, 5),
(6, 6),
(7, 8),
(8, 7),
(9, 7);

-- 
-- Dumping data for table reproducen
--
INSERT INTO reproducen VALUES
(1, 5),
(2, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 2),
(4, 3),
(5, 5),
(6, 4),
(7, 4),
(8, 4);

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;