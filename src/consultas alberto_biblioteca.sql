USE alberto_biblioteca;
SELECT * FROM libros;
SELECT * FROM autores;

SELECT autor FROM autores WHERE nacionalidad LIKE 'Gran Bretaña';

SELECT autor FROM autores JOIN escriben USING(id_autor) WHERE autores.id_autor=2;

SELECT titulo FROM libros JOIN escriben USING(id_libro) WHERE id_autor=2;


/* Buscando libros por autores Libros escritos por Paul Preston*/

SELECT titulo FROM libros JOIN escriben USING(id_libro) WHERE id_autor=(SELECT id_autor FROM autores WHERE autor="Paul Preston");

/*Libros escritos por Owen Jones*/

SELECT titulo FROM libros JOIN escriben USING(id_libro) WHERE id_autor=(SELECT id_autor FROM autores WHERE autor="Owen Jones"); 

/*Libros publicados desde 2015*/

SELECT titulo FROM libros WHERE anio>2015;

/*Buscando libros por editoriales, por ejemplo Debolsillo*/
SELECT titulo FROM libros JOIN editoriales USING(id_editorial) WHERE editorial="Debolsillo";


/*Buscando libros por temáticas - Ejemplo Libros de informática*/

SELECT titulo FROM libros JOIN reproducen USING (id_libro) WHERE id_tematica=(SELECT id_tematica FROM tematicas WHERE tematica="informática");

/*Libros de Historia */

SELECT titulo FROM libros JOIN reproducen USING (id_libro) WHERE id_tematica=(SELECT id_tematica FROM tematicas WHERE tematica="guerra civil española");





