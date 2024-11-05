<?php
session_start();
if (!isset($_SESSION['usuario'])) {
    header("Location: inicio.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio Regencia</title>
    <link rel="stylesheet" href="css/Base.css">
    <link rel="stylesheet" href="css/Botones.css">
</head>
<body>
    <div class="navbar">
        <div class="user-info">
            <img src="images/Urquiza.jpg" alt="Logo de la institucion">
            <span><b><?php echo htmlspecialchars($_SESSION['usuario']); ?></b></span>
        </div>
        <img src="images/imgConf.png" alt="Configuración" class="settings-icon">
    </div>
    <h1>Actualizacion BD</h1>
    <div class="container"> 
    <br>
    <br> 
    <div class="button-container">
        <a href="Boton_BD_Usuarios_Reg.php"><button> BD Usuarios Regencia </button></a>
        <a href="Boton_BD_Usuarios_Bed.php"><button> BD Usuarios Bedelia </button></a>
    </div>
    <br>
    <br>
    <div class="button-container">
        <a href="Boton_BD_Alumnos.php"><button> BD Alumnos </button></a>
        <a href="Boton_BD_Docentes.php"><button> BD Docentes</button></a>
    </div>
    <br>
    <br>
</div>
</body>
<footer>
<br>
<br> 
<br>
<br>
<a href="Inicio_Regencia.php"><button>Volver</button></a><br>
<br>
<br>
<br>
<a href="salir.php">Cerrar sesión</a>
</footer>
</html>