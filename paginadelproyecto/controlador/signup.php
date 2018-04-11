<?php

include '../Clases/conexion.php'; 
    


$objConexion = new conexion();
$conexion = $objConexion->conectar(); 


$datos = $objConexion->signup($conexion, $_POST['nombre'],$_POST['apellido'], $_POST['email'], $_POST['password']); 
?>
<!DOCTYPE html> 

<html lang="">
    <head>
        <title>Usuario Registrado</title> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body> 
        <style>
            body {
                background-image: url(../imagenes/photo-1461749280684-dccba630e2f6.jpg);
                    background-repeat: no-repeat;
                    background-size: cover;
            }
            a{
                              text-decoration: none;
            }
            h1{
                text-align: center;
            }
           
        </style>
                
    
        <a href="../index.html" style="color: yellow"><h1>Regresar A La Pagina Principal</h1></a>
      
    
        
        <script language="JavaScript" type="text/javascript">alert("Usuario Correctamente Registrado");
        </script> 
        
    </body> 
    
</html>

      
           
