-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2021 a las 02:57:14
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebaapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cat_imagen` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cat_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Categorías';

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`cat_id`, `cat_nombre`, `cat_imagen`, `cat_estado`) VALUES
(1, 'Acción', NULL, 1),
(2, 'Ficción', NULL, 1),
(3, 'Romantica', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `mod_id` int(11) NOT NULL,
  `mod_nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `mod_imagen` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `mod_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Módulos';

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`mod_id`, `mod_nombre`, `mod_imagen`, `mod_estado`) VALUES
(1, 'Películas', 'https://cdn.pixabay.com/photo/2013/07/13/11/26/film-158157_960_720.png', 1),
(2, 'Series', 'https://cdn.pixabay.com/photo/2016/04/01/10/56/camera-1300107_960_720.png', 1),
(3, 'Dibujos', 'https://cdn.pixabay.com/photo/2015/12/09/22/09/music-1085655_960_720.png', 1),
(4, 'Música', 'https://cdn.pixabay.com/photo/2015/12/11/09/30/mobile-phone-1087845_960_720.jpg', 1),
(5, 'Streaming', 'https://cdn.pixabay.com/photo/2015/12/11/09/30/mobile-phone-1087845_960_720.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `pel_id` int(11) NOT NULL,
  `pel_nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `mod_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `pel_estado` int(11) NOT NULL,
  `pel_url` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Películas';

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`pel_id`, `pel_nombre`, `mod_id`, `cat_id`, `pel_estado`, `pel_url`) VALUES
(1, 'Mulan', 1, 1, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv'),
(2, 'Avengers: Infinity War', 1, 2, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv'),
(3, 'Malcom', 2, 2, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv'),
(4, 'Pato Aventuras', 3, 3, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_cedula` varchar(13) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_apellido` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_email` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_login` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usu_password` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_telefono` varchar(25) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_direccion` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_esta_conectado` int(11) NOT NULL,
  `usu_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Usuarios';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_cedula`, `usu_nombre`, `usu_apellido`, `usu_email`, `usu_login`, `usu_password`, `usu_telefono`, `usu_direccion`, `usu_esta_conectado`, `usu_estado`) VALUES
(1, '', 'Fernando Ruiz', '', NULL, 'fernando', 'clave123', NULL, NULL, 0, 1),
(2, '', 'Daniel Granizo', '', NULL, 'daniel', 'clave123', NULL, NULL, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id` (`cat_id`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`mod_id`),
  ADD UNIQUE KEY `mod_id` (`mod_id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`pel_id`),
  ADD UNIQUE KEY `pel_id` (`pel_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_id`),
  ADD UNIQUE KEY `usu_id` (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `pel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
