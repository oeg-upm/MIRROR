--
-- Database: "d005"
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
