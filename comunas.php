<?php

//trae comunas y las despliega en el options (anidada en regiones)
include("conexion.php");

if (!$conexion) {
    echo "Error de conexión";
}

$region_id = $_POST['region'];

$consulta = "SELECT * FROM comunas WHERE id = $region_id"; 
$respuesta = mysqli_query($conexion, $consulta);

$options = '<option value="">Seleccione su comuna</option>'; 

while ($fila = mysqli_fetch_array($respuesta)) {
    $options .= "<option value='" . $fila['id'] . "' name='" . $fila['nom_comuna'] . "'>" . $fila['nom_comuna'] . "</option>";   
}

echo '<select id="comuna" name="comuna" class="form-select form-select-sm custom-height" aria-label=".form-select-sm example">' . $options . '</select>';
?>


