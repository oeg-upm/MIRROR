CREATE TABLE IF NOT EXISTS act (
  id varchar(255) NOT NULL,
  classCode varchar(15) NOT NULL,
  moodCode varchar(15) NOT NULL,
  code varchar(30) NOT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  actionNegationInd integer NOT NULL,
  title varchar(255) DEFAULT NULL,
  text text,
  statusCode varchar(15) DEFAULT NULL,
  effectiveTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  activityTime timestamp NOT NULL,
  availabilityTime timestamp NOT NULL,
  creationTime timestamp NOT NULL,
  modificationTime timestamp NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS actmethodcode (
  id varchar(255) NOT NULL,
  code varchar(50) NOT NULL,
  title varchar(255) NOT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  PRIMARY KEY (id,code)
) ;

CREATE TABLE IF NOT EXISTS actobservationinterpretationcode (
  id varchar(255) NOT NULL,
  control integer NOT NULL,
  code varchar(50) NOT NULL,
  PRIMARY KEY (id,control)
) ;

CREATE TABLE IF NOT EXISTS actobservationvalues (
  id varchar(255) NOT NULL,
  control integer NOT NULL,
  valueST varchar(50) NOT NULL,
  valuePQ decimal(9,2) NOT NULL,
  units varchar(50) NOT NULL,
  referenceRangeMin decimal(9,2) NOT NULL,
  referenceRangeMax decimal(9,2) NOT NULL,
  PRIMARY KEY (id,control)
) ;

CREATE TABLE IF NOT EXISTS actprocedureapproachsitecode (
  id varchar(255) NOT NULL,
  code varchar(30) NOT NULL,
  title varchar(255) DEFAULT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  PRIMARY KEY (id,code)
) ;

CREATE TABLE IF NOT EXISTS actrelationship (
  idA varchar(255) NOT NULL,
  idB varchar(255) NOT NULL,
  typeCode varchar(15) NOT NULL,
  PRIMARY KEY (idA,idB,typeCode)
) ;

CREATE TABLE IF NOT EXISTS acttargetsitecode (
  id varchar(255) NOT NULL,
  code varchar(30) NOT NULL,
  title varchar(255) DEFAULT NULL,
  codeVocId varchar(30) NOT NULL,
  codeOrig varchar(30) NOT NULL,
  codeOrigVocId varchar(30) NOT NULL,
  PRIMARY KEY (id,code)
) ;

CREATE TABLE IF NOT EXISTS entity (
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
  creationTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modificationTime timestamp NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS exposure (
  id varchar(255) NOT NULL,
  routeCode varchar(15) NOT NULL,
  exposureLevel varchar(10) NOT NULL,
  exposureModeCode varchar(15) NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS livingsubject (
  id varchar(255) NOT NULL,
  administrativeGenderCode varchar(20) DEFAULT NULL,
  birthTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  birthTimeTolerance integer NOT NULL,
  deceasedInd integer NOT NULL,
  deceasedTime timestamp NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS observation (
  id varchar(255) NOT NULL,
  value integer NOT NULL,
  valueNegationInd integer NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS participation (
  entityId varchar(255) NOT NULL,
  roleId varchar(255) NOT NULL,
  typeCode varchar(10) NOT NULL,
  actId varchar(255) NOT NULL,
  functionCode varchar(12) DEFAULT NULL,
  negationInd integer NOT NULL,
  noteText text,
  time_start timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  time_end timestamp NOT NULL,
  modeCode varchar(12) DEFAULT NULL,
  PRIMARY KEY (entityId,roleId,typeCode,actId)
) ;

CREATE TABLE IF NOT EXISTS person (
  id varchar(255) NOT NULL,
  raceCode varchar(30) NOT NULL,
  name varchar(100) NOT NULL,
  surname varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS procedures (
  id varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE IF NOT EXISTS role (
  entityId varchar(255) NOT NULL,
  id varchar(255) NOT NULL,
  classCode varchar(15) NOT NULL,
  code varchar(40) NOT NULL,
  negationInd integer NOT NULL,
  name varchar(255) NOT NULL,
  statusCode varchar(15) DEFAULT NULL,
  effectiveTime_start timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  effectiveTime_end timestamp NOT NULL,
  confidentialityCode varchar(5) DEFAULT NULL,
  PRIMARY KEY (entityId,id)
) ;

CREATE TABLE IF NOT EXISTS substanceadministration (
  id varchar(255) NOT NULL,
  routeCode varchar(15) NOT NULL,
  doseQuantity varchar(15) NOT NULL,
  rateQuantity varchar(15) NOT NULL,
  doseCheckQuantity varchar(20) NOT NULL,
  PRIMARY KEY (id)
) ;
CREATE TABLE IF NOT EXISTS v_exposure (
id varchar(255)
,classCode varchar(15)
,moodCode varchar(15)
,code varchar(30)
,codeVocId varchar(30)
,codeOrig varchar(30)
,codeOrigVocId varchar(30)
,actionNegationInd integer
,title varchar(255)
,text text
,statusCode varchar(15)
,effectiveTime timestamp
,activityTime timestamp
,availabilityTime timestamp
,creationTime timestamp
,modificationTime timestamp
,clinicalTrialId varchar(255)
,routeCode varchar(15)
,exposureLevel varchar(10)
,exposureModeCode varchar(15)
);CREATE TABLE IF NOT EXISTS v_livingsubject (
id varchar(255)
,classCode varchar(15)
,determinerCode varchar(15)
,code varchar(30)
,codeVocId varchar(30)
,codeOrig varchar(30)
,codeOrigVocId varchar(30)
,quantity varchar(50)
,name varchar(255)
,"desc" text
,statusCode varchar(15)
,administrativeGenderCode varchar(20)
,creationTime timestamp
,modificationTime timestamp
,birthTime timestamp
,birthTimeTolerance integer
,deceasedInd integer
,deceasedTime timestamp
);CREATE TABLE IF NOT EXISTS v_observation (
id varchar(255)
,classCode varchar(15)
,moodCode varchar(15)
,code varchar(30)
,codeVocId varchar(30)
,codeOrig varchar(30)
,codeOrigVocId varchar(30)
,actionNegationInd integer
,title varchar(255)
,text text
,statusCode varchar(15)
,effectiveTime timestamp
,activityTime timestamp
,availabilityTime timestamp
,valueNegationInd integer
,creationTime timestamp
,modificationTime timestamp
,clinicalTrialId varchar(255)
,valueST varchar(50)
,valuePQ decimal(9,2)
,units varchar(50)
,referenceRangeMin decimal(9,2)
,referenceRangeMax decimal(9,2)
,interpretationCode varchar(50)
,methodCode varchar(50)
,methodCodeTitle varchar(255)
,methodCodeVocId varchar(30)
,methodCodeOrig varchar(30)
,methodCodeOrigVocId varchar(30)
,targetSiteCode varchar(30)
,targetSiteCodeTitle varchar(255)
,targetSiteCodeVocId varchar(30)
,targetSiteCodeOrig varchar(30)
,targetSiteCodeOrigVocId varchar(30)
);

CREATE TABLE IF NOT EXISTS v_person (
id varchar(255)
,classCode varchar(15)
,determinerCode varchar(15)
,code varchar(30)
,codeVocId varchar(30)
,codeOrig varchar(30)
,codeOrigVocId varchar(30)
,quantity varchar(50)
,name varchar(255)
,"desc" text
,statusCode varchar(15)
,administrativeGenderCode varchar(20)
,creationTime timestamp
,modificationTime timestamp
,birthTime timestamp
,birthTimeTolerance integer
,deceasedInd integer
,deceasedTime timestamp
,raceCode varchar(30)
,personName varchar(100)
,personSurname varchar(100)
);CREATE TABLE IF NOT EXISTS v_procedure (
id varchar(255)
,classCode varchar(15)
,moodCode varchar(15)
,code varchar(30)
,codeVocId varchar(30)
,codeOrig varchar(30)
,codeOrigVocId varchar(30)
,actionNegationInd integer
,title varchar(255)
,text text
,statusCode varchar(15)
,effectiveTime timestamp
,activityTime timestamp
,availabilityTime timestamp
,creationTime timestamp
,modificationTime timestamp
,clinicalTrialId varchar(255)
,approachSiteCode varchar(30)
,approachSiteCodeTitle varchar(255)
,approachSiteCodeVocId varchar(30)
,approachSiteCodeOrig varchar(30)
,approachSiteCodeOrigVocId varchar(30)
,methodCode varchar(50)
,methodCodeTitle varchar(255)
,methodCodeVocId varchar(30)
,methodCodeOrig varchar(30)
,methodCodeOrigVocId varchar(30)
,targetSiteCode varchar(30)
,targetSiteCodeTitle varchar(255)
,targetSiteCodeVocId varchar(30)
,targetSiteCodeOrig varchar(30)
,targetSiteCodeOrigVocId varchar(30)
);CREATE TABLE IF NOT EXISTS v_substanceadministration (
id varchar(255)
,classCode varchar(15)
,moodCode varchar(15)
,code varchar(30)
,codeVocId varchar(30)
,codeOrig varchar(30)
,codeOrigVocId varchar(30)
,actionNegationInd integer
,title varchar(255)
,text text
,statusCode varchar(15)
,effectiveTime timestamp
,activityTime timestamp
,availabilityTime timestamp
,creationTime timestamp
,modificationTime timestamp
,clinicalTrialId varchar(255)
,approachSiteCode varchar(30)
,approachSiteCodeTitle varchar(255)
,approachSiteCodeVocId varchar(30)
,approachSiteCodeOrig varchar(30)
,approachSiteCodeOrigVocId varchar(30)
,methodCode varchar(50)
,methodCodeTitle varchar(255)
,methodCodeVocId varchar(30)
,methodCodeOrig varchar(30)
,methodCodeOrigVocId varchar(30)
,targetSiteCode varchar(30)
,targetSiteCodeTitle varchar(255)
,targetSiteCodeVocId varchar(30)
,targetSiteCodeOrig varchar(30)
,targetSiteCodeOrigVocId varchar(30)
,routeCode varchar(15)
,doseQuantity varchar(15)
,rateQuantity varchar(15)
,doseCheckQuantity varchar(20)
);DROP TABLE IF EXISTS v_exposure;

CREATE VIEW v_exposure AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,e.routeCode AS routeCode,e.exposureLevel AS exposureLevel,e.exposureModeCode AS exposureModeCode from ((exposure e join act a on((a.id = e.id))) left join actrelationship ar on((ar.idA = a.id)));
DROP TABLE IF EXISTS v_livingsubject;

CREATE VIEW v_livingsubject AS select e.id AS id,e.classCode AS classCode,e.determinerCode AS determinerCode,e.code AS code,e.codeVocId AS codeVocId,e.codeOrig AS codeOrig,e.codeOrigVocId AS codeOrigVocId,e.quantity AS quantity,e.name AS name,e.desc_1 AS desc,e.statusCode AS statusCode,l.administrativeGenderCode AS administrativeGenderCode,e.creationTime AS creationTime,e.modificationTime AS modificationTime,l.birthTime AS birthTime,l.birthTimeTolerance AS birthTimeTolerance,l.deceasedInd AS deceasedInd,l.deceasedTime AS deceasedTime from (entity e join livingsubject l on((e.id = l.id)));
DROP TABLE IF EXISTS v_observation;

CREATE VIEW v_observation AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,o.valueNegationInd AS valueNegationInd,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,aov.valueST AS valueST,aov.valuePQ AS valuePQ,aov.units AS units,aov.referenceRangeMin AS referenceRangeMin,aov.referenceRangeMax AS referenceRangeMax,aoic.code AS interpretationCode,amc.code AS methodCode,amc.title AS methodCodeTitle,amc.codeVocId AS methodCodeVocId,amc.codeOrig AS methodCodeOrig,amc.codeOrigVocId AS methodCodeOrigVocId,atsc.code AS targetSiteCode,atsc.title AS targetSiteCodeTitle,atsc.codeVocId AS targetSiteCodeVocId,atsc.codeOrig AS targetSiteCodeOrig,atsc.codeOrigVocId AS targetSiteCodeOrigVocId from ((((((observation o join act a on((a.id = o.id))) left join actrelationship ar on((ar.idA = a.id))) left join actobservationvalues aov on((o.id = aov.id))) left join actobservationinterpretationcode aoic on((aoic.id = o.id))) left join acttargetsitecode atsc on((atsc.id = o.id))) left join actmethodcode amc on((amc.id = o.id)));
DROP TABLE IF EXISTS v_person;

CREATE VIEW v_person AS select e.id AS id,e.classCode AS classCode,e.determinerCode AS determinerCode,e.code AS code,e.codeVocId AS codeVocId,e.codeOrig AS codeOrig,e.codeOrigVocId AS codeOrigVocId,e.quantity AS quantity,e.name AS name,e.desc_1 AS desc,e.statusCode AS statusCode,l.administrativeGenderCode AS administrativeGenderCode,e.creationTime AS creationTime,e.modificationTime AS modificationTime,l.birthTime AS birthTime,l.birthTimeTolerance AS birthTimeTolerance,l.deceasedInd AS deceasedInd,l.deceasedTime AS deceasedTime,p.raceCode AS raceCode,p.name AS personName,p.surname AS personSurname from ((entity e join livingsubject l on((e.id = l.id))) join person p on((p.id = e.id)));
DROP TABLE IF EXISTS v_procedure;

CREATE VIEW v_procedure AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,apasc.code AS approachSiteCode,apasc.title AS approachSiteCodeTitle,apasc.codeVocId AS approachSiteCodeVocId,apasc.codeOrig AS approachSiteCodeOrig,apasc.codeOrigVocId AS approachSiteCodeOrigVocId,amc.code AS methodCode,amc.title AS methodCodeTitle,amc.codeVocId AS methodCodeVocId,amc.codeOrig AS methodCodeOrig,amc.codeOrigVocId AS methodCodeOrigVocId,atsc.code AS targetSiteCode,atsc.title AS targetSiteCodeTitle,atsc.codeVocId AS targetSiteCodeVocId,atsc.codeOrig AS targetSiteCodeOrig,atsc.codeOrigVocId AS targetSiteCodeOrigVocId from (((((procedures p join act a on((p.id = a.id))) left join actrelationship ar on((ar.idA = a.id))) left join actprocedureapproachsitecode apasc on((apasc.id = p.id))) left join acttargetsitecode atsc on((atsc.id = p.id))) left join actmethodcode amc on((p.id = amc.id)));
DROP TABLE IF EXISTS v_substanceadministration;

CREATE VIEW v_substanceadministration AS select a.id AS id,a.classCode AS classCode,a.moodCode AS moodCode,a.code AS code,a.codeVocId AS codeVocId,a.codeOrig AS codeOrig,a.codeOrigVocId AS codeOrigVocId,a.actionNegationInd AS actionNegationInd,a.title AS title,a.text AS text,a.statusCode AS statusCode,a.effectiveTime AS effectiveTime,a.activityTime AS activityTime,a.availabilityTime AS availabilityTime,a.creationTime AS creationTime,a.modificationTime AS modificationTime,ar.idB AS clinicalTrialId,apasc.code AS approachSiteCode,atsc.title AS approachSiteCodeTitle,apasc.codeVocId AS approachSiteCodeVocId,apasc.codeOrig AS approachSiteCodeOrig,apasc.codeOrigVocId AS approachSiteCodeOrigVocId,amc.code AS methodCode,amc.title AS methodCodeTitle,amc.codeVocId AS methodCodeVocId,amc.codeOrig AS methodCodeOrig,amc.codeOrigVocId AS methodCodeOrigVocId,atsc.code AS targetSiteCode,atsc.title AS targetSiteCodeTitle,atsc.codeVocId AS targetSiteCodeVocId,atsc.codeOrig AS targetSiteCodeOrig,atsc.codeOrigVocId AS targetSiteCodeOrigVocId,s.routeCode AS routeCode,s.doseQuantity AS doseQuantity,s.rateQuantity AS rateQuantity,s.doseCheckQuantity AS doseCheckQuantity from ((((((substanceadministration s join procedures p on((s.id = p.id))) join act a on((p.id = a.id))) left join actrelationship ar on((ar.idA = a.id))) left join actprocedureapproachsitecode apasc on((apasc.id = p.id))) left join acttargetsitecode atsc on((atsc.id = p.id))) left join actmethodcode amc on((p.id = amc.id)));


ALTER TABLE actmethodcode
  ADD CONSTRAINT observation_actmethodcode_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT procedures_actmethodcode_fk FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE actobservationinterpretationcode
  ADD CONSTRAINT observation_actobservationinterpretationcode_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE actobservationvalues
  ADD CONSTRAINT observation_actobservationvalues_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE actprocedureapproachsitecode
  ADD CONSTRAINT procedures_actprocedureapproachsitecode_fk FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE actrelationship
  ADD CONSTRAINT has_act_actrelationship_a FOREIGN KEY (idA) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT has_act_actrelationship_b FOREIGN KEY (idB) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE acttargetsitecode
  ADD CONSTRAINT observation_acttargetsitecode_fk FOREIGN KEY (id) REFERENCES observation (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT procedures_acttargetsitecode_fk FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE exposure
  ADD CONSTRAINT isa_exposure_act FOREIGN KEY (id) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE livingsubject
  ADD CONSTRAINT isa_livingsubject_entity FOREIGN KEY (id) REFERENCES entity (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE observation
  ADD CONSTRAINT isa_observation_act FOREIGN KEY (id) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE participation
  ADD CONSTRAINT has_act_participation FOREIGN KEY (actId) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT has_role_participation FOREIGN KEY (entityId, roleId) REFERENCES role (entityId, id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE person
  ADD CONSTRAINT isa_person_livingsubject FOREIGN KEY (id) REFERENCES livingsubject (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE procedures
  ADD CONSTRAINT isa_procedure_act FOREIGN KEY (id) REFERENCES act (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE role
  ADD CONSTRAINT has_entity_role FOREIGN KEY (entityId) REFERENCES entity (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE substanceadministration
  ADD CONSTRAINT isa_substanceadministration_procedure FOREIGN KEY (id) REFERENCES procedures (id) ON DELETE NO ACTION ON UPDATE NO ACTION;
