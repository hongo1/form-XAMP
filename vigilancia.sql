-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2024 a las 18:55:18
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
-- Base de datos: `vigilancia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ubicacion` text DEFAULT NULL,
  `linea_transportista` varchar(100) DEFAULT NULL,
  `nombre_operador` varchar(100) DEFAULT NULL,
  `placas` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL,
  `caja` varchar(50) DEFAULT NULL,
  `tipo_licencia` varchar(50) DEFAULT NULL,
  `folio` varchar(50) DEFAULT NULL,
  `descansado` tinyint(1) DEFAULT NULL,
  `bebidas_alcoholicas` tinyint(1) DEFAULT NULL,
  `cinturon_seguridad` tinyint(1) DEFAULT NULL,
  `respetar_limites_velocidad` tinyint(1) DEFAULT NULL,
  `cumple_epp` tinyint(1) DEFAULT NULL,
  `prueba_alcoholimetro` tinyint(1) DEFAULT NULL,
  `vigencia_licencia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id`, `fecha`, `hora`, `ubicacion`, `linea_transportista`, `nombre_operador`, `placas`, `telefono`, `fecha_cita`, `hora_cita`, `caja`, `tipo_licencia`, `folio`, `descansado`, `bebidas_alcoholicas`, `cinturon_seguridad`, `respetar_limites_velocidad`, `cumple_epp`, `prueba_alcoholimetro`, `vigencia_licencia`) VALUES
(1, '2024-10-30', '10:43:00', 'https://www.google.com/maps?q=22.9281762,-102.6788469', 'UNA', 'Juan', '54RT44', '1233211231', '0000-00-00', '00:00:00', '34re', 'CONDUCIR', '12R45', 1, 1, 1, 1, 1, 1, '23/90'),
(2, '2024-10-30', '13:51:00', 'https://www.google.com/maps?q=22.9281765,-102.6788482', 'jdjs', 'yo', '12jj', '121212', '2024-10-30', '13:58:00', 'qaqa', 'qaaq', '1212', 1, 1, 1, 1, 1, 1, '2028'),
(3, '2024-10-30', '13:54:00', 'https://www.google.com/maps?q=22.9281765,-102.6788482', '5', 'josep', 'dere', '897543244', '2024-10-30', '13:56:00', 'sss', 'CONDUCIR', 'sdasd', 1, 1, 1, 1, 1, 1, 'hjhuh'),
(4, '2024-10-30', '13:59:00', '', 'sssss', 'isjiowjd', 'oidoi', '818729|8', '0000-00-00', '00:00:00', 'joiqj', 'lnso', 'ksnn', 1, 1, 1, 1, 1, 1, '2023'),
(5, '2024-11-04', '00:00:00', '', 'jdjs', 'josep', '11WS', '121212', '0000-00-00', '00:00:00', 'qaqa', 'CONDUCIR', '12R45', 1, 1, 1, 1, 1, 1, 'nn'),
(6, '2024-11-04', '11:56:00', '', 'jdjs', 'yo', 'www', '4543219090', '0000-00-00', '00:00:00', '34re', 'wqq', '1212', 1, 1, 1, 1, 1, 1, '2028'),
(7, '2024-11-04', '11:56:00', 'https://www.google.com/maps?q=22.9281728,-102.6788497', 'jdjs', 'qqq', '12jj', '121212', '0000-00-00', '00:00:00', '34re', 'qaaq', '12R45', 1, 1, 1, 1, 1, 1, '2028'),
(8, '2024-11-04', '12:58:00', '', 'jdjs', 'yo', 'www', '4543219090', '0000-00-00', '00:00:00', '34re', 'wqq', '1212', 1, 1, 1, 1, 1, 1, '2028'),
(9, '2024-11-05', '09:19:00', 'https://www.google.com/maps?q=22.9281761,-102.6788493', 's', 'qqq', '11WS', '1233211231', '0000-00-00', '00:00:00', 'qaqa', 'wqq', '12R45', 1, 1, 1, 1, 1, 1, '2028');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
