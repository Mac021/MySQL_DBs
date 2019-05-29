-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 28-Maio-2019 às 19:41
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
-- Estrutura da tabela `geralestoque`
--

CREATE TABLE `geralestoque` (
  `ingredient_id` smallint(4) NOT NULL COMMENT 'Id Do Ingrediente',
  `ingredient_nome` tinytext NOT NULL COMMENT 'Nome Do Ingrediente',
  `ingredient_qtd` decimal(4,4) NOT NULL COMMENT 'Quantidade Em Kilo Do Ingrediente',
  `ingredient_update` datetime NOT NULL COMMENT 'Atualização do Ingrediente Em Estoque'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `geralestoque`
--
ALTER TABLE `geralestoque`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `geralestoque`
--
ALTER TABLE `geralestoque`
  MODIFY `ingredient_id` smallint(4) NOT NULL AUTO_INCREMENT COMMENT 'Id Do Ingrediente', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
