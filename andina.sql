-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-08-2025 a las 21:37:04
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
-- Base de datos: `andina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `fecha_registro`) VALUES
(1, 'Usuario_763', 'usuario383@correo.com', '2025-07-06 00:00:00'),
(2, 'Usuario_976', 'usuario007@correo.com', '2025-08-06 00:00:00'),
(3, 'Usuario_508', 'usuario222@correo.com', '2025-07-08 00:00:00'),
(4, 'Usuario_274', 'usuario606@correo.com', '2025-07-31 00:00:00'),
(5, 'Usuario_219', 'usuario476@correo.com', '2025-06-30 00:00:00'),
(6, 'Usuario_192', 'usuario786@correo.com', '2025-07-22 00:00:00'),
(7, 'Usuario_430', 'usuario076@correo.com', '2025-08-07 00:00:00'),
(8, 'Usuario_238', 'usuario908@correo.com', '2025-06-24 00:00:00'),
(9, 'Usuario_423', 'usuario625@correo.com', '2025-06-22 00:00:00'),
(10, 'Usuario_420', 'usuario522@correo.com', '2025-07-22 00:00:00'),
(11, 'Usuario_199', 'usuario935@correo.com', '2025-08-08 00:00:00'),
(12, 'Usuario_585', 'usuario691@correo.com', '2025-07-01 00:00:00'),
(13, 'Usuario_440', 'usuario091@correo.com', '2025-08-04 00:00:00'),
(14, 'Usuario_414', 'usuario656@correo.com', '2025-08-10 00:00:00'),
(15, 'Usuario_235', 'usuario053@correo.com', '2025-07-10 00:00:00'),
(16, 'Usuario_655', 'usuario587@correo.com', '2025-06-15 00:00:00'),
(17, 'Usuario_093', 'usuario554@correo.com', '2025-07-14 00:00:00'),
(18, 'Usuario_786', 'usuario462@correo.com', '2025-06-16 00:00:00'),
(19, 'Usuario_382', 'usuario050@correo.com', '2025-08-06 00:00:00'),
(20, 'Usuario_364', 'usuario513@correo.com', '2025-07-15 00:00:00'),
(21, 'Usuario_828', 'usuario719@correo.com', '2025-08-06 00:00:00'),
(22, 'Usuario_415', 'usuario732@correo.com', '2025-07-18 00:00:00'),
(23, 'Usuario_890', 'usuario197@correo.com', '2025-07-24 00:00:00'),
(24, 'Usuario_992', 'usuario010@correo.com', '2025-08-08 00:00:00'),
(25, 'Usuario_339', 'usuario474@correo.com', '2025-07-22 00:00:00'),
(26, 'Usuario_346', 'usuario668@correo.com', '2025-07-25 00:00:00'),
(27, 'Usuario_526', 'usuario711@correo.com', '2025-06-15 00:00:00'),
(28, 'Usuario_762', 'usuario874@correo.com', '2025-08-07 00:00:00'),
(29, 'Usuario_801', 'usuario750@correo.com', '2025-07-23 00:00:00'),
(30, 'Usuario_488', 'usuario401@correo.com', '2025-07-11 00:00:00'),
(31, 'Usuario_488', 'usuario827@correo.com', '2025-07-03 00:00:00'),
(32, 'Usuario_873', 'usuario352@correo.com', '2025-08-04 00:00:00'),
(33, 'Usuario_658', 'usuario862@correo.com', '2025-07-23 00:00:00'),
(34, 'Usuario_091', 'usuario448@correo.com', '2025-06-15 00:00:00'),
(35, 'Usuario_509', 'usuario633@correo.com', '2025-07-05 00:00:00'),
(36, 'Usuario_287', 'usuario526@correo.com', '2025-06-27 00:00:00'),
(37, 'Usuario_275', 'usuario065@correo.com', '2025-07-13 00:00:00'),
(38, 'Usuario_306', 'usuario029@correo.com', '2025-07-30 00:00:00'),
(39, 'Usuario_055', 'usuario588@correo.com', '2025-06-27 00:00:00'),
(40, 'Usuario_130', 'usuario312@correo.com', '2025-08-02 00:00:00'),
(41, 'Usuario_928', 'usuario121@correo.com', '2025-06-24 00:00:00'),
(42, 'Usuario_756', 'usuario308@correo.com', '2025-07-27 00:00:00'),
(43, 'Usuario_433', 'usuario352@correo.com', '2025-07-16 00:00:00'),
(44, 'Usuario_245', 'usuario846@correo.com', '2025-07-14 00:00:00'),
(45, 'Usuario_935', 'usuario193@correo.com', '2025-08-03 00:00:00'),
(46, 'Usuario_215', 'usuario598@correo.com', '2025-07-23 00:00:00'),
(47, 'Usuario_946', 'usuario687@correo.com', '2025-07-08 00:00:00'),
(48, 'Usuario_929', 'usuario852@correo.com', '2025-07-15 00:00:00'),
(49, 'Usuario_816', 'usuario657@correo.com', '2025-06-23 00:00:00'),
(50, 'Usuario_208', 'usuario534@correo.com', '2025-08-10 00:00:00'),
(51, 'Usuario_634', 'usuario029@correo.com', '2025-07-29 00:00:00'),
(52, 'Usuario_131', 'usuario924@correo.com', '2025-07-30 00:00:00'),
(53, 'Usuario_376', 'usuario190@correo.com', '2025-06-24 00:00:00'),
(54, 'Usuario_545', 'usuario257@correo.com', '2025-07-04 00:00:00'),
(55, 'Usuario_488', 'usuario483@correo.com', '2025-06-16 00:00:00'),
(56, 'Usuario_322', 'usuario748@correo.com', '2025-06-27 00:00:00'),
(57, 'Usuario_629', 'usuario823@correo.com', '2025-07-30 00:00:00'),
(58, 'Usuario_672', 'usuario678@correo.com', '2025-07-21 00:00:00'),
(59, 'Usuario_827', 'usuario019@correo.com', '2025-07-07 00:00:00'),
(60, 'Usuario_014', 'usuario229@correo.com', '2025-08-06 00:00:00'),
(61, 'Usuario_836', 'usuario866@correo.com', '2025-06-24 00:00:00'),
(62, 'Usuario_522', 'usuario136@correo.com', '2025-08-05 00:00:00'),
(63, 'Usuario_179', 'usuario543@correo.com', '2025-08-02 00:00:00'),
(64, 'Usuario_265', 'usuario789@correo.com', '2025-08-03 00:00:00'),
(65, 'Usuario_394', 'usuario513@correo.com', '2025-07-20 00:00:00'),
(66, 'Usuario_380', 'usuario750@correo.com', '2025-07-07 00:00:00'),
(67, 'Usuario_794', 'usuario144@correo.com', '2025-07-23 00:00:00'),
(68, 'Usuario_260', 'usuario287@correo.com', '2025-07-04 00:00:00'),
(69, 'Usuario_414', 'usuario107@correo.com', '2025-07-26 00:00:00'),
(70, 'Usuario_149', 'usuario863@correo.com', '2025-06-21 00:00:00'),
(71, 'Usuario_749', 'usuario145@correo.com', '2025-07-15 00:00:00'),
(72, 'Usuario_945', 'usuario298@correo.com', '2025-07-04 00:00:00'),
(73, 'Usuario_388', 'usuario973@correo.com', '2025-07-02 00:00:00'),
(74, 'Usuario_575', 'usuario781@correo.com', '2025-08-02 00:00:00'),
(75, 'Usuario_564', 'usuario278@correo.com', '2025-07-02 00:00:00'),
(76, 'Usuario_646', 'usuario142@correo.com', '2025-06-27 00:00:00'),
(77, 'Usuario_446', 'usuario908@correo.com', '2025-07-31 00:00:00'),
(78, 'Usuario_295', 'usuario863@correo.com', '2025-07-18 00:00:00'),
(79, 'Usuario_564', 'usuario529@correo.com', '2025-06-16 00:00:00'),
(80, 'Usuario_180', 'usuario040@correo.com', '2025-07-04 00:00:00'),
(81, 'Usuario_182', 'usuario930@correo.com', '2025-08-06 00:00:00'),
(82, 'Usuario_728', 'usuario329@correo.com', '2025-07-16 00:00:00'),
(83, 'Usuario_324', 'usuario234@correo.com', '2025-08-01 00:00:00'),
(84, 'Usuario_295', 'usuario878@correo.com', '2025-07-13 00:00:00'),
(85, 'Usuario_891', 'usuario942@correo.com', '2025-08-10 00:00:00'),
(86, 'Usuario_350', 'usuario648@correo.com', '2025-08-01 00:00:00'),
(87, 'Usuario_998', 'usuario427@correo.com', '2025-08-04 00:00:00'),
(88, 'Usuario_425', 'usuario700@correo.com', '2025-07-30 00:00:00'),
(89, 'Usuario_037', 'usuario503@correo.com', '2025-07-19 00:00:00'),
(90, 'Usuario_517', 'usuario369@correo.com', '2025-07-26 00:00:00'),
(91, 'Usuario_377', 'usuario993@correo.com', '2025-06-23 00:00:00'),
(92, 'Usuario_198', 'usuario485@correo.com', '2025-06-24 00:00:00'),
(93, 'Usuario_706', 'usuario034@correo.com', '2025-08-09 00:00:00'),
(94, 'Usuario_158', 'usuario634@correo.com', '2025-07-02 00:00:00'),
(95, 'Usuario_581', 'usuario816@correo.com', '2025-07-23 00:00:00'),
(96, 'Usuario_246', 'usuario212@correo.com', '2025-07-24 00:00:00'),
(97, 'Usuario_990', 'usuario975@correo.com', '2025-06-19 00:00:00'),
(98, 'Usuario_603', 'usuario300@correo.com', '2025-07-02 00:00:00'),
(99, 'Usuario_552', 'usuario688@correo.com', '2025-06-26 00:00:00'),
(100, 'Usuario_866', 'usuario974@correo.com', '2025-07-27 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
