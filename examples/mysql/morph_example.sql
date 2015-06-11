/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : morph_example

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-11-22 09:43:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sport`
-- ----------------------------
DROP TABLE IF EXISTS `sport`;
CREATE TABLE `sport` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `code` char(8) NOT NULL,
  `type` char(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sport
-- ----------------------------
INSERT INTO `sport` VALUES ('100', 'Tennis', 'TNS', 'BOTH');
INSERT INTO `sport` VALUES ('200', 'Chess', 'CHS', 'INDOOR');
INSERT INTO `sport` VALUES ('300', 'Soccer', 'SCR', 'OUTDOOR');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` char(8) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `sport` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `webpage` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `suffix` varchar(8) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Sport` (`sport`),
  CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`sport`) REFERENCES `sport` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('B1', 'Paul', '100', 'active', null, '777-3426', null, 'Jr.', '2000-12-31 00:00:00');
INSERT INTO `student` VALUES ('B2', 'John', '200', 'active', null, null, 'john@acd.edu', 'Sr.', null);
INSERT INTO `student` VALUES ('B3', 'George', '300', 'active', 'www.george.edu', null, null, 'Sr. ', '1990-06-18 00:00:00');
INSERT INTO `student` VALUES ('B4', 'Ringo', null, 'active', 'www.starr.edu', '888-4537', 'ringo@acd.edu', 'Jr. ', null);

-- ----------------------------
-- View structure for `student01`
-- ----------------------------
DROP VIEW IF EXISTS `student01`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student01` AS select `student`.`id` AS `id`,`student`.`name` AS `name`,`student`.`sport` AS `sport`,`student`.`status` AS `status`,`student`.`webpage` AS `webpage`,`student`.`phone` AS `phone`,`student`.`email` AS `email`,`student`.`suffix` AS `suffix`,`student`.`birthdate` AS `birthdate` from `student` where (`student`.`sport` is not null) ;
