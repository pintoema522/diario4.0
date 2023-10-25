-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2023 a las 07:21:42
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
-- Base de datos: `diariodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `id_noticia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `copete` text NOT NULL,
  `cuerpo` text NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id_noticia`, `id_usuario`, `titulo`, `copete`, `cuerpo`, `imagen`, `fecha`, `categoria`) VALUES
(19, 1, 'este es un titulo', 'mi copete', 'sdas sad sa dasd \r\n\r\ndas dasd asd sa d\r\n\r\n\r\n\r\nda sd sa dasd sa', '63590331_605.JPG', '2023-09-26', 'Moda'),
(20, 1, 'dsadsad', 'ddasdasd', '<p>hola</p><p><b>ddddd</b></p><p>gdfgfdg<b><br></b></p><p><br></p>', 'bizzamatero1.PNG', '2023-09-26', 'Deportes'),
(21, 1, 'el monte everest xD', 'la cuidad cuidosa', '                    <p>dsa as </p><p> das</p><p>d </p><p>d </p><p>asd <br></p>                ', 'city-4457801_640.JPG', '2023-09-26', 'Negocios'),
(22, 1, 'asdas', 'ddddddddddddddddd ddddddddddddddddddddddddd ddddddddddddddd', '<p>ddddddddddddd<br></p>', 'images.JPG', '2023-09-26', 'Deportes'),
(23, 2, 'esta es la prueba ', 'si sale queda', 'las mejores noticias por el mejor diario de mentirita', '1698172953-capibaras2-770x499.jpg', '2023-10-24', 'Ciencia'),
(24, 2, 'ahora si', 'queda todo bien ', 'pasdoasdandkandwuabdqkmwdknas', '1698173069-5-tips-para-crear-un-logo-memorable.jpg', '2023-10-24', 'Negocios'),
(25, 4, 'argentina programa 4.0', 'todo un exito ', '<p>esta pag fue realizada por y para terminar el curso de fullstackweb dado por dasdjahsdahdaldnadmña</p>', '1698176827-7460d9cdd6dd498128413a5f025c161e_L.jpg', '2023-10-24', 'Tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Id`, `nombre`, `apellido`, `telefono`, `email`, `ciudad`) VALUES
(1, '   Juan    ', '   Pérez     ', '  555-123-4567 ', '  juan.perez@example.com     ', '  Ciudad A   '),
(2, '   María   ', '   García    ', '  555-987-6543 ', '  maria.garcia@example.com   ', '  Ciudad B   '),
(3, '   Pedro   ', '   López     ', '  555-234-5678 ', '  pedro.lopez@example.com    ', '  Ciudad C   '),
(4, '  Ana      ', '   Rodríguez ', '  555-876-5432 ', '  ana.rodriguez@example.com  ', '  Ciudad D   '),
(5, '   Luis    ', '   Martínez  ', '  555-345-6789 ', '  luis.martinez@example.com  ', '  Ciudad E   '),
(6, '   Laura   ', '   Hernández ', '  555-765-4321 ', '  laura.hernandez@example.com', '  Ciudad F   '),
(7, '   Carlos  ', '   González  ', '  555-456-7890 ', '  carlos.gonzalez@example.com', '  Ciudad G   '),
(8, '   Sofia   ', '   Díaz      ', '  555-654-3210 ', '  sofia.diaz@example.com     ', '  Ciudad H   '),
(9, '   Andrés  ', '   Pérez     ', '  555-987-1234 ', '  andres.perez@example.com   ', '  Ciudad I   '),
(10, '   Julia   ', '   Smith     ', '  555-234-5678 ', '  julia.smith@example.com    ', '  Ciudad J   '),
(11, '   Diego   ', '   Johnson   ', '  555-876-5432 ', '  diego.johnson@example.com  ', '  Ciudad K   '),
(12, '   Carla   ', '   Williams  ', '  555-345-6789 ', '  carla.williams@example.com ', '  Ciudad L   '),
(13, '   Miguel  ', '   Brown     ', '  555-654-3210 ', '  miguel.brown@example.com   ', '  Ciudad M   '),
(14, '   Marta   ', '   Davis     ', '  555-987-1234 ', '  marta.davis@example.com    ', '  Ciudad N   '),
(15, '   Pablo   ', '   Martinez  ', '  555-234-5678 ', '  pablo.martinez@example.com ', '  Ciudad O   '),
(16, '   Elena   ', '   Johnson   ', '  555-876-5432 ', '  elena.johnson@example.com  ', '  Ciudad P   '),
(17, '   Sergio  ', '   Miller    ', '  555-345-6789 ', '  sergio.miller@example.com  ', '  Ciudad Q   '),
(18, '   Andrea  ', '   Taylor    ', '  555-654-3210 ', '  andrea.taylor@example.com  ', '  Ciudad R   '),
(19, '   Raúl    ', '   Anderson  ', '  555-987-1234 ', '  raul.anderson@example.com  ', '  Ciudad S   '),
(20, '   Sofía   ', '   Jackson   ', '  555-234-5678 ', '  sofia.jackson@example.com  ', '  Ciudad T   '),
(21, '   Marcelo ', '   White     ', '  555-876-5432 ', '  marcelo.white@example.com  ', '  Ciudad U   ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `rol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `password`, `rol`) VALUES
(1, 'Emanuel', 'Pinto Ocampo', 'ocampo', 'guE1pk/6waGK2', 'admin'),
(2, 'guillermo', 'oliva', 'guillermo', 'guEJcO/986dyI', 'admin'),
(4, 'emanuel', 'pinto ocampo ', 'Emanuel', 'EmvcuKDhTk.O2', 'autor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
