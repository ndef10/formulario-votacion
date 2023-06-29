<?php

require __DIR__.'/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

//configuracion base de datos
$servidor=$_ENV['DB_SERVIDOR'];;
$usuario=$_ENV['DB_USUARIO'];
$contrasenia=$_ENV['DB_CONTRASENIA'];
$baseDeDatos=$_ENV['DB_BASEDEDATOS'];

//lista de tablas
$t1_comunas = "comunas";
$t2_region = "region";
$t3_candidatos = "candidatos";
$t4_encuesta = "encuesta";
$t5_votantes = "votantes";

//establece conexion 
try {
    $conexion= mysqli_connect($servidor, $usuario,$contrasenia,$baseDeDatos); 
    
} catch (e) {
    echo "Estamos sin conexion";
}
?>