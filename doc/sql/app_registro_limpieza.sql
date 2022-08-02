-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-01-2022 a las 01:31:00
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio`
--

DROP TABLE IF EXISTS `criterio`;
CREATE TABLE `criterio` (
  `id_criterio` int(11) NOT NULL,
  `nombre_criterio` int(11) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `id_evaluacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `criterio`
--

TRUNCATE TABLE `criterio`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio_evaluacion`
--

DROP TABLE IF EXISTS `criterio_evaluacion`;
CREATE TABLE `criterio_evaluacion` (
  `id_criterio_evaluacion` int(11) NOT NULL,
  `nombre_criterio` int(11) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `id_cubiculo` int(11) DEFAULT NULL,
  `id_evaluacion` int(11) DEFAULT NULL,
  `id_criterio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `criterio_evaluacion`
--

TRUNCATE TABLE `criterio_evaluacion`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cubiculo`
--

DROP TABLE IF EXISTS `cubiculo`;
CREATE TABLE `cubiculo` (
  `id_cubiculo` int(11) NOT NULL,
  `id_tipo_cubiculo` int(11) DEFAULT NULL,
  `id_piso` int(11) NOT NULL,
  `nombre_cubiculo` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `QR_codigo_hash` varchar(255) NOT NULL,
  `id_imagen_QR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `cubiculo`
--

TRUNCATE TABLE `cubiculo`;
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

--
-- Truncar tablas antes de insertar `edificio`
--

TRUNCATE TABLE `edificio`;
--
-- Volcado de datos para la tabla `edificio`
--

INSERT IGNORE INTO `edificio` (`id_edificio`, `ubicacion`, `nombre_edicicio`, `descripcion`) VALUES
(1, 'Bayamon', 'Yucan center', 'savjlb kjsnbdlkasvbsdakljv');

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

--
-- Truncar tablas antes de insertar `evaluacion`
--

TRUNCATE TABLE `evaluacion`;
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

--
-- Truncar tablas antes de insertar `id_propiedad_criterio`
--

TRUNCATE TABLE `id_propiedad_criterio`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image_cubiculo`
--

DROP TABLE IF EXISTS `image_cubiculo`;
CREATE TABLE `image_cubiculo` (
  `id_imagen` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `image_cubiculo`
--

TRUNCATE TABLE `image_cubiculo`;
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

--
-- Truncar tablas antes de insertar `piso`
--

TRUNCATE TABLE `piso`;
--
-- Volcado de datos para la tabla `piso`
--

INSERT IGNORE INTO `piso` (`id_piso`, `id_edificio`, `comentarios`) VALUES
(1, 1, 'comentarios');

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

--
-- Truncar tablas antes de insertar `tipo_cubiculo`
--

TRUNCATE TABLE `tipo_cubiculo`;
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `criterio`
--
ALTER TABLE `criterio`
  ADD PRIMARY KEY (`id_criterio`);

--
-- Indices de la tabla `criterio_evaluacion`
--
ALTER TABLE `criterio_evaluacion`
  ADD PRIMARY KEY (`id_criterio_evaluacion`),
  ADD KEY `id_cubiculo` (`id_cubiculo`),
  ADD KEY `id_evaluacion` (`id_evaluacion`),
  ADD KEY `id_criterio` (`id_criterio`);

--
-- Indices de la tabla `cubiculo`
--
ALTER TABLE `cubiculo`
  ADD PRIMARY KEY (`id_cubiculo`);

--
-- Indices de la tabla `edificio`
--
ALTER TABLE `edificio`
  ADD PRIMARY KEY (`id_edificio`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id_evaluacion`),
  ADD KEY `id_cubiculo` (`id_cubiculo`);

--
-- Indices de la tabla `piso`
--
ALTER TABLE `piso`
  ADD PRIMARY KEY (`id_piso`),
  ADD KEY `FK_Piso_Edificio` (`id_edificio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `criterio_evaluacion`
--
ALTER TABLE `criterio_evaluacion`
  MODIFY `id_criterio_evaluacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cubiculo`
--
ALTER TABLE `cubiculo`
  MODIFY `id_cubiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `edificio`
--
ALTER TABLE `edificio`
  MODIFY `id_edificio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `id_evaluacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `piso`
--
ALTER TABLE `piso`
  MODIFY `id_piso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `criterio_evaluacion`
--
ALTER TABLE `criterio_evaluacion`
  ADD CONSTRAINT `criterio_evaluacion_ibfk_1` FOREIGN KEY (`id_cubiculo`) REFERENCES `cubiculo` (`id_cubiculo`),
  ADD CONSTRAINT `criterio_evaluacion_ibfk_2` FOREIGN KEY (`id_evaluacion`) REFERENCES `evaluacion` (`id_evaluacion`),
  ADD CONSTRAINT `criterio_evaluacion_ibfk_3` FOREIGN KEY (`id_criterio`) REFERENCES `criterio` (`id_criterio`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`id_cubiculo`) REFERENCES `cubiculo` (`id_cubiculo`);

--
-- Filtros para la tabla `piso`
--
ALTER TABLE `piso`
  ADD CONSTRAINT `FK_Piso_Edificio` FOREIGN KEY (`id_edificio`) REFERENCES `edificio` (`id_edificio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
