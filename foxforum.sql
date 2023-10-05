-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 05-10-2023 a las 11:52:28
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `foxforum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reply`
--

CREATE TABLE `reply` (
  `id` bigint NOT NULL,
  `title` varchar(2048) COLLATE utf16_unicode_ci NOT NULL,
  `body` text COLLATE utf16_unicode_ci NOT NULL,
  `id_user` bigint NOT NULL,
  `id_thread` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `reply`
--

INSERT INTO `reply` (`id`, `title`, `body`, `id_user`, `id_thread`) VALUES
(1, 'Mi primer post', 'Este es mi primer post en mi nuevo forum', 1, 1),
(2, 'Mi primer post', 'Este es mi primer post en mi nuevo forum', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thread`
--

CREATE TABLE `thread` (
  `id` bigint NOT NULL,
  `title` varchar(2048) COLLATE utf16_unicode_ci NOT NULL,
  `id_user` bigint NOT NULL,
  `body` varchar(255) COLLATE utf16_unicode_ci DEFAULT NULL,
  `id_thread` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `thread`
--

INSERT INTO `thread` (`id`, `title`, `id_user`, `body`, `id_thread`) VALUES
(1, 'Mi primer title', 1, NULL, NULL),
(2, 'Mi primer title', 1, NULL, NULL),
(3, 'Mi segundo title', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf16_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(512) COLLATE utf16_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `lastname`, `email`, `username`, `password`, `role`) VALUES
(1, 'Eva', 'Lara', 'Velarte', 'evalaravel@gmail.com', 'evalara', 'evalara', 0),
(505, 'Maria', 'Perez', 'Martinez', 'maria@gmail.com', 'mariapema', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reply`
--
ALTER TABLE `reply`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `thread`
--
ALTER TABLE `thread`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
