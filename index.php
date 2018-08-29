<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="index.css">
	<title>Biblioteca Alberto</title>
</head>
<body>
	<?php
		include_once "libreria.php";
	?>
	<div class="container">
	<ul>
		<li>
			<a href="#" class="enlaces libros">Libros</a>
		</li>
		<li>
			<a href="" class="enlaces">Autores</a>
		</li>
		<li>
			<a href="" class="enlaces">Autores</a>
		</li>
		<li>
			<a href="" class="enlaces">Editriales</a>
		</li>
		<li>
			<a href="" class="enlaces">Temáticas</a>
		</li>
	</ul>
	</div>

	
	<script>

		window.addEventListener("load",()=>{
			document.querySelector(".libros").addEventListener("click", mostrarLibros)

		});

		function mostrarLibros(){
		console.log(datos);

		for(i=0;i<datos.length;i++){
			document.write('<div>');
			document.write('<h3>');
			document.write(datos[i].titulo);
			document.write('</h3>');
			document.write('<p>');
			document.write(datos[i].anio);
			document.write('</p>');
		}
	}
	</script>
</body>
</html>