-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2025 a las 23:33:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_nazarigo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bar`
--

CREATE TABLE `bar` (
  `tapasAElegir` tinyint(1) DEFAULT NULL,
  `juegosDeMesa` tinyint(1) DEFAULT NULL,
  `deportes` tinyint(1) DEFAULT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_artistico`
--

CREATE TABLE `evento_artistico` (
  `artista` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `duracion` varchar(200) NOT NULL,
  `coste` varchar(200) NOT NULL,
  `aforo` int(10) NOT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_cultural`
--

CREATE TABLE `evento_cultural` (
  `historia` varchar(200) DEFAULT NULL,
  `festividad` varchar(200) DEFAULT NULL,
  `duracion` varchar(200) NOT NULL,
  `coste` varchar(200) NOT NULL,
  `aforo` int(30) NOT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_deportivo`
--

CREATE TABLE `evento_deportivo` (
  `tipoDeDeporte` varchar(200) DEFAULT NULL,
  `tipoDeCompeticion` varchar(200) DEFAULT NULL,
  `duracion` varchar(200) NOT NULL,
  `coste` varchar(200) NOT NULL,
  `aforo` int(10) NOT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocionocturno`
--

CREATE TABLE `ocionocturno` (
  `edad` int(3) DEFAULT NULL,
  `reserva` varchar(200) DEFAULT NULL,
  `lista` varchar(200) DEFAULT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `punto_de_interes`
--

CREATE TABLE `punto_de_interes` (
  `añoFundacion` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `vista` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `distancia` varchar(200) DEFAULT NULL,
  `horarioRecomendado` varchar(200) DEFAULT NULL,
  `movilidad` varchar(200) DEFAULT NULL,
  `añoFundacion` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `vista` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
