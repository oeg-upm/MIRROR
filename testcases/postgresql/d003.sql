--
-- Database: "d003"
--

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "ID" integer DEFAULT NULL,
  "FirstName" varchar(50) DEFAULT NULL,
  "LastName" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("ID", "FirstName", "LastName") VALUES
(10, 'Venus', 'Williams');
