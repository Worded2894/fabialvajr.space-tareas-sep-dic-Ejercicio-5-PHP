-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost: 3306
-- Tiempo de generación: 18-11-2023 a las 22:32:18
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `urbe_bdd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `zona_id` int(11) DEFAULT NULL,
  `cedula` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `zona_id`, `cedula`) VALUES
(2, 'Juan', 1, '19781341'),
(5, 'Fabian', 1, '30502581'),
(6, 'Rodriguez', 1, '31502581');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_icarplus`
--

CREATE TABLE `cliente_icarplus` (
  `id` int(10) NOT NULL,
  `nombre` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `cedula` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llenados`
--

CREATE TABLE `llenados` (
  `id` int(11) NOT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `cliente_cedula` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `llenados`
--

INSERT INTO `llenados` (`id`, `fecha_hora`, `cantidad`, `cliente_cedula`) VALUES
(6, '2023-10-21 21:04:11', 5, '31502581'),
(7, '2023-10-21 21:04:11', 5, '31502581'),
(8, '2023-10-21 21:04:11', 5, '31502581'),
(9, '2023-10-21 21:04:11', 5, '31502581'),
(10, '2023-10-21 21:21:53', 20, '30502581'),
(11, '2023-10-21 21:42:28', 5, '30502581'),
(12, '2023-10-21 21:46:21', 2, '31502581'),
(13, '2023-10-21 21:48:56', 1, '31502581'),
(14, '2023-10-21 21:56:50', 4, '30502581'),
(15, '2023-10-21 22:04:33', 6, '30502581');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_vehiculo_icarplus`
--

CREATE TABLE `marca_vehiculo_icarplus` (
  `id` int(11) NOT NULL,
  `nombre` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca_vehiculo_icarplus`
--

INSERT INTO `marca_vehiculo_icarplus` (`id`, `nombre`) VALUES
(3, 'Chevrolet'),
(5, 'Ford'),
(2, 'Honda'),
(4, 'Tesla'),
(1, 'Toyota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mecanicos_icarplus`
--

CREATE TABLE `mecanicos_icarplus` (
  `id` int(10) NOT NULL,
  `nombre` int(252) NOT NULL,
  `cedula` int(252) NOT NULL,
  `estado` enum('activo','inactivo') CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo_icarplus`
--

CREATE TABLE `tipo_vehiculo_icarplus` (
  `id` int(10) NOT NULL,
  `nombre` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo_icarplus`
--

INSERT INTO `tipo_vehiculo_icarplus` (`id`, `nombre`) VALUES
(3, 'Autobus'),
(1, 'Automovil'),
(2, 'Camion'),
(5, 'Camioneta'),
(4, 'Motocicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `clave`) VALUES
(1, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_icarplus`
--

CREATE TABLE `vehiculo_icarplus` (
  `id` int(10) NOT NULL,
  `marca` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `modelo` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `año` year(4) NOT NULL,
  `clasificacion` varchar(252) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `repuestos_asignados` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `existencia` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo_icarplus`
--

INSERT INTO `vehiculo_icarplus` (`id`, `marca`, `modelo`, `tipo`, `descripcion`, `año`, `clasificacion`, `repuestos_asignados`, `existencia`) VALUES
(3, 'Chevrolet', 'Aveo', 'Automovil', 'Ta bonito', '2013', 'Excelente', 'Ningúno', 3),
(6, 'Toyota', 'Corolla', 'Automovil', 'Un vehículo compacto y eficiente en el consumo de combustible.', '2020', 'Usado', 'Frenos, luces, parachoques, neumáticos, batería.', 10),
(7, 'Honda', 'Civic', 'Automovil', 'Un coche confiable y eficiente en el consumo de combustible. ', '2021', 'Excelente', 'Frenos, luces, parachoques, neumáticos, batería.', 8),
(10, 'Tesla', 'Model S', 'Automovil', ' Un coche eléctrico de alta gama con una gran autonomía.', '2023', 'Excelente', 'Frenos, luces, parachoques, neumáticos, batería.', 3),
(11, 'Chevrolet', 'Silverado', 'Camioneta', 'Una camioneta robusta y duradera, ideal para trabajos pesados', '2022', 'Devuelto', 'Frenos, luces, parachoques, neumáticos, batería.', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id`, `nombre`) VALUES
(1, 'Zulia'),
(2, 'Caracas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `zona_id` (`zona_id`);

--
-- Indices de la tabla `cliente_icarplus`
--
ALTER TABLE `cliente_icarplus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `llenados`
--
ALTER TABLE `llenados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_cedula` (`cliente_cedula`);

--
-- Indices de la tabla `marca_vehiculo_icarplus`
--
ALTER TABLE `marca_vehiculo_icarplus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `mecanicos_icarplus`
--
ALTER TABLE `mecanicos_icarplus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_vehiculo_icarplus`
--
ALTER TABLE `tipo_vehiculo_icarplus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculo_icarplus`
--
ALTER TABLE `vehiculo_icarplus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`) USING BTREE,
  ADD KEY `marca` (`marca`) USING BTREE;

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cliente_icarplus`
--
ALTER TABLE `cliente_icarplus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `llenados`
--
ALTER TABLE `llenados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `marca_vehiculo_icarplus`
--
ALTER TABLE `marca_vehiculo_icarplus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mecanicos_icarplus`
--
ALTER TABLE `mecanicos_icarplus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo_icarplus`
--
ALTER TABLE `tipo_vehiculo_icarplus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vehiculo_icarplus`
--
ALTER TABLE `vehiculo_icarplus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`zona_id`) REFERENCES `zonas` (`id`);

--
-- Filtros para la tabla `llenados`
--
ALTER TABLE `llenados`
  ADD CONSTRAINT `llenados_ibfk_1` FOREIGN KEY (`cliente_cedula`) REFERENCES `clientes` (`cedula`);

--
-- Filtros para la tabla `vehiculo_icarplus`
--
ALTER TABLE `vehiculo_icarplus`
  ADD CONSTRAINT `vehiculo_icarplus_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marca_vehiculo_icarplus` (`nombre`),
  ADD CONSTRAINT `vehiculo_icarplus_ibfk_2` FOREIGN KEY (`tipo`) REFERENCES `tipo_vehiculo_icarplus` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
