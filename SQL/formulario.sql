-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-06-2023 a las 16:52:48
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
-- Base de datos: `formulario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(12) NOT NULL,
  `candidatos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `candidatos`) VALUES
(1, 'Goku'),
(2, 'Vegeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id` int(12) NOT NULL,
  `nom_comuna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id`, `nom_comuna`) VALUES
(17, 'Arica'),
(17, 'Camarones'),
(17, 'General Lagos'),
(17, 'Putre'),
(18, 'Alto Hospicio'),
(18, 'Iquique'),
(18, 'Camiña'),
(18, 'Colchane'),
(18, 'Huara'),
(18, 'Pica'),
(18, 'Pozo Almonte'),
(19, 'Antofagasta'),
(19, 'Mejillones'),
(19, 'Sierra Gorda'),
(19, 'Taltal'),
(19, 'Calama'),
(19, 'Ollague'),
(19, 'San Pedro de Atacama'),
(19, 'María Elena'),
(19, 'Tocopilla'),
(20, 'Chañaral'),
(20, 'Diego de Almagro'),
(20, 'Caldera'),
(20, 'Copiapó'),
(20, 'Tierra Amarilla'),
(20, 'Alto del Carmen'),
(20, 'Freirina'),
(20, 'Huasco'),
(20, 'Vallenar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id` int(11) NOT NULL,
  `respuesta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id`, `respuesta`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id` int(12) NOT NULL,
  `nom_region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id`, `nom_region`) VALUES
(17, 'Región de Arica y Parinacota'),
(18, 'Region de Tarapacá'),
(19, 'Region de Antofagasta'),
(20, 'Región de Atacama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes`
--

CREATE TABLE `votantes` (
  `votantes` int(12) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `email` varchar(60) NOT NULL,
  `region` varchar(100) NOT NULL,
  `comuna` varchar(70) NOT NULL,
  `candidato` varchar(60) NOT NULL,
  `encuesta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `votantes`
--

INSERT INTO `votantes` (`votantes`, `nombre`, `alias`, `rut`, `email`, `region`, `comuna`, `candidato`, `encuesta`) VALUES
(73, 'Juan Perez', 'juan123', '66666333-6', 'agusta@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,redesSociales'),
(74, 'Juan Perez', 'juan123', '68666333-6', 'agusta@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,redesSociales,amigo'),
(75, 'Juan Perez', 'juan123', '88888888-6', 'agusta@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,TV,redesSociales,amigo'),
(76, 'Juan Perez', 'juan123', '55222222-5', 'agusta@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,redesSociales'),
(77, 'Juan Perez', 'juan123', '88444444-6', 'oliver@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,TV'),
(78, 'Rodney Mullen', 'juan123', '55666999-3', 'oliver@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,TV'),
(79, 'ultimo candidato', 'juan123', '44444777-9', 'oliver@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Vegeta', 'web,TV,redesSociales,amigo'),
(80, 'brown eyes', 'uuuu6', '11569587-k', 'agusta@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Vegeta', 'web,redesSociales'),
(81, 'Rodney Mullen', 'juan123', '99999222-8', 'nodemailerMD@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,amigo'),
(82, 'Juan Perez', '555ee', '88555333-5', 'agusta@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Vegeta', 'web,TV'),
(83, 'lala lala', '555ee', '77777744-1', 'oliver@gmail.com', 'Región de Arica y Parinacota', 'Arica', 'Goku', 'web,amigo'),
(84, 'llama llama', '555ee', '33222222-8', 'agusta@gmail.com', 'Region de Antofagasta', 'Antofagasta', 'Goku', 'web,redesSociales'),
(85, 'loa loca', '555ee', '33222272-8', 'agusta@gmail.com', 'Region de Antofagasta', 'Antofagasta', 'Goku', 'web,TV,redesSociales,amigo'),
(86, 'Rodney Mullen', '555ee', '11111111-3', 'oliver@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Goku', 'web,TV,redes_sociales,amigo'),
(87, 'Juan Perez', 'juan123', '22222222-6', 'agusta@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Goku', 'redesSociales,amigo'),
(88, 'Rodney Mullen', 'juan123', '99555222-6', 'agusta@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Goku', 'TV,redes Sociales'),
(89, 'COMUNA COMUNA', '555ee', '99999999-9', 'agusta@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Goku', 'web,TV'),
(90, 'Juan Perez', '555ee', '22222222-8', 'agusta@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Goku', 'web,redes Sociales'),
(91, 'ss dd', 'ss333', '44111111-k', 'agusta@gmail.co', 'Region de Antofagasta', 'Antofagasta', 'Vegeta', 'web,TV'),
(92, 'Rodney Mullen', 'juan123', '77444666-5', 'agusta@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Goku', 'web,TV'),
(93, 'ultimo ppppp', 'ddd44', '66222111-8', 'agusta@gmail.cl', 'Region de Tarapacá', 'Alto Hospicio', 'Goku', 'web,amigo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidatos` (`candidatos`),
  ADD KEY `candidatos_2` (`candidatos`),
  ADD KEY `candidatos_3` (`candidatos`),
  ADD KEY `candidatos_4` (`candidatos`),
  ADD KEY `candidatos_5` (`candidatos`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD PRIMARY KEY (`votantes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `votantes`
--
ALTER TABLE `votantes`
  MODIFY `votantes` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `region` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
