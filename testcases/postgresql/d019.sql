--
-- Database: "d019"
--

-- --------------------------------------------------------

--
-- Table structure for table "employee"
--

CREATE TABLE IF NOT EXISTS "employee" (
  "ID" integer DEFAULT NULL,
  "FirstName" varchar(50) DEFAULT NULL,
  "LastName" varchar(50) DEFAULT NULL
);

--
-- Dumping data for table "employee"
--

INSERT INTO "employee" ("ID", "FirstName", "LastName") VALUES
(10, 'http://example.com/ns#Jhon', 'Smith'),
(20, 'Carlos', 'Mendoza'),
(30, 'Juan Daniel', 'Crespo');
