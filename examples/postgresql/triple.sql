-- ----------------------------
-- Table structure for "child"
-- ----------------------------
DROP TABLE IF EXISTS "child";
CREATE TABLE "child" (
  "ID_FIRST" integer NOT NULL,
  "ID_SECOND" integer NOT NULL,
  "ID_THIRD" integer NOT NULL,
  "ID_FOURTH" integer NOT NULL,
  "COMMENTS" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("ID_FIRST","ID_SECOND","ID_THIRD","ID_FOURTH")
  );

-- ----------------------------
-- Table structure for "parent1"
-- ----------------------------
DROP TABLE IF EXISTS "parent1";
CREATE TABLE "parent1" (
  "ID_FIRST" integer NOT NULL,
  "ID_SECOND" integer NOT NULL,
  "NAME" varchar(128) DEFAULT NULL,
  PRIMARY KEY ("ID_FIRST","ID_SECOND")
);

-- ----------------------------
-- Table structure for "parent2"
-- ----------------------------
DROP TABLE IF EXISTS "parent2";
CREATE TABLE "parent2" (
  "ID_THIRD" integer NOT NULL,
  "ID_FOURTH" integer NOT NULL,
  "NAME" varchar(128) DEFAULT NULL,
  PRIMARY KEY ("ID_THIRD","ID_FOURTH")
);

ALTER TABLE "child" ADD CONSTRAINT "fk_child1" FOREIGN KEY ("ID_FIRST", "ID_SECOND") REFERENCES "parent1" ("ID_FIRST", "ID_SECOND") MATCH FULL;
ALTER TABLE "child" ADD CONSTRAINT "fk_child2" FOREIGN KEY ("ID_THIRD", "ID_FOURTH") REFERENCES "parent2" ("ID_THIRD", "ID_FOURTH") MATCH FULL;
