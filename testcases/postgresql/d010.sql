--
-- Database: "d010"
--

-- --------------------------------------------------------

--
-- Table structure for table "country info"
--

CREATE TABLE IF NOT EXISTS "country info" (
  "Country Code" integer NOT NULL,
  "Name" varchar(100) DEFAULT NULL,
  "ISO 3166" varchar(10) DEFAULT NULL
);

--
-- Dumping data for table "country info"
--

INSERT INTO "country info" ("Country Code", "Name", "ISO 3166") VALUES
(1, 'Bolivia, Plurinational State of', 'BO'),
(2, 'Ireland', 'IE'),
(3, 'Saint Martin (French part)', 'MF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table "country info"
--
ALTER TABLE "country info"
 ADD PRIMARY KEY ("Country Code");
