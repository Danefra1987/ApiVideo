-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-06-2021 a las 14:46:14
-- Versión del servidor: 5.7.32-35-log
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbhqf8khk1m0e7`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `adm_id` int(11) NOT NULL,
  `adm_usuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `adm_clave` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Administradores';

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`adm_id`, `adm_usuario`, `adm_clave`, `nad_id`) VALUES
(1, 'fernandoadm', 'pwd6453*/EE', -1),
(2, 'fernando', 'pwd6453*/EE', 1),
(3, 'danieladm', 'clave1234', -1);

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
(1, 'Acción', 'https://fernandor26.sg-host.com/imgs/categorias/accion.jpg', 1),
(2, 'Ficción', 'https://fernandor26.sg-host.com/imgs/categorias/ficcion.jpg', 1),
(3, 'Romance', 'https://fernandor26.sg-host.com/imgs/categorias/romance.jpg', 1),
(4, 'Infantil', 'https://fernandor26.sg-host.com/imgs/categorias/infantil.jpg', 1),
(5, 'Terror', 'https://fernandor26.sg-host.com/imgs/categorias/terror.jpg', 1),
(6, 'Drama', 'https://fernandor26.sg-host.com/imgs/categorias/drama.jpg', 1),
(7, 'Comedia', 'https://fernandor26.sg-host.com/imgs/categorias/comedia.jpg', 1),
(8, 'Suspenso', 'https://fernandor26.sg-host.com/imgs/categorias/suspenso.jpg', 1),
(9, 'Aventura', 'https://fernandor26.sg-host.com/imgs/categorias/aventura.jpg', 1),
(10, 'Musical', 'https://fernandor26.sg-host.com/imgs/categorias/musical.jpg', 1),
(11, 'Documental', 'https://fernandor26.sg-host.com/imgs/categorias/documental.jpg', 1),
(12, 'Zombies', 'https://fernandor26.sg-host.com/imgs/categorias/zombies.jpg', 1),
(13, 'Artes Marciales', 'https://fernandor26.sg-host.com/imgs/categorias/artes-marciales.jpg', 1),
(14, 'Animadas', 'https://fernandor26.sg-host.com/imgs/categorias/animadas.jpg', 1),
(15, 'Fantasía', 'https://fernandor26.sg-host.com/imgs/categorias/fantasia.jpg', 1),
(16, 'Historia', 'https://fernandor26.sg-host.com/imgs/categorias/historia.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_recurso`
--

CREATE TABLE `categoria_recurso` (
  `cre_id` int(11) NOT NULL,
  `cre_nombre` varchar(100) NOT NULL,
  `cre_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de Categorías de Recursos';

--
-- Volcado de datos para la tabla `categoria_recurso`
--

INSERT INTO `categoria_recurso` (`cre_id`, `cre_nombre`, `cre_estado`) VALUES
(1, 'CarruselInicio', 1),
(2, 'ImagenInicio', 1),
(3, 'GifCargar', 1),
(4, 'LinksApi', 1),
(5, 'LogoInicio', 1),
(6, 'LogoCabeceraCarrusel', 1),
(7, 'IconoLogo', 1);

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
(1, 'Películas', 'https://fernandor26.sg-host.com/imgs/modulos/peliculas.jpg', 1),
(2, 'Series', 'https://fernandor26.sg-host.com/imgs/modulos/series.jpg', 1),
(3, 'Dibujos', 'https://fernandor26.sg-host.com/imgs/modulos/dibujos.jpg', 1),
(4, 'Música', 'https://fernandor26.sg-host.com/imgs/modulos/musica.jpg', 1),
(5, 'Streaming', 'https://fernandor26.sg-host.com/imgs/modulos/streaming.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_adm`
--

CREATE TABLE `nivel_adm` (
  `nad_id` int(11) NOT NULL,
  `nad_nombre` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `nivel_adm`
--

INSERT INTO `nivel_adm` (`nad_id`, `nad_nombre`) VALUES
(-2, 'Anónimo'),
(-1, 'Administrator'),
(0, 'Default'),
(1, 'Editor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_permiso_adm`
--

CREATE TABLE `nivel_permiso_adm` (
  `nad_id` int(11) NOT NULL,
  `npa_tabla` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `npa_permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `nivel_permiso_adm`
--

INSERT INTO `nivel_permiso_adm` (`nad_id`, `npa_tabla`, `npa_permiso`) VALUES
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}administrador', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}categoria', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}categoria_recurso', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}censura', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}modulo', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}nivel_adm', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}nivel_permiso_adm', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}pelicula', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}recurso', 0),
(-2, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}usuario', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}administrador', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}categoria', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}categoria_recurso', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}censura', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}modulo', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}nivel_adm', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}nivel_permiso_adm', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}pelicula', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}recurso', 0),
(0, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}usuario', 0),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}administrador', 96),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}categoria', 111),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}categoria_recurso', 96),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}censura', 111),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}modulo', 104),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}nivel_adm', 96),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}nivel_permiso_adm', 96),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}pelicula', 111),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}recurso', 96),
(1, '{80F91A72-D8BE-463C-952C-6E7D8A4943A4}usuario', 111);

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
(1, 'Mulan', 'https://fernandor26.sg-host.com/imgs/peliculas/Mulan-900.jpg', 'descripción1', '1h20', '2021', 'Todo Público', 'Robert de Niro, Nicole Kidman', 'Acción,Drama,Ficción,Infantil', 0, 1, 6, 1, 'http://200.24.139.103:8816/mulan.mkv'),
(5, 'Mulan 2', 'https://fernandor26.sg-host.com/imgs/peliculas/Mulan-150.jpg', 'descripción1', '1h20', '2021', 'Todo Público', 'Robert de Niro, Nicole Kidman', 'Acción,Drama,Ficción,Infantil', 0, 1, 6, 1, 'http://200.24.139.103:8816/mulan.mkv'),
(6, 'Avengers 2', 'https://fernandor26.sg-host.com/imgs/peliculas/Mulan-200.jpg', 'descripción1', '1h20', '2021', 'Todo Público', 'Robert de Niro, Nicole Kidman', 'Acción,Drama,Ficción,Infantil', 0, 1, 2, 1, 'http://200.24.139.103:8816/mulan.mkv'),
(7, 'Avengers EndGame', 'https://fernandor26.sg-host.com/imgs/peliculas/Mulan-300.jpg', 'descripción1', '1h20', '2021', 'Todo Público', 'Robert de Niro, Nicole Kidman', 'Acción,Drama,Ficción,Infantil', 0, 1, 2, 1, 'http://200.24.139.103:8816/mulan.mkv'),
(8, 'Malcon', 'https://fernandor26.sg-host.com/imgs/peliculas/Mulan-900.jpg', 'descripción1', '1h20', '2021', 'Todo Público', 'Robert de Niro, Nicole Kidman', 'Acción,Drama,Ficción,Infantil', 0, 2, 4, 1, 'http://200.24.139.103:8816/mulan.mkv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `rec_id` int(11) NOT NULL,
  `rec_campo` varchar(150) NOT NULL,
  `rec_valor` varchar(300) NOT NULL,
  `cre_id` int(11) NOT NULL,
  `rec_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de Recursos Gráficos';

--
-- Volcado de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`rec_id`, `rec_campo`, `rec_valor`, `cre_id`, `rec_estado`) VALUES
(1, 'Carrusel01', 'https://fernandor26.sg-host.com/imgs/carrusel/carrusel-01.jpg', 1, 1),
(2, 'Carrusel02', 'https://fernandor26.sg-host.com/imgs/carrusel/carrusel-02.jpg', 1, 1),
(3, 'LogoInicio', 'https://fernandor26.sg-host.com/imgs/logos/logo-inicio.png', 5, 1),
(5, 'Carrusel03', 'https://fernandor26.sg-host.com/imgs/carrusel/carrusel-03.jpg', 1, 1),
(6, 'Carrusel04', 'https://fernandor26.sg-host.com/imgs/carrusel/carrusel-04.jpg', 1, 1),
(7, 'ObtenerModulos', 'http://api.fernandor26.sg-host.com/modulo.php', 4, 1),
(8, 'ObtenerCategorias', 'https://api.fernandor26.sg-host.com/categoria.php', 4, 1),
(9, 'ObtenerPelículas', 'https://api.fernandor26.sg-host.com/pelicula.php', 4, 1),
(10, 'ObtenerPeliculasCategoria', 'http://api.fernandor26.sg-host.com/pelicula.php?vcate=', 4, 1),
(11, 'ObtenerUsuarioCedula', 'https://api.fernandor26.sg-host.com/usuario.php?vusu=', 4, 1),
(12, 'ObtenerPeliculaNombre', 'https://api.fernandor26.sg-host.com/pelicula.php?vpel=', 4, 1),
(13, 'ObtenerRecursoTipo', 'https://api.fernandor26.sg-host.com/recurso.php?vrec=', 4, 1),
(14, 'LogoCabeceraCarrusel', 'https://fernandor26.sg-host.com/imgs/logos/logo-cabecera-carrusel.png', 6, 1),
(15, 'IconoLogo', 'https://fernandor26.sg-host.com/imgs/logos/icono-logo-blanco.png', 7, 1);

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
  `usu_max_conectado` int(11) NOT NULL,
  `usu_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Tabla de Usuarios';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_cedula`, `usu_nombre`, `usu_apellido`, `usu_email`, `usu_login`, `usu_password`, `usu_telefono`, `usu_direccion`, `usu_esta_conectado`, `usu_max_conectado`, `usu_estado`) VALUES
(1, '1715361026', 'Fernando', 'Schettini', 'fernando@schettini.org', 'fernando', 'clave123', '0981804330', 'La Concepción', 0, 2, 1),
(2, '1717171717', 'Daniel', 'Granizo', NULL, 'daniel', 'clave123', NULL, NULL, 0, 3, 1),
(3, '1713626271', 'Alexander', 'Salgado', 'alx.salgado.c@outlook.com', 'alex', 'clave123', '0987654231', 'coca', 0, 4, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`adm_id`),
  ADD UNIQUE KEY `adm_usuario` (`adm_usuario`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id` (`cat_id`),
  ADD UNIQUE KEY `cat_nombre` (`cat_nombre`);

--
-- Indices de la tabla `categoria_recurso`
--
ALTER TABLE `categoria_recurso`
  ADD PRIMARY KEY (`cre_id`);

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
-- Indices de la tabla `nivel_adm`
--
ALTER TABLE `nivel_adm`
  ADD PRIMARY KEY (`nad_id`);

--
-- Indices de la tabla `nivel_permiso_adm`
--
ALTER TABLE `nivel_permiso_adm`
  ADD PRIMARY KEY (`nad_id`,`npa_tabla`);

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
  ADD UNIQUE KEY `usu_id` (`usu_id`),
  ADD UNIQUE KEY `usu_cedula` (`usu_cedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `categoria_recurso`
--
ALTER TABLE `categoria_recurso`
  MODIFY `cre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `censura`
--
ALTER TABLE `censura`
  MODIFY `cen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `pel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
