/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : example_university

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2015-06-09 17:25:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CNO` int(11) NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  PRIMARY KEY (`CNO`),
  KEY `CODE` (`CODE`),
  CONSTRAINT `COURSE_ibfk_1` FOREIGN KEY (`CODE`) REFERENCES `dept` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `CODE` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CODE`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dept
-- ----------------------------

-- ----------------------------
-- Table structure for `offer`
-- ----------------------------
DROP TABLE IF EXISTS `offer`;
CREATE TABLE `offer` (
  `ONO` int(11) NOT NULL,
  `CNO` int(11) NOT NULL,
  `SNO` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `CONO` int(11) NOT NULL,
  PRIMARY KEY (`ONO`),
  KEY `SNO` (`SNO`),
  KEY `PID` (`PID`),
  KEY `CONO` (`CONO`),
  KEY `CNO` (`CNO`),
  CONSTRAINT `OFFER_ibfk_1` FOREIGN KEY (`CNO`) REFERENCES `course` (`CNO`),
  CONSTRAINT `OFFER_ibfk_2` FOREIGN KEY (`SNO`) REFERENCES `semester` (`SNO`),
  CONSTRAINT `OFFER_ibfk_3` FOREIGN KEY (`PID`) REFERENCES `professor` (`ID`),
  CONSTRAINT `OFFER_ibfk_4` FOREIGN KEY (`CONO`) REFERENCES `offer` (`ONO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of offer
-- ----------------------------

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for `professor`
-- ----------------------------
DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `PROFESSOR_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of professor
-- ----------------------------

-- ----------------------------
-- Table structure for `reg`
-- ----------------------------
DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `SID` int(11) NOT NULL,
  `SNO` int(11) NOT NULL,
  PRIMARY KEY (`SID`,`SNO`),
  KEY `SNO` (`SNO`),
  CONSTRAINT `REG_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`ID`),
  CONSTRAINT `REG_ibfk_2` FOREIGN KEY (`SNO`) REFERENCES `semester` (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reg
-- ----------------------------

-- ----------------------------
-- Table structure for `semester`
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `SNO` int(11) NOT NULL,
  `YEAR` date NOT NULL,
  `SESSION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of semester
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ROLLNO` int(11) NOT NULL,
  `DEGREE` varchar(255) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLLNO`),
  UNIQUE KEY `ID` (`ID`),
  CONSTRAINT `STUDENT_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for `study`
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study` (
  `ONO` int(11) NOT NULL,
  `RNO` int(11) NOT NULL,
  `GRADE` varchar(255) NOT NULL,
  PRIMARY KEY (`ONO`,`RNO`),
  KEY `RNO` (`RNO`),
  CONSTRAINT `STUDY_ibfk_1` FOREIGN KEY (`ONO`) REFERENCES `offer` (`ONO`),
  CONSTRAINT `STUDY_ibfk_2` FOREIGN KEY (`RNO`) REFERENCES `student` (`ROLLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of study
-- ----------------------------
