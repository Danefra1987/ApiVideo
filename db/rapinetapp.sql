-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2021 a las 04:23:48
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rapinetapp`
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
(3, 'Romantica', NULL, 1),
(4, 'Infantil', 'img cat', 1),
(5, 'Sin Categoría', 'imge sin cat', 1),
(6, 'Drama', 'image cat drama', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `censura`
--

CREATE TABLE `censura` (
  `cen_id` int(11) NOT NULL,
  `cen_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de Censura de Películas';

--
-- Volcado de datos para la tabla `censura`
--

INSERT INTO `censura` (`cen_id`, `cen_nombre`) VALUES
(3, 'Mayores de 11 años'),
(5, 'Mayores de 13 años'),
(6, 'Mayores de 16 años'),
(7, 'Mayores de 18 años'),
(4, 'Mayores de 3 años'),
(2, 'Mayores de 7 años'),
(1, 'Todo Público');

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
  `pel_nombre` varchar(300) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_imagen` varchar(300) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_descripcion` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_duracion` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_anio` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_censura` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_reparto` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_genero` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pel_destacado` int(11) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `pel_estado` int(11) NOT NULL,
  `pel_url` varchar(300) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Películas';

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`pel_id`, `pel_nombre`, `pel_imagen`, `pel_descripcion`, `pel_duracion`, `pel_anio`, `pel_censura`, `pel_reparto`, `pel_genero`, `pel_destacado`, `mod_id`, `cat_id`, `pel_estado`, `pel_url`) VALUES
(1, 'Mulan . título ejemplo', 'img1', 'descripción1', '1h20', '2021', 'Todo Público', 'Robert de Niro, Nicole Kidman', 'Acción,Ficción,Infantil', 0, 1, 1, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv'),
(2, 'Avengers: Infinity War', '', '', '', '', '', '', '', 0, 1, 2, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv'),
(3, 'Malcom', 'img malcon', 'des', '45m', '2000', 'Mayores de 11 años', 'Muniz', 'Series', 0, 2, 6, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv'),
(4, 'Pato Aventuras', '', '', '', '', '', '', '', 0, 3, 3, 1, 'http://45.70.202.173:58915/peliculas/mulan.mkv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `rec_id` int(11) NOT NULL,
  `rec_nombre` varchar(100) NOT NULL,
  `rec_imagen` varchar(255) NOT NULL,
  `rec_clave` varchar(50) NOT NULL,
  `rec_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de Recursos Gráficos';

--
-- Volcado de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`rec_id`, `rec_nombre`, `rec_imagen`, `rec_clave`, `rec_estado`) VALUES
(1, 'Carrusel01', 'http://imagen1', '1', 1),
(2, 'Carrusel02', 'http://imagen2', '1', 1);

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
  `usu_password` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_telefono` varchar(25) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_direccion` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usu_esta_conectado` int(11) NOT NULL,
  `usu_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Usuarios';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_cedula`, `usu_nombre`, `usu_apellido`, `usu_email`, `usu_login`, `usu_password`, `usu_telefono`, `usu_direccion`, `usu_esta_conectado`, `usu_estado`) VALUES
(1, '1715361026', 'Fernando', 'Schettini', 'fernando@schettini.org', 'fernando', 'clave123', '0981804330', 'La Concepción', 0, 1),
(2, '', 'Daniel Granizo', '', NULL, 'daniel', 'clave123', NULL, NULL, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id` (`cat_id`),
  ADD UNIQUE KEY `cat_nombre` (`cat_nombre`);

--
-- Indices de la tabla `censura`
--
ALTER TABLE `censura`
  ADD PRIMARY KEY (`cen_id`),
  ADD UNIQUE KEY `cen_id` (`cen_id`),
  ADD UNIQUE KEY `cen_nombre` (`cen_nombre`);

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
-- Indices de la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD PRIMARY KEY (`rec_id`),
  ADD UNIQUE KEY `rec_id` (`rec_id`);

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
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `censura`
--
ALTER TABLE `censura`
  MODIFY `cen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
