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

-- ----------------------------
-- Table structure for "parent"
-- ----------------------------
DROP TABLE IF EXISTS "parent" CASCADE;
CREATE TABLE "parent" (
  ID_FIRST integer NOT NULL,
  ID_SECOND integer NOT NULL,
  COMMENTS varchar(64) DEFAULT NULL,
  PRIMARY KEY (ID_FIRST,ID_SECOND)
);

-- ----------------------------
-- Table structure for "child"
-- ----------------------------
DROP TABLE IF EXISTS "child";
CREATE TABLE "child" (
  ID integer NOT NULL,
  NAME varchar(127) DEFAULT NULL,
  ID_FIRST integer NOT NULL,
  ID_SECOND integer NOT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT "fk_child1" FOREIGN KEY (ID_FIRST,ID_SECOND) REFERENCES "parent" (ID_FIRST, ID_SECOND)
);
