-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Ago-2023 às 14:53
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdlaura`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bdlaura`
--

CREATE TABLE `bdlaura` (
  `idaluno` int(11) NOT NULL,
  `aluno` varchar(50) NOT NULL,
  `dtmat` date NOT NULL,
  `mensalidade` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bdlaura`
--

INSERT INTO `bdlaura` (`idaluno`, `aluno`, `dtmat`, `mensalidade`) VALUES
(4, 'Laura', '2008-08-08', 3000.00),
(5, 'Monica', '1977-12-20', 4500.90),
(6, 'Ludmila', '2004-11-20', 3500.00),
(7, 'Bombom', '2013-08-09', 1800.00),
(8, 'Canjica', '2016-08-10', 1500.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcurso`
--

CREATE TABLE `tblcurso` (
  `idcurso` int(11) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `ch` varchar(5) NOT NULL,
  `valor` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tblcurso`
--

INSERT INTO `tblcurso` (`idcurso`, `curso`, `ch`, `valor`) VALUES
(1, 'Java EE', '60h', 569.99),
(2, 'DevFullStack Java', '150h', 1200.00),
(3, 'IONIC', '70h', 800.00),
(4, 'Angular', '40h', 450.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bdlaura`
--
ALTER TABLE `bdlaura`
  ADD PRIMARY KEY (`idaluno`);

--
-- Índices para tabela `tblcurso`
--
ALTER TABLE `tblcurso`
  ADD PRIMARY KEY (`idcurso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bdlaura`
--
ALTER TABLE `bdlaura`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tblcurso`
--
ALTER TABLE `tblcurso`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
