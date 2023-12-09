-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2023 a las 00:55:59
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
(1, 'Es un órgano democráticamente integrado bajo los lineamientos (puede ser un enlace al documento de bases) emitidos por el Comité de Ética y de Prevención de Conflictos de Interés del TecNM. Su finalidad es promover la ética y la integridad pública, para lograr una mejora constante del clima y la cultura organizacional, dar tratamiento a los señalamientos por desviaciones al código de ética, de conducta, reglas de integridad y demás lineamientos o protocolos y, resolver respecto a consultas por posibles conflictos de interés, impulsando la integridad de los servidores públicos e implementando acciones permanente que fortalezcan el comportamiento ético.......                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', '1/Abril-Recomendaciones-cinematograficas.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complaints`
--

CREATE TABLE `complaints` (
  `id_complaint` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `tel_number` varchar(10) NOT NULL,
  `full_nameA` varchar(100) NOT NULL,
  `positionA` varchar(50) NOT NULL,
  `succint` mediumtext NOT NULL,
  `evidence` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `complaints`
--

INSERT INTO `complaints` (`id_complaint`, `full_name`, `mail`, `tel_number`, `full_nameA`, `positionA`, `succint`, `evidence`, `date`, `status`) VALUES
(1, '', '', '4434730754', 'Servando ', 'Profesor', 'Me dijo tonto', 'rootNueva', '2023-11-21', 2),
(2, 'Diego Ambriz', 'l20120077@morelia.tecnm.mx', '4434730754', 'Servando ', 'Profesor', 'Me dijo tonto', NULL, '2023-11-21', 1),
(3, 'Diego Ambriz', 'l20120077@morelia.tecnm.mx', '4434730754', 'Servando ', 'Profesor', 'Me dijo tonto', '3/Abril-Recomendaciones-cinematograficas.pdf', '2023-11-21', 1),
(4, 'Diego Ambriz', 'l20120077@morelia.tecnm.mx', '4434730754', 'Servando ', 'Profesor', 'tonto', '4/Informe Anual de Actividades 2022.pdf', '2023-11-21', 0),
(5, 'name', 'mail', 'tel', 'nameA', 'posA', 'succint', 'root', '2023-11-21', 2),
(6, 'name', 'mail', 'tel', 'nameA', 'posA', 'succint', 'root', '2023-11-22', 1),
(7, '', '', '3245769087', 'Andres', 'Alunmo', 'no se ', NULL, '2023-11-22', 1),
(8, 'Alejandro', 'alejadro@gmail.com', '9876542345', 'Servando', 'Profesor', 'No le sabe', '8/M00-SC-AC-026_PROC.pdf', '2023-11-22', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id_course` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_descrip` text NOT NULL,
  `root_course` varchar(30) NOT NULL,
  `tipo` varchar(11) NOT NULL,
  `contenido` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id_course`, `course_name`, `course_descrip`, `root_course`, `tipo`, `contenido`) VALUES
(31, 'Curso 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris laoreet urna magna, vel tempus dolor pulvinar at. Etiam dui nunc, varius sed ante a, varius ullamcorper arcu. Nunc gravida felis neque, a sollicitudin magna tempor vel. Phasellus est lorem, convallis in varius sollicitudin, mattis quis magna. Cras feugiat libero sit amet nisl bibendum, ac porttitor metus ornare. Duis bibendum aliquam augue, a sagittis nisi fermentum nec. ', '1/9teacher.ico', 'link', 'https://www.morelia.tecnm.mx/#/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `root` varchar(250) DEFAULT NULL,
  `section` varchar(10) NOT NULL,
  `video` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `documents`
--

INSERT INTO `documents` (`id_document`, `name`, `root`, `section`, `video`) VALUES
(2, '¿Qué es un conflicto de interes?', '1/GU_A_PARA_LA_IDENTIFICACI_N_Y_GESTI_N_DE_CONFLICTOS_DE_INTERESES (1).PDF', '1', 'BmCy1KXvjyE'),
(3, 'Protocolo para la prevencion del hostigamiento y acoso sexual', '1/ANEXO_1_Protocolo_HSyAS.pdf', '2A', ''),
(4, 'Pronunciamiento cero tolerancia', '1/PRONUNCIAMIENTO_CERO_TOLERANCIA.pdf', '2A', ''),
(5, 'Protocolo para la discriminación', '1/Protocolo_Discriminaci_n.pdf', '2B', NULL),
(6, 'Atencion de denuncias sobre actos u omisiones en contra de las normas éticas', '1/M00-SC-AC-026_PROC.pdf', '2B', ''),
(7, 'Sopa de Letras', '1/Sopa-de-Letras-Princios-y-Valores.pdf', '3', ''),
(8, 'Eti-Peliculas', '1/Abril-Recomendaciones-cinematograficas.pdf', '3', ''),
(9, 'Eti-Lecturas', '1/Abril-Recomendaciones-literarias.pdf', '3', ''),
(10, 'Codigo de Etica de la Administración Pública Federal', '1/SFP-CE-2022_Codigo_de_Etica.pdf', '4A', ''),
(11, 'Codigo de Etica de la APF', NULL, '4B', 'EXonq434Zng'),
(13, 'Los principios y valores del servicio publico', NULL, '4C', 'BmCy1KXvjyE'),
(14, 'Declaración Patrimonial', NULL, '5', 'LgUf56QJLP0'),
(15, 'Codigo de conducta', '1/PRINCIPAL _M00-CC-01_Codigo_de_Conducta_del_TecNM.pdf', '6', NULL),
(16, 'Prontuario para el uso de lenguaje incluyente', '1/PRONTUARIO_LenguajeIncluyente.pdf', '7', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_section`
--

CREATE TABLE `document_section` (
  `id_docsec` int(11) NOT NULL,
  `name_section` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `document_section`
--

INSERT INTO `document_section` (`id_docsec`, `name_section`) VALUES
(1, 'Prevención de actuación bajo conflictos de interés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_type`
--

CREATE TABLE `document_type` (
  `id_doctp` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `document_type`
--

INSERT INTO `document_type` (`id_doctp`, `type`) VALUES
(1, 'Archivo'),
(2, 'Imagen'),
(3, 'Video');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_file` int(11) NOT NULL,
  `id_docsec` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `root` varchar(100) NOT NULL,
  `page_section` int(11) NOT NULL,
  `document_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_file`, `id_docsec`, `name`, `root`, `page_section`, `document_type`) VALUES
(1, NULL, 'Informe Anual de Actividades', '1/Fichas 20_10_23.pdf', 1, 1);

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
(1, 'Omar', 'Agular', 'García', 'cero.tolerancia@morelia.tecnm.mx', 'Presidencia', '1/Omar Aguilar Garcia.jpg'),
(2, 'Carlos Fabián', 'Escudero', 'García', 'cero.tolerancia@morelia.tecnm.mx', 'Presidencia (Suplente)', '2/usu.png'),
(3, 'Elizabeth Rocío', 'Zavala ', 'Cervantes', 'elizabeth.zc@morelia.tecnm.mx', 'Secretaría Ejecutiva', '3/Elizabeth Rocio Zavala Cervantes.jpg'),
(4, 'Erika', 'Guzmán', 'Cendejas', 'erika.gc@morelia.tecnm.mx', 'Secretaría Ejecutiva (Suplente)', '4/usu.png'),
(5, 'Margarita', 'López', 'Perea', 'margarita.lp@morelia.tecnm.mx', 'Secretaría Técnica', '5/Margarita Lopez Perea.jpg'),
(6, 'José Cuitláhuac ', 'Guzmán ', 'Hernández', 'jose.gh@morelia.tecnm.mx', 'Secretaría Técnica (Suplente)', '6/Jose Cuitlahuac Guzman Hernandez.jpg'),
(7, 'María Alejandra', 'Vázquez ', 'Zamudio', 'maria.vz@morelia.tecnm.mx', 'Miembro Propietario', '7/Maria Alejandra Vazquez Zamudio.jpg'),
(8, 'Yolanda Patricia ', 'García ', 'Aguirre', 'yolanda.ga2@morelia.tecnm.mx', 'Miembro Propietario', '8/Yolanda Patricia Garcia Aguirre.jpg'),
(9, 'Nancy ', 'Barrera ', 'Corona', 'nancy.bc@morelia.tecnm.mx', 'Miembro Propietario', '9/Nancy Barrera Corona.jpg'),
(10, 'Martha Estefanía ', 'Pérez ', 'Mendoza', 'martha.pm@morelia.tecnm.mx', 'Miembro (Suplente)', '10/Martha Estefania Perez Mendoza.jpg'),
(11, 'Roberto ', 'Becerra', 'Peraldi', 'roberto.yp@morelia.tecnm.mx', 'Miembro (Suplente)', '11/Roberto Young Peraldi.jpg'),
(12, 'Héctor', 'Suarez ', 'Aparicio', 'hector.sa@morelia.tecnm.mx', 'Miembro (Suplente)', '12/Hector Suarez Aparicio.jpg'),
(13, 'Salvador ', 'Pérez ', 'Alcaraz', 'salvador.pa@morelia.tecnm.mx', 'Persona Asesora', '13/Salvador Perez Alcazar.jpg'),
(14, 'Berenice ', 'Zamilpa ', 'Quiroz', 'berenice.zq@morelia.tecnm.mx', 'Persona Consejera', '14/Berenice Zamilpa Quiroz.jpg'),
(15, 'Tereza ', 'Villaseñor ', 'Jacuinde', 'tereza.vj@morelia.tecnm.mx', 'Persona Consejera', '15/Tereza Villaseñor Jacuinde.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_section`
--

CREATE TABLE `page_section` (
  `id_pgsection` int(11) NOT NULL,
  `section_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `page_section`
--

INSERT INTO `page_section` (`id_pgsection`, `section_name`) VALUES
(1, 'Inicio'),
(2, 'Capacitate '),
(3, 'Documentos'),
(4, 'Buzon de atencion'),
(5, 'Contacto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `root_sliderImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `slider`
--

INSERT INTO `slider` (`id_slider`, `root_sliderImage`) VALUES
(5, '10/carrusel.png');

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
(1, 'ITM-Admin01', 'romanch422@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(2, 'ITM-Admin02', 'gallardoalfonso01@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id_course`);

--
-- Indices de la tabla `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_document`);

--
-- Indices de la tabla `document_section`
--
ALTER TABLE `document_section`
  ADD PRIMARY KEY (`id_docsec`);

--
-- Indices de la tabla `document_type`
--
ALTER TABLE `document_type`
  ADD PRIMARY KEY (`id_doctp`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `file_docsection` (`id_docsec`),
  ADD KEY `file_pgsection` (`page_section`),
  ADD KEY `file_doctype` (`document_type`);

--
-- Indices de la tabla `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id_members`);

--
-- Indices de la tabla `page_section`
--
ALTER TABLE `page_section`
  ADD PRIMARY KEY (`id_pgsection`);

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
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `document_section`
--
ALTER TABLE `document_section`
  MODIFY `id_docsec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `document_type`
--
ALTER TABLE `document_type`
  MODIFY `id_doctp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `members`
--
ALTER TABLE `members`
  MODIFY `id_members` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `page_section`
--
ALTER TABLE `page_section`
  MODIFY `id_pgsection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `file_docsection` FOREIGN KEY (`id_docsec`) REFERENCES `document_section` (`id_docsec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_doctype` FOREIGN KEY (`document_type`) REFERENCES `document_type` (`id_doctp`),
  ADD CONSTRAINT `file_pgsection` FOREIGN KEY (`page_section`) REFERENCES `page_section` (`id_pgsection`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
