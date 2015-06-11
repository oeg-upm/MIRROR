-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS person CASCADE;
CREATE TABLE person (
  ID integer NOT NULL,
  NAME varchar(50) DEFAULT NULL,
  PRIMARY KEY (ID)
);

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO person VALUES ('1', 'Charles');
INSERT INTO person VALUES ('2', 'Louis');
INSERT INTO person VALUES ('3', 'Mark');
INSERT INTO person VALUES ('4', 'Patrick');

-- ----------------------------
-- Table structure for professor
-- ----------------------------
DROP TABLE IF EXISTS professor;
CREATE TABLE professor (
  ID integer NOT NULL,
  TITLE varchar(50) DEFAULT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT person_fk FOREIGN KEY (ID) REFERENCES person (ID) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Records of professor
-- ----------------------------
INSERT INTO professor VALUES ('4', 'PhD');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS student;
CREATE TABLE student (
  ROLLNO integer NOT NULL,
  DEGREE varchar(50) DEFAULT NULL,
  ID integer NOT NULL,
  PRIMARY KEY (ROLLNO),
  CONSTRAINT fk_student FOREIGN KEY (ID) REFERENCES person (ID)
);

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO student VALUES ('100', 'ungraduated', '1');
INSERT INTO student VALUES ('200', 'graduated', '2');
INSERT INTO student VALUES ('300', 'master', '3');
