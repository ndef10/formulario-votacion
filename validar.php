<?php
require __DIR__.'/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

include("conexion.php");

if (!$conexion) {
    echo "Error de conexión";
}

if (isset($_POST['nombre'])) {    
    $nombre = $_POST['nombre'];
    $alias = $_POST['alias'];
    $rut = $_POST['rut'];
    $email = $_POST['email'];
    $region = $_POST['region'];
    $comuna = $_POST['comuna_seleccionada'];
    $candidato = $_POST['candidato'];
    $encuesta = $_POST['encuesta'];

    $nombre_formateado = ucwords($nombre);
    
    if(!empty($region)) {
        $consulta = "SELECT * FROM region WHERE id LIKE '$region'";
        $resultado = mysqli_query($conexion, $consulta);
       
        if ($resultado) {
            while ($fila = mysqli_fetch_assoc($resultado)) {                
                $nombre_region = $fila['nom_region'];              
            }
        } else {
            die('Error al ejecutar la consulta');
        }        
    }
  
    if (!empty($candidato)) {
        $consulta = "SELECT candidatos FROM candidatos WHERE id = '$candidato'";
        $resultado = mysqli_query($conexion, $consulta);
    
        if ($resultado) {
            $fila = mysqli_fetch_assoc($resultado);
            if ($fila) {
                $nombre_candidato = $fila['candidatos'];                
            } else {
                echo "Candidato no encontrado";
            }
        } else {
            die('Error al ejecutar la consulta');
        }
    }  
 
    if (isset($_POST['encuesta']) && is_array($_POST['encuesta'])) {
        $encuesta = $_POST['encuesta'];
    
        if (count($encuesta) >= 2) {
            $respuesta_texto = implode(",", $encuesta);           
        } else {
            echo "Debe seleccionar al menos dos opciones en la encuesta";
            exit; 
        }
    } else {
        echo "Por favor indiquenos como se entero de nostros (2 opciones)";
        exit; 
    }    

    $consulta = "SELECT * FROM votantes WHERE rut = '$rut'";
        $respuesta = mysqli_query($conexion, $consulta);
        if ($respuesta->num_rows > 0) {
            echo "<p>Usted ya ha emitido su voto</p>";
            $mensaje_error = "Usted ya ha emitido su voto desde php";
        } else {
            
            $consulta = "INSERT INTO votantes(nombre, alias, rut, email, region, comuna, candidato, encuesta) VALUES ('$nombre_formateado', '$alias', '$rut', '$email', '$nombre_region', '$comuna', '$nombre_candidato', '$respuesta_texto')";
        
            $resultado = mysqli_query($conexion, $consulta);
            if(!$resultado) {
                die('No hemos podido insertar tus datos');
            }
            echo 'Sus datos fueron insertados correctamente';
        }    
}    

