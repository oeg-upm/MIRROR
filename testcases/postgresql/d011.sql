--
-- Database: "d011"
--

-- --------------------------------------------------------

--
-- Table structure for table "sport"
--

CREATE TABLE IF NOT EXISTS "sport" (
  "ID" integer NOT NULL,
  "Description" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "sport"
--

INSERT INTO "sport" ("ID", "Description") VALUES
(110, 'Tennis'),
(111, 'Football'),
(112, 'Formula1');

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "ID" integer NOT NULL,
  "FirstName" varchar(50) DEFAULT NULL,
  "LastName" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("ID", "FirstName", "LastName") VALUES
(10, 'Venus', 'Williams'),
(11, 'Fernando', 'Alonso'),
(12, 'David', 'Villa');

-- --------------------------------------------------------

--
-- Table structure for table "student_sport"
--

CREATE TABLE IF NOT EXISTS "student_sport" (
  "ID_Student" integer NOT NULL DEFAULT '0',
  "ID_Sport" integer NOT NULL DEFAULT '0'
);

--
-- Dumping data for table "student_sport"
--

INSERT INTO "student_sport" ("ID_Student", "ID_Sport") VALUES
(10, 110),
(11, 111),
(12, 111),
(11, 112);

--
-- Indexes for dumped tables
--

--
-- Indexes for table "sport"
--
ALTER TABLE "sport"
 ADD PRIMARY KEY ("ID");

--
-- Indexes for table "student"
--
ALTER TABLE "student"
 ADD PRIMARY KEY ("ID");

--
-- Indexes for table "student_sport"
--
ALTER TABLE "student_sport"
 ADD PRIMARY KEY ("ID_Student","ID_Sport"), ADD KEY "ID_Sport" ("ID_Sport");

--
-- Constraints for dumped tables
--

--
-- Constraints for table "student_sport"
--
ALTER TABLE "student_sport"
ADD CONSTRAINT "student_sport_ibfk_1" FOREIGN KEY ("ID_Student") REFERENCES "student" ("ID"),
ADD CONSTRAINT "student_sport_ibfk_2" FOREIGN KEY ("ID_Sport") REFERENCES "sport" ("ID");
