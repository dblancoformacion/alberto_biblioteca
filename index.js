window.addEventListener("load",()=>{
	var contenedorTablas=document.querySelector(".tablas");
	document.querySelector("#enlaceLibros").addEventListener("click", mostrarLibros);
	document.querySelector("#enlaceAutores").addEventListener("click", mostrarAutores);
	document.querySelector("#enlaceEditoriales").addEventListener("click",mostrarEditoriales);
	document.querySelector("#enlaceTematicas").addEventListener("click",mostrarTematicas);
	document.querySelector("#enlaceTematicasG").addEventListener("click",mostrarTematicasGenerales)


	function mostrarLibros(){
		console.log(datos);
		contenedorTablas.innerHTML="";
		for(i=0;i<datos.length;i++){
			contenedorTablas.innerHTML+='<div class="card" style="width: 18rem;"><div class="card-body"><h5 class="card-title">'+datos[i].titulo+'</h5><h6 class="card-subtitle mb-2 text-muted">'+datos[i].anio+'</h6><a href="#" class="card-link">Card link</a><a href="#" class="card-link">Another link</a></div></div>';
		}
	}

	function mostrarAutores(){
		contenedorTablas.innerHTML="";
	 	for(i=0;i<autores.length;i++){
	 		contenedorTablas.innerHTML+='<div class="card" style="width: 18rem;"><div class="card-body"><h5 class="card-title">'+autores[i].autor+'</h5><h6 class="card-subtitle mb-2 text-muted">'+autores[i].nacionalidad+'</h6><p class="card-text">Some quick example text to build on the card title and make up the bulk of the card</p><a href="#" class="card-link">Card link</a><a href="#" class="card-link">Another link</a></div></div>';
	 	}
	 }

	 function mostrarEditoriales(){
	 	contenedorTablas.innerHTML="";
	 	for(i=0;i<editoriales.length;i++){
	 		contenedorTablas.innerHTML+='<div class="card" style="width: 18rem;"><div class="card-body"><h5 class="card-title">'+editoriales[i].editorial+'</h5><h6 class="card-subtitle mb-2 text-muted">'+editoriales[i].id_editorial+'</h6><p class="card-text">Some quick example text to build on the card title and make up the bulk of the card</p><a href="#" class="card-link">Card link</a><a href="#" class="card-link">Another link</a></div></div>';
	 	}
	 }

	 function mostrarTematicas(){
	 	contenedorTablas.innerHTML="";
		for(i=1;i<tematicas.length;i++){
			contenedorTablas.innerHTML+='<div class="card" style="width: 18rem;"><div class="card-body"><h5 class="card-title">'+tematicas[i].tematica+'</h5><h6 class="card-subtitle mb-2 text-muted"></h6><a href="#" class="card-link">Card link</a><a href="#" class="card-link">Another link</a></div></div>';
		}

	 }

	 function mostrarTematicasGenerales(){
	 	contenedorTablas.innerHTML="";
		for(i=0;i<tematicasGenerales.length;i++){
			contenedorTablas.innerHTML+='<div class="card" style="width: 18rem;"><div class="card-body"><h5 class="card-title">'+tematicasGenerales[i].tematica+'</h5><h6 class="card-subtitle mb-2 text-muted"></h6><a href="#" class="card-link">Card link</a><a href="#" class="card-link">Another link</a></div></div>';
		}

	 }
});