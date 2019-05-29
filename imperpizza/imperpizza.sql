-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29/05/2019 às 13:40
-- Versão do servidor: 10.1.40-MariaDB
-- Versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imperpizza`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `costumrInfo`
--

CREATE TABLE `costumrInfo` (
  `client_id` int(4) NOT NULL,
  `client_nome` tinytext,
  `client_tele` tinytext,
  `client_ende` varchar(255) DEFAULT NULL,
  `client_email` varchar(60) DEFAULT NULL,
  `client_cpf` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcInfo`
--

CREATE TABLE `funcInfo` (
  `funci_id` int(4) NOT NULL,
  `funci_nome` tinytext,
  `funci_email` varchar(50) NOT NULL,
  `funci_cpf` varchar(13) NOT NULL,
  `funci_ctps` tinytext NOT NULL,
  `funci_salb` decimal(4,2) NOT NULL,
  `funci_sall` decimal(4,2) NOT NULL,
  `funci_refe` tinyint(1) NOT NULL,
  `funci_vt` tinyint(1) NOT NULL,
  `funci_saud` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `geralestoque`
--

CREATE TABLE `geralestoque` (
  `ingredient_id` smallint(4) NOT NULL COMMENT 'Id Do Ingrediente',
  `ingredient_nome` tinytext NOT NULL COMMENT 'Nome Do Ingrediente',
  `ingredient_qtd` decimal(4,4) NOT NULL COMMENT 'Quantidade Em Kilo Do Ingrediente',
  `ingredient_update` datetime NOT NULL COMMENT 'Atualização do Ingrediente Em Estoque'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `geralpizza`
--

CREATE TABLE `geralpizza` (
  `pizza_id` int(4) NOT NULL,
  `pizza_nome` tinytext,
  `pizza_desc` varchar(255) DEFAULT NULL,
  `pizza_tipo` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `geralpizza`
--

INSERT INTO `geralpizza` (`pizza_id`, `pizza_nome`, `pizza_desc`, `pizza_tipo`) VALUES
(1, 'Calabresa', 'Linguiça Calabresa,Quijo Mussarela,Cebola', 'Salgada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `motoInfo`
--

CREATE TABLE `motoInfo` (
  `moto_id` int(4) NOT NULL,
  `moto_nome` tinytext NOT NULL,
  `moto_km` decimal(4,2) NOT NULL,
  `moto_pay` decimal(4,2) NOT NULL,
  `moto_disp` tinyint(1) NOT NULL DEFAULT '0',
  `moto_cpf` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `costumrInfo`
--
ALTER TABLE `costumrInfo`
  ADD PRIMARY KEY (`client_id`);

--
-- Índices de tabela `funcInfo`
--
ALTER TABLE `funcInfo`
  ADD PRIMARY KEY (`funci_id`);

--
-- Índices de tabela `geralestoque`
--
ALTER TABLE `geralestoque`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- Índices de tabela `geralpizza`
--
ALTER TABLE `geralpizza`
  ADD PRIMARY KEY (`pizza_id`);

--
-- Índices de tabela `motoInfo`
--
ALTER TABLE `motoInfo`
  ADD PRIMARY KEY (`moto_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `costumrInfo`
--
ALTER TABLE `costumrInfo`
  MODIFY `client_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcInfo`
--
ALTER TABLE `funcInfo`
  MODIFY `funci_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `geralestoque`
--
ALTER TABLE `geralestoque`
  MODIFY `ingredient_id` smallint(4) NOT NULL AUTO_INCREMENT COMMENT 'Id Do Ingrediente', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `geralpizza`
--
ALTER TABLE `geralpizza`
  MODIFY `pizza_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `motoInfo`
--
ALTER TABLE `motoInfo`
  MODIFY `moto_id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
