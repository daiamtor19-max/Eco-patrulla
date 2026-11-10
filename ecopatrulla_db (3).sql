-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2026 a las 20:11:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecopatrulla_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `documento` varchar(30) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `grupo` varchar(10) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `terminos` tinyint(1) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `rol` varchar(20) NOT NULL DEFAULT 'estudiante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `documento`, `usuario`, `correo`, `celular`, `grupo`, `fecha_nacimiento`, `genero`, `password`, `terminos`, `fecha_registro`, `rol`) VALUES
(3, 'julio cesar', '1107072847', 'julio', 'julio@gmail.com', '3053034627', '11-1', '2010-10-02', 'Masculino', '$2y$10$wEg/BS72s39WI/VW/WNL8.mtKWrvuyLesFQIM/aplWHWpIUhck7TO', 1, '2026-09-03 20:35:51', 'administrador'),
(6, 'toma', '1107072848', 'tomasagu', 'ospinatorrejulio@gmail.com', '3053034628', '11-7', '2026-09-10', 'Masculino', '$2y$10$kTkYkOii60EdErLu7wbhXezHwHi0A4bPcCaGy/EOyAz51mvsZ9lL6', 1, '2026-09-15 20:56:07', 'estudiante'),
(7, 'tomas', '1107073847', 'tomasagua ', 'ospinatorrjulio@gmail.com', '3123034628', '11-3', '2000-12-02', 'Femenino', '$2y$10$1EhcNZazG3YkHHGG1kqlueowRry0.EbbphOoN4gwoZaoSaf7trPOq', 1, '2026-09-15 20:58:51', 'estudiante'),
(9, 'Thomas Lopera Muñoz', '1018262031', 'Thomaslm1002', 'daiamtor19@gmail.com', '30152993358', '10-3', '2098-01-02', 'Masculino', '$2y$10$PSPlNI1/7PQ/Cc.Gr0jJmetR/1.6cWuHsAaeatDtelsaBt.sH2aUy', 1, '2026-09-16 11:55:16', 'estudiante'),
(13, 'daiam', '1234543212', 'daiam', 'daiamtor12@gmail.com', '30177582345', '11-3', '2009-06-19', 'Masculino', '$2y$10$sqzoCu2aGOusnCih/xLnzue3m7pbr3pN.11NywkhtIeABnooSdxm6', 1, '2026-10-16 12:53:00', 'estudiante'),
(14, 'dey', '123456789', 'dey', 'dey@gmail.com', '1234567890', '11-3', '2026-10-22', 'Otro', '$2y$10$Rwho4ZKHXfOv.4TKfdyu/OFOzjmBc3NdfTteOnUe.wDtyOrMCAz7C', 1, '2026-10-16 14:35:45', 'estudiante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
