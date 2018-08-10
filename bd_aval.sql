-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Ago-2018 às 03:49
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_aval`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

CREATE TABLE `campus` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_unid_acad` bigint(20) NOT NULL,
  `id_campus` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dimensao_1`
--

CREATE TABLE `dimensao_1` (
  `id_avaliacao` bigint(20) NOT NULL,
  `id_campus` bigint(20) NOT NULL,
  `id_unid_acad` bigint(20) NOT NULL,
  `id_curso` bigint(20) NOT NULL,
  `D1.1` int(1) NOT NULL,
  `D1.2` int(1) NOT NULL,
  `D1.3` int(1) NOT NULL,
  `D1.4` int(1) NOT NULL,
  `D1.5` int(1) NOT NULL,
  `D1.6` int(1) NOT NULL,
  `D1.7` int(1) NOT NULL,
  `D1.8` int(1) NOT NULL,
  `D1.9` int(1) NOT NULL,
  `D1.10` int(1) NOT NULL,
  `D1.11` int(1) NOT NULL,
  `D1.12` int(1) NOT NULL,
  `D1.13` int(1) NOT NULL,
  `D1.14` int(1) NOT NULL,
  `D1.15` int(1) NOT NULL,
  `D1.16` int(1) NOT NULL,
  `D1.17` int(1) NOT NULL,
  `D1.18` int(1) NOT NULL,
  `D1.19` int(1) NOT NULL,
  `D1.20` int(1) NOT NULL,
  `D1.21` int(1) NOT NULL,
  `D1.22` int(1) NOT NULL,
  `D1.23` int(1) NOT NULL,
  `D1.24` int(1) NOT NULL,
  `D1.25` int(1) NOT NULL,
  `D1.26` int(1) NOT NULL,
  `D1.27` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dimensao_2`
--

CREATE TABLE `dimensao_2` (
  `id_avaliacao` bigint(20) NOT NULL,
  `id_campus` bigint(20) NOT NULL,
  `id_unid_acad` bigint(20) NOT NULL,
  `id_curso` bigint(20) NOT NULL,
  `D2.1` int(1) NOT NULL,
  `D2.2` int(1) NOT NULL,
  `D2.3` int(1) NOT NULL,
  `D2.4` int(1) NOT NULL,
  `D2.5` int(1) NOT NULL,
  `D2.6` int(1) NOT NULL,
  `D2.7` int(1) NOT NULL,
  `D2.8` int(1) NOT NULL,
  `D2.9` int(1) NOT NULL,
  `D2.10` int(1) NOT NULL,
  `D2.11` int(1) NOT NULL,
  `D2.12` int(1) NOT NULL,
  `D2.13` int(1) NOT NULL,
  `D2.14` int(1) NOT NULL,
  `D2.15` int(1) NOT NULL,
  `D2.16` int(1) NOT NULL,
  `D2.17` int(1) NOT NULL,
  `D2.18` int(1) NOT NULL,
  `D2.19` int(1) NOT NULL,
  `D2.20` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dimensao_3`
--

CREATE TABLE `dimensao_3` (
  `id_avaliacao` bigint(20) NOT NULL,
  `id_campus` bigint(20) NOT NULL,
  `id_unid_acad` bigint(20) NOT NULL,
  `id_curso` bigint(20) NOT NULL,
  `D3.1` int(1) NOT NULL,
  `D3.2` int(1) NOT NULL,
  `D3.3` int(1) NOT NULL,
  `D3.4` int(1) NOT NULL,
  `D3.5` int(1) NOT NULL,
  `D3.6` int(1) NOT NULL,
  `D3.7` int(1) NOT NULL,
  `D3.8` int(1) NOT NULL,
  `D3.9` int(1) NOT NULL,
  `D3.10` int(1) NOT NULL,
  `D3.11` int(1) NOT NULL,
  `D3.12` int(1) NOT NULL,
  `D3.13` int(1) NOT NULL,
  `D3.14` int(1) NOT NULL,
  `D3.15` int(1) NOT NULL,
  `D3.16` int(1) NOT NULL,
  `D3.17` int(1) NOT NULL,
  `D3.18` int(1) NOT NULL,
  `D3.19` int(1) NOT NULL,
  `D3.20` int(1) NOT NULL,
  `D3.21` int(1) NOT NULL,
  `D3.22` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `instru_avaliacao`
--

CREATE TABLE `instru_avaliacao` (
  `id` bigint(20) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `data_criacao` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unid_acad`
--

CREATE TABLE `unid_acad` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_campus` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_unid_acad` (`id_unid_acad`),
  ADD KEY `id_campus` (`id_campus`);

--
-- Indexes for table `dimensao_1`
--
ALTER TABLE `dimensao_1`
  ADD PRIMARY KEY (`id_avaliacao`,`id_campus`,`id_unid_acad`,`id_curso`),
  ADD KEY `id_campus` (`id_campus`),
  ADD KEY `id_unid_acad` (`id_unid_acad`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indexes for table `dimensao_2`
--
ALTER TABLE `dimensao_2`
  ADD PRIMARY KEY (`id_avaliacao`,`id_campus`,`id_unid_acad`,`id_curso`),
  ADD KEY `id_campus` (`id_campus`),
  ADD KEY `id_unid_acad` (`id_unid_acad`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indexes for table `dimensao_3`
--
ALTER TABLE `dimensao_3`
  ADD PRIMARY KEY (`id_avaliacao`,`id_campus`,`id_unid_acad`,`id_curso`),
  ADD KEY `id_campus` (`id_campus`),
  ADD KEY `id_unid_acad` (`id_unid_acad`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indexes for table `instru_avaliacao`
--
ALTER TABLE `instru_avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unid_acad`
--
ALTER TABLE `unid_acad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_campus` (`id_campus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instru_avaliacao`
--
ALTER TABLE `instru_avaliacao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unid_acad`
--
ALTER TABLE `unid_acad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`id_unid_acad`) REFERENCES `unid_acad` (`id`);

--
-- Limitadores para a tabela `dimensao_1`
--
ALTER TABLE `dimensao_1`
  ADD CONSTRAINT `dimensao_1_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `instru_avaliacao` (`id`),
  ADD CONSTRAINT `dimensao_1_ibfk_2` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `dimensao_1_ibfk_3` FOREIGN KEY (`id_unid_acad`) REFERENCES `unid_acad` (`id`),
  ADD CONSTRAINT `dimensao_1_ibfk_4` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Limitadores para a tabela `dimensao_2`
--
ALTER TABLE `dimensao_2`
  ADD CONSTRAINT `dimensao_2_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `instru_avaliacao` (`id`),
  ADD CONSTRAINT `dimensao_2_ibfk_2` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `dimensao_2_ibfk_3` FOREIGN KEY (`id_unid_acad`) REFERENCES `unid_acad` (`id`),
  ADD CONSTRAINT `dimensao_2_ibfk_4` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Limitadores para a tabela `dimensao_3`
--
ALTER TABLE `dimensao_3`
  ADD CONSTRAINT `dimensao_3_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `instru_avaliacao` (`id`),
  ADD CONSTRAINT `dimensao_3_ibfk_2` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `dimensao_3_ibfk_3` FOREIGN KEY (`id_unid_acad`) REFERENCES `unid_acad` (`id`),
  ADD CONSTRAINT `dimensao_3_ibfk_4` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Limitadores para a tabela `unid_acad`
--
ALTER TABLE `unid_acad`
  ADD CONSTRAINT `unid_acad_ibfk_1` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
