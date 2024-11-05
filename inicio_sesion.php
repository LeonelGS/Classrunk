<?php
$conexion = new mysqli("localhost", "root", "", "sistema_login");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usuario = $_POST['usuario'];
    $contraseña = $_POST['password'];

    $query1 = $conexion->prepare("SELECT * FROM usuario_regencia WHERE nombre_usuario = ? AND contraseña = ?");
    $query1->bind_param("ss", $usuario, $contraseña);
    $query1->execute();
    $resultado1 = $query1->get_result();

    $query2 = $conexion->prepare("SELECT * FROM usuario_bedelia WHERE nombre_usuario = ? AND contraseña = ?");
    $query2->bind_param("ss", $usuario, $contraseña);
    $query2->execute();
    $resultado2 = $query2->get_result();

    if ($resultado1->num_rows > 0) {
        session_start();
        $_SESSION['usuario'] = $usuario;
        header("Location: Inicio_Regencia.php");
    } elseif ($resultado2->num_rows > 0) {
        session_start();
        $_SESSION['usuario'] = $usuario;
        header("Location: Inicio_Bedelia.php");
    }
    else {
        header("Location: inicio.php?error=Usuario o contraseña incorrectos.");
    }
    exit();
}

$conexion->close();
?>






