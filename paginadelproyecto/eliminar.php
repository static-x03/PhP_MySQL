
<!DOCTYPE html>
<html>
     <title>Eliminar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Serif" rel="stylesheet"> 
        <link href="css/stilos.css" rel="stylesheet"> 
        <body>
            <style> 
                a{
                    text-decoration: none;
                }
                body{
                    background-image: url(imagenes/paginaa.jpg);
                    background-repeat: no-repeat;
                    background-size: cover;
                }
                   
                    
                                   
            </style>
            <h1>Eliminar Usuario</h1>
                    <form action="controlador/eliminar.php" method="get">
                <label>ID: </label>
                <input type="text" name="id" placeholder="INGRESAR ID QUE DESEA ELIMINAR">
                <br>
                <br>
                <input type="submit" class="boton" value="Eliminar">
                    
                
            </form>
            <br>
            <a href="logeado.html" style=" color: white">Regresar A la Pagina De Logeo</a>
            
        </body>
</html>