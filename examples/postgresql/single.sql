-- ----------------------------
-- Table structure for "person"
-- ----------------------------
DROP TABLE IF EXISTS "person";
CREATE TABLE "person" (
  "ID" integer NOT NULL,
  "NAME" varchar(128) DEFAULT NULL,
  PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO "person" VALUES ('1', 'Charles');
INSERT INTO "person" VALUES ('2', 'Mark');

-- ----------------------------
-- Table structure for "professor"
-- ----------------------------
DROP TABLE IF EXISTS "professor";
CREATE TABLE "professor" (
  "ID" integer NOT NULL,
  "COURSE" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("ID"),
  CONSTRAINT "fk_professor" FOREIGN KEY ("ID") REFERENCES "person" ("ID")
);

-- ----------------------------
-- Records of professor
-- ----------------------------
INSERT INTO "professor" VALUES ('1', 'Artificial Intelligence');
INSERT INTO "professor" VALUES ('2', 'Numeric Methods');
