-- ----------------------------
-- Table structure for "parent"
-- ----------------------------
DROP TABLE IF EXISTS "parent";
CREATE TABLE "parent" (
  "FIRST_ID" integer NOT NULL,
  "SECOND_ID" integer NOT NULL,
  "COMMENTS" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("FIRST_ID","SECOND_ID")
);

-- ----------------------------
-- Table structure for "child"
-- ----------------------------
DROP TABLE IF EXISTS "child";
CREATE TABLE "child" (
  "ID" integer NOT NULL,
  "NAME" varchar(127) DEFAULT NULL,
  "ID_FIRST" integer NOT NULL,
  "ID_SECOND" integer NOT NULL,
  PRIMARY KEY ("ID"),
  CONSTRAINT "fk_child1" FOREIGN KEY ("ID_FIRST", "ID_SECOND") REFERENCES "parent" ("FIRST_ID", "SECOND_ID")
);

