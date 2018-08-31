<?php
/********** PARAMETROS CONFIGURACION **********************/

function mostrarTematicasGenerales($variable){
	$usuario='root';
	$contra='';
	$host='127.0.0.1';
	$bbdd='alberto_biblioteca';
	// $tabla='libros';
	// $variable='datos';

/*********************************************************/
	echo '<script type="text/javascript">';
	echo "var $variable=new Array();";
	$mysqli = new mysqli($host, $usuario, $contra, $bbdd);
	$sql="SET NAMES 'utf8'";
	$mysqli->query($sql);
	$sql = "SELECT * from tematicas WHERE id_padre=1;";
	$resultado = $mysqli->query($sql);
	$registros = $resultado->fetch_all(MYSQLI_ASSOC);
	//var_dump($registros);
	foreach($registros as $numero=>$registro){
			echo "$variable" . "[$numero]={};";
			foreach($registro as $campo=>$valor){
				$v=nl2br($valor);
				echo "$variable"."[$numero].$campo=`$v`;";
			}
	}
	echo "console.log($variable);";
	echo '</script>	';
}
?>


