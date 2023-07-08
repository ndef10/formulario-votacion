<?php

require __DIR__.'/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

//configuracion base de datos
$servidor=$_ENV['DB_SERVIDOR'];;
$usuario=$_ENV['DB_USUARIO'];
$contrasenia=$_ENV['DB_CONTRASENIA'];
$baseDeDatos=$_ENV['DB_BASEDEDATOS'];

//establece conexion 
try {
    $conexion= mysqli_connect($servidor, $usuario,$contrasenia,$baseDeDatos); 
    // echo "Estamos conectados";
    
} catch (e) {
    echo "Estamos sin conexion";
}
?>