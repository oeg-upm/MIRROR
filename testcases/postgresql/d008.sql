--
-- Database: "d008"
--

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "ID" integer NOT NULL DEFAULT '0',
  "Name" varchar(50) NOT NULL DEFAULT '',
  "Sport" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("ID", "Name", "Sport") VALUES
(10, 'Venus Williams', 'Tennis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table "student"
--
ALTER TABLE "student"
 ADD PRIMARY KEY ("ID","Name");
