<?php

//trae candidatos y los despliega en el options
include("conexion.php");

if(!$conexion) {
    echo "Error de conexión";
}

$consulta = "SELECT * FROM candidatos"; 
$respuesta = mysqli_query($conexion, $consulta);

$options = "";
while($fila = mysqli_fetch_array($respuesta)) {
    $options .= "<option value='" . $fila['id'] . "'>" . $fila['candidatos'] . "</option>";

}

echo $options;
?>

