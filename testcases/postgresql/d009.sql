--
-- Database: "d009"
--

-- --------------------------------------------------------

--
-- Table structure for table "sport"
--

CREATE TABLE IF NOT EXISTS "sport" (
  "ID" integer NOT NULL DEFAULT '0',
  "Name" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "sport"
--

INSERT INTO "sport" ("ID", "Name") VALUES
(100, 'Tennis');

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "ID" integer NOT NULL DEFAULT '0',
  "Name" varchar(50) DEFAULT NULL,
  "Sport" integer DEFAULT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("ID", "Name", "Sport") VALUES
(10, 'Venus Williams', 100),
(20, 'Demi Moore', NULL);

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
 ADD PRIMARY KEY ("ID"), ADD KEY "Sport" ("Sport");

--
-- Constraints for dumped tables
--

--
-- Constraints for table "student"
--
ALTER TABLE "student"
ADD CONSTRAINT "student_ibfk_1" FOREIGN KEY ("Sport") REFERENCES "sport" ("ID");
