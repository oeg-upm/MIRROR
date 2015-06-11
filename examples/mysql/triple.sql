/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : triple

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2015-05-24 20:33:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `child`
-- ----------------------------
DROP TABLE IF EXISTS `child`;
CREATE TABLE `child` (
  `ID_FIRST` int(11) NOT NULL,
  `ID_SECOND` int(11) NOT NULL,
  `ID_THIRD` int(11) NOT NULL,
  `ID_FOURTH` int(11) NOT NULL,
  `COMMENTS` varchar(64) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_FIRST`,`ID_SECOND`,`ID_THIRD`,`ID_FOURTH`),
  KEY `fk_child2` (`ID_THIRD`,`ID_FOURTH`),
  CONSTRAINT `fk_child1` FOREIGN KEY (`ID_FIRST`, `ID_SECOND`) REFERENCES `parent1` (`ID_FIRST`, `ID_SECOND`),
  CONSTRAINT `fk_child2` FOREIGN KEY (`ID_THIRD`, `ID_FOURTH`) REFERENCES `parent2` (`ID_THIRD`, `ID_FOURTH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of child
-- ----------------------------

-- ----------------------------
-- Table structure for `parent1`
-- ----------------------------
DROP TABLE IF EXISTS `parent1`;
CREATE TABLE `parent1` (
  `ID_FIRST` int(11) NOT NULL,
  `ID_SECOND` int(11) NOT NULL,
  `NAME` varchar(128) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_FIRST`,`ID_SECOND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of parent1
-- ----------------------------

-- ----------------------------
-- Table structure for `parent2`
-- ----------------------------
DROP TABLE IF EXISTS `parent2`;
CREATE TABLE `parent2` (
  `ID_THIRD` int(11) NOT NULL,
  `ID_FOURTH` int(11) NOT NULL,
  `NAME` varchar(128) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_THIRD`,`ID_FOURTH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of parent2
-- ----------------------------
