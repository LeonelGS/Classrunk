-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2024 a las 02:51:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `classrunkbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `DNI` int(8) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Fecha_de_Nacimiento` date NOT NULL,
  `Domicilio` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Sexo` varchar(30) NOT NULL,
  `Correo_Electronico` varchar(50) NOT NULL,
  `Carrera` varchar(30) NOT NULL,
  `Id_Alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`DNI`, `Apellido`, `Nombre`, `Fecha_de_Nacimiento`, `Domicilio`, `Localidad`, `Sexo`, `Correo_Electronico`, `Carrera`, `Id_Alumno`) VALUES
(40251879, 'Molina', 'Pedro ', '2002-10-17', 'Mendoza 736', 'Rosario', 'Masculino', 'MolinaPedro@gmail.com.ar', 'DS', 1),
(16978512, 'Marquez', 'Laura', '2008-07-03', 'Corrientes 379', 'Rosario', 'Femenino', 'MarquezLau@gmail.com', 'ITI', 2),
(48794712, 'Pereyra', 'Margarita', '2006-10-18', 'Oroño 780', 'Rosario', 'Femenino', 'FerreyraM@gmail.com', 'AF', 3),
(44717812, 'Romero', 'Pedro ', '2000-07-21', 'España 1789', 'San Lorenzo', 'Masculino', 'RomeroP@gmail.com', 'ITI', 4),
(38497569, 'Mora', 'Maia', '1998-02-14', 'Nansen 752', 'Rosario', 'Femenino', 'MoraM@gmail.com', 'ITI', 5),
(37516987, 'Perez', 'Carlos', '1991-01-23', 'Oroño 2305', 'Rosario', 'Masculino', 'PerezC@gmail.com', 'AF', 6),
(42982214, 'Decilia', 'Nicolas', '1994-11-05', 'Mercante 1251', 'Rosario', 'Masculino', 'DeciliaN@gmail.com', 'DS', 7),
(45178179, 'Ricossa', 'Luciano', '1995-04-12', 'Maciel 680', 'Rosario', 'Masculino', 'RicossaL@gmail.com', 'DS', 8),
(37174238, 'Felitti', 'Julian', '1995-07-12', 'Darragueira 2130', 'Rosario', 'Masculino', 'FelittiJ@gmail.com', 'DS', 9),
(29154471, 'Gimenez', 'Patricia', '2002-07-24', 'Uriburu 2105', 'Rosario', 'Femenino', 'GimenezM@gmail.com', 'ITI', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `Id_Docente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `DNI` int(8) NOT NULL,
  `Fecha_de_Nacimiento` date NOT NULL,
  `Domicilio` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Provincia` varchar(30) NOT NULL,
  `Nacionalidad` varchar(30) NOT NULL,
  `Sexo` varchar(30) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Correo_Electronico` varchar(50) NOT NULL,
  `Carrera` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`Id_Docente`, `Nombre`, `Apellido`, `DNI`, `Fecha_de_Nacimiento`, `Domicilio`, `Localidad`, `Provincia`, `Nacionalidad`, `Sexo`, `Telefono`, `Correo_Electronico`, `Carrera`) VALUES
(1, 'Diego', 'Servan', 16978231, '1968-03-24', 'Jujuy 1387', 'Rosario', 'Santa Fe', 'Argentina', 'Masculino', '0341-153879682', 'ServanD@gmail.com', 'DS'),
(2, 'Marcelo', 'Pla', 14859713, '1960-08-12', 'Peru 123', 'Rosario', 'Santa Fe', 'Argentina', 'Masculino', '0341-154187954', 'PlaM@gmail.com', 'DS'),
(3, 'Alejandro', 'Cancian', 25179351, '1982-02-24', 'Uriburu 689', 'Rosario', 'Santa Fe', 'Argentina', 'Masculino', '0341-154179254', 'CancianA@gmail.com.ar', 'IF'),
(4, 'Dante', 'Roselli', 16859745, '1970-12-02', 'San Martin 3708', 'Rosario', 'Santa Fe', 'Argentino', 'Masculino', '0341-153893214', 'RoselliD@gmail.com', 'AF'),
(5, 'Walter', 'Ferreyra', 12348179, '1958-04-15', 'Balcarce 562', 'Rosario', 'Santa Fe', 'Argentina', 'Masculino', '0341-152147926', 'FerreyraW@gmail.com', 'AF');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_Alumno`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`Id_Docente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Id_Alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `Id_Docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
