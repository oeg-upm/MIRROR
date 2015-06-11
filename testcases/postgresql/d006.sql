--
-- Database: "d006"
--

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "Name" varchar(50) NOT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("Name") VALUES
('Venus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table "student"
--
ALTER TABLE "student"
 ADD PRIMARY KEY ("Name");
