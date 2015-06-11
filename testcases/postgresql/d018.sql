--
-- Database: "d018"
--

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "ID" integer DEFAULT NULL,
  "Name" char(15) DEFAULT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("ID", "Name") VALUES
(10, 'Venus'),
(20, 'Fernando'),
(30, 'David');
