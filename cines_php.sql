-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2022 a las 11:28:24
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cines_php`
--
CREATE DATABASE IF NOT EXISTS `cines_php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `cines_php`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asisten`
--

DROP TABLE IF EXISTS `asisten`;
CREATE TABLE IF NOT EXISTS `asisten` (
  `idAsisten` int NOT NULL AUTO_INCREMENT,
  `idPersonaFK7` int DEFAULT NULL,
  `idCineFK8` int DEFAULT NULL,
  PRIMARY KEY (`idAsisten`),
  KEY `idPersonaFK7` (`idPersonaFK7`),
  KEY `idCineFK8` (`idCineFK8`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `asisten`
--

INSERT INTO `asisten` (`idAsisten`, `idPersonaFK7`, `idCineFK8`) VALUES
(1, 1, 2),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cines`
--

DROP TABLE IF EXISTS `cines`;
CREATE TABLE IF NOT EXISTS `cines` (
  `idCine` int NOT NULL AUTO_INCREMENT,
  `nombreCine` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ciudadCine` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionCine` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoCine` int DEFAULT NULL,
  `paginaWebCine` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `emailCine` varchar(90) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idCine`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `cines`
--

INSERT INTO `cines` (`idCine`, `nombreCine`, `ciudadCine`, `direccionCine`, `telefonoCine`, `paginaWebCine`, `emailCine`) VALUES
(1, 'Cineapolis', 'Dos Hermanas, Sevilla', 'Avenida España, 1', 955682314, 'www.cineapolis.es', 'cineapolisdoshermanas@cineapolis.com'),
(2, 'CineZona', 'Sevilla', 'Avenidad La Paz, 10', 955675923, 'www.cinezona.com', 'cinezona@cinezona.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `facturaCliente` int DEFAULT NULL,
  `numeroVisitasCliente` int DEFAULT NULL,
  `serSocio` tinyint DEFAULT NULL,
  `idPersonaFK1` int DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `idPersonaFK1` (`idPersonaFK1`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `facturaCliente`, `numeroVisitasCliente`, `serSocio`, `idPersonaFK1`) VALUES
(1, 782654, 9, 1, 2),
(2, 782356, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emision`
--

DROP TABLE IF EXISTS `emision`;
CREATE TABLE IF NOT EXISTS `emision` (
  `idEmision` int NOT NULL AUTO_INCREMENT,
  `idPeliculaFK9` int DEFAULT NULL,
  `idCineFK10` int DEFAULT NULL,
  `fechaEstreno` date DEFAULT NULL,
  `salaEmision` int DEFAULT NULL,
  PRIMARY KEY (`idEmision`),
  KEY `idPeliculaFK9` (`idPeliculaFK9`),
  KEY `idCineFK10` (`idCineFK10`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `emision`
--

INSERT INTO `emision` (`idEmision`, `idPeliculaFK9`, `idCineFK10`, `fechaEstreno`, `salaEmision`) VALUES
(1, 1, 2, '2020-03-15', 5),
(2, 2, 1, '2021-05-12', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `puestoEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `numeroVentasEmpleado` int DEFAULT NULL,
  `idPersonaFK2` int DEFAULT NULL,
  `idEmpleadoJefeFK3` int DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `idPersonaFK2` (`idPersonaFK2`),
  KEY `idEmpleadoJefeFK3` (`idEmpleadoJefeFK3`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `puestoEmpleado`, `numeroVentasEmpleado`, `idPersonaFK2`, `idEmpleadoJefeFK3`) VALUES
(1, 'Supervisor Ventas', 1037, 1, 1),
(3, 'Vendedor', 64, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

DROP TABLE IF EXISTS `entradas`;
CREATE TABLE IF NOT EXISTS `entradas` (
  `idEntrada` int NOT NULL AUTO_INCREMENT,
  `numeroEntradas` int DEFAULT NULL,
  `precioEntrada` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`idEntrada`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`idEntrada`, `numeroEntradas`, `precioEntrada`) VALUES
(1, 890, '4.99'),
(2, 790, '13.50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE IF NOT EXISTS `peliculas` (
  `idPelicula` int NOT NULL AUTO_INCREMENT,
  `tituloPelicula` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `duracionMinutosPelicula` int DEFAULT NULL,
  `idiomaPelicula` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `paisOrigenPelicula` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idPelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idPelicula`, `tituloPelicula`, `duracionMinutosPelicula`, `idiomaPelicula`, `paisOrigenPelicula`) VALUES
(1, 'The Batman', 176, 'Inglés', 'EEUU'),
(2, 'Competencia Oficial', 104, 'Español', 'Español');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `dniPersona` varchar(9) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombrePersona` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `primerApellidoPersona` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `segundoApellidoPersona` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `domicilioPersona` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefonoPersona` varchar(9) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `emailPersona` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idPersona`, `dniPersona`, `nombrePersona`, `primerApellidoPersona`, `segundoApellidoPersona`, `domicilioPersona`, `telefonoPersona`, `emailPersona`) VALUES
(1, '30266349R', 'Cristina', 'Marchante', 'Sánchez', 'Calle Salamanca, 4, 3 Izq.', '637374515', 'cristimarchante@gmail.com'),
(2, '94623787J', 'Ismael', 'Lugo', 'Mora', 'Calle Betis, 39.', '674152248', 'ismamora@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `idVenta` int NOT NULL AUTO_INCREMENT,
  `idEntradaFK4` int DEFAULT NULL,
  `idEmpleadoFK5` int DEFAULT NULL,
  `idClienteFK6` int DEFAULT NULL,
  `fechaVenta` date DEFAULT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idEntradaFK4` (`idEntradaFK4`),
  KEY `idEmpleadoFK5` (`idEmpleadoFK5`),
  KEY `idClienteFK6` (`idClienteFK6`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `idEntradaFK4`, `idEmpleadoFK5`, `idClienteFK6`, `fechaVenta`) VALUES
(1, 1, 1, 1, '2021-02-14'),
(2, 2, 3, 2, '2020-12-23');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asisten`
--
ALTER TABLE `asisten`
  ADD CONSTRAINT `asisten_ibfk_1` FOREIGN KEY (`idCineFK8`) REFERENCES `cines` (`idCine`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `asisten_ibfk_2` FOREIGN KEY (`idPersonaFK7`) REFERENCES `personas` (`idPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`idPersonaFK1`) REFERENCES `personas` (`idPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `emision`
--
ALTER TABLE `emision`
  ADD CONSTRAINT `emision_ibfk_1` FOREIGN KEY (`idPeliculaFK9`) REFERENCES `peliculas` (`idPelicula`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `emision_ibfk_2` FOREIGN KEY (`idCineFK10`) REFERENCES `cines` (`idCine`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idPersonaFK2`) REFERENCES `personas` (`idPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`idEmpleadoJefeFK3`) REFERENCES `empleados` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
