--
-- Database: "d004"
--

-- --------------------------------------------------------

--
-- Table structure for table "student_sport"
--

CREATE TABLE IF NOT EXISTS "student_sport" (
  "Student" varchar(50) DEFAULT NULL,
  "Sport" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "student_sport"
--

INSERT INTO "student_sport" ("Student", "Sport") VALUES
('Venus', 'Tennis');
