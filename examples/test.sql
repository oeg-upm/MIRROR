<<<<<<< HEAD
/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-11-30 20:44:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', 'Charles');
INSERT INTO `person` VALUES ('2', 'Louis');
INSERT INTO `person` VALUES ('3', 'Mark');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ROLLNO` int(11) NOT NULL,
  `DEGREE` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLLNO`),
  KEY `fk_student` (`ID`),
  CONSTRAINT `fk_student` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('100', 'ungraduated', '1');
INSERT INTO `student` VALUES ('200', 'graduated', '2');
INSERT INTO `student` VALUES ('300', 'master', '3');

=======
/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-11-30 20:44:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', 'Charles');
INSERT INTO `person` VALUES ('2', 'Louis');
INSERT INTO `person` VALUES ('3', 'Mark');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ROLLNO` int(11) NOT NULL,
  `DEGREE` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLLNO`),
  KEY `fk_student` (`ID`),
  CONSTRAINT `fk_student` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('100', 'ungraduated', '1');
INSERT INTO `student` VALUES ('200', 'graduated', '2');
INSERT INTO `student` VALUES ('300', 'master', '3');

>>>>>>> branch 'master' of https://lmedeiros@bitbucket.org/fpriyatna/r2rml-mappings-generator.git
