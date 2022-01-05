-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-01-2022 a las 03:35:24
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_registro_limpieza`
--
CREATE DATABASE IF NOT EXISTS `app_registro_limpieza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `app_registro_limpieza`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterios`
--

DROP TABLE IF EXISTS `criterios`;
CREATE TABLE `criterios` (
  `id_criterio` int(11) NOT NULL,
  `nombre_critario` int(11) NOT NULL,
  `id_propiedad_criterio` int(11) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cubulo`
--

DROP TABLE IF EXISTS `cubulo`;
CREATE TABLE `cubulo` (
  `id_cubiculo` int(11) NOT NULL,
  `id_tipo_cubiculo` int(11) NOT NULL,
  `id_piso` int(11) NOT NULL,
  `nombre_cubiculo` varchar(50) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `QR_codigo_hash` varchar(255) NOT NULL,
  `id_imagen_QR` varchar(255) NOT NULL,
  `id_criterios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificio`
--

DROP TABLE IF EXISTS `edificio`;
CREATE TABLE `edificio` (
  `id_edificio` int(11) NOT NULL,
  `ubicacion` varchar(30) NOT NULL,
  `nombre_edicicio` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
CREATE TABLE `evaluacion` (
  `id_evaluacion` int(11) NOT NULL,
  `id_cubiculo` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `id_propiedad_criterio`
--

DROP TABLE IF EXISTS `id_propiedad_criterio`;
CREATE TABLE `id_propiedad_criterio` (
  `id_propiedad_criterio` int(11) NOT NULL,
  `nombre_propiedad_criterio` int(11) NOT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image_cubiculo`
--

DROP TABLE IF EXISTS `image_cubiculo`;
CREATE TABLE `image_cubiculo` (
  `id_imagen` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piso`
--

DROP TABLE IF EXISTS `piso`;
CREATE TABLE `piso` (
  `id_piso` int(11) NOT NULL,
  `id_edificio` int(11) NOT NULL,
  `comentarios` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cubiculo`
--

DROP TABLE IF EXISTS `tipo_cubiculo`;
CREATE TABLE `tipo_cubiculo` (
  `id_tipo_cubiculo` int(11) NOT NULL,
  `nombre_tipo_cubiculo` varchar(30) NOT NULL,
  `comentarios` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
