<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio Bedelia</title>
    <link rel="stylesheet" href="css/BD.css">
    <link rel="stylesheet" href="css/Botones.css">
    <link rel="stylesheet" href="css/iconos_BDAlumnos.css">
</head>
<body>
    <?php
     session_start();

     if (!isset($_SESSION['usuario'])) {
        header("Location: inicio.php");
        exit();
     }
    ?>
    <div class="navbar">
        <div class="user-info">
            <img src="images/Urquiza.jpg" alt="Logo de la institucion">
            <span><b><?php echo htmlspecialchars($_SESSION['usuario']); ?></b></span>
        </div>
        <img src="images/imgConf.png" alt="Configuración" class="settings-icon">
    </div>
    <h1>Base de Datos de Usuarios Bedelia</h1>
    <br>
    <br>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Usuario</th>
                <th>Contraseña</th>
                <th>DNI</th>
                <th>Apellido</th>
                <th>Nombre</th>
                <th>Funcion</th>
            </tr>
        </thead>
        <tbody>
        <?php
          $conexion = mysqli_connect("localhost", "root", "", "sistema_login");
          if (!$conexion) {
              die("No hemos podido conectarnos a la base de datos: " . mysqli_connect_errno());
          }
          $consulta = "SELECT 
                          b.id as ID,
                          b.DNI as DNI,
                          b.nombre_usuario as Usuario,
                          b.contraseña as Contraseña,
                          b.Nombre as Nombre,
                          b.Apellido as Apellido, 
                          b.Funcion as Funcion
                      FROM usuario_bedelia b";

          $resultado = mysqli_query($conexion, $consulta);
          if (!$resultado) {
              die("Error en la consulta: " . mysqli_error($conexion));
          }

          while ($fila = mysqli_fetch_assoc($resultado)) {
              echo "<tr>";
              echo "<td>" . $fila['ID'] . "</td>";
              echo "<td>" . $fila['DNI'] . "</td>";
              echo "<td>" . $fila['Usuario'] . "</td>";
              echo "<td>" . $fila['Contraseña'] . "</td>";
              echo "<td>" . $fila['Nombre'] . "</td>";
              echo "<td>" . $fila['Apellido'] . "</td>";
              echo "<td>" . $fila['Funcion'] . "</td>";
              echo "</tr>";
          }

          mysqli_close($conexion);
        ?>
        </tbody>
    </table>
<footer>
<br>
<br>
<a href="Boton_Reg_Actualizaciones.php"><button>Volver</button></a><br>
<br>
<a href="salir.php">Cerrar sesión</a>
</footer>
</html>