--
-- Database: "d013"
--

-- --------------------------------------------------------

--
-- Table structure for table "person"
--

CREATE TABLE IF NOT EXISTS "person" (
  "ID" integer NOT NULL DEFAULT '0',
  "Name" varchar(50) DEFAULT NULL,
  "DateOfBirth" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "person"
--

INSERT INTO "person" ("ID", "Name", "DateOfBirth") VALUES
(1, 'Alice', NULL),
(2, 'Bob', 'September, 2010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table "person"
--
ALTER TABLE "person"
 ADD PRIMARY KEY ("ID");
