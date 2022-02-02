-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-01-2022 a las 02:31:20
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
-- Estructura de tabla para la tabla `criterios`
--

CREATE TABLE `criterio` (
  `id_criterio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_criterio` int(11) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `id_evaluacion` int(11) NOT NULL,
  PRIMARY KEY (id_criterio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE criterios RENAME criterio;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cubiculo`
--

CREATE TABLE `cubiculo` (
  `id_cubiculo` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_cubiculo` int(11) DEFAULT NULL,
  `id_piso` int(11) NOT NULL,
  `nombre_cubiculo` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `QR_codigo_hash` varchar(255) NOT NULL,
  `id_imagen_QR` varchar(255) NOT NULL,
   PRIMARY KEY (id_cubiculo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cubiculo`
--

INSERT IGNORE INTO `cubiculo` (`id_cubiculo`, `id_tipo_cubiculo`, `id_piso`, `nombre_cubiculo`, `descripcion`, `QR_codigo_hash`, `id_imagen_QR`, `id_criterios`) VALUES
(2, NULL, 1, 'nombre 1', 'descripcion', 'xxxxx', '/img/nombreqr.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificio`
--

CREATE TABLE `edificio` (
  `id_edificio` int(11) NOT NULL,
  `ubicacion` varchar(30) NOT NULL,
  `nombre_edicicio` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `edificio`
--

INSERT IGNORE INTO `edificio` (`id_edificio`, `ubicacion`, `nombre_edicicio`, `descripcion`) VALUES
(1, 'Bayamon', 'Yucan center', 'savjlb kjsnbdlkasvbsdakljv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id_evaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_cubiculo` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time DEFAULT NULL,
  PRIMARY KEY (id_evaluacion),
  FOREIGN KEY (id_cubiculo) REFERENCES cubiculo(id_cubiculo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `id_propiedad_criterio`
--

CREATE TABLE `criterio_evaluacion` (
  `id_criterio_evaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_criterio` int(11) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `id_cubiculo` int(11) NULL,
  `id_evaluacion` int(11) NULL,
  `id_criterio` int(11) NULL,
  PRIMARY KEY (id_criterio_evaluacion),
  FOREIGN KEY (id_cubiculo) REFERENCES cubiculo(id_cubiculo),
  FOREIGN KEY (id_evaluacion) REFERENCES evaluacion(id_evaluacion),
  FOREIGN KEY (id_criterio) REFERENCES criterio(id_criterio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- CREATE TABLE `criterio_cubiculo` (
--   `id_criterio_cubiculo` int(11) NOT NULL,
--   `nombre_propiedad_criterio` int(11) NOT NULL,
--   `descripcion` longtext DEFAULT NULL,
--   `id_cubiculo` longtext DEFAULT NULL,
--   `id_evaluacion` longtext DEFAULT NULL,
--   `id_criterio` longtext DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image_cubiculo`
--

CREATE TABLE `image_cubiculo` (
  `id_imagen` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piso`
--

CREATE TABLE `piso` (
  `id_piso` int(11) NOT NULL,
  `id_edificio` int(11) NOT NULL,
  `comentarios` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `piso`
--

INSERT IGNORE INTO `piso` (`id_piso`, `id_edificio`, `comentarios`) VALUES
(1, 1, 'comentarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cubiculo`
--

CREATE TABLE `tipo_cubiculo` (
  `id_tipo_cubiculo` int(11) NOT NULL,
  `nombre_tipo_cubiculo` varchar(30) NOT NULL,
  `comentarios` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cubiculo`
--
ALTER TABLE `cubiculo`
  ADD PRIMARY KEY (`id_cubiculo`),
  ADD KEY `FK_Piso_Cubiculo` (`id_piso`);

--
-- Indices de la tabla `edificio`
--
ALTER TABLE `edificio`
  ADD PRIMARY KEY (`id_edificio`);

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
-- AUTO_INCREMENT de la tabla `cubiculo`
--
ALTER TABLE `cubiculo`
  MODIFY `id_cubiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `edificio`
--
ALTER TABLE `edificio`
  MODIFY `id_edificio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `piso`
--
ALTER TABLE `piso`
  MODIFY `id_piso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cubiculo`
--
ALTER TABLE `cubiculo`
  ADD CONSTRAINT `FK_Piso_Cubiculo` FOREIGN KEY (`id_piso`) REFERENCES `piso` (`id_piso`);

--
-- Filtros para la tabla `piso`
--
ALTER TABLE `piso`
  ADD CONSTRAINT `FK_Piso_Edificio` FOREIGN KEY (`id_edificio`) REFERENCES `edificio` (`id_edificio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
