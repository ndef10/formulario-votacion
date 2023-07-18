<?php

include("conexion.php");

$nombre = $_POST['nombre']?? '';
$alias = $_POST['alias']?? '';
$rut = $_POST['rut']?? '' ;
$email = $_POST['email']?? '';
$region = $_POST['region']?? '';
$comuna = $_POST['comuna_seleccionada']?? '';
$candidato = $_POST['candidato']?? '';
$encuesta = $_POST['encuesta']?? '';

$respuesta = [];
$bandera = true;

if($nombre == '') {
    $respuesta += ['nombre' => 'Ingrese un nombre'];
    $bandera = false;
}

if($alias == '') {
    $respuesta += ['alias' => 'Ingrese un alias'];
    $bandera = false;
}

if($rut == '') {
    $respuesta += ['rut' => 'Ingrese un rut'];
    $bandera = false;
}

if($email == '') {
    $respuesta += ['email' => 'Ingrese un email'];
    $bandera = false;
}

if($region == '') {
    $respuesta += ['region' => 'Ingrese una region'];    
    $bandera = false;
}

if(!isset($comuna) || $comuna === '' || $comuna === null) {
    $respuesta += ['comuna' => 'Ingrese una comuna'];
    $bandera = false;
}

if($candidato == '') {
    $respuesta += ['candidato' => 'Ingrese un candidato'];    
    $bandera = false;
}

if($encuesta == '' || count($encuesta) < 2) {
    $respuesta += ['encuesta' => 'Seleccione al menos dos opciones'];
    $bandera = false;
}

if ($bandera) {
    
    try {
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
                echo '<p class="mensaje-error">Debe seleccionar al menos dos opciones en la encuesta</p>';
                exit; 
            }
        } else {
            echo '<p class="mensaje-error">Por favor indiquenos como se entero de nostros (2 opciones)</p>';
            exit; 
        }

        $consulta = "SELECT * FROM votantes WHERE rut = '$rut'";
        $respuesta = mysqli_query($conexion, $consulta);
        if ($respuesta->num_rows > 0) {           
            $respuesta = ['error' => 'Usted ya ha emitido su voto'];
            echo json_encode($respuesta);
            exit;         
        } else {
            $consulta = "INSERT INTO votantes(nombre, alias, rut, email, region, comuna, candidato, encuesta) VALUES ('$nombre_formateado', '$alias', '$rut', '$email', '$nombre_region', '$comuna', '$nombre_candidato', '$respuesta_texto')";
            $respuesta = mysqli_query($conexion, $consulta);
        
            $respuesta = ['exito' => 'Sus datos fueron insertados correctamente'];
            echo json_encode($respuesta);
            exit;
        }    
       
    } catch (Exception $e) {
        die('No hemos podido insertar tus datos');
    }
    
}

echo json_encode($respuesta);

