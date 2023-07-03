-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-07-2023 a las 08:48:10
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
(20, 'Vallenar'),
(21, 'Andacollo'),
(21, 'Coquimbo'),
(21, 'La Higuera'),
(21, 'La Serena'),
(21, 'Paihuano'),
(21, 'Vicuña'),
(21, 'Combarbalá'),
(21, 'Monte Patria'),
(21, 'Ovalle'),
(21, 'Punitaqui'),
(21, 'Río Hurtado'),
(21, 'Canela'),
(21, 'Illapel'),
(21, 'Los Vilos'),
(21, 'Salamanca'),
(22, 'Rapa Nui'),
(22, 'Calle Larga'),
(22, 'Los Andes'),
(22, 'Rinconada'),
(22, 'San Esteban'),
(22, 'Cabildo'),
(22, 'La Ligua'),
(22, 'Papudo'),
(22, 'Petorca'),
(22, 'Zapallar'),
(22, 'Hijuelas'),
(22, 'La Calera'),
(22, 'La Cruz'),
(22, 'Nogales'),
(22, 'Quillota'),
(22, 'Algarrobo'),
(22, 'Cartagena'),
(22, 'Cartagena'),
(22, 'Qisco'),
(22, 'El Tabo'),
(22, 'San Antonio'),
(22, 'Santo Domingo'),
(22, 'Catemu'),
(22, 'Llay-Llay'),
(22, 'Panquehue'),
(22, 'Putaendo'),
(22, 'San Felipe'),
(22, 'Santa María'),
(22, 'Casa Blanca'),
(22, 'Concón'),
(22, 'Juan Fernández'),
(22, 'Puchuncaví'),
(22, 'Quintero'),
(22, 'Valparaíso'),
(22, 'Viña del Mar'),
(22, 'Limache'),
(22, 'Olmué'),
(22, 'Quilpué'),
(22, 'Villa Alemana'),
(23, 'Colina'),
(23, 'Lampa'),
(23, 'Til Til'),
(23, 'Pirque'),
(23, 'Puenta Alto'),
(23, 'San José de Maipo'),
(23, 'Buin'),
(23, 'Calera de Tango'),
(23, 'Paine'),
(23, 'San Bernardo'),
(23, 'Alhué'),
(23, 'Curacaví'),
(23, 'María Pinto'),
(23, 'Melipilla'),
(23, 'San Pedro'),
(23, 'Cerrillos'),
(23, 'Cerro Navia'),
(23, 'Conchalí'),
(23, 'El Bosque'),
(23, 'Estación Central'),
(23, 'Huechuraba'),
(23, 'Independencia'),
(23, 'La Cisterna'),
(23, 'La Granja'),
(23, 'La Florida'),
(23, 'La Pintana'),
(23, 'La Reina'),
(23, 'Las Condes'),
(23, 'Lo Barnechea'),
(23, 'Lo Espejo'),
(23, 'Lo Prado'),
(23, 'Macul'),
(23, 'Maipú'),
(23, 'Ñuñoa'),
(23, 'Pedro Aguirre Cerda'),
(23, 'Peñalolén'),
(23, 'Providencia'),
(23, 'Pudahuel'),
(23, 'Quilicura'),
(23, 'Quinta Normal'),
(23, 'Recoleta'),
(23, 'Renca'),
(23, 'San Miguel'),
(23, 'San Joaquín'),
(23, 'San Ramón'),
(23, 'Santiago'),
(23, 'Vitacura'),
(23, 'El Monte'),
(23, 'Isla de Maipo'),
(23, 'Padre Hurtado'),
(23, 'Peñaflor'),
(23, 'Talagante'),
(24, 'Codegua'),
(24, 'Coinco'),
(24, 'Coltauco'),
(24, 'Doñihue'),
(24, 'Graneros'),
(24, 'LasCabras'),
(25, 'Cauquenes'),
(25, 'Chanco'),
(25, 'Pelluhue'),
(25, 'Curicó'),
(25, 'Hualañé'),
(25, 'Licantén'),
(26, 'Cobquecura'),
(26, 'Coelemu'),
(26, 'Ninhue'),
(26, 'Portezuelo'),
(26, 'Quirihue'),
(26, 'Ránquil'),
(27, 'Arauco'),
(27, 'Cañete'),
(27, 'Contulmo'),
(27, 'Curanilahue'),
(27, 'Lebu'),
(27, 'Los Álamos'),
(28, 'Carahue'),
(28, 'Cholchol'),
(28, 'Cunco'),
(28, 'Curarrehue'),
(28, 'Freire'),
(28, 'Galvarino'),
(29, 'Mariquina'),
(29, 'Lanco'),
(29, 'Máfil'),
(29, 'Valdivia'),
(29, 'Corral'),
(29, 'Paillaco'),
(30, 'Ancud'),
(30, 'Castro'),
(30, 'Chonchi'),
(30, 'Curaco de Vélez'),
(30, 'Dalcahue'),
(30, 'Puqueldón'),
(31, 'Cisnes'),
(31, 'Guaitecas'),
(31, 'Aysén'),
(31, 'Cochrane'),
(31, 'O\'Higgins'),
(31, 'Tortel'),
(32, 'Antártica'),
(32, 'Cabo de Hornos'),
(32, 'Laguna Blanca'),
(32, 'Punta Arenas'),
(32, 'Río Verde'),
(32, 'San Gregorio');

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
(20, 'Región de Atacama'),
(21, 'Región de Coquimbo'),
(22, 'Región de Valparaíso'),
(23, 'Región Metropolitana'),
(24, 'Región de O\'Higgins'),
(25, 'Rgión del Maule'),
(26, 'Región del Ñuble'),
(27, 'Región del Biobío'),
(28, 'Región de La Araucanía'),
(29, 'Región de Los Ríos'),
(30, 'Región de Los Lagos'),
(31, 'Región de Aysén'),
(32, 'Región de Magallanes');

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
(136, 'Carla Ibarra', 'carla6', '15784521-8', 'carla@gamail.com', 'Región de Arica y Parinacota', 'Arica', 'Vegeta', 'web,redes Sociales'),
(137, 'Valeria Herrera', 'vale3', '17523654-6', 'vale@gmail.com', 'Región de Coquimbo', 'Andacollo', 'Goku', 'redes Sociales,amigo'),
(138, 'Claudia Lopez', 'claudia44', '22154225-k', 'claudia@gmail.com', 'Región Metropolitana', 'Colina', 'Goku', 'web,TV,redes Sociales,amigo'),
(139, 'Jose Campos', 'jose88', '11745365-8', 'jose@gmail.com', 'Region de Antofagasta', 'Antofagasta', 'Vegeta', 'web,TV'),
(140, 'Laura Mora', 'laura22', '22784125-8', 'laura22@gmail.com', 'Region de Tarapacá', 'Alto Hospicio', 'Vegeta', 'TV,redes Sociales'),
(141, 'Marcos Flores', 'marcos66', '12655379-7', 'marcos@gmail.com', 'Región de Valparaíso', 'Rapa Nui', 'Goku', 'TV,amigo'),
(142, 'Cristian Gonzalez', 'cristian4', '11562545-4', 'cristian@gmail.com', 'Región de Coquimbo', 'Andacollo', 'Goku', 'redes Sociales,amigo');

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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `votantes`
--
ALTER TABLE `votantes`
  MODIFY `votantes` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

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
