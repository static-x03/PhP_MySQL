-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2018 a las 00:12:03
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basesdedatosproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania`
--

CREATE TABLE `compania` (
  `id_compania` int(11) NOT NULL,
  `telefono` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compania`
--

INSERT INTO `compania` (`id_compania`, `telefono`) VALUES
(10, 789456),
(11, 489456),
(12, 589456),
(13, 689456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_numero_de_factura` int(11) NOT NULL,
  `forma_pago` varchar(10) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `fecha_proyeccion` datetime NOT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `formato` varchar(5) DEFAULT NULL,
  `id_compania` int(11) DEFAULT NULL,
  `id_teatro` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `NombreRol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `NombreRol`) VALUES
(1, 'ADMIN'),
(2, 'EMPLEADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolusuario`
--

CREATE TABLE `rolusuario` (
  `idRolUsuario` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rolusuario`
--

INSERT INTO `rolusuario` (`idRolUsuario`, `idRol`, `idUsuario`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teatro`
--

CREATE TABLE `teatro` (
  `id_teatro` int(11) NOT NULL,
  `ciudadteatro` varchar(20) NOT NULL,
  `id_compania` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teatro`
--

INSERT INTO `teatro` (`id_teatro`, `ciudadteatro`, `id_compania`, `id_usuario`) VALUES
(14, 'Cali', 10, 1),
(15, 'Barranquilla', 11, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `emailU` varchar(200) DEFAULT NULL,
  `passwordU` varchar(200) DEFAULT NULL,
  `nombreU` varchar(200) DEFAULT NULL,
  `apellidoU` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `emailU`, `passwordU`, `nombreU`, `apellidoU`) VALUES
(2, 'dipaol23a@hotmail.com', '123', 'luisa', 'ramires'),
(3, 'dipaol23sa@hotmail.com', '1234', 'blanca', 'ramires'),
(4, 'vanegas@gmail.com', '12345', 'luis', 'vanegas'),
(5, 'static-x045@hotmail.com', '', 'bryan', 'arrieta'),
(6, 'soifia@123hotmail.com', '12345', 'sofia ', 'arrieta'),
(7, '123@gmail.com', '123', 'bryan', 'ramirez'),
(8, 'dpardo@hotmail.com', '0987', 'daniel', 'pardo'),
(9, 'jmurillo@hotmail.com', '', 'Juan', 'murillo'),
(10, 'lpadilla@hotmail.com', '123456', 'lucas', 'padilla'),
(11, 'ptrujillo@hotmail.com', '12345', 'pablo', 'trujillo'),
(12, 'di@padillohotmail.com', '123456', 'diana', 'padilla'),
(13, 'dvanegas@gmail.com', '1234567', 'diego', 'vanegas'),
(14, 'csierra@gmail.com', '1234', 'camilo', 'sierra'),
(15, 'lsantiago@gmail.com', '12345', 'laura', 'santiago'),
(19, 'pdraza@gmail.com', '', 'dario', 'pedraza'),
(20, 'dlpez@gmail.com', '', 'dayana', 'lopez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombres`, `apellido`, `email`) VALUES
(1, 'Bryan Steven', 'Vanegas Arrieta', 'static-x03@hotmail.c'),
(2, 'Juan David', 'Acosta Rodriguez', 'static-x034@hotmail.'),
(3, 'Kevin Luis', 'Daza Arrieta', 'static-x035@hotmail.'),
(345, 'Diana Paolo', 'Romero Daza', 'dipao@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario1`
--

CREATE TABLE `usuario1` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(10) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario1`
--

INSERT INTO `usuario1` (`idUsuario`, `nombreUsuario`, `password`) VALUES
(1, 'BRYAN', 123456789),
(2, 'david', 1234);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compania`
--
ALTER TABLE `compania`
  ADD PRIMARY KEY (`id_compania`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_numero_de_factura`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`),
  ADD KEY `id_compania` (`id_compania`),
  ADD KEY `id_teatro` (`id_teatro`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `rolusuario`
--
ALTER TABLE `rolusuario`
  ADD PRIMARY KEY (`idRolUsuario`),
  ADD KEY `idRol` (`idRol`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `teatro`
--
ALTER TABLE `teatro`
  ADD PRIMARY KEY (`id_teatro`),
  ADD KEY `id_compania` (`id_compania`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailU` (`emailU`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario1`
--
ALTER TABLE `usuario1`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_numero_de_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rolusuario`
--
ALTER TABLE `rolusuario`
  MODIFY `idRolUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario1`
--
ALTER TABLE `usuario1`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`id_compania`) REFERENCES `compania` (`id_compania`),
  ADD CONSTRAINT `pelicula_ibfk_2` FOREIGN KEY (`id_teatro`) REFERENCES `teatro` (`id_teatro`),
  ADD CONSTRAINT `pelicula_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `rolusuario`
--
ALTER TABLE `rolusuario`
  ADD CONSTRAINT `rolusuario_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rolusuario_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario1` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `teatro`
--
ALTER TABLE `teatro`
  ADD CONSTRAINT `teatro_ibfk_1` FOREIGN KEY (`id_compania`) REFERENCES `compania` (`id_compania`),
  ADD CONSTRAINT `teatro_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
