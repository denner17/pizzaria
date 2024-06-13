-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Jun-2024 às 22:08
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzakim`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bebidaskim`
--

CREATE TABLE `bebidaskim` (
  `agua` varchar(30) NOT NULL,
  `refri` varchar(30) NOT NULL,
  `suco` varchar(30) NOT NULL,
  `energetico` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientespz`
--

CREATE TABLE `clientespz` (
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `celular` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientespz`
--

INSERT INTO `clientespz` (`nome`, `email`, `senha`, `celular`) VALUES
('qdqwd', 'wqdqw@sf', '$2y$10$/G1vWE4wpzI/CXcQjTYAuOQCla4kp5gJiBUQ6GHgEmTwe9Rbp7x7e', '2432314'),
('dfew', 'fweew@grg', '$2y$10$2fQmp1yfUolpTKcUvyOn3OygzivMOqHLo0T1zVwHVhohtVvphWnUO', '51-9927.14177'),
('denner ss', 'denr@gmail', '$2y$10$7Vx.i8k4kcxXVtN40PPcd.fcsPDkWaqlnXbQ9.1rpaLRpi97C/Pm.', '5191818667'),
('werfwe', 'wefx@sdf', '$2y$10$ADe9jX3x268APVH.UqgwYemeTjvxrntS4kiN4yT7HHQjRg62wnTsO', '51-9927.14177'),
('vwerc', 'denn@idgfdf', '$2y$10$dik1PeCaBAbikuTk7zjdaeK10OhtXvI2DSzqk48Utw4Ra4FhObba2', '51-9927.14177'),
('denner ss', 'denr@gmail', '$2y$10$hBN6VRWBYzG2EN0O1/i8wOBhe5Zn2UvP7lXFkXMxPyuJw6hVtAvee', '5191818667'),
('dfew', 'fweew@grg', '$2y$10$hGySAVveOTvvlPJheS/yku58MMT56h.YFWE1CwnXsfaUaQ4NlJohq', '51-9927.14177'),
('qwrsffdh', 'fweav@dfgh', '$2y$10$HqTRawsjL5yXYObsrieqhugfKg.VH8A696oD52/n3osJLPz2YKjOG', '51-9927.14177'),
('', '', '$2y$10$k4wtqqDFH5sCwFde2LCn3u/N5d.hPoiTkSJSI82ZoFlhTsTbfkn/6', ''),
('denner', 'denner@dsam', '$2y$10$lPkTzSBh5xaERGsK6QSQ1.h9/.L4DGNM0kqu/HPJCAlvyoIqhpk.O', '123123'),
('denner ss', 'denr@gmail', '$2y$10$MoQPzitsC0KRLS4n0w9q8uboLpXwmH3ZMBH1/joKtz7XB7AUUUOFa', '5191818667'),
('fafw4e', 'ewfw@werc', '$2y$10$OJATtfsE2R.15KnQdOveA.aSdeHnQkUxh.LP9PVYp0XdlOzvml8Hm', '51-9927.14177'),
('', '', '$2y$10$SNLIc/oxzPjpJhm0j0No1ev22ECKM7P5ticuRBlMgjzmBDjktmV7S', ''),
('ewfwe', 'cewf@asfd', '$2y$10$Xe5gLBvnb552Mxpi7.u7duHAesZMB6PIHlPBQw6QxpEachAEyOHfa', '51-9927.14177'),
('', '', '$2y$10$ycU/yPDcLW0cCBb5AqBF1.62FBGNVAeRrkgwJjz4pBXFAtzJfANU6', ''),
('vwerc', 'denn@idgfdf', '$2y$10$ZoIPlmkgZ3uhLlNCDuWmbuc1Y1BmO8UrAwSlKHTHKCPtHMW8Um0qu', '51-9927.14177');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `endereco` varchar(60) NOT NULL,
  `bairro` varchar(60) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `cep` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`endereco`, `bairro`, `cidade`, `cep`) VALUES
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '2341243'),
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '91790-460'),
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '2341243'),
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '2341243'),
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '91790-460'),
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '91790-460'),
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '2341243'),
('RUA PABLO KOMLOS, 484', 'restinga', 'Porto Alegre', '2341243');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pizzadoce`
--

CREATE TABLE `pizzadoce` (
  `doce1` varchar(60) NOT NULL,
  `doce2` varchar(60) NOT NULL,
  `tamanhoDoce` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pizzasalgada`
--

CREATE TABLE `pizzasalgada` (
  `sabor 1` varchar(69) NOT NULL,
  `sabor 2` varchar(60) NOT NULL,
  `tamanho` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocao`
--

CREATE TABLE `promocao` (
  `promocao1` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `promocao`
--

INSERT INTO `promocao` (`promocao1`) VALUES
('P'),
('P'),
('P'),
('P'),
('P'),
('P');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientespz`
--
ALTER TABLE `clientespz`
  ADD PRIMARY KEY (`senha`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
