<?php

class conexion {

    public function conectar(){
        $link = mysqli_connect("localhost", "root", "", "basesdedatosproyecto");
        if ($link === false){
            die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        return $link;
    }
    //Metodo para consultar los datos de la tabla usuario
    public function login($nombreUsuario, $password, $conexion){
        $sql = "SELECT nombreUsuario, password FROM usuario1 WHERE nombreUsuario='$nombreUsuario' and password=$password";
        $datos = mysqli_query($conexion, $sql);
        return $datos;
    }
    
    public function verificarRol($nombreUsuario, $password, $conexion){
        $sql = "SELECT rs.idrol" 
               . " FROM rol r inner join rolusuario rs on r.idrol inner join usuario1 u on rs.idusuario = u.idusuario"
               . " WHERE u.nombreUsuario = '$nombreUsuario' and u.password = $password";
        $datos = mysqli_query($conexion, $sql);
        $rol = mysqli_fetch_array($datos);
        return $rol['idrol'];
    }
    public function signup($conexion, $nombre, $apellido, $email, $password) {
        $query = "INSERT INTO user (nombreU, apellidoU, emailU, passwordU) values('$nombre','$apellido','$email','$password')";
        $datos = mysqli_query($conexion, $query);
        if ($datos) {

            $respuesta = "registrado con exito";
        } else {

            $respuesta = "problema con el registro";
        }
        return $respuesta;
    }
    public function consultar($conexion){
        $query = "SELECT * FROM user";
        $consulta = mysqli_query($conexion, $query);
        return $consulta;
   

}
public function consultarId($conexion, $id){
        $query = "SELECT * FROM user WHERE id = $id ";
        $consulta = mysqli_query($conexion, $query);
        return $consulta;
    }
public function eliminar($conexion, $id){
        $query = "DELETE FROM user WHERE id = $id";
        $consulta= mysqli_query($conexion,$query);
        if($consulta){
            $respuesta = "Eliminado con exito";
        }
        else {
            $respuesta = "problema con el registro";
        }
        return $respuesta;
    }
    public function Editar($Conexion, $Nombre, $email, $id) {
       $query = "UPDATE User SET nombreU ='$Nombre', emailU ='$email' WHERE id ='$id'";
       $Consulta = mysqli_query($Conexion, $query);
       
       if ($Consulta){
            $Respuesta = "Modificado con exito";
        } else {
            $Respuesta = "Problema al actualizar";
        }
        return $Respuesta;
    }

    }
