-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2024 a las 02:51:15
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
-- Base de datos: `sistema_login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_bedelia`
--

CREATE TABLE `usuario_bedelia` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(60) NOT NULL,
  `contraseña` varchar(60) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `Funcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_bedelia`
--

INSERT INTO `usuario_bedelia` (`id`, `nombre_usuario`, `contraseña`, `Nombre`, `Apellido`, `DNI`, `Funcion`) VALUES
(1, 'admin', '123456', 'Justo Jose', 'Urquiza', '38471996', 'Director'),
(2, 'Anahi', 'Ani123456', 'Anahi', 'Martin', '35014471', 'Rectora'),
(3, 'Leoti', 'Leoti', 'Leonel', 'Saavedra', '47197123', 'Rector'),
(5, 'Pirlo', 'Pir123', 'Raul', 'Pirlo', '17987135', 'Secretario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_regencia`
--

CREATE TABLE `usuario_regencia` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(60) NOT NULL,
  `contraseña` varchar(60) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `Funcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_regencia`
--

INSERT INTO `usuario_regencia` (`id`, `nombre_usuario`, `contraseña`, `Nombre`, `Apellido`, `DNI`, `Funcion`) VALUES
(1, 'Leo', 'Leo123456', 'Leonel', 'Saavedra', '38448469', 'Administracion'),
(2, 'Sabri', 'Sab123', 'Sabrina', 'Dasso', '45026847', 'Administracion'),
(4, 'Cormar', 'Corm123456', 'Marcelo', 'Correa', '14879236', 'Back End'),
(5, 'Lanedu', 'ledu4561', 'Eduardo', 'Lana', '17894798', 'Secretario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario_bedelia`
--
ALTER TABLE `usuario_bedelia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_regencia`
--
ALTER TABLE `usuario_regencia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario_bedelia`
--
ALTER TABLE `usuario_bedelia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario_regencia`
--
ALTER TABLE `usuario_regencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
