# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             hotel_manager
# Server version:       5.5.16-log
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Dumping data for table 'acomodacao'
#

LOCK TABLES "acomodacao" WRITE;
/*!40000 ALTER TABLE "acomodacao" DISABLE KEYS;*/
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('1','QUARTO',1,NULL,2,'90',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('2','QUARTO',2,NULL,1,'50',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('3','SUÍTE',1,NULL,1,'90',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('4','SUÍTE',2,NULL,2,'120',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('5','SUÍTE',3,NULL,1,'95',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('6','QUARTO',3,NULL,2,'140',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('7','QUARTO',4,NULL,2,'115',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('8','SALA',1,NULL,10,'300',NULL,'INATIVO');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('9','SALA',2,NULL,15,'350',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('10','APARTAMENTO',1,NULL,3,'200',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('11','APARTAMENTO',2,NULL,1,'180',NULL,'DISPONÍVEL');
INSERT INTO "acomodacao" ("id_acomodacao", "tipo", "numero", "andar", "pessoas", "valor_diaria", "observacao", "situacao") VALUES
	('12','QUARTO',5,NULL,3,'1.65',NULL,'DISPONÍVEL');
/*!40000 ALTER TABLE "acomodacao" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
