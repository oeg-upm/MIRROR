--
-- Database: 'example_university'
--

-- --------------------------------------------------------

--
-- Table structure for table 'course'
--

CREATE TABLE IF NOT EXISTS course (
  CNO integer NOT NULL,
  TITLE varchar(255) NOT NULL,
  CODE varchar(255) NOT NULL,
  PRIMARY KEY (CNO)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'dept'
--

CREATE TABLE IF NOT EXISTS dept (
  CODE varchar(255) NOT NULL,
  NAME varchar(255) NOT NULL,
  PRIMARY KEY (CODE)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'offer'
--

CREATE TABLE IF NOT EXISTS offer (
  ONO integer NOT NULL,
  CNO integer NOT NULL,
  SNO integer NOT NULL,
  PID integer NOT NULL,
  CONO integer NOT NULL,
  PRIMARY KEY (ONO)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'person'
--

CREATE TABLE IF NOT EXISTS person (
  ID integer NOT NULL,
  NAME varchar(255) NOT NULL,
  PRIMARY KEY (ID)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'professor'
--

CREATE TABLE IF NOT EXISTS professor (
  ID integer NOT NULL,
  TITLE varchar(255) DEFAULT NULL,
  PRIMARY KEY (ID)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'reg'
--

CREATE TABLE IF NOT EXISTS reg (
  SID integer NOT NULL,
  SNO integer NOT NULL,
  PRIMARY KEY (SID,SNO)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'semester'
--

CREATE TABLE IF NOT EXISTS semester (
  SNO integer NOT NULL,
  YEAR date NOT NULL,
  SESSION varchar(255) DEFAULT NULL,
  PRIMARY KEY (SNO)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'student'
--

CREATE TABLE IF NOT EXISTS student (
  ROLLNO integer NOT NULL,
  DEGREE varchar(255) DEFAULT NULL,
  ID integer NOT NULL,
  PRIMARY KEY (ROLLNO),
  UNIQUE (ID)
) ;

-- --------------------------------------------------------

--
-- Table structure for table 'study'
--

CREATE TABLE IF NOT EXISTS study (
  ONO integer NOT NULL,
  RNO integer NOT NULL,
  GRADE varchar(255) NOT NULL,
  PRIMARY KEY (ONO,RNO)
) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table course
--
ALTER TABLE course
  ADD CONSTRAINT COURSE_ibfk_1 FOREIGN KEY (CODE) REFERENCES dept (CODE);

--
-- Constraints for table offer
--
ALTER TABLE offer
  ADD CONSTRAINT OFFER_ibfk_1 FOREIGN KEY (CNO) REFERENCES course (CNO),
  ADD CONSTRAINT OFFER_ibfk_2 FOREIGN KEY (SNO) REFERENCES semester (SNO),
  ADD CONSTRAINT OFFER_ibfk_3 FOREIGN KEY (PID) REFERENCES professor (ID),
  ADD CONSTRAINT OFFER_ibfk_4 FOREIGN KEY (CONO) REFERENCES offer (ONO);

--
-- Constraints for table professor
--
ALTER TABLE professor
  ADD CONSTRAINT PROFESSOR_ibfk_1 FOREIGN KEY (ID) REFERENCES person (ID);

--
-- Constraints for table reg
--
ALTER TABLE reg
  ADD CONSTRAINT REG_ibfk_1 FOREIGN KEY (SID) REFERENCES student (ID),
  ADD CONSTRAINT REG_ibfk_2 FOREIGN KEY (SNO) REFERENCES semester (SNO);

--
-- Constraints for table student
--
ALTER TABLE student
  ADD CONSTRAINT STUDENT_ibfk_1 FOREIGN KEY (ID) REFERENCES person (ID);

--
-- Constraints for table study
--
ALTER TABLE study
  ADD CONSTRAINT STUDY_ibfk_1 FOREIGN KEY (ONO) REFERENCES offer (ONO),
  ADD CONSTRAINT STUDY_ibfk_2 FOREIGN KEY (RNO) REFERENCES student (ROLLNO);
