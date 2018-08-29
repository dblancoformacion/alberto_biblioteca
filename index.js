window.addEventListener("load",()=>{
	var contenedorTablas=document.querySelector(".container");
	// document.querySelector(".enlaceLibros").addEventListener("click", mostrarLibros);
	document.querySelector(".enlaceAutores").addEventListener("click", mostrarLibros);


	function mostrarLibros(){
		console.log(datos);
		for(i=0;i<datos.length;i++){
			contenedorTablas.innerHTML+='<div class="libros">';
			contenedorTablas.innerHTML+='<h3>Título</h3><h4>'+datos[i].titulo+'</h4>';
			contenedorTablas.innerHTML+='<p>';
			contenedorTablas.innerHTML+='<h3>Año</h3><h4>'+datos[i].anio+'</h4>';
			contenedorTablas.innerHTML+='</p>';
			contenedorTablas.innerHTML+='</div>';
		}
	}

	// function mostrarAutores(){
	// 	console.log(datos);
	// 	for(i=0;i<datos.length;i++){
	// 		contenedorTablas.innerHTML+='<div class="libros">';
	// 		contenedorTablas.innerHTML+='<h3>Título</h3><h4>'+datos[i].titulo+'</h4>';
	// 		contenedorTablas.innerHTML+='<p>';
	// 		contenedorTablas.innerHTML+='<h3>Año</h3><h4>'+datos[i].anio+'</h4>';
	// 		contenedorTablas.innerHTML+='</p>';
	// 		contenedorTablas.innerHTML+='</div>';
	// 	}
	// }


	// function mostrarAutores(){
	// 	// console.log(datosAutores);
	// 	// for(i=0;i<datosAutores.length;i++){
	// 	// 	contenedorTablas.innerHTML+='<div class="libros">';
	// 	// 	contenedorTablas.innerHTML+='<h3>Autor</h3><h4>'+datosAutores[i].autor+'</h4>';
	// 	// 	contenedorTablas.innerHTML+='<p>';
	// 	// 	contenedorTablas.innerHTML+='<h3>Nacionalidad</h3><h4>'+datosAutores[i].nacionalidad+'</h4>';
	// 	// 	contenedorTablas.innerHTML+='</p>';
	// 	// 	contenedorTablas.innerHTML+='</div>';
	// 	}
	// }

});