-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-05-2023 a las 00:38:28
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BD_Proyecto_DAW`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `Cod` int NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `PVP` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `Plazas_Ofrecidas` int NOT NULL,
  `sala` varchar(20) COLLATE utf8mb3_spanish_ci NOT NULL,
  `colorfondo` varchar(20) COLLATE utf8mb3_spanish_ci NOT NULL,
  `colortexto` varchar(20) COLLATE utf8mb3_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`Cod`, `Nombre`, `PVP`, `Plazas_Ofrecidas`, `sala`, `colorfondo`, `colortexto`) VALUES
(10, 'Yoga', '40€', 15, 'A', '#ffffff', '#000000'),
(11, 'Funcional', '60€', 15, 'B', '#ffc107', '#000000'),
(12, 'Cross Training', '60€', 15, 'C', '#D4E7F1', '#000000'),
(13, 'Jump & Box Jumps', '60€', 15, 'D', '#cb7025', '#000000'),
(14, 'Musculacion', '70€', 15, 'E', '#000000', '#ffffff'),
(15, 'GAP', '50€', 15, 'F', '#0d6efd', '#000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `Id_usuario` int NOT NULL,
  `Cod_clase` int NOT NULL,
  `Fecha_reserva` date NOT NULL,
  `Hora_reserva` time NOT NULL,
  `Id` int NOT NULL,
  `id_sesiones` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`Id_usuario`, `Cod_clase`, `Fecha_reserva`, `Hora_reserva`, `Id`, `id_sesiones`) VALUES
(52, 11, '2023-07-13', '21:00:00', 196, 464),
(89, 15, '2023-07-07', '16:00:00', 206, 439),
(91, 10, '2023-07-21', '20:00:00', 207, 507),
(143, 10, '2023-07-13', '20:00:00', 208, 465),
(144, 15, '2023-07-12', '16:00:00', 209, 463);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` int NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fechahorainicio` datetime NOT NULL,
  `fechahorafin` datetime NOT NULL,
  `colorfondo` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `plazasdisponibles` int NOT NULL,
  `plazasreservadas` int NOT NULL,
  `total` int NOT NULL,
  `cod_clase` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id`, `titulo`, `fechahorainicio`, `fechahorafin`, `colorfondo`, `plazasdisponibles`, `plazasreservadas`, `total`, `cod_clase`) VALUES
(152, 'Funcional', '2023-05-27 21:00:00', '2023-05-27 21:55:00', '#ffc107', 5, 10, 15, 11),
(153, 'Yoga', '2023-05-27 20:00:00', '2023-05-27 20:55:00', '#ffffff', 3, 12, 15, 10),
(154, 'Cross training', '2023-05-27 19:00:00', '2023-05-27 19:55:00', '#D4E7F1', 11, 4, 15, 12),
(155, 'Jump & Box Jumps', '2023-05-27 18:00:00', '2023-05-27 18:55:00', '#cb7025', 15, 0, 15, 13),
(156, 'Musculacion', '2023-05-27 17:00:00', '2023-05-27 17:55:00', '#000000', 14, 1, 15, 14),
(157, 'GAP', '2023-05-27 16:00:00', '2023-05-27 16:55:00', '#0d6efd', 15, 0, 15, 15),
(164, 'Funcional', '2023-05-29 21:00:00', '2023-05-29 21:55:00', '#ffc107', 15, 0, 15, 11),
(165, 'Yoga', '2023-05-29 20:00:00', '2023-05-29 20:55:00', '#ffffff', 0, 15, 15, 10),
(166, 'Cross training', '2023-05-29 19:00:00', '2023-05-29 19:55:00', '#D4E7F1', 1, 14, 15, 12),
(167, 'Jump & Box Jumps', '2023-05-29 18:00:00', '2023-05-29 18:55:00', '#cb7025', 15, 0, 15, 13),
(168, 'Musculacion', '2023-05-29 17:00:00', '2023-05-29 17:55:00', '#000000', 15, 0, 15, 14),
(169, 'GAP', '2023-05-29 16:00:00', '2023-05-29 16:55:00', '#0d6efd', 15, 0, 15, 15),
(170, 'Funcional', '2023-05-30 21:00:00', '2023-05-30 21:55:00', '#ffc107', 15, 0, 15, 11),
(171, 'Yoga', '2023-05-30 20:00:00', '2023-05-30 20:55:00', '#ffffff', 1, 14, 15, 10),
(172, 'Cross training', '2023-05-30 19:00:00', '2023-05-30 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(173, 'Jump & Box Jumps', '2023-05-30 18:00:00', '2023-05-30 18:55:00', '#cb7025', 15, 0, 15, 13),
(174, 'Musculacion', '2023-05-30 17:00:00', '2023-05-30 17:55:00', '#000000', 15, 0, 15, 14),
(175, 'GAP', '2023-05-30 16:00:00', '2023-05-30 16:55:00', '#0d6efd', 15, 0, 15, 15),
(176, 'Funcional', '2023-05-31 21:00:00', '2023-05-31 21:55:00', '#ffc107', 15, 0, 15, 11),
(177, 'Yoga', '2023-05-31 20:00:00', '2023-05-31 20:55:00', '#ffffff', 1, 14, 15, 10),
(178, 'Cross training', '2023-05-31 19:00:00', '2023-05-31 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(179, 'Jump & Box Jumps', '2023-05-31 18:00:00', '2023-05-31 18:55:00', '#cb7025', 15, 0, 15, 13),
(180, 'Musculacion', '2023-05-31 17:00:00', '2023-05-31 17:55:00', '#000000', 15, 0, 15, 14),
(181, 'GAP', '2023-05-31 16:00:00', '2023-05-31 16:55:00', '#0d6efd', 15, 0, 15, 15),
(182, 'Funcional', '2023-06-01 21:00:00', '2023-06-01 21:55:00', '#ffc107', 15, 0, 15, 11),
(183, 'Yoga', '2023-06-01 20:00:00', '2023-06-01 20:55:00', '#ffffff', 1, 14, 15, 10),
(184, 'Cross training', '2023-06-01 19:00:00', '2023-06-01 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(185, 'Jump & Box Jumps', '2023-06-01 18:00:00', '2023-06-01 18:55:00', '#cb7025', 15, 0, 15, 13),
(186, 'Musculacion', '2023-06-01 17:00:00', '2023-06-01 17:55:00', '#000000', 15, 0, 15, 14),
(187, 'GAP', '2023-06-01 16:00:00', '2023-06-01 16:55:00', '#0d6efd', 14, 1, 15, 15),
(188, 'Funcional', '2023-06-02 21:00:00', '2023-06-02 21:55:00', '#ffc107', 11, 4, 15, 11),
(189, 'Yoga', '2023-06-02 20:00:00', '2023-06-02 20:55:00', '#ffffff', 14, 1, 15, 10),
(190, 'Cross training', '2023-06-02 19:00:00', '2023-06-02 19:55:00', '#D4E7F1', 0, 15, 15, 12),
(191, 'Jump & Box Jumps', '2023-06-02 18:00:00', '2023-06-02 18:55:00', '#cb7025', 15, 0, 15, 13),
(192, 'Musculacion', '2023-06-02 17:00:00', '2023-06-02 17:55:00', '#000000', 15, 0, 15, 14),
(193, 'GAP', '2023-06-02 16:00:00', '2023-06-02 16:55:00', '#0d6efd', 13, 2, 15, 15),
(194, 'Funcional', '2023-06-03 21:00:00', '2023-06-03 21:55:00', '#ffc107', 15, 0, 15, 11),
(195, 'Yoga', '2023-06-03 20:00:00', '2023-06-03 20:55:00', '#ffffff', 1, 14, 15, 10),
(196, 'Cross training', '2023-06-03 19:00:00', '2023-06-03 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(197, 'Jump & Box Jumps', '2023-06-03 18:00:00', '2023-06-03 18:55:00', '#cb7025', 15, 0, 15, 13),
(198, 'Musculacion', '2023-06-03 17:00:00', '2023-06-03 17:55:00', '#000000', 15, 0, 15, 14),
(199, 'GAP', '2023-06-03 16:00:00', '2023-06-03 16:55:00', '#0d6efd', 15, 0, 15, 15),
(206, 'Funcional', '2023-06-06 21:00:00', '2023-06-06 21:55:00', '#ffc107', 14, 1, 15, 11),
(207, 'Yoga', '2023-06-06 20:00:00', '2023-06-06 20:55:00', '#ffffff', 14, 1, 15, 10),
(208, 'Cross training', '2023-06-06 19:00:00', '2023-06-06 19:55:00', '#D4E7F1', 14, 1, 15, 12),
(209, 'Jump & Box Jumps', '2023-06-06 18:00:00', '2023-06-06 18:55:00', '#cb7025', 15, 0, 15, 13),
(210, 'Musculacion', '2023-06-06 17:00:00', '2023-06-06 17:55:00', '#000000', 15, 0, 15, 14),
(211, 'GAP', '2023-06-06 16:00:00', '2023-06-06 16:55:00', '#0d6efd', 15, 0, 15, 15),
(212, 'Funcional', '2023-06-07 21:00:00', '2023-06-07 21:55:00', '#ffc107', 14, 1, 15, 11),
(213, 'Yoga', '2023-06-07 20:00:00', '2023-06-07 20:55:00', '#ffffff', 1, 14, 15, 10),
(214, 'Cross training', '2023-06-07 19:00:00', '2023-06-07 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(215, 'Jump & Box Jumps', '2023-06-07 18:00:00', '2023-06-07 18:55:00', '#cb7025', 15, 0, 15, 13),
(216, 'Musculacion', '2023-06-07 17:00:00', '2023-06-07 17:55:00', '#000000', 15, 0, 15, 14),
(217, 'GAP', '2023-06-07 16:00:00', '2023-06-07 16:55:00', '#0d6efd', 15, 0, 15, 15),
(218, 'Funcional', '2023-06-08 21:00:00', '2023-06-08 21:55:00', '#ffc107', 15, 0, 15, 11),
(219, 'Yoga', '2023-06-08 20:00:00', '2023-06-08 20:55:00', '#ffffff', 1, 14, 15, 10),
(220, 'Cross training', '2023-06-08 19:00:00', '2023-06-08 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(221, 'Jump & Box Jumps', '2023-06-08 18:00:00', '2023-06-08 18:55:00', '#cb7025', 15, 0, 15, 13),
(222, 'Musculacion', '2023-06-08 17:00:00', '2023-06-08 17:55:00', '#000000', 14, 1, 15, 14),
(223, 'GAP', '2023-06-08 16:00:00', '2023-06-08 16:55:00', '#0d6efd', 15, 0, 15, 15),
(224, 'Funcional', '2023-06-09 21:00:00', '2023-06-09 21:55:00', '#ffc107', 15, 0, 15, 11),
(225, 'Yoga', '2023-06-09 20:00:00', '2023-06-09 20:55:00', '#ffffff', 1, 14, 15, 10),
(226, 'Cross training', '2023-06-09 19:00:00', '2023-06-09 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(227, 'Jump & Box Jumps', '2023-06-09 18:00:00', '2023-06-09 18:55:00', '#cb7025', 15, 0, 15, 13),
(228, 'Musculacion', '2023-06-09 17:00:00', '2023-06-09 17:55:00', '#000000', 15, 0, 15, 14),
(229, 'GAP', '2023-06-09 16:00:00', '2023-06-09 16:55:00', '#0d6efd', 15, 0, 15, 15),
(230, 'Funcional', '2023-06-10 21:00:00', '2023-06-10 21:55:00', '#ffc107', 15, 0, 15, 11),
(231, 'Yoga', '2023-06-10 20:00:00', '2023-06-10 20:55:00', '#ffffff', 1, 14, 15, 10),
(232, 'Cross training', '2023-06-10 19:00:00', '2023-06-10 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(233, 'Jump & Box Jumps', '2023-06-10 18:00:00', '2023-06-10 18:55:00', '#cb7025', 15, 0, 15, 13),
(234, 'Musculacion', '2023-06-10 17:00:00', '2023-06-10 17:55:00', '#000000', 15, 0, 15, 14),
(235, 'GAP', '2023-06-10 16:00:00', '2023-06-10 16:55:00', '#0d6efd', 15, 0, 15, 15),
(242, 'Funcional', '2023-06-12 21:00:00', '2023-06-12 21:55:00', '#ffc107', 15, 0, 15, 11),
(243, 'Yoga', '2023-06-12 20:00:00', '2023-06-12 20:55:00', '#ffffff', 1, 14, 15, 10),
(244, 'Cross training', '2023-06-12 19:00:00', '2023-06-12 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(245, 'Jump & Box Jumps', '2023-06-12 18:00:00', '2023-06-12 18:55:00', '#cb7025', 15, 0, 15, 13),
(246, 'Musculacion', '2023-06-12 17:00:00', '2023-06-12 17:55:00', '#000000', 15, 0, 15, 14),
(247, 'GAP', '2023-06-12 16:00:00', '2023-06-12 16:55:00', '#0d6efd', 15, 0, 15, 15),
(248, 'Funcional', '2023-06-13 21:00:00', '2023-06-13 21:55:00', '#ffc107', 15, 0, 15, 11),
(249, 'Yoga', '2023-06-13 20:00:00', '2023-06-13 20:55:00', '#ffffff', 1, 14, 15, 10),
(250, 'Cross training', '2023-06-13 19:00:00', '2023-06-13 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(251, 'Jump & Box Jumps', '2023-06-13 18:00:00', '2023-06-13 18:55:00', '#cb7025', 15, 0, 15, 13),
(252, 'Musculacion', '2023-06-13 17:00:00', '2023-06-13 17:55:00', '#000000', 15, 0, 15, 14),
(253, 'GAP', '2023-06-13 16:00:00', '2023-06-13 16:55:00', '#0d6efd', 15, 0, 15, 15),
(254, 'Funcional', '2023-06-14 21:00:00', '2023-06-14 21:55:00', '#ffc107', 15, 0, 15, 11),
(255, 'Yoga', '2023-06-14 20:00:00', '2023-06-14 20:55:00', '#ffffff', 1, 14, 15, 10),
(256, 'Cross training', '2023-06-14 19:00:00', '2023-06-14 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(257, 'Jump & Box Jumps', '2023-06-14 18:00:00', '2023-06-14 18:55:00', '#cb7025', 15, 0, 15, 13),
(258, 'Musculacion', '2023-06-14 17:00:00', '2023-06-14 17:55:00', '#000000', 15, 0, 15, 14),
(259, 'GAP', '2023-06-14 16:00:00', '2023-06-14 16:55:00', '#0d6efd', 15, 0, 15, 15),
(260, 'Funcional', '2023-06-15 21:00:00', '2023-06-15 21:55:00', '#ffc107', 15, 0, 15, 11),
(261, 'Yoga', '2023-06-15 20:00:00', '2023-06-15 20:55:00', '#ffffff', 1, 14, 15, 10),
(262, 'Cross training', '2023-06-15 19:00:00', '2023-06-15 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(263, 'Jump & Box Jumps', '2023-06-15 18:00:00', '2023-06-15 18:55:00', '#cb7025', 15, 0, 15, 13),
(264, 'Musculacion', '2023-06-15 17:00:00', '2023-06-15 17:55:00', '#000000', 15, 0, 15, 14),
(265, 'GAP', '2023-06-15 16:00:00', '2023-06-15 16:55:00', '#0d6efd', 15, 0, 15, 15),
(266, 'Funcional', '2023-06-16 21:00:00', '2023-06-16 21:55:00', '#ffc107', 13, 2, 15, 11),
(267, 'Yoga', '2023-06-16 20:00:00', '2023-06-16 20:55:00', '#ffffff', 1, 14, 15, 10),
(268, 'Cross training', '2023-06-16 19:00:00', '2023-06-16 19:55:00', '#D4E7F1', 14, 1, 15, 12),
(269, 'Jump & Box Jumps', '2023-06-16 18:00:00', '2023-06-16 18:55:00', '#cb7025', 15, 0, 15, 13),
(270, 'Musculacion', '2023-06-16 17:00:00', '2023-06-16 17:55:00', '#000000', 15, 0, 15, 14),
(271, 'GAP', '2023-06-16 16:00:00', '2023-06-16 16:55:00', '#0d6efd', 15, 0, 15, 15),
(272, 'Funcional', '2023-06-17 21:00:00', '2023-06-17 21:55:00', '#ffc107', 15, 0, 15, 11),
(273, 'Yoga', '2023-06-17 20:00:00', '2023-06-17 20:55:00', '#ffffff', 1, 14, 15, 10),
(274, 'Cross training', '2023-06-17 19:00:00', '2023-06-17 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(275, 'Jump & Box Jumps', '2023-06-17 18:00:00', '2023-06-17 18:55:00', '#cb7025', 15, 0, 15, 13),
(276, 'Musculacion', '2023-06-17 17:00:00', '2023-06-17 17:55:00', '#000000', 15, 0, 15, 14),
(277, 'GAP', '2023-06-17 16:00:00', '2023-06-17 16:55:00', '#0d6efd', 15, 0, 15, 15),
(278, 'Funcional', '2023-06-19 21:00:00', '2023-06-19 21:55:00', '#ffc107', 15, 0, 15, 11),
(279, 'Yoga', '2023-06-19 20:00:00', '2023-06-19 20:55:00', '#ffffff', 1, 14, 15, 10),
(280, 'Cross training', '2023-06-19 19:00:00', '2023-06-19 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(281, 'Jump & Box Jumps', '2023-06-19 18:00:00', '2023-06-19 18:55:00', '#cb7025', 15, 0, 15, 13),
(282, 'Musculacion', '2023-06-19 17:00:00', '2023-06-19 17:55:00', '#000000', 15, 0, 15, 14),
(283, 'GAP', '2023-06-19 16:00:00', '2023-06-19 16:55:00', '#0d6efd', 15, 0, 15, 15),
(284, 'Funcional', '2023-06-05 21:00:00', '2023-06-05 21:55:00', '#ffc107', 15, 0, 15, 11),
(285, 'Yoga', '2023-06-05 20:00:00', '2023-06-05 20:55:00', '#ffffff', 1, 14, 15, 10),
(286, 'Cross training', '2023-06-05 19:00:00', '2023-06-05 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(287, 'Jump & Box Jumps', '2023-06-05 18:00:00', '2023-06-05 18:55:00', '#cb7025', 15, 0, 15, 13),
(288, 'Musculacion', '2023-06-05 17:00:00', '2023-06-05 17:55:00', '#000000', 15, 0, 15, 14),
(289, 'GAP', '2023-06-05 16:00:00', '2023-06-05 16:55:00', '#0d6efd', 15, 0, 15, 15),
(290, 'Funcional', '2023-06-20 21:00:00', '2023-06-20 21:55:00', '#ffc107', 15, 0, 15, 11),
(291, 'Yoga', '2023-06-20 20:00:00', '2023-06-20 20:55:00', '#ffffff', 1, 14, 15, 10),
(292, 'Cross training', '2023-06-20 19:00:00', '2023-06-20 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(293, 'Jump & Box Jumps', '2023-06-20 18:00:00', '2023-06-20 18:55:00', '#cb7025', 15, 0, 15, 13),
(294, 'Musculacion', '2023-06-20 17:00:00', '2023-06-20 17:55:00', '#000000', 15, 0, 15, 14),
(295, 'GAP', '2023-06-20 16:00:00', '2023-06-20 16:55:00', '#0d6efd', 15, 0, 15, 15),
(296, 'Funcional', '2023-06-21 21:00:00', '2023-06-21 21:55:00', '#ffc107', 15, 0, 15, 11),
(297, 'Yoga', '2023-06-21 20:00:00', '2023-06-21 20:55:00', '#ffffff', 1, 14, 15, 10),
(298, 'Cross training', '2023-06-21 19:00:00', '2023-06-21 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(299, 'Jump & Box Jumps', '2023-06-21 18:00:00', '2023-06-21 18:55:00', '#cb7025', 15, 0, 15, 13),
(300, 'Musculacion', '2023-06-21 17:00:00', '2023-06-21 17:55:00', '#000000', 15, 0, 15, 14),
(301, 'GAP', '2023-06-21 16:00:00', '2023-06-21 16:55:00', '#0d6efd', 15, 0, 15, 15),
(302, 'Funcional', '2023-06-22 21:00:00', '2023-06-22 21:55:00', '#ffc107', 15, 0, 15, 11),
(303, 'Yoga', '2023-06-22 20:00:00', '2023-06-22 20:55:00', '#ffffff', 1, 14, 15, 10),
(304, 'Cross training', '2023-06-22 19:00:00', '2023-06-22 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(305, 'Jump & Box Jumps', '2023-06-22 18:00:00', '2023-06-22 18:55:00', '#cb7025', 15, 0, 15, 13),
(306, 'Musculacion', '2023-06-22 17:00:00', '2023-06-22 17:55:00', '#000000', 15, 0, 15, 14),
(307, 'GAP', '2023-06-22 16:00:00', '2023-06-22 16:55:00', '#0d6efd', 15, 0, 15, 15),
(308, 'Funcional', '2023-06-23 21:00:00', '2023-06-23 21:55:00', '#ffc107', 15, 0, 15, 11),
(309, 'Yoga', '2023-06-23 20:00:00', '2023-06-23 20:55:00', '#ffffff', 1, 14, 15, 10),
(310, 'Cross training', '2023-06-23 19:00:00', '2023-06-23 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(311, 'Jump & Box Jumps', '2023-06-23 18:00:00', '2023-06-23 18:55:00', '#cb7025', 15, 0, 15, 13),
(312, 'Musculacion', '2023-06-23 17:00:00', '2023-06-23 17:55:00', '#000000', 15, 0, 15, 14),
(313, 'GAP', '2023-06-23 16:00:00', '2023-06-23 16:55:00', '#0d6efd', 15, 0, 15, 15),
(314, 'Funcional', '2023-06-24 21:00:00', '2023-06-24 21:55:00', '#ffc107', 15, 0, 15, 11),
(315, 'Yoga', '2023-06-24 20:00:00', '2023-06-24 20:55:00', '#ffffff', 1, 14, 15, 10),
(316, 'Cross training', '2023-06-24 19:00:00', '2023-06-24 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(317, 'Jump & Box Jumps', '2023-06-24 18:00:00', '2023-06-24 18:55:00', '#cb7025', 15, 0, 15, 13),
(318, 'Musculacion', '2023-06-24 17:00:00', '2023-06-24 17:55:00', '#000000', 15, 0, 15, 14),
(319, 'GAP', '2023-06-24 16:00:00', '2023-06-24 16:55:00', '#0d6efd', 15, 0, 15, 15),
(344, 'Funcional', '2023-06-26 21:00:00', '2023-06-26 21:55:00', '#ffc107', 15, 0, 15, 11),
(345, 'Yoga', '2023-06-26 20:00:00', '2023-06-26 20:55:00', '#ffffff', 1, 14, 15, 10),
(346, 'Cross training', '2023-06-26 19:00:00', '2023-06-26 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(347, 'Jump & Box Jumps', '2023-06-26 18:00:00', '2023-06-26 18:55:00', '#cb7025', 15, 0, 15, 13),
(348, 'Musculacion', '2023-06-26 17:00:00', '2023-06-26 17:55:00', '#000000', 15, 0, 15, 14),
(349, 'GAP', '2023-06-26 16:00:00', '2023-06-26 16:55:00', '#0d6efd', 15, 0, 15, 15),
(350, 'Funcional', '2023-06-27 21:00:00', '2023-06-27 21:55:00', '#ffc107', 15, 0, 15, 11),
(351, 'Yoga', '2023-06-27 20:00:00', '2023-06-27 20:55:00', '#ffffff', 1, 14, 15, 10),
(352, 'Cross training', '2023-06-27 19:00:00', '2023-06-27 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(353, 'Jump & Box Jumps', '2023-06-27 18:00:00', '2023-06-27 18:55:00', '#cb7025', 15, 0, 15, 13),
(354, 'Musculacion', '2023-06-27 17:00:00', '2023-06-27 17:55:00', '#000000', 15, 0, 15, 14),
(355, 'GAP', '2023-06-27 16:00:00', '2023-06-27 16:55:00', '#0d6efd', 15, 0, 15, 15),
(356, 'Funcional', '2023-06-28 21:00:00', '2023-06-28 21:55:00', '#ffc107', 15, 0, 15, 11),
(357, 'Yoga', '2023-06-28 20:00:00', '2023-06-28 20:55:00', '#ffffff', 1, 14, 15, 10),
(358, 'Cross training', '2023-06-28 19:00:00', '2023-06-28 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(359, 'Jump & Box Jumps', '2023-06-28 18:00:00', '2023-06-28 18:55:00', '#cb7025', 15, 0, 15, 13),
(360, 'Musculacion', '2023-06-28 17:00:00', '2023-06-28 17:55:00', '#000000', 15, 0, 15, 14),
(361, 'GAP', '2023-06-28 16:00:00', '2023-06-28 16:55:00', '#0d6efd', 15, 0, 15, 15),
(362, 'Funcional', '2023-06-29 21:00:00', '2023-06-29 21:55:00', '#ffc107', 14, 1, 15, 11),
(363, 'Yoga', '2023-06-29 20:00:00', '2023-06-29 20:55:00', '#ffffff', 1, 14, 15, 10),
(364, 'Cross training', '2023-06-29 19:00:00', '2023-06-29 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(365, 'Jump & Box Jumps', '2023-06-29 18:00:00', '2023-06-29 18:55:00', '#cb7025', 15, 0, 15, 13),
(366, 'Musculacion', '2023-06-29 17:00:00', '2023-06-29 17:55:00', '#000000', 15, 0, 15, 14),
(367, 'GAP', '2023-06-29 16:00:00', '2023-06-29 16:55:00', '#0d6efd', 15, 0, 15, 15),
(392, 'Funcional', '2023-06-30 21:00:00', '2023-06-30 21:55:00', '#ffc107', 15, 0, 15, 11),
(393, 'Yoga', '2023-06-30 20:00:00', '2023-06-30 20:55:00', '#ffffff', 1, 14, 15, 10),
(394, 'Cross training', '2023-06-30 19:00:00', '2023-06-30 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(395, 'Jump & Box Jumps', '2023-06-30 18:00:00', '2023-06-30 18:55:00', '#cb7025', 15, 0, 15, 13),
(396, 'Musculacion', '2023-06-30 17:00:00', '2023-06-30 17:55:00', '#000000', 15, 0, 15, 14),
(397, 'GAP', '2023-06-30 16:00:00', '2023-06-30 16:55:00', '#0d6efd', 15, 0, 15, 15),
(398, 'Funcional', '2023-07-01 21:00:00', '2023-07-01 21:55:00', '#ffc107', 15, 0, 15, 11),
(399, 'Yoga', '2023-07-01 20:00:00', '2023-07-01 20:55:00', '#ffffff', 1, 14, 15, 10),
(400, 'Cross training', '2023-07-01 19:00:00', '2023-07-01 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(401, 'Jump & Box Jumps', '2023-07-01 18:00:00', '2023-07-01 18:55:00', '#cb7025', 15, 0, 15, 13),
(402, 'Musculacion', '2023-07-01 17:00:00', '2023-07-01 17:55:00', '#000000', 15, 0, 15, 14),
(403, 'GAP', '2023-07-01 16:00:00', '2023-07-01 16:55:00', '#0d6efd', 15, 0, 15, 15),
(404, 'Funcional', '2023-07-03 21:00:00', '2023-07-03 21:55:00', '#ffc107', 15, 0, 15, 11),
(405, 'Yoga', '2023-07-03 20:00:00', '2023-07-03 20:55:00', '#ffffff', 1, 14, 15, 10),
(406, 'Cross training', '2023-07-03 19:00:00', '2023-07-03 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(407, 'Jump & Box Jumps', '2023-07-03 18:00:00', '2023-07-03 18:55:00', '#cb7025', 15, 0, 15, 13),
(408, 'Musculacion', '2023-07-03 17:00:00', '2023-07-03 17:55:00', '#000000', 15, 0, 15, 14),
(409, 'GAP', '2023-07-03 16:00:00', '2023-07-03 16:55:00', '#0d6efd', 15, 0, 15, 15),
(410, 'Funcional', '2023-07-04 21:00:00', '2023-07-04 21:55:00', '#ffc107', 15, 0, 15, 11),
(411, 'Yoga', '2023-07-04 20:00:00', '2023-07-04 20:55:00', '#ffffff', 1, 14, 15, 10),
(412, 'Cross training', '2023-07-04 19:00:00', '2023-07-04 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(413, 'Jump & Box Jumps', '2023-07-04 18:00:00', '2023-07-04 18:55:00', '#cb7025', 15, 0, 15, 13),
(414, 'Musculacion', '2023-07-04 17:00:00', '2023-07-04 17:55:00', '#000000', 15, 0, 15, 14),
(415, 'GAP', '2023-07-04 16:00:00', '2023-07-04 16:55:00', '#0d6efd', 15, 0, 15, 15),
(416, 'Funcional', '2023-07-04 21:00:00', '2023-07-04 21:55:00', '#ffc107', 15, 0, 15, 11),
(417, 'Yoga', '2023-07-04 20:00:00', '2023-07-04 20:55:00', '#ffffff', 1, 14, 15, 10),
(418, 'Cross training', '2023-07-04 19:00:00', '2023-07-04 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(419, 'Jump & Box Jumps', '2023-07-04 18:00:00', '2023-07-04 18:55:00', '#cb7025', 15, 0, 15, 13),
(420, 'Musculacion', '2023-07-04 17:00:00', '2023-07-04 17:55:00', '#000000', 15, 0, 15, 14),
(421, 'GAP', '2023-07-04 16:00:00', '2023-07-04 16:55:00', '#0d6efd', 15, 0, 15, 15),
(422, 'Funcional', '2023-07-05 21:00:00', '2023-07-05 21:55:00', '#ffc107', 15, 0, 15, 11),
(423, 'Yoga', '2023-07-05 20:00:00', '2023-07-05 20:55:00', '#ffffff', 1, 14, 15, 10),
(424, 'Cross training', '2023-07-05 19:00:00', '2023-07-05 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(425, 'Jump & Box Jumps', '2023-07-05 18:00:00', '2023-07-05 18:55:00', '#cb7025', 15, 0, 15, 13),
(426, 'Musculacion', '2023-07-05 17:00:00', '2023-07-05 17:55:00', '#000000', 15, 0, 15, 14),
(427, 'GAP', '2023-07-05 16:00:00', '2023-07-05 16:55:00', '#0d6efd', 15, 0, 15, 15),
(428, 'Funcional', '2023-07-06 21:00:00', '2023-07-06 21:55:00', '#ffc107', 15, 0, 15, 11),
(429, 'Yoga', '2023-07-06 20:00:00', '2023-07-06 20:55:00', '#ffffff', 1, 14, 15, 10),
(430, 'Cross training', '2023-07-06 19:00:00', '2023-07-06 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(431, 'Jump & Box Jumps', '2023-07-06 18:00:00', '2023-07-06 18:55:00', '#cb7025', 15, 0, 15, 13),
(432, 'Musculacion', '2023-07-06 17:00:00', '2023-07-06 17:55:00', '#000000', 15, 0, 15, 14),
(433, 'GAP', '2023-07-06 16:00:00', '2023-07-06 16:55:00', '#0d6efd', 15, 0, 15, 15),
(434, 'Funcional', '2023-07-07 21:00:00', '2023-07-07 21:55:00', '#ffc107', 15, 0, 15, 11),
(435, 'Yoga', '2023-07-07 20:00:00', '2023-07-07 20:55:00', '#ffffff', 1, 14, 15, 10),
(436, 'Cross training', '2023-07-07 19:00:00', '2023-07-07 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(437, 'Jump & Box Jumps', '2023-07-07 18:00:00', '2023-07-07 18:55:00', '#cb7025', 15, 0, 15, 13),
(438, 'Musculacion', '2023-07-07 17:00:00', '2023-07-07 17:55:00', '#000000', 15, 0, 15, 14),
(439, 'GAP', '2023-07-07 16:00:00', '2023-07-07 16:55:00', '#0d6efd', 14, 1, 15, 15),
(440, 'Funcional', '2023-07-08 21:00:00', '2023-07-08 21:55:00', '#ffc107', 15, 0, 15, 11),
(441, 'Yoga', '2023-07-08 20:00:00', '2023-07-08 20:55:00', '#ffffff', 1, 14, 15, 10),
(442, 'Cross training', '2023-07-08 19:00:00', '2023-07-08 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(443, 'Jump & Box Jumps', '2023-07-08 18:00:00', '2023-07-08 18:55:00', '#cb7025', 15, 0, 15, 13),
(444, 'Musculacion', '2023-07-08 17:00:00', '2023-07-08 17:55:00', '#000000', 15, 0, 15, 14),
(445, 'GAP', '2023-07-08 16:00:00', '2023-07-08 16:55:00', '#0d6efd', 15, 0, 15, 15),
(446, 'Funcional', '2023-07-10 21:00:00', '2023-07-10 21:55:00', '#ffc107', 15, 0, 15, 11),
(447, 'Yoga', '2023-07-10 20:00:00', '2023-07-10 20:55:00', '#ffffff', 1, 14, 15, 10),
(448, 'Cross training', '2023-07-10 19:00:00', '2023-07-10 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(449, 'Jump & Box Jumps', '2023-07-10 18:00:00', '2023-07-10 18:55:00', '#cb7025', 15, 0, 15, 13),
(450, 'Musculacion', '2023-07-10 17:00:00', '2023-07-10 17:55:00', '#000000', 15, 0, 15, 14),
(451, 'GAP', '2023-07-10 16:00:00', '2023-07-10 16:55:00', '#0d6efd', 15, 0, 15, 15),
(452, 'Funcional', '2023-07-11 21:00:00', '2023-07-11 21:55:00', '#ffc107', 15, 0, 15, 11),
(453, 'Yoga', '2023-07-11 20:00:00', '2023-07-11 20:55:00', '#ffffff', 1, 14, 15, 10),
(454, 'Cross training', '2023-07-11 19:00:00', '2023-07-11 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(455, 'Jump & Box Jumps', '2023-07-11 18:00:00', '2023-07-11 18:55:00', '#cb7025', 15, 0, 15, 13),
(456, 'Musculacion', '2023-07-11 17:00:00', '2023-07-11 17:55:00', '#000000', 15, 0, 15, 14),
(457, 'GAP', '2023-07-11 16:00:00', '2023-07-11 16:55:00', '#0d6efd', 15, 0, 15, 15),
(458, 'Funcional', '2023-07-12 21:00:00', '2023-07-12 21:55:00', '#ffc107', 15, 0, 15, 11),
(459, 'Yoga', '2023-07-12 20:00:00', '2023-07-12 20:55:00', '#ffffff', 1, 14, 15, 10),
(460, 'Cross training', '2023-07-12 19:00:00', '2023-07-12 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(461, 'Jump & Box Jumps', '2023-07-12 18:00:00', '2023-07-12 18:55:00', '#cb7025', 15, 0, 15, 13),
(462, 'Musculacion', '2023-07-12 17:00:00', '2023-07-12 17:55:00', '#000000', 15, 0, 15, 14),
(463, 'GAP', '2023-07-12 16:00:00', '2023-07-12 16:55:00', '#0d6efd', 14, 1, 15, 15),
(464, 'Funcional', '2023-07-13 21:00:00', '2023-07-13 21:55:00', '#ffc107', 14, 1, 15, 11),
(465, 'Yoga', '2023-07-13 20:00:00', '2023-07-13 20:55:00', '#ffffff', 0, 15, 15, 10),
(466, 'Cross training', '2023-07-13 19:00:00', '2023-07-13 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(467, 'Jump & Box Jumps', '2023-07-13 18:00:00', '2023-07-13 18:55:00', '#cb7025', 15, 0, 15, 13),
(468, 'Musculacion', '2023-07-13 17:00:00', '2023-07-13 17:55:00', '#000000', 15, 0, 15, 14),
(469, 'GAP', '2023-07-13 16:00:00', '2023-07-13 16:55:00', '#0d6efd', 15, 0, 15, 15),
(470, 'Funcional', '2023-07-14 21:00:00', '2023-07-14 21:55:00', '#ffc107', 15, 0, 15, 11),
(471, 'Yoga', '2023-07-14 20:00:00', '2023-07-14 20:55:00', '#ffffff', 1, 14, 15, 10),
(472, 'Cross training', '2023-07-14 19:00:00', '2023-07-14 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(473, 'Jump & Box Jumps', '2023-07-14 18:00:00', '2023-07-14 18:55:00', '#cb7025', 15, 0, 15, 13),
(474, 'Musculacion', '2023-07-14 17:00:00', '2023-07-14 17:55:00', '#000000', 15, 0, 15, 14),
(475, 'GAP', '2023-07-14 16:00:00', '2023-07-14 16:55:00', '#0d6efd', 15, 0, 15, 15),
(476, 'Funcional', '2023-07-15 21:00:00', '2023-07-15 21:55:00', '#ffc107', 15, 0, 15, 11),
(477, 'Yoga', '2023-07-15 20:00:00', '2023-07-15 20:55:00', '#ffffff', 1, 14, 15, 10),
(478, 'Cross training', '2023-07-15 19:00:00', '2023-07-15 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(479, 'Jump & Box Jumps', '2023-07-15 18:00:00', '2023-07-15 18:55:00', '#cb7025', 15, 0, 15, 13),
(480, 'Musculacion', '2023-07-15 17:00:00', '2023-07-15 17:55:00', '#000000', 15, 0, 15, 14),
(481, 'GAP', '2023-07-15 16:00:00', '2023-07-15 16:55:00', '#0d6efd', 15, 0, 15, 15),
(482, 'Funcional', '2023-07-17 21:00:00', '2023-07-17 21:55:00', '#ffc107', 15, 0, 15, 11),
(483, 'Yoga', '2023-07-17 20:00:00', '2023-07-17 20:55:00', '#ffffff', 1, 14, 15, 10),
(484, 'Cross training', '2023-07-17 19:00:00', '2023-07-17 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(485, 'Jump & Box Jumps', '2023-07-17 18:00:00', '2023-07-17 18:55:00', '#cb7025', 15, 0, 15, 13),
(486, 'Musculacion', '2023-07-17 17:00:00', '2023-07-17 17:55:00', '#000000', 15, 0, 15, 14),
(487, 'GAP', '2023-07-17 16:00:00', '2023-07-17 16:55:00', '#0d6efd', 15, 0, 15, 15),
(488, 'Funcional', '2023-07-18 21:00:00', '2023-07-18 21:55:00', '#ffc107', 15, 0, 15, 11),
(489, 'Yoga', '2023-07-18 20:00:00', '2023-07-18 20:55:00', '#ffffff', 1, 14, 15, 10),
(490, 'Cross training', '2023-07-18 19:00:00', '2023-07-18 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(491, 'Jump & Box Jumps', '2023-07-18 18:00:00', '2023-07-18 18:55:00', '#cb7025', 15, 0, 15, 13),
(492, 'Musculacion', '2023-07-18 17:00:00', '2023-07-18 17:55:00', '#000000', 15, 0, 15, 14),
(493, 'GAP', '2023-07-18 16:00:00', '2023-07-18 16:55:00', '#0d6efd', 15, 0, 15, 15),
(494, 'Funcional', '2023-07-19 21:00:00', '2023-07-19 21:55:00', '#ffc107', 15, 0, 15, 11),
(495, 'Yoga', '2023-07-19 20:00:00', '2023-07-19 20:55:00', '#ffffff', 1, 14, 15, 10),
(496, 'Cross training', '2023-07-19 19:00:00', '2023-07-19 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(497, 'Jump & Box Jumps', '2023-07-19 18:00:00', '2023-07-19 18:55:00', '#cb7025', 15, 0, 15, 13),
(498, 'Musculacion', '2023-07-19 17:00:00', '2023-07-19 17:55:00', '#000000', 15, 0, 15, 14),
(499, 'GAP', '2023-07-19 16:00:00', '2023-07-19 16:55:00', '#0d6efd', 15, 0, 15, 15),
(500, 'Funcional', '2023-07-20 21:00:00', '2023-07-20 21:55:00', '#ffc107', 15, 0, 15, 11),
(501, 'Yoga', '2023-07-20 20:00:00', '2023-07-20 20:55:00', '#ffffff', 1, 14, 15, 10),
(502, 'Cross training', '2023-07-20 19:00:00', '2023-07-20 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(503, 'Jump & Box Jumps', '2023-07-20 18:00:00', '2023-07-20 18:55:00', '#cb7025', 15, 0, 15, 13),
(504, 'Musculacion', '2023-07-20 17:00:00', '2023-07-20 17:55:00', '#000000', 15, 0, 15, 14),
(505, 'GAP', '2023-07-20 16:00:00', '2023-07-20 16:55:00', '#0d6efd', 15, 0, 15, 15),
(506, 'Funcional', '2023-07-21 21:00:00', '2023-07-21 21:55:00', '#ffc107', 15, 0, 15, 11),
(507, 'Yoga', '2023-07-21 20:00:00', '2023-07-21 20:55:00', '#ffffff', 0, 15, 15, 10),
(508, 'Cross training', '2023-07-21 19:00:00', '2023-07-21 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(509, 'Jump & Box Jumps', '2023-07-21 18:00:00', '2023-07-21 18:55:00', '#cb7025', 15, 0, 15, 13),
(510, 'Musculacion', '2023-07-21 17:00:00', '2023-07-21 17:55:00', '#000000', 15, 0, 15, 14),
(511, 'GAP', '2023-07-21 16:00:00', '2023-07-21 16:55:00', '#0d6efd', 15, 0, 15, 15),
(512, 'Funcional', '2023-07-22 21:00:00', '2023-07-22 21:55:00', '#ffc107', 15, 0, 15, 11),
(513, 'Yoga', '2023-07-22 20:00:00', '2023-07-22 20:55:00', '#ffffff', 1, 14, 15, 10),
(514, 'Cross training', '2023-07-22 19:00:00', '2023-07-22 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(515, 'Jump & Box Jumps', '2023-07-22 18:00:00', '2023-07-22 18:55:00', '#cb7025', 15, 0, 15, 13),
(516, 'Musculacion', '2023-07-22 17:00:00', '2023-07-22 17:55:00', '#000000', 15, 0, 15, 14),
(517, 'GAP', '2023-07-22 16:00:00', '2023-07-22 16:55:00', '#0d6efd', 15, 0, 15, 15),
(518, 'Funcional', '2023-07-24 21:00:00', '2023-07-24 21:55:00', '#ffc107', 15, 0, 15, 11),
(519, 'Yoga', '2023-07-24 20:00:00', '2023-07-24 20:55:00', '#ffffff', 1, 14, 15, 10),
(520, 'Cross training', '2023-07-24 19:00:00', '2023-07-24 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(521, 'Jump & Box Jumps', '2023-07-24 18:00:00', '2023-07-24 18:55:00', '#cb7025', 15, 0, 15, 13),
(522, 'Musculacion', '2023-07-24 17:00:00', '2023-07-24 17:55:00', '#000000', 15, 0, 15, 14),
(523, 'GAP', '2023-07-24 16:00:00', '2023-07-24 16:55:00', '#0d6efd', 15, 0, 15, 15),
(524, 'Funcional', '2023-07-25 21:00:00', '2023-07-25 21:55:00', '#ffc107', 15, 0, 15, 11),
(525, 'Yoga', '2023-07-25 20:00:00', '2023-07-25 20:55:00', '#ffffff', 1, 14, 15, 10),
(526, 'Cross training', '2023-07-25 19:00:00', '2023-07-25 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(527, 'Jump & Box Jumps', '2023-07-25 18:00:00', '2023-07-25 18:55:00', '#cb7025', 15, 0, 15, 13),
(528, 'Musculacion', '2023-07-25 17:00:00', '2023-07-25 17:55:00', '#000000', 15, 0, 15, 14),
(529, 'GAP', '2023-07-25 16:00:00', '2023-07-25 16:55:00', '#0d6efd', 15, 0, 15, 15),
(530, 'Funcional', '2023-07-26 21:00:00', '2023-07-26 21:55:00', '#ffc107', 15, 0, 15, 11),
(531, 'Yoga', '2023-07-26 20:00:00', '2023-07-26 20:55:00', '#ffffff', 1, 14, 15, 10),
(532, 'Cross training', '2023-07-26 19:00:00', '2023-07-26 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(533, 'Jump & Box Jumps', '2023-07-26 18:00:00', '2023-07-26 18:55:00', '#cb7025', 15, 0, 15, 13),
(534, 'Musculacion', '2023-07-26 17:00:00', '2023-07-26 17:55:00', '#000000', 15, 0, 15, 14),
(535, 'GAP', '2023-07-26 16:00:00', '2023-07-26 16:55:00', '#0d6efd', 15, 0, 15, 15),
(536, 'Funcional', '2023-07-27 21:00:00', '2023-07-27 21:55:00', '#ffc107', 15, 0, 15, 11),
(537, 'Yoga', '2023-07-27 20:00:00', '2023-07-27 20:55:00', '#ffffff', 1, 14, 15, 10),
(538, 'Cross training', '2023-07-27 19:00:00', '2023-07-27 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(539, 'Jump & Box Jumps', '2023-07-27 18:00:00', '2023-07-27 18:55:00', '#cb7025', 15, 0, 15, 13),
(540, 'Musculacion', '2023-07-27 17:00:00', '2023-07-27 17:55:00', '#000000', 15, 0, 15, 14),
(541, 'GAP', '2023-07-27 16:00:00', '2023-07-27 16:55:00', '#0d6efd', 15, 0, 15, 15),
(542, 'Funcional', '2023-07-28 21:00:00', '2023-07-28 21:55:00', '#ffc107', 15, 0, 15, 11),
(543, 'Yoga', '2023-07-28 20:00:00', '2023-07-28 20:55:00', '#ffffff', 1, 14, 15, 10),
(544, 'Cross training', '2023-07-28 19:00:00', '2023-07-28 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(545, 'Jump & Box Jumps', '2023-07-28 18:00:00', '2023-07-28 18:55:00', '#cb7025', 15, 0, 15, 13),
(546, 'Musculacion', '2023-07-28 17:00:00', '2023-07-28 17:55:00', '#000000', 15, 0, 15, 14),
(547, 'GAP', '2023-07-28 16:00:00', '2023-07-28 16:55:00', '#0d6efd', 15, 0, 15, 15),
(548, 'Funcional', '2023-07-29 21:00:00', '2023-07-29 21:55:00', '#ffc107', 15, 0, 15, 11),
(549, 'Yoga', '2023-07-29 20:00:00', '2023-07-29 20:55:00', '#ffffff', 1, 14, 15, 10),
(550, 'Cross training', '2023-07-29 19:00:00', '2023-07-29 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(551, 'Jump & Box Jumps', '2023-07-29 18:00:00', '2023-07-29 18:55:00', '#cb7025', 15, 0, 15, 13),
(552, 'Musculacion', '2023-07-29 17:00:00', '2023-07-29 17:55:00', '#000000', 15, 0, 15, 14),
(553, 'GAP', '2023-07-29 16:00:00', '2023-07-29 16:55:00', '#0d6efd', 15, 0, 15, 15),
(554, 'Funcional', '2023-07-30 21:00:00', '2023-07-30 21:55:00', '#ffc107', 15, 0, 15, 11),
(555, 'Yoga', '2023-07-30 20:00:00', '2023-07-30 20:55:00', '#ffffff', 1, 14, 15, 10),
(556, 'Cross training', '2023-07-30 19:00:00', '2023-07-30 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(557, 'Jump & Box Jumps', '2023-07-30 18:00:00', '2023-07-30 18:55:00', '#cb7025', 15, 0, 15, 13),
(558, 'Musculacion', '2023-07-30 17:00:00', '2023-07-30 17:55:00', '#000000', 15, 0, 15, 14),
(559, 'GAP', '2023-07-30 16:00:00', '2023-07-30 16:55:00', '#0d6efd', 15, 0, 15, 15),
(560, 'Funcional', '2023-07-31 21:00:00', '2023-07-31 21:55:00', '#ffc107', 15, 0, 15, 11),
(561, 'Yoga', '2023-07-31 20:00:00', '2023-07-31 20:55:00', '#ffffff', 1, 14, 15, 10),
(562, 'Cross training', '2023-07-31 19:00:00', '2023-07-31 19:55:00', '#D4E7F1', 15, 0, 15, 12),
(563, 'Jump & Box Jumps', '2023-07-31 18:00:00', '2023-07-31 18:55:00', '#cb7025', 15, 0, 15, 13),
(564, 'Musculacion', '2023-07-31 17:00:00', '2023-07-31 17:55:00', '#000000', 15, 0, 15, 14),
(565, 'GAP', '2023-07-31 16:00:00', '2023-07-31 16:55:00', '#0d6efd', 15, 0, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int NOT NULL,
  `Apellido1` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `Apellido2` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `Correo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `contrasena` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `codigo` int NOT NULL,
  `confirmado` varchar(20) COLLATE utf8mb3_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Apellido1`, `Apellido2`, `Nombre`, `Correo`, `usuario`, `contrasena`, `codigo`, `confirmado`) VALUES
(147, 'LAMRIUI', 'EL OUMRI', 'IMANE', 'ilamriui@gmail.com', 'Imane', 'ed3afa1d6d3adcf7fc26d871aa2dfee38d60c3630ff71f77cd9d06c2559609984b03a2ee10f34371edb9c4caabeff149b09f799808f1284b5af49ec0d71e8b99', 90222, 'si');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`Cod`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_reservas_clases` (`Cod_clase`),
  ADD KEY `fk_reservas_usuarios` (`Id_usuario`),
  ADD KEY `fk_reservas_sesiones` (`id_sesiones`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sesiones_class` (`cod_clase`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `Cod` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_reservas_sesiones` FOREIGN KEY (`id_sesiones`) REFERENCES `sesiones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD CONSTRAINT `fk_sesiones_class` FOREIGN KEY (`cod_clase`) REFERENCES `clases` (`Cod`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;