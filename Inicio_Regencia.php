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
    <h1>Regencia</h1>
    <div class="container"> 
    <br>
    <br> 
    <div class="button-container">
        <a href="Boton_Reg_Usuarios.php"><button> Usuarios </button></a>
        <a href="Boton_Reg_Historial.php"><button> Historial </button></a>
    </div>
    <br>
    <br>
    <div class="button-container">
        <a href="Boton_Reg_Notificaciones.php"><button> Notificaciones </button></a>
        <a href="Boton_Reg_Actualizaciones.php"><button> Actualizaciones BD </button></a>
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
<a href="salir.php">Cerrar sesión</a>
</footer>
</html>


