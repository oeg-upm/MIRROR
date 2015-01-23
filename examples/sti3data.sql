-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2014 at 07:27 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sti3`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `ID_AREA` int(11) NOT NULL,
  `AREA` varchar(100) COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`ID_AREA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `atributo`
--

CREATE TABLE IF NOT EXISTS `atributo` (
  `ID_ATRIBUTO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `NOMEPLURAL` varchar(100) NOT NULL,
  `GENERO` tinyint(4) NOT NULL,
  `CARDINALIDADE` int(6) NOT NULL,
  `ID_ATRIBUTOSINONIMO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_ATRIBUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complemento`
--

CREATE TABLE IF NOT EXISTS `complemento` (
  `ID_VALOR` int(11) NOT NULL,
  `COMPLEMENTO` varchar(255) DEFAULT NULL,
  KEY `fk_complemento1` (`ID_VALOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `complemento`:
--   `ID_VALOR`
--       `valor` -> `ID_VALOR`
--

-- --------------------------------------------------------

--
-- Table structure for table `disciplina`
--

CREATE TABLE IF NOT EXISTS `disciplina` (
  `ID_DISCIPLINA` int(11) NOT NULL,
  `DISCIPLINA` varchar(100) NOT NULL,
  `SIGLA` varchar(15) DEFAULT NULL,
  `HABILITADA` bit(1) NOT NULL,
  PRIMARY KEY (`ID_DISCIPLINA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objeto`
--

CREATE TABLE IF NOT EXISTS `objeto` (
  `ID_OBJETO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `NOMEPLURAL` varchar(100) NOT NULL,
  `DATA_OBJETO` date NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `TIPO` int(11) DEFAULT NULL,
  `ID_SUPEROBJETO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_OBJETO`),
  KEY `fk_objeto1` (`ID_SUPEROBJETO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `objeto`:
--   `ID_SUPEROBJETO`
--       `objeto` -> `ID_OBJETO`
--

-- --------------------------------------------------------

--
-- Table structure for table `objeto_disciplina`
--

CREATE TABLE IF NOT EXISTS `objeto_disciplina` (
  `ID` int(11) NOT NULL,
  `ID_OBJETO` int(11) NOT NULL,
  `ID_DISCIPLINA` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_objeto_disciplina1` (`ID_OBJETO`),
  KEY `fk_objeto_disciplina2` (`ID_DISCIPLINA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `objeto_disciplina`:
--   `ID_OBJETO`
--       `objeto` -> `ID_OBJETO`
--   `ID_DISCIPLINA`
--       `disciplina` -> `ID_DISCIPLINA`
--

-- --------------------------------------------------------

--
-- Table structure for table `objeto_subarea`
--

CREATE TABLE IF NOT EXISTS `objeto_subarea` (
  `ID_OBJETO` int(11) NOT NULL,
  `ID_SUBAREA` int(11) NOT NULL,
  KEY `fk_objeto_subarea1` (`ID_OBJETO`),
  KEY `fk_objeto_subarea2` (`ID_SUBAREA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- RELATIONS FOR TABLE `objeto_subarea`:
--   `ID_OBJETO`
--       `objeto` -> `ID_OBJETO`
--   `ID_SUBAREA`
--       `subarea` -> `ID_SUBAREA`
--

-- --------------------------------------------------------

--
-- Table structure for table `orav`
--

CREATE TABLE IF NOT EXISTS `orav` (
  `ID_ORAV` int(11) NOT NULL,
  `ID_OBJETO` int(11) NOT NULL,
  `ID_ATRIBUTO` int(11) NOT NULL,
  `ID_VALOR` int(11) NOT NULL,
  `DATA_ORAV` date NOT NULL,
  PRIMARY KEY (`ID_ORAV`),
  KEY `fk_orav1` (`ID_OBJETO`),
  KEY `fk_orav2` (`ID_ATRIBUTO`),
  KEY `fk_orav3` (`ID_VALOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `orav`:
--   `ID_OBJETO`
--       `objeto` -> `ID_OBJETO`
--   `ID_ATRIBUTO`
--       `atributo` -> `ID_ATRIBUTO`
--   `ID_VALOR`
--       `valor` -> `ID_VALOR`
--

-- --------------------------------------------------------

--
-- Table structure for table `propriedade`
--

CREATE TABLE IF NOT EXISTS `propriedade` (
  `ID_PROPRIEDADE` int(11) NOT NULL,
  `PROPRIEDADE` varchar(127) DEFAULT NULL,
  `GENERO` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_PROPRIEDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualificador`
--

CREATE TABLE IF NOT EXISTS `qualificador` (
  `ID_QUALIFICADOR` int(11) NOT NULL,
  `QUALIFICADOR` varchar(100) COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`ID_QUALIFICADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `subarea`
--

CREATE TABLE IF NOT EXISTS `subarea` (
  `ID_SUBAREA` int(11) NOT NULL,
  `COD_CNPQ` varchar(12) COLLATE latin1_bin NOT NULL,
  `SUBAREA` char(100) CHARACTER SET cp850 COLLATE cp850_bin NOT NULL,
  `ID_AREA` int(11) NOT NULL,
  PRIMARY KEY (`ID_SUBAREA`),
  KEY `fk_subarea1` (`ID_AREA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- RELATIONS FOR TABLE `subarea`:
--   `ID_AREA`
--       `area` -> `ID_AREA`
--

-- --------------------------------------------------------

--
-- Table structure for table `unknown`
--

CREATE TABLE IF NOT EXISTS `unknown` (
  `ID_UNKNOWN` int(11) NOT NULL,
  `OBS` varchar(255) COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`ID_UNKNOWN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `unknown`
--

INSERT INTO `unknown` (`ID_UNKNOWN`, `OBS`) VALUES
(1, 'No comments'),
(2, 'No regrets');

-- --------------------------------------------------------

--
-- Table structure for table `valor`
--

CREATE TABLE IF NOT EXISTS `valor` (
  `ID_VALOR` int(11) NOT NULL,
  `NOME` varchar(512) DEFAULT NULL,
  `NOME_FONEMA` text,
  `AUTOR` varchar(255) DEFAULT NULL,
  `AUTOR_FONEMA` varchar(255) DEFAULT NULL,
  `ANO` int(11) DEFAULT NULL,
  `DATA_EVENTO` date DEFAULT NULL,
  `ID_OBJETO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_VALOR`),
  KEY `fk_valor1` (`ID_OBJETO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `valor`:
--   `ID_OBJETO`
--       `objeto` -> `ID_OBJETO`
--

-- --------------------------------------------------------

--
-- Table structure for table `valor_propriedade`
--

CREATE TABLE IF NOT EXISTS `valor_propriedade` (
  `ID_VALOR` int(11) NOT NULL,
  `ID_PROPRIEDADE` int(11) NOT NULL,
  PRIMARY KEY (`ID_VALOR`,`ID_PROPRIEDADE`),
  KEY `fk_valor_propriedade2` (`ID_PROPRIEDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `valor_propriedade`:
--   `ID_VALOR`
--       `valor` -> `ID_VALOR`
--   `ID_PROPRIEDADE`
--       `propriedade` -> `ID_PROPRIEDADE`
--

-- --------------------------------------------------------

--
-- Table structure for table `valor_qualificador`
--

CREATE TABLE IF NOT EXISTS `valor_qualificador` (
  `ID_VALOR` int(11) NOT NULL,
  `ID_QUALIFICADOR` int(11) NOT NULL,
  PRIMARY KEY (`ID_VALOR`,`ID_QUALIFICADOR`),
  KEY `fk_valor_qualificador2` (`ID_QUALIFICADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- RELATIONS FOR TABLE `valor_qualificador`:
--   `ID_VALOR`
--       `valor` -> `ID_VALOR`
--   `ID_QUALIFICADOR`
--       `qualificador` -> `ID_QUALIFICADOR`
--

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complemento`
--
ALTER TABLE `complemento`
  ADD CONSTRAINT `fk_complemento1` FOREIGN KEY (`ID_VALOR`) REFERENCES `valor` (`ID_VALOR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `objeto`
--
ALTER TABLE `objeto`
  ADD CONSTRAINT `fk_objeto1` FOREIGN KEY (`ID_SUPEROBJETO`) REFERENCES `objeto` (`ID_OBJETO`);

--
-- Constraints for table `objeto_disciplina`
--
ALTER TABLE `objeto_disciplina`
  ADD CONSTRAINT `fk_objeto_disciplina1` FOREIGN KEY (`ID_OBJETO`) REFERENCES `objeto` (`ID_OBJETO`),
  ADD CONSTRAINT `fk_objeto_disciplina2` FOREIGN KEY (`ID_DISCIPLINA`) REFERENCES `disciplina` (`ID_DISCIPLINA`);

--
-- Constraints for table `objeto_subarea`
--
ALTER TABLE `objeto_subarea`
  ADD CONSTRAINT `fk_objeto_subarea1` FOREIGN KEY (`ID_OBJETO`) REFERENCES `objeto` (`ID_OBJETO`),
  ADD CONSTRAINT `fk_objeto_subarea2` FOREIGN KEY (`ID_SUBAREA`) REFERENCES `subarea` (`ID_SUBAREA`);

--
-- Constraints for table `orav`
--
ALTER TABLE `orav`
  ADD CONSTRAINT `fk_orav1` FOREIGN KEY (`ID_OBJETO`) REFERENCES `objeto` (`ID_OBJETO`),
  ADD CONSTRAINT `fk_orav2` FOREIGN KEY (`ID_ATRIBUTO`) REFERENCES `atributo` (`ID_ATRIBUTO`),
  ADD CONSTRAINT `fk_orav3` FOREIGN KEY (`ID_VALOR`) REFERENCES `valor` (`ID_VALOR`);

--
-- Constraints for table `subarea`
--
ALTER TABLE `subarea`
  ADD CONSTRAINT `fk_subarea1` FOREIGN KEY (`ID_AREA`) REFERENCES `area` (`ID_AREA`);

--
-- Constraints for table `valor`
--
ALTER TABLE `valor`
  ADD CONSTRAINT `fk_valor1` FOREIGN KEY (`ID_OBJETO`) REFERENCES `objeto` (`ID_OBJETO`);

--
-- Constraints for table `valor_propriedade`
--
ALTER TABLE `valor_propriedade`
  ADD CONSTRAINT `fk_valor_propriedade1` FOREIGN KEY (`ID_VALOR`) REFERENCES `valor` (`ID_VALOR`),
  ADD CONSTRAINT `fk_valor_propriedade2` FOREIGN KEY (`ID_PROPRIEDADE`) REFERENCES `propriedade` (`ID_PROPRIEDADE`);

--
-- Constraints for table `valor_qualificador`
--
ALTER TABLE `valor_qualificador`
  ADD CONSTRAINT `fk_valor_qualificador1` FOREIGN KEY (`ID_VALOR`) REFERENCES `valor` (`ID_VALOR`),
  ADD CONSTRAINT `fk_valor_qualificador2` FOREIGN KEY (`ID_QUALIFICADOR`) REFERENCES `qualificador` (`ID_QUALIFICADOR`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
