<?php

require __DIR__.'/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

//recibe los datos del formulario, los prepara y los valida para ser insertados en la base de datos 
include("conexion.php");

if (!$conexion) {
    echo "Error de conexión";
}

$nombre = $_POST['nombre'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$candidato = $_POST['candidato'];
$encuesta = $_POST['encuesta'];

$nombre_formateado = ucwords($nombre);

$consulta = "SELECT candidatos FROM $t3_candidatos WHERE id = $candidato";
$ejecutar_consulta = mysqli_query($conexion, $consulta);

$nom_candidato = '';
if ($fila = mysqli_fetch_array($ejecutar_consulta)) {
    $nom_candidato = $fila['candidatos'];
}

$consulta = "SELECT nom_region FROM $t2_region WHERE id = $region";
$ejecutar_consulta = mysqli_query($conexion, $consulta);

$nombre_region = '';
if ($fila = mysqli_fetch_array($ejecutar_consulta)) {
    $nombre_region = $fila['nom_region'];
}

$consulta = "SELECT nom_comuna FROM $t1_comunas WHERE id = $comuna";
$ejecutar_consulta = mysqli_query($conexion, $consulta);

$nombre_comuna = '';
if ($fila = mysqli_fetch_array($ejecutar_consulta)) {
    $nombre_comuna = $fila['nom_comuna'];
}

//validaciones
if (isset($_POST['encuesta']) && is_array($_POST['encuesta'])) {
    $respuesta_encuesta = $_POST['encuesta'];
    
    if (count($respuesta_encuesta) >= 2) {        
        $respuesta_texto = implode(",", $respuesta_encuesta);
        
        $validar = "SELECT * FROM $t5_votantes WHERE rut = '$rut'";
        $validando = mysqli_query($conexion, $validar);
        if ($validando->num_rows > 0) {
            echo "<h1>Usted ya ha emitido su voto</h1>";
        } else {
            // inserta todos los datos en la base de datos
            $insertar = "INSERT INTO $t5_votantes (nombre, alias, rut, email, region, comuna, candidato, encuesta) 
                         VALUES ('$nombre_formateado', '$alias', '$rut', '$email', '$nombre_region', '$nombre_comuna', '$nom_candidato', '$respuesta_texto')";

            if (mysqli_query($conexion, $insertar)) {
                echo "<h1>Datos insertados correctamente</h1>";          
            } else {
                echo "<h1>Error al insertar datos</h1>" ;
            }
        }
    } else {        
        echo "<h1>Debe seleccionar al menos dos opciones</h1>";
    }
    } else {
    
        echo "<h1>Por favor, indiquenos cómo supo de nosotros</h1>";
}
?>