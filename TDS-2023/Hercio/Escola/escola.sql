-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/07/2024 às 01:49
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
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `ID_Aluno` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Idade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno_dis`
--

CREATE TABLE `aluno_dis` (
  `ID_Aluno_Dis` int(11) NOT NULL,
  `ID_Aluno` int(11) DEFAULT NULL,
  `ID_Disciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `ID_Disciplina` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `ID_Professor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Idade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `prof_dis`
--

CREATE TABLE `prof_dis` (
  `ID_Prof_Dis` int(11) NOT NULL,
  `ID_Professor` int(11) DEFAULT NULL,
  `ID_Disciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`ID_Aluno`);

--
-- Índices de tabela `aluno_dis`
--
ALTER TABLE `aluno_dis`
  ADD PRIMARY KEY (`ID_Aluno_Dis`),
  ADD KEY `ID_Aluno` (`ID_Aluno`),
  ADD KEY `ID_Disciplina` (`ID_Disciplina`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`ID_Disciplina`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`ID_Professor`);

--
-- Índices de tabela `prof_dis`
--
ALTER TABLE `prof_dis`
  ADD PRIMARY KEY (`ID_Prof_Dis`),
  ADD KEY `ID_Professor` (`ID_Professor`),
  ADD KEY `ID_Disciplina` (`ID_Disciplina`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `ID_Aluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aluno_dis`
--
ALTER TABLE `aluno_dis`
  MODIFY `ID_Aluno_Dis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `ID_Disciplina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `ID_Professor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `prof_dis`
--
ALTER TABLE `prof_dis`
  MODIFY `ID_Prof_Dis` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno_dis`
--
ALTER TABLE `aluno_dis`
  ADD CONSTRAINT `aluno_dis_ibfk_1` FOREIGN KEY (`ID_Aluno`) REFERENCES `aluno` (`ID_Aluno`),
  ADD CONSTRAINT `aluno_dis_ibfk_2` FOREIGN KEY (`ID_Disciplina`) REFERENCES `disciplina` (`ID_Disciplina`);

--
-- Restrições para tabelas `prof_dis`
--
ALTER TABLE `prof_dis`
  ADD CONSTRAINT `prof_dis_ibfk_1` FOREIGN KEY (`ID_Professor`) REFERENCES `professor` (`ID_Professor`),
  ADD CONSTRAINT `prof_dis_ibfk_2` FOREIGN KEY (`ID_Disciplina`) REFERENCES `disciplina` (`ID_Disciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
