--
-- Database: "d007"
--

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "ID" integer NOT NULL DEFAULT '0',
  "Name" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("ID", "Name") VALUES
(10, 'Venus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table "student"
--
ALTER TABLE "student"
 ADD PRIMARY KEY ("ID");
