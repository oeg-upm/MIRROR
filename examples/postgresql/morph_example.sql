CREATE TABLE IF NOT EXISTS sport (
  id integer NOT NULL DEFAULT '0',
  "name" varchar(50) DEFAULT NULL,
  "code" char(8) NOT NULL,
  "type" char(8) DEFAULT NULL,
  PRIMARY KEY (id)
) ;

INSERT INTO sport (id, "name", code, "type") VALUES
(100, 'Tennis', 'TNS', 'BOTH'),
(200, 'Chess', 'CHS', 'INDOOR'),
(300, 'Soccer', 'SCR', 'OUTDOOR');

CREATE TABLE IF NOT EXISTS student (
  id char(8) NOT NULL DEFAULT '0',
  "name" varchar(50) DEFAULT NULL,
  sport integer DEFAULT NULL,
  "status" varchar(10) NOT NULL,
  webpage varchar(100) DEFAULT NULL,
  phone varchar(100) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  suffix varchar(8) DEFAULT NULL,
  birthdate timestamp DEFAULT NULL,
  PRIMARY KEY (id)
) ;

INSERT INTO student (id, "name", sport, "status", webpage, phone, email, suffix, birthdate) VALUES
('B1', 'Paul', 100, 'active', NULL, '777-3426', NULL, 'Jr.', '2000-12-31 00:00:00'),
('B2', 'John', 200, 'active', NULL, NULL, 'john@acd.edu', 'Sr.', NULL),
('B3', 'George', 300, 'active', 'www.george.edu', NULL, NULL, 'Sr. ', '1990-06-18 00:00:00'),
('B4', 'Ringo', NULL, 'active', 'www.starr.edu', '888-4537', 'ringo@acd.edu', 'Jr. ', NULL);

CREATE TABLE IF NOT EXISTS "student01" (
"id" char(8)
,"name" varchar(50)
,"sport" integer
,"status" varchar(10)
,"webpage" varchar(100)
,"phone" varchar(100)
,"email" varchar(100)
,"suffix" varchar(8)
,"birthdate" timestamp
);

DROP TABLE IF EXISTS "student01";

CREATE VIEW student01 AS select student.id AS id,student."name" AS "name",student.sport AS sport,student."status" AS "status",student.webpage AS webpage,student.phone AS phone,student.email AS email,student.suffix AS suffix,student.birthdate AS birthdate from student where (student.sport is not null);

ALTER TABLE "student"
  ADD CONSTRAINT Student_ibfk_1 FOREIGN KEY (sport) REFERENCES sport (id);
