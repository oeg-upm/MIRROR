--
-- Database: "d015"
--

-- --------------------------------------------------------

--
-- Table structure for table "country"
--

CREATE TABLE IF NOT EXISTS "country" (
  "Code" varchar(2) NOT NULL DEFAULT '',
  "Name" varchar(100) DEFAULT NULL,
  "Lan" varchar(10) NOT NULL DEFAULT ''
);

--
-- Dumping data for table "country"
--

INSERT INTO "country" ("Code", "Name", "Lan") VALUES
('BO', 'Bolivia, Plurinational State of', 'EN'),
('BO', 'Estado Plurinacional de Bolivia', 'ES'),
('IE', 'Ireland', 'EN'),
('IE', 'Irlanda', 'ES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table "country"
--
ALTER TABLE "country"
 ADD PRIMARY KEY ("Code","Lan");
