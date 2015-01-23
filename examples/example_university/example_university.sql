-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2014 at 12:04 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `example_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `COURSE`
--

CREATE TABLE IF NOT EXISTS `COURSE` (
  `CNO` int(11) NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  PRIMARY KEY (`CNO`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DEPT`
--

CREATE TABLE IF NOT EXISTS `DEPT` (
  `CODE` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CODE`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `OFFER`
--

CREATE TABLE IF NOT EXISTS `OFFER` (
  `ONO` int(11) NOT NULL,
  `CNO` int(11) NOT NULL,
  `SNO` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `CONO` int(11) NOT NULL,
  PRIMARY KEY (`ONO`),
  KEY `SNO` (`SNO`),
  KEY `PID` (`PID`),
  KEY `CONO` (`CONO`),
  KEY `CNO` (`CNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PERSON`
--

CREATE TABLE IF NOT EXISTS `PERSON` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PROFESSOR`
--

CREATE TABLE IF NOT EXISTS `PROFESSOR` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `REG`
--

CREATE TABLE IF NOT EXISTS `REG` (
  `SID` int(11) NOT NULL,
  `SNO` int(11) NOT NULL,
  PRIMARY KEY (`SID`,`SNO`),
  KEY `SNO` (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SEMESTER`
--

CREATE TABLE IF NOT EXISTS `SEMESTER` (
  `SNO` int(11) NOT NULL,
  `YEAR` date NOT NULL,
  `SESSION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE IF NOT EXISTS `STUDENT` (
  `ROLLNO` int(11) NOT NULL,
  `DEGREE` varchar(255) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLLNO`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `STUDY`
--

CREATE TABLE IF NOT EXISTS `STUDY` (
  `ONO` int(11) NOT NULL,
  `RNO` int(11) NOT NULL,
  `GRADE` varchar(255) NOT NULL,
  PRIMARY KEY (`ONO`,`RNO`),
  KEY `RNO` (`RNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `COURSE`
--
ALTER TABLE `COURSE`
  ADD CONSTRAINT `COURSE_ibfk_1` FOREIGN KEY (`CODE`) REFERENCES `DEPT` (`CODE`);

--
-- Constraints for table `OFFER`
--
ALTER TABLE `OFFER`
  ADD CONSTRAINT `OFFER_ibfk_1` FOREIGN KEY (`CNO`) REFERENCES `COURSE` (`CNO`),
  ADD CONSTRAINT `OFFER_ibfk_2` FOREIGN KEY (`SNO`) REFERENCES `SEMESTER` (`SNO`),
  ADD CONSTRAINT `OFFER_ibfk_3` FOREIGN KEY (`PID`) REFERENCES `PROFESSOR` (`ID`),
  ADD CONSTRAINT `OFFER_ibfk_4` FOREIGN KEY (`CONO`) REFERENCES `OFFER` (`ONO`);

--
-- Constraints for table `PROFESSOR`
--
ALTER TABLE `PROFESSOR`
  ADD CONSTRAINT `PROFESSOR_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `PERSON` (`ID`);

--
-- Constraints for table `REG`
--
ALTER TABLE `REG`
  ADD CONSTRAINT `REG_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `STUDENT` (`ID`),
  ADD CONSTRAINT `REG_ibfk_2` FOREIGN KEY (`SNO`) REFERENCES `SEMESTER` (`SNO`);

--
-- Constraints for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD CONSTRAINT `STUDENT_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `PERSON` (`ID`);

--
-- Constraints for table `STUDY`
--
ALTER TABLE `STUDY`
  ADD CONSTRAINT `STUDY_ibfk_1` FOREIGN KEY (`ONO`) REFERENCES `OFFER` (`ONO`),
  ADD CONSTRAINT `STUDY_ibfk_2` FOREIGN KEY (`RNO`) REFERENCES `STUDENT` (`ROLLNO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
