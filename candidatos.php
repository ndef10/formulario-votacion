<?php

require __DIR__.'/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

//trae candidatos y los despliega en el options
include("conexion.php");

if(!$conexion) {
    echo "Error de conexión";
}

$consulta = "SELECT * FROM candidatos"; 
$ejecutar_consulta = mysqli_query($conexion, $consulta);

$options = "";
while($fila = mysqli_fetch_array($ejecutar_consulta)) {
    $options .= "<option value='" . $fila['id'] . "'>" . $fila['candidatos'] . "</option>";

}

echo $options;
?>

