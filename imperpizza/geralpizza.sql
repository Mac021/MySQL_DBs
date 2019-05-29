-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 28-Maio-2019 às 19:39
-- Versão do servidor: 5.7.22
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `geralpizza`
--

CREATE TABLE `geralpizza` (
  `pizza_id` int(4) NOT NULL,
  `pizza_nome` tinytext,
  `pizza_desc` varchar(255) DEFAULT NULL,
  `pizza_tipo` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `geralpizza`
--

INSERT INTO `geralpizza` (`pizza_id`, `pizza_nome`, `pizza_desc`, `pizza_tipo`) VALUES
(1, 'Calabresa', 'Linguiça Calabresa,Quijo Mussarela,Cebola', 'Salgada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `geralpizza`
--
ALTER TABLE `geralpizza`
  ADD PRIMARY KEY (`pizza_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `geralpizza`
--
ALTER TABLE `geralpizza`
  MODIFY `pizza_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
