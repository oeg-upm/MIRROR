DROP TABLE IF EXISTS act;
CREATE TABLE act (
  id varchar(255) NOT NULL,
  classCode varchar(15) NOT NULL,
  moodCode varchar(15) NOT NULL,
  code varchar(30) NOT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  actionNegationInd smallint(6) NOT NULL,
  title varchar(255) DEFAULT NULL,
  text text,
  statusCode varchar(15) DEFAULT NULL,
  effectiveTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  activityTime timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  availabilityTime timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  creationTime timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  modificationTime timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS actmethodcode;
CREATE TABLE actmethodcode (
  id varchar(255) NOT NULL,
  code varchar(50) NOT NULL,
  title varchar(255) NOT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  PRIMARY KEY (id,code)
);

DROP TABLE IF EXISTS actobservationinterpretationcode;
CREATE TABLE actobservationinterpretationcode (
  id varchar(255) NOT NULL,
  control bigint(20) NOT NULL,
  code varchar(50) NOT NULL,
  PRIMARY KEY (id,control)
);

DROP TABLE IF EXISTS actobservationvalues;
CREATE TABLE actobservationvalues (
  id varchar(255) NOT NULL,
  control bigint(20) NOT NULL,
  valueST varchar(50) NOT NULL,
  valuePQ double NOT NULL,
  units varchar(50) NOT NULL,
  referenceRangeMin double NOT NULL,
  referenceRangeMax double NOT NULL,
  PRIMARY KEY (id,control)
);

DROP TABLE IF EXISTS actprocedureapproachsitecode;
CREATE TABLE actprocedureapproachsitecode (
  id varchar(255) NOT NULL,
  code varchar(30) NOT NULL,
  title varchar(255) DEFAULT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  PRIMARY KEY (id,code)
);

DROP TABLE IF EXISTS actrelationship;
CREATE TABLE actrelationship (
  idA varchar(255) NOT NULL,
  idB varchar(255) NOT NULL,
  typeCode varchar(15) NOT NULL,
  PRIMARY KEY (idA,idB,typeCode),
  KEY has_act_actrelationship_b (idB)
);

DROP TABLE IF EXISTS acttargetsitecode;
CREATE TABLE acttargetsitecode (
  id varchar(255) NOT NULL,
  code varchar(30) NOT NULL,
  title varchar(255) DEFAULT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  PRIMARY KEY (id,code)
);

DROP TABLE IF EXISTS entity;
CREATE TABLE entity (
  id varchar(255) NOT NULL,
  classCode varchar(15) NOT NULL,
  determinerCode varchar(15) NOT NULL,
  code varchar(30) NOT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  quantity varchar(50) NOT NULL,
  name varchar(255) NOT NULL,
  desc_1 text,
  statusCode varchar(15) DEFAULT NULL,
  creationTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  modificationTime timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS exposure;
CREATE TABLE exposure (
  id varchar(255) NOT NULL,
  routeCode varchar(15) NOT NULL,
  exposureLevel varchar(10) NOT NULL,
  exposureModeCode varchar(15) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS livingsubject;
CREATE TABLE livingsubject (
  id varchar(255) NOT NULL,
  administrativeGenderCode varchar(20) DEFAULT NULL,
  birthTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  birthTimeTolerance int(11) NOT NULL,
  deceasedInd smallint(6) NOT NULL,
  deceasedTime timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS observation;
CREATE TABLE observation (
  id varchar(255) NOT NULL,
  value bigint(20) NOT NULL,
  valueNegationInd smallint(6) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS participation;
CREATE TABLE participation (
  entityId varchar(255) NOT NULL,
  roleId varchar(255) NOT NULL,
  typeCode varchar(10) NOT NULL,
  actId varchar(255) NOT NULL,
  functionCode varchar(12) DEFAULT NULL,
  negationInd smallint(6) NOT NULL,
  noteText text,
  time_start timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  time_end timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  modeCode varchar(12) DEFAULT NULL,
  PRIMARY KEY (entityId,roleId,typeCode,actId),
  KEY has_role_participation (entityId),
  KEY has_act_participation (actId)
);

DROP TABLE IF EXISTS person;
CREATE TABLE person (
  id varchar(255) NOT NULL,
  raceCode varchar(30) NOT NULL,
  name varchar(100) NOT NULL,
  surname varchar(100) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS procedures;
CREATE TABLE procedures (
  id varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS role;
CREATE TABLE role (
  entityId varchar(255) NOT NULL,
  id varchar(255) NOT NULL,
  classCode varchar(15) NOT NULL,
  code varchar(40) NOT NULL,
  negationInd smallint(6) NOT NULL,
  name varchar(255) NOT NULL,
  statusCode varchar(15) DEFAULT NULL,
  effectiveTime_start timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  effectiveTime_end timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  confidentialityCode varchar(5) DEFAULT NULL,
  PRIMARY KEY (entityId,id),
  KEY has_entity_role (entityId)
);

DROP TABLE IF EXISTS substanceadministration;
CREATE TABLE substanceadministration (
  id varchar(255) NOT NULL,
  routeCode varchar(15) NOT NULL,
  doseQuantity varchar(15) NOT NULL,
  rateQuantity varchar(15) NOT NULL,
  doseCheckQuantity varchar(20) NOT NULL,
  PRIMARY KEY (id)
);
DROP VIEW IF EXISTS `v_exposure`;
CREATE TABLE `v_exposure` (
`id` varchar(255)
,`classCode` varchar(15)
,`moodCode` varchar(15)
,`code` varchar(30)
,`codeVocId` varchar(30)
,`codeOrig` varchar(30)
,`codeOrigVocId` varchar(30)
,`actionNegationInd` smallint(6)
,`title` varchar(255)
,`text` text
,`statusCode` varchar(15)
,`effectiveTime` timestamp
,`activityTime` timestamp
,`availabilityTime` timestamp
,`creationTime` timestamp
,`modificationTime` timestamp
,`clinicalTrialId` varchar(255)
,`routeCode` varchar(15)
,`exposureLevel` varchar(10)
,`exposureModeCode` varchar(15)
);DROP VIEW IF EXISTS `v_livingsubject`;
CREATE TABLE `v_livingsubject` (
`id` varchar(255)
,`classCode` varchar(15)
,`determinerCode` varchar(15)
,`code` varchar(30)
,`codeVocId` varchar(30)
,`codeOrig` varchar(30)
,`codeOrigVocId` varchar(30)
,`quantity` varchar(50)
,`name` varchar(255)
,`desc` text
,`statusCode` varchar(15)
,`administrativeGenderCode` varchar(20)
,`creationTime` timestamp
,`modificationTime` timestamp
,`birthTime` timestamp
,`birthTimeTolerance` int(11)
,`deceasedInd` smallint(6)
,`deceasedTime` timestamp
);DROP VIEW IF EXISTS `v_observation`;
CREATE TABLE `v_observation` (
`id` varchar(255)
,`classCode` varchar(15)
,`moodCode` varchar(15)
,`code` varchar(30)
,`codeVocId` varchar(30)
,`codeOrig` varchar(30)
,`codeOrigVocId` varchar(30)
,`actionNegationInd` smallint(6)
,`title` varchar(255)
,`text` text
,`statusCode` varchar(15)
,`effectiveTime` timestamp
,`activityTime` timestamp
,`availabilityTime` timestamp
,`valueNegationInd` smallint(6)
,`creationTime` timestamp
,`modificationTime` timestamp
,`clinicalTrialId` varchar(255)
,`valueST` varchar(50)
,`valuePQ` double
,`units` varchar(50)
,`referenceRangeMin` double
,`referenceRangeMax` double
,`interpretationCode` varchar(50)
,`methodCode` varchar(50)
,`methodCodeTitle` varchar(255)
,`methodCodeVocId` varchar(30)
,`methodCodeOrig` varchar(30)
,`methodCodeOrigVocId` varchar(30)
,`targetSiteCode` varchar(30)
,`targetSiteCodeTitle` varchar(255)
,`targetSiteCodeVocId` varchar(30)
,`targetSiteCodeOrig` varchar(30)
,`targetSiteCodeOrigVocId` varchar(30)
);DROP VIEW IF EXISTS `v_person`;
CREATE TABLE `v_person` (
`id` varchar(255)
,`classCode` varchar(15)
,`determinerCode` varchar(15)
,`code` varchar(30)
,`codeVocId` varchar(30)
,`codeOrig` varchar(30)
,`codeOrigVocId` varchar(30)
,`quantity` varchar(50)
,`name` varchar(255)
,`desc` text
,`statusCode` varchar(15)
,`administrativeGenderCode` varchar(20)
,`creationTime` timestamp
,`modificationTime` timestamp
,`birthTime` timestamp
,`birthTimeTolerance` int(11)
,`deceasedInd` smallint(6)
,`deceasedTime` timestamp
,`raceCode` varchar(30)
,`personName` varchar(100)
,`personSurname` varchar(100)
);DROP VIEW IF EXISTS `v_procedure`;
CREATE TABLE `v_procedure` (
`id` varchar(255)
,`classCode` varchar(15)
,`moodCode` varchar(15)
,`code` varchar(30)
,`codeVocId` varchar(30)
,`codeOrig` varchar(30)
,`codeOrigVocId` varchar(30)
,`actionNegationInd` smallint(6)
,`title` varchar(255)
,`text` text
,`statusCode` varchar(15)
,`effectiveTime` timestamp
,`activityTime` timestamp
,`availabilityTime` timestamp
,`creationTime` timestamp
,`modificationTime` timestamp
,`clinicalTrialId` varchar(255)
,`approachSiteCode` varchar(30)
,`approachSiteCodeTitle` varchar(255)
,`approachSiteCodeVocId` varchar(30)
,`approachSiteCodeOrig` varchar(30)
,`approachSiteCodeOrigVocId` varchar(30)
,`methodCode` varchar(50)
,`methodCodeTitle` varchar(255)
,`methodCodeVocId` varchar(30)
,`methodCodeOrig` varchar(30)
,`methodCodeOrigVocId` varchar(30)
,`targetSiteCode` varchar(30)
,`targetSiteCodeTitle` varchar(255)
,`targetSiteCodeVocId` varchar(30)
,`targetSiteCodeOrig` varchar(30)
,`targetSiteCodeOrigVocId` varchar(30)
);DROP VIEW IF EXISTS `v_substanceadministration`;
CREATE TABLE `v_substanceadministration` (
`id` varchar(255)
,`classCode` varchar(15)
,`moodCode` varchar(15)
,`code` varchar(30)
,`codeVocId` varchar(30)
,`codeOrig` varchar(30)
,`codeOrigVocId` varchar(30)
,`actionNegationInd` smallint(6)
,`title` varchar(255)
,`text` text
,`statusCode` varchar(15)
,`effectiveTime` timestamp
,`activityTime` timestamp
,`availabilityTime` timestamp
,`creationTime` timestamp
,`modificationTime` timestamp
,`clinicalTrialId` varchar(255)
,`approachSiteCode` varchar(30)
,`approachSiteCodeTitle` varchar(255)
,`approachSiteCodeVocId` varchar(30)
,`approachSiteCodeOrig` varchar(30)
,`approachSiteCodeOrigVocId` varchar(30)
,`methodCode` varchar(50)
,`methodCodeTitle` varchar(255)
,`methodCodeVocId` varchar(30)
,`methodCodeOrig` varchar(30)
,`methodCodeOrigVocId` varchar(30)
,`targetSiteCode` varchar(30)
,`targetSiteCodeTitle` varchar(255)
,`targetSiteCodeVocId` varchar(30)
,`targetSiteCodeOrig` varchar(30)
,`targetSiteCodeOrigVocId` varchar(30)
,`routeCode` varchar(15)
,`doseQuantity` varchar(15)
,`rateQuantity` varchar(15)
,`doseCheckQuantity` varchar(20)
);DROP TABLE IF EXISTS `v_exposure`;

CREATE VIEW hl7.v_exposure AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,e.routeCode AS routeCode,e.exposureLevel AS exposureLevel,e.exposureModeCode AS exposureModeCode from ((hl7.exposure e join hl7.act a on((a.id = e.id))) left join hl7.actrelationship ar on((ar.idA = a.id)));
DROP TABLE IF EXISTS `v_livingsubject`;

CREATE VIEW hl7.v_livingsubject AS select e.id AS id,e.classCode AS classCode,e.determinerCode AS determinerCode,e.code AS code,e.codeVocId AS codeVocId,e.codeOrig AS codeOrig,e.codeOrigVocId AS codeOrigVocId,e.quantity AS quantity,e.name AS name,e.desc_1 AS desc,e.statusCode AS statusCode,l.administrativeGenderCode AS administrativeGenderCode,e.creationTime AS creationTime,e.modificationTime AS modificationTime,l.birthTime AS birthTime,l.birthTimeTolerance AS birthTimeTolerance,l.deceasedInd AS deceasedInd,l.deceasedTime AS deceasedTime from (hl7.entity e join hl7.livingsubject l on((e.id = l.id)));
DROP TABLE IF EXISTS `v_observation`;

CREATE VIEW hl7.v_observation AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,o.valueNegationInd AS valueNegationInd,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,aov.valueST AS valueST,aov.valuePQ AS valuePQ,aov.units AS units,aov.referenceRangeMin AS referenceRangeMin,aov.referenceRangeMax AS referenceRangeMax,aoic.code AS interpretationCode,amc.code AS methodCode,amc.title AS methodCodeTitle,amc.codeVocId AS methodCodeVocId,amc.codeOrig AS methodCodeOrig,amc.codeOrigVocId AS methodCodeOrigVocId,atsc.code AS targetSiteCode,atsc.title AS targetSiteCodeTitle,atsc.codeVocId AS targetSiteCodeVocId,atsc.codeOrig AS targetSiteCodeOrig,atsc.codeOrigVocId AS targetSiteCodeOrigVocId from ((((((hl7.observation o join hl7.act a on((a.id = o.id))) left join hl7.actrelationship ar on((ar.idA = a.id))) left join hl7.actobservationvalues aov on((o.id = aov.id))) left join hl7.actobservationinterpretationcode aoic on((aoic.id = o.id))) left join hl7.acttargetsitecode atsc on((atsc.id = o.id))) left join hl7.actmethodcode amc on((amc.id = o.id)));
DROP TABLE IF EXISTS `v_person`;

CREATE VIEW hl7.v_person AS select e.id AS id,e.classCode AS classCode,e.determinerCode AS determinerCode,e.code AS code,e.codeVocId AS codeVocId,e.codeOrig AS codeOrig,e.codeOrigVocId AS codeOrigVocId,e.quantity AS quantity,e.name AS name,e.desc_1 AS desc,e.statusCode AS statusCode,l.administrativeGenderCode AS administrativeGenderCode,e.creationTime AS creationTime,e.modificationTime AS modificationTime,l.birthTime AS birthTime,l.birthTimeTolerance AS birthTimeTolerance,l.deceasedInd AS deceasedInd,l.deceasedTime AS deceasedTime,p.raceCode AS raceCode,p.name AS personName,p.surname AS personSurname from ((hl7.entity e join hl7.livingsubject l on((e.id = l.id))) join hl7.person p on((p.id = e.id)));
DROP TABLE IF EXISTS `v_procedure`;

CREATE VIEW hl7.v_procedure AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,apasc.code AS approachSiteCode,apasc.title AS approachSiteCodeTitle,apasc.codeVocId AS approachSiteCodeVocId,apasc.codeOrig AS approachSiteCodeOrig,apasc.codeOrigVocId AS approachSiteCodeOrigVocId,amc.code AS methodCode,amc.title AS methodCodeTitle,amc.codeVocId AS methodCodeVocId,amc.codeOrig AS methodCodeOrig,amc.codeOrigVocId AS methodCodeOrigVocId,atsc.code AS targetSiteCode,atsc.title AS targetSiteCodeTitle,atsc.codeVocId AS targetSiteCodeVocId,atsc.codeOrig AS targetSiteCodeOrig,atsc.codeOrigVocId AS targetSiteCodeOrigVocId from (((((hl7.procedures p join hl7.act a on((p.id = a.id))) left join hl7.actrelationship ar on((ar.idA = a.id))) left join hl7.actprocedureapproachsitecode apasc on((apasc.id = p.id))) left join hl7.acttargetsitecode atsc on((atsc.id = p.id))) left join hl7.actmethodcode amc on((p.id = amc.id)));
DROP TABLE IF EXISTS `v_substanceadministration`;

CREATE VIEW hl7.v_substanceadministration AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,apasc.code AS approachSiteCode,atsc.title AS approachSiteCodeTitle,apasc.codeVocId AS approachSiteCodeVocId,apasc.codeOrig AS approachSiteCodeOrig,apasc.codeOrigVocId AS approachSiteCodeOrigVocId,amc.code AS methodCode,amc.title AS methodCodeTitle,amc.codeVocId AS methodCodeVocId,amc.codeOrig AS methodCodeOrig,amc.codeOrigVocId AS methodCodeOrigVocId,atsc.code AS targetSiteCode,atsc.title AS targetSiteCodeTitle,atsc.codeVocId AS targetSiteCodeVocId,atsc.codeOrig AS targetSiteCodeOrig,atsc.codeOrigVocId AS targetSiteCodeOrigVocId,s.routeCode AS routeCode,s.doseQuantity AS doseQuantity,s.rateQuantity AS rateQuantity,s.doseCheckQuantity AS doseCheckQuantity from ((((((hl7.substanceadministration s join hl7.procedures p on((s.id = p.id))) join hl7.act a on((p.id = a.id))) left join hl7.actrelationship ar on((ar.idA = a.id))) left join hl7.actprocedureapproachsitecode apasc on((apasc.id = p.id))) left join hl7.acttargetsitecode atsc on((atsc.id = p.id))) left join hl7.actmethodcode amc on((p.id = amc.id)));


ALTER TABLE `actmethodcode`
  ADD CONSTRAINT observation_actmethodcode_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT procedures_actmethodcode_fk FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `actobservationinterpretationcode`
  ADD CONSTRAINT observation_actobservationinterpretationcode_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `actobservationvalues`
  ADD CONSTRAINT observation_actobservationvalues_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `actprocedureapproachsitecode`
  ADD CONSTRAINT procedures_actprocedureapproachsitecode_fk FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `actrelationship`
  ADD CONSTRAINT has_act_actrelationship_a FOREIGN KEY (idA) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT has_act_actrelationship_b FOREIGN KEY (idB) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `acttargetsitecode`
  ADD CONSTRAINT observation_acttargetsitecode_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT procedures_acttargetsitecode_fk FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `exposure`
  ADD CONSTRAINT isa_exposure_act FOREIGN KEY (id) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `livingsubject`
  ADD CONSTRAINT isa_livingsubject_entity FOREIGN KEY (id) REFERENCES entity (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `observation`
  ADD CONSTRAINT isa_observation_act FOREIGN KEY (id) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `participation`
  ADD CONSTRAINT has_act_participation FOREIGN KEY (actId) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT has_role_participation FOREIGN KEY (entityId, roleId) REFERENCES role (entityId, id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `person`
  ADD CONSTRAINT isa_person_livingsubject FOREIGN KEY (id) REFERENCES livingsubject (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `procedures`
  ADD CONSTRAINT isa_procedure_act FOREIGN KEY (id) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `role`
  ADD CONSTRAINT has_entity_role FOREIGN KEY (entityId) REFERENCES entity (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `substanceadministration`
  ADD CONSTRAINT isa_substanceadministration_procedure FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
