/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : double

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2015-05-13 10:58:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for "child"
-- ----------------------------
DROP TABLE IF EXISTS "child";
CREATE TABLE "child" (
  "ID" int(11) NOT NULL,
  "NAME" varchar(127) COLLATE utf8_swedish_ci DEFAULT NULL,
  "ID_FIRST" int(11) NOT NULL,
  "ID_SECOND" int(11) NOT NULL,
  PRIMARY KEY ("ID"),
  KEY "fk_child1" ("ID_FIRST","ID_SECOND"),
  CONSTRAINT "fk_child1" FOREIGN KEY ("ID_FIRST", "ID_SECOND") REFERENCES "parent" ("ID_FIRST", "ID_SECOND")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of child
-- ----------------------------

-- ----------------------------
-- Table structure for "parent"
-- ----------------------------
DROP TABLE IF EXISTS "parent";
CREATE TABLE "parent" (
  "ID_FIRST" int(11) NOT NULL,
  "ID_SECOND" int(11) NOT NULL,
  "COMMENTS" varchar(64) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY ("ID_FIRST","ID_SECOND")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of parent
-- ----------------------------
