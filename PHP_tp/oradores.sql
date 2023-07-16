-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 11:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_23083`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `edad` tinyint(2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `provincia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `edad`, `fecha`, `provincia`) VALUES
(2, 'Guadalupe', 'Buceta', 41, '2023-07-11 07:01:42', 'CABA'),
(3, 'Maria', 'Perez', 21, '2023-07-11 07:01:42', 'Buenos Aires'),
(4, 'Jose', 'Gonzalez', 34, '2023-07-11 07:01:42', 'La Rioja'),
(5, 'Diego', 'Rodriguez', 39, '2023-07-11 07:01:42', 'Catamarca'),
(6, 'Jorge', 'Diaz', 25, '2023-07-11 07:01:42', 'Chubut');

-- --------------------------------------------------------

--
-- Table structure for table `oradores`
--

CREATE TABLE `oradores` (
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Pais` text NOT NULL,
  `email` text NOT NULL,
  `Institucion` text NOT NULL,
  `id` int(11) NOT NULL,
  `tituloCharla` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `oradores`
--

INSERT INTO `oradores` (`Nombre`, `Apellido`, `Pais`, `email`, `Institucion`, `id`, `tituloCharla`) VALUES
('Bill', 'Gates', 'USA', 'bill.gates@gatesfoundation.com', 'Gates Foundation', 1, 'Transición a energías limpias'),
('Ada', 'Lovelace', 'Inglaterra', 'hello@adalovelaceinstitute.org', 'Ada Lovelace Institute', 2, 'El origen de los algoritmos'),
('Steve', 'Jobs', 'USA', 'legal@stevejobsarchive.com', 'Steve Jobs Archive', 4, 'Diseñando algo maravilloso'),
('Justin', 'Reich', 'USA', 'jreich@mit.edu', 'MIT', 5, 'Fracaso en la disrupción: por qué la tecnología por sí sola no puede transformar la educación'),
('Karl', 'Fogel', 'USA', 'kfogel@red-bean.com', 'Red Bean Software', 6, 'Producción de software de código abierto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
