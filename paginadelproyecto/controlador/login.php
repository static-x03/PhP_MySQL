<?php


include '../Clases/conexion.php';




$objConexion = new conexion();
$conexion = $objConexion->conectar();

$datos = $objConexion->login($_POST['nombreUsuario'], $_POST['password'], $conexion);
if ($datos){
    $rol = $objConexion->verificarRol($_POST['nombreUsuario'], $_POST['password'], $conexion);
    if($rol == 1){
        
         header('location: ../logeado.html');
       
    }else if($rol == 2){
        
         header('location: ../logeado.html');
    }

    echo 'NO ERES ADMINISTRADOR NO TIENES PRIVILEGIOS PARA INGRESAR !!';
    echo '<br>';
    echo '<br>';
    echo '<a href=../index.html>Regresar A la Pagina De Inicio</a>';
    
    
}else{
    echo 'Problema con los Datos de Ingreso';
    
    //Me devuelve a la pagina de inicio index.html
     
    }
  
    
    




