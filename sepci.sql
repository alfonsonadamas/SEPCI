-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2023 a las 04:44:28
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sepci`
--
CREATE DATABASE IF NOT EXISTS `sepci` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sepci`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `about_us_info`
--

CREATE TABLE `about_us_info` (
  `id_aboutus` int(11) NOT NULL,
  `information` mediumtext NOT NULL,
  `root_about_us` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `about_us_info`
--

INSERT INTO `about_us_info` (`id_aboutus`, `information`, `root_about_us`) VALUES
(1, 'Es un órgano democráticamente integrado bajo los lineamientos (puede ser un enlace al documento de bases) emitidos por el Comité de Ética y de Prevención de Conflictos de Interés del TecNM. Su finalidad es promover la ética y la integridad pública, para lograr una mejora constante del clima y la cultura organizacional, dar tratamiento a los señalamientos por desviaciones al código de ética, de conducta, reglas de integridad y demás lineamientos o protocolos y, resolver respecto a consultas por posibles conflictos de interés, impulsando la integridad de los servidores públicos e implementando acciones permanente que fortalezcan el comportamiento ético.', '1/Informe Anual de Actividades 2022.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `members`
--

CREATE TABLE `members` (
  `id_members` int(11) NOT NULL,
  `names` varchar(80) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `root_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `members`
--

INSERT INTO `members` (`id_members`, `names`, `middle_name`, `last_name`, `mail`, `rol`, `root_image`) VALUES
(1, 'Omar', 'Agular', 'García', 'Omar@morelia.tecnm.mx', 'Presidencia', 'imagen'),
(2, 'Carlos Fabián', 'Escudero', 'García', 'CarlosFabian@morelia.tecnm.mx', 'Presidencia (Suplente)', 'Imagen'),
(3, 'Paulina', 'López', 'López', 'Paulina@morelia.tecnm.mx', 'Secretaría Ejecutiva', 'Imagen'),
(4, 'Erika', 'Guzmán', 'Cendejas', 'Erika@morelia.tecnm.mx', 'Secretaría Ejecutiva (Suplente)', 'Imagen'),
(5, 'Margarita', 'López', 'Perea', 'margarita@morelia.tecnm.mx', 'Secretaría Técnica', 'Imagen'),
(6, 'Luis Antonio', 'Solache', 'Hernádez', 'Luisantonio@morelia.tecnm.mx', 'Secretaría Técnica (Suplente)', 'Imagen'),
(7, 'Liliana Patricia', 'Ferreyra', 'Herrera', 'Liliana@morelia.tecnm.mx', 'Miembro Propietario', 'Imagen'),
(8, 'Christian Omar', 'Martínez', 'Cámara', 'Christian@morelia.tecnm.mx', 'Miembro (Suplente)', 'Imagen'),
(9, 'Yalanda Patricia', 'García', 'Aguirre', 'Yolanda@morelia.tecnm.mx', 'Miembro Propietario', 'Imagen'),
(10, 'Roberto', 'Young ', 'Peraldi', 'Roberto@morelia.tecnm.mx', 'Miembro (Suplente)', 'Imagen'),
(11, 'Nancy', 'Becerra', 'Corona', 'Nancy@morelia.tecnm.mx', 'Miembro Propietario', 'Imagen'),
(12, 'Héctor', 'Suárez', 'Aparicio', 'Hector@morelia.tecnm.mx', 'Miembro (Suplente)', 'Imagen'),
(13, 'Maria del Lucero', 'Castro', 'García', 'Maria@morelia.tecnm.mx', 'Persona Asesora', 'Imagen'),
(14, 'Norma Evelina', 'Rodríguez', 'Ferreira', 'Norma@morelia.tecnm.mx', 'Persona Consejera', 'Imagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `root_sliderImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `name`, `mail`, `password`) VALUES
(1, 'ITM-Admin01', 'romanch422@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `about_us_info`
--
ALTER TABLE `about_us_info`
  ADD PRIMARY KEY (`id_aboutus`);

--
-- Indices de la tabla `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id_members`);

--
-- Indices de la tabla `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `about_us_info`
--
ALTER TABLE `about_us_info`
  MODIFY `id_aboutus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `members`
--
ALTER TABLE `members`
  MODIFY `id_members` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
