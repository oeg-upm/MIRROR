--
-- Database: "d020"
--

-- --------------------------------------------------------

--
-- Table structure for table "student"
--

CREATE TABLE IF NOT EXISTS "student" (
  "Name" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "student"
--

INSERT INTO "student" ("Name") VALUES
('http://company.com/Alice'),
('Bob'),
('Bob/Charles'),
('path/../Danny'),
('Emily Smith');
