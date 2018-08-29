DROP DATABASE IF EXISTS alberto_biblioteca;
CREATE DATABASE alberto_biblioteca;
USE alberto_biblioteca;



CREATE TABLE autores(
  id_autor int AUTO_INCREMENT,
  autor varchar (255) NOT NULL,
  nacionalidad varchar(255),
  PRIMARY KEY (id_autor)
);

CREATE TABLE editoriales(
  id_editorial int AUTO_INCREMENT,
  editorial varchar (255) NOT NULL,
  PRIMARY KEY (id_editorial)
);

CREATE TABLE colecciones(
  id_coleccion int AUTO_INCREMENT,
  coleccion varchar (255),
  capitulos int,
  leidos int,
  PRIMARY KEY(id_coleccion)
);

CREATE TABLE libros(
  id_libro int AUTO_INCREMENT,
  titulo varchar (255) NOT NULL,
  anio varchar(4),
  ISBN varchar (255),
  leido boolean,
  id_coleccion int,
  id_editorial int,
  PRIMARY KEY (id_libro),
  FOREIGN KEY (id_editorial) REFERENCES editoriales(id_editorial),
  FOREIGN KEY (id_coleccion) REFERENCES colecciones(id_coleccion)
);

CREATE TABLE tematicas(
  id_tematica int AUTO_INCREMENT,
  tematica varchar (255),
  id_padre int,
  PRIMARY KEY (id_tematica),
  FOREIGN KEY (id_padre)REFERENCES tematicas(id_tematica)
);

CREATE TABLE escriben(
  id_autor int,
  id_libro int,
  PRIMARY KEY(id_autor,id_libro),
  FOREIGN KEY (id_autor)REFERENCES autores(id_autor),
  FOREIGN KEY (id_libro)REFERENCES libros (id_libro)
);

CREATE TABLE reproducen(
  id_libro int,
  id_tematica int,
  PRIMARY KEY (id_libro,id_tematica),
  FOREIGN KEY (id_libro)REFERENCES libros(id_libro),
  FOREIGN KEY (id_tematica)REFERENCES tematicas(id_tematica)
);




