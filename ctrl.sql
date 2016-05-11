-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2016 a las 16:47:03
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ctrl`
--
CREATE DATABASE IF NOT EXISTS `ctrl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ctrl`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctrl_sesion`
--

CREATE TABLE IF NOT EXISTS `ctrl_sesion` (
`id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` char(32) NOT NULL,
  `name` varchar(75) NOT NULL,
  `lastname` varchar(75) NOT NULL,
  `type_access` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctrl_sesion`
--

INSERT INTO `ctrl_sesion` (`id`, `user_name`, `password`, `name`, `lastname`, `type_access`, `status`) VALUES
(1, 'ciborg_ascend', 'mipass', 'Nombre', 'Apellido', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctrl_status`
--

CREATE TABLE IF NOT EXISTS `ctrl_status` (
`id` int(11) NOT NULL,
  `name_status` varchar(15) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctrl_status`
--

INSERT INTO `ctrl_status` (`id`, `name_status`, `description`) VALUES
(1, 'active', 'user active'),
(2, 'inactive', 'user inactive');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctrl_type_access`
--

CREATE TABLE IF NOT EXISTS `ctrl_type_access` (
`id` int(11) NOT NULL,
  `name_type` varchar(15) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctrl_type_access`
--

INSERT INTO `ctrl_type_access` (`id`, `name_type`, `description`) VALUES
(1, 'administrator', 'full control'),
(2, 'only_user', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ctrl_sesion`
--
ALTER TABLE `ctrl_sesion`
 ADD PRIMARY KEY (`id`), ADD KEY `id_type_access` (`type_access`), ADD KEY `id_Status` (`status`);

--
-- Indices de la tabla `ctrl_status`
--
ALTER TABLE `ctrl_status`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ctrl_type_access`
--
ALTER TABLE `ctrl_type_access`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ctrl_sesion`
--
ALTER TABLE `ctrl_sesion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ctrl_status`
--
ALTER TABLE `ctrl_status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ctrl_type_access`
--
ALTER TABLE `ctrl_type_access`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ctrl_sesion`
--
ALTER TABLE `ctrl_sesion`
ADD CONSTRAINT `status_id` FOREIGN KEY (`status`) REFERENCES `ctrl_status` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `type_access` FOREIGN KEY (`type_access`) REFERENCES `ctrl_type_access` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
