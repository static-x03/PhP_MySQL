<?php

include '../Clases/conexion.php';

$objConexion = new conexion();
$conexion = $objConexion->conectar();

$datos = $objConexion->eliminar($conexion, $_GET['id']); 
echo "<br>";
echo "<br>";
echo 'Registro Eliminado correctamente';
echo "<br>";
echo "<br>";
echo "<a href='../controlador/consultar.php'>¿Desea Realizar Otra Consulta?</a>";

