-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/05/2024 às 00:49
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `consumo_veiculo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `abastecimento`
--

CREATE TABLE `abastecimento` (
  `ID_Abastecimento` int(11) NOT NULL,
  `ID_Veiculo` int(11) DEFAULT NULL,
  `gasolinaLitro` double DEFAULT NULL,
  `gasolinaTipo` varchar(255) DEFAULT NULL,
  `kmHodometro` double DEFAULT NULL,
  `precoGasolina` double DEFAULT NULL,
  `media` double DEFAULT NULL,
  `cheio` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `ID_Veiculo` int(11) NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `kmInicial` double DEFAULT NULL,
  `kmFinal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`ID_Veiculo`, `marca`, `modelo`, `kmInicial`, `kmFinal`) VALUES
(1, 'volkswagen', 'uno', 0, 100);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `abastecimento`
--
ALTER TABLE `abastecimento`
  ADD PRIMARY KEY (`ID_Abastecimento`),
  ADD KEY `ID_Veiculo` (`ID_Veiculo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`ID_Veiculo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abastecimento`
--
ALTER TABLE `abastecimento`
  MODIFY `ID_Abastecimento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `ID_Veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `abastecimento`
--
ALTER TABLE `abastecimento`
  ADD CONSTRAINT `abastecimento_ibfk_1` FOREIGN KEY (`ID_Veiculo`) REFERENCES `veiculo` (`ID_Veiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
