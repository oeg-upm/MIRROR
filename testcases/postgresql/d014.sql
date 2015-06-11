--
-- Database: "d014"
--

-- --------------------------------------------------------

--
-- Table structure for table "dept"
--

CREATE TABLE IF NOT EXISTS "dept" (
  "deptno" integer DEFAULT NULL,
  "dname" varchar(30) DEFAULT NULL,
  "loc" varchar(100) DEFAULT NULL
);

--
-- Dumping data for table "dept"
--

INSERT INTO "dept" ("deptno", "dname", "loc") VALUES
(10, 'APPSERVER', 'NEW YORK');

-- --------------------------------------------------------

--
-- Table structure for table "emp"
--

CREATE TABLE IF NOT EXISTS "emp" (
  "empno" integer NOT NULL,
  "ename" varchar(100) DEFAULT NULL,
  "job" varchar(30) DEFAULT NULL,
  "deptno" integer DEFAULT NULL,
  "etype" varchar(30) DEFAULT NULL
);

--
-- Dumping data for table "emp"
--

INSERT INTO "emp" ("empno", "ename", "job", "deptno", "etype") VALUES
(7369, 'SMITH', 'CLERK', 10, 'PART_TIME');

-- --------------------------------------------------------

--
-- Table structure for table "likes"
--

CREATE TABLE IF NOT EXISTS "likes" (
  "id" integer DEFAULT NULL,
  "likeType" varchar(30) DEFAULT NULL,
  "likedObj" varchar(100) DEFAULT NULL
);

--
-- Dumping data for table "likes"
--

INSERT INTO "likes" ("id", "likeType", "likedObj") VALUES
(7369, 'Playing', 'Soccer'),
(7369, 'Watching', 'Basketball');

--
-- Indexes for dumped tables
--

--
-- Indexes for table "dept"
--
ALTER TABLE "dept"
 ADD UNIQUE KEY "deptno" ("deptno");

--
-- Indexes for table "emp"
--
ALTER TABLE "emp"
 ADD PRIMARY KEY ("empno"), ADD KEY "deptno" ("deptno");

--
-- Constraints for dumped tables
--

--
-- Constraints for table "emp"
--
ALTER TABLE "emp"
ADD CONSTRAINT "emp_ibfk_1" FOREIGN KEY ("deptno") REFERENCES "dept" ("deptno");
