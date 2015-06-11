--
-- Database: "d012"
--

-- --------------------------------------------------------

--
-- Table structure for table "ious"
--

CREATE TABLE IF NOT EXISTS "ious" (
  "fname" varchar(20) DEFAULT NULL,
  "lname" varchar(20) DEFAULT NULL,
  "amount" float DEFAULT NULL
);

--
-- Dumping data for table "ious"
--

INSERT INTO "ious" ("fname", "lname", "amount") VALUES
('Bob', 'Smith', 30),
('Sue', 'Jones', 20),
('Bob', 'Smith', 30);

-- --------------------------------------------------------

--
-- Table structure for table "lives"
--

CREATE TABLE IF NOT EXISTS "lives" (
  "fname" varchar(20) DEFAULT NULL,
  "lname" varchar(20) DEFAULT NULL,
  "city" varchar(20) DEFAULT NULL
);

--
-- Dumping data for table "lives"
--

INSERT INTO "lives" ("fname", "lname", "city") VALUES
('Bob', 'Smith', 'London'),
('Sue', 'Jones', 'Madrid'),
('Bob', 'Smith', 'London');
