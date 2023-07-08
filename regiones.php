<?php

require __DIR__.'/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

//trae lista de regiones y las muestra en options (relacionada con comunas)
include("conexion.php");

if(!$conexion) {
    echo "Error de conexión";
}

$consulta = "SELECT * FROM region"; 
$respuesta = mysqli_query($conexion, $consulta);

$options = "";
while($fila = mysqli_fetch_array($respuesta)) {
    $options .= "<option value='" . $fila['id'] . "'>" . $fila['nom_region'] . "</option>";
}

echo $options;
?>
