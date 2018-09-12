-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Set-2018 às 19:04
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

--
-- Extraindo dados da tabela `campus`
--

INSERT INTO `campus` (`id`, `nome`) VALUES
(1, 'Crateús'),
(2, 'Fortaleza'),
(3, 'Quixadá'),
(4, 'Russas'),
(5, 'Sobral');

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

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`, `id_unid_acad`, `id_campus`) VALUES
(1, 'Ciência da Computação', 1, 1),
(2, 'Engenharia Ambiental', 1, 1),
(3, 'Engenharia Civil', 1, 1),
(4, 'Engenharia de Minas', 1, 1),
(5, 'Sistemas de Informação', 1, 1),
(6, 'Administração', 2, 2),
(7, 'Agronomia', 3, 2),
(8, 'Arquitetura e Urbanismo', 4, 2),
(9, 'Biblioteconomia', 5, 2),
(10, 'Biotecnologia', 6, 2),
(11, 'Ciência da Computação', 6, 2),
(12, 'Ciências Ambientais', 7, 2),
(13, 'Ciências Atuariais', 2, 2),
(14, 'Ciências Biológicas', 6, 2),
(15, 'Ciências Contábeis', 2, 2),
(16, 'Ciências Econômicas', 2, 2),
(17, 'Ciências Sociais', 5, 2),
(18, 'Cinema e Audiovisual', 8, 2),
(19, 'Comunicação Social - Jornalismo', 8, 2),
(20, 'Comunicação Social - Publicidade e Propaganda', 8, 2),
(21, 'Dança', 8, 2),
(22, 'Design', 4, 2),
(23, 'Design - Moda', 8, 2),
(24, 'Direito', 9, 2),
(25, 'Economia Ecológica', 3, 2),
(26, 'Educação Física', 10, 2),
(27, 'Enfermagem', 11, 2),
(28, 'Engenharia Ambiental', 4, 2),
(29, 'Engenharia Civil', 4, 2),
(30, 'Engenharia de Alimentos', 3, 2),
(31, 'Engenharia de Computação', 4, 2),
(32, 'Engenharia de Energias Renováveis', 4, 2),
(33, 'Engenharia de Pesca', 3, 2),
(34, 'Engenharia de Petróleo', 4, 2),
(35, 'Engenharia de Produção Mecânica', 4, 2),
(36, 'Engenharia de Telecomunicações', 4, 2),
(37, 'Engenharia Elétrica', 4, 2),
(38, 'Engenharia Mecânica', 4, 2),
(39, 'Engenharia Metalúrgica', 4, 2),
(40, 'Engenharia Química', 4, 2),
(41, 'Estatística', 6, 2),
(42, 'Farmácia', 11, 2),
(43, 'Filosofia', 8, 2),
(44, 'Finanças', 2, 2),
(45, 'Física', 6, 2),
(46, 'Fisioterapia', 12, 2),
(47, 'Gastronomia', 8, 2),
(48, 'Geografia', 6, 2),
(49, 'Geologia', 6, 2),
(50, 'Gestão de Políticas Públicas', 3, 2),
(51, 'História', 5, 2),
(52, 'Letras (Espanhol)', 5, 2),
(53, 'Letras (Inglês)', 5, 2),
(54, 'Letras (Língua Portuguesa)', 5, 2),
(55, 'Letras (Português e Alemão)', 5, 2),
(56, 'Letras (Português e Espanhol)', 5, 2),
(57, 'Letras (Português e Francês)', 5, 2),
(58, 'Letras (Português e Inglês)', 5, 2),
(59, 'Letras (Português e Italiano)', 5, 2),
(60, 'Matemática', 6, 2),
(61, 'Matemática Industrial', 6, 2),
(62, 'Medicina', 12, 2),
(63, 'Música', 8, 2),
(64, 'Oceanografia', 7, 2),
(65, 'Odontologia', 11, 2),
(66, 'Pedagogia', 13, 2),
(67, 'Psicologia', 5, 2),
(68, 'Química', 6, 2),
(69, 'Secretariado Executivo', 2, 2),
(70, 'Sistemas e Mídias Digitais', 14, 2),
(71, 'Teatro', 8, 2),
(72, 'Zootecnia', 3, 2),
(73, 'Ciência da Computação', 15, 3),
(74, 'Design Digital', 15, 3),
(75, 'Engenharia de Computação', 15, 3),
(76, 'Engenharia de Software', 15, 3),
(77, 'Redes de Computadores', 15, 3),
(78, 'Sistemas de Informação', 15, 3),
(79, 'Ciência da Computação', 16, 4),
(80, 'Engenharia Civil', 16, 4),
(81, 'Engenharia de Produção', 16, 4),
(82, 'Engenharia de Software', 16, 4),
(83, 'Engenharia Mecânica', 16, 4),
(84, 'Ciências Econômicas', 17, 5),
(85, 'Engenharia de Computação', 17, 5),
(86, 'Engenharia Elétrica', 17, 5),
(87, 'Finanças', 17, 5),
(88, 'Medicina', 17, 5),
(89, 'Música', 17, 5),
(90, 'Odontologia', 17, 5),
(91, 'Psicologia', 17, 5);

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
  `id_curso` int(11) NOT NULL,
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
-- Extraindo dados da tabela `unid_acad`
--

INSERT INTO `unid_acad` (`id`, `nome`, `id_campus`) VALUES
(1, 'Campus da UFC em Crateús', 1),
(2, 'FEAAC', 2),
(3, 'Centro de Ciências Agrárias', 2),
(4, 'Centro de Tecnologia', 2),
(5, 'Centro de Humanidades', 2),
(6, 'Centro de Ciências', 2),
(7, 'LABOMAR', 2),
(8, 'ICA', 2),
(9, 'Faculdade de Direito', 2),
(10, 'IEFES', 2),
(11, 'FFOE', 2),
(12, ' Faculdade de Medicina', 2),
(13, 'Faculdade de Educação', 2),
(14, 'Instituto UFC Virtual', 2),
(15, 'Campus da UFC em Quixadá', 3),
(16, 'Campus da UFC em Russas', 4),
(17, 'Campus da UFC em Sobral', 5);

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
  ADD KEY `id_unid_acad` (`id_unid_acad`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `instru_avaliacao`
--
ALTER TABLE `instru_avaliacao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unid_acad`
--
ALTER TABLE `unid_acad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  ADD CONSTRAINT `dimensao_1_ibfk_3` FOREIGN KEY (`id_unid_acad`) REFERENCES `unid_acad` (`id`);

--
-- Limitadores para a tabela `unid_acad`
--
ALTER TABLE `unid_acad`
  ADD CONSTRAINT `unid_acad_ibfk_1` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
