<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <script src="index.js" type="text/javascript"></script>
	<title>Biblioteca Alberto</title>
	<?php
		include_once "libreria.php";
		include_once "libreria2.php";
		mostrarTablas('libros','datos');
		mostrarTablas('autores','autores');
		mostrarTablas('editoriales','editoriales');
		mostrarTablas('tematicas','tematicas');
		mostrarTematicasGenerales('tematicasGenerales');
	?>
	<script type="text/javascript" src="index.js"></script>
</head>
<body>
  <!--Menú Superior-->
  <div class="pos-f-t">
  <nav class="navbar navbar-dark bg-info">
    <div class="dropdown">
        <button class="btn btn-info btn-lg" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           <span class="navbar-toggler-icon"></span>
        </button>
        <span class="titulo">Biblioteca Alberto Ceballos <i class="fas fa-book-reader"></i></span>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">Inicio</a>
            <a class="dropdown-item" href="#">Consultar biblioteca</a>
            <a class="dropdown-item" href="#">Editar Biblioteca</a>
        </div>
     </div>
    </nav>
    </div>
	<div class="container">
	<div class="menu">
            <form action="index.php" method="get" id="form1">
	<ul>
		<li class="liMenu">
			<a href="#" class="enlaces" id="enlaceLibros">Libros <i class="fas fa-book"></i></a>
		</li>
		<li class="liMenu">
			<a href="#" class="enlaces" id="enlaceAutores" name="menu" value="2">Autores <i class="fas fa-user-edit"></i></a>
		</li>
		<li class="liMenu">
			<a href="#" class="enlaces" id="enlaceEditoriales">Editoriales <i class="fas fa-landmark"></i></a>
		</li>
		
         <li>
             <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Temáticas <i class="fas fa-theater-masks"></i>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#" id="enlaceTematicasG">Temáticas Generales</a>
                    <a class="dropdown-item" href="#" id="enlaceTematicas">Temáticas y Subtemáticas</a>
                </div>
                </div>            
         </li>  
	</ul>
            </form>
	</div>	
            <div class="tablas">
            
            </div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script type="text/javaScript">
      /*$(document).ready(function(){
        $(".dropdown-item").hover(function(){
          $(this).addClass("active");
        },function(){
          $(this).removeClass("active");
        });
      });*/
    </script>
</body>
</html>