<?php 

include '../Clases/conexion.php';

$objConexion = new conexion();
$conexion = $objConexion->conectar();

$datos=$objConexion->consultar($conexion); ?>

<!DOCTYPE html>
<html>
    <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head> 
<body> 
    <style>
        table{
            width: 100%;
            border: 2px solid white;}
        th, td {
            width: 25%;
            text-align: center;
            border: 1px solid black;
            border-collapse: collapse;     
        } 
        a{
            text-decoration: none;
        }
        h1{
            text-align: center;
            color: yellow;
        }
        body{
            background-image: url(../imagenes/paginaa.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <h1>Usuarios Tabla User</h1>
    <table>
        <tr>
            <th><font color="white">ID</th>
            <th><font color="white">NOMBRE</th>
            <th><font color="white">APELLIDO</th>
            <th><font color="white">EMAIL</th>
            
        </tr>
        <?php
            while($dato = mysqli_fetch_array($datos)){
        ?>
        <tr>
            <td><font color="black"><?php echo $dato['id']; ?></td>
            <td><font color="black"><?php echo $dato['nombreU']; ?></td>
            <td><font color="black"><?php echo $dato['apellidoU']; ?></td>
            <td><font color="black"><?php echo $dato['emailU']; ?></td>
        </tr> 
        <?php
            }
        ?>
    </table> 
    <br>
    <br>
    <a href="../logeado.html" style=" color: white">Regresar A la Pagina De Logeo / O / </a>
    <a href="../eliminar.php" style="color: white">¿Eliminar Algun Usuario? /</a>
</body>
    
</html>

