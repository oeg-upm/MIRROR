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
# Dumping data for table 'hospede'
#

LOCK TABLES "hospede" WRITE;
/*!40000 ALTER TABLE "hospede" DISABLE KEYS;*/
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('1',87,197,'PASSAPORTE','PS482132',NULL,NULL,NULL,'MARCELA CARRACCI','F','1907-11-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('2',33,327,'CPF','154490008',NULL,NULL,NULL,'BRUNA SANTIAGO','F','1980-05-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('3',33,539,'CPF','519523680',NULL,NULL,NULL,'DOUGLAS DE ALMEIDA PERES','M','1931-02-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('4',33,48,'CPF','787701869',NULL,NULL,NULL,'VINÍCIOS DE MORAIS COLUENE','M','1959-11-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('5',33,135,'CPF','952252913',NULL,NULL,NULL,'BRUNA NAKAMURA','F','1923-01-23',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('6',33,546,'CPF','154612007',NULL,NULL,NULL,'LUÍZA COLUENE','F','1906-11-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('7',33,321,'CPF','198486207',NULL,NULL,NULL,'CLÁUDIO GONZALEZ','M','1935-11-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('8',33,596,'CPF','790320414',NULL,NULL,NULL,'TAÍS DE SIQUEIRA GUIMARAES','F','1937-01-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('9',33,278,'CPF','135750746',NULL,NULL,NULL,'BRUNA CARRACCI','F','1971-11-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('10',120,451,'RNE','RN352650',NULL,NULL,NULL,'DOUGLAS DE MORAIS SATO','M','1925-01-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('11',33,581,'CPF','111180728',NULL,NULL,NULL,'DOUGLAS PERES','M','1925-04-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('12',33,465,'CPF','183906680',NULL,NULL,NULL,'CARLOS ALBERTO DA SILVA MOURA','M','1981-05-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('13',33,276,'CPF','953393435',NULL,NULL,NULL,'SANDRO RODRIGUES','M','1911-04-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('14',60,472,'PASSAPORTE','PS642815',NULL,NULL,NULL,'HENRIQUE SOUZA','M','1930-02-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('15',33,143,'CPF','703480133',NULL,NULL,NULL,'LUÍZA SUOUSKI','F','1904-12-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('16',33,337,'CPF','128388501',NULL,NULL,NULL,'TAÍS DE GODOI GUIMARAES','F','1921-08-02',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('17',33,92,'CPF','201457955',NULL,NULL,NULL,'LARÍSSA GONZALEZ','F','1968-05-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('18',33,370,'CPF','514058462',NULL,NULL,NULL,'IGOR RODRIGUES','M','1973-04-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('19',33,468,'CPF','920187181',NULL,NULL,NULL,'JOÃO HARMUCH','M','1907-08-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('20',33,215,'CPF','539121345',NULL,NULL,NULL,'CARLA PETRELLI','F','1910-01-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('21',33,250,'CPF','919755798',NULL,NULL,NULL,'AGNALDO FILISMINO','M','1970-11-30',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('22',61,303,'PASSAPORTE','PS772113',NULL,NULL,NULL,'EMERSON MYAMOTO','M','1914-08-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('23',33,209,'CPF','608273823',NULL,NULL,NULL,'LARÍSSA GONZALEZ','F','1908-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('24',33,495,'CPF','316231806',NULL,NULL,NULL,'RUBENS SANTIAGO','M','1962-04-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('25',33,114,'CPF','517436886',NULL,NULL,NULL,'EMERSON GUIMARAES','M','1945-12-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('26',33,178,'CPF','242855933',NULL,NULL,NULL,'EMERSON SOUZA','M','1986-02-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('27',33,168,'CPF','249141375',NULL,NULL,NULL,'ALINE CARRACCI','F','1930-09-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('28',33,413,'CPF','374812474',NULL,NULL,NULL,'AGNALDO TASSI','M','1956-05-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('29',33,518,'CPF','105502851',NULL,NULL,NULL,'LUÍZ HENRIQUE DE ALMEIDA FERNANDEZ','M','1919-06-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('30',30,226,'PASSAPORTE','PS538375',NULL,NULL,NULL,'MARCOS SUOUSKI','M','1905-10-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('31',33,125,'CPF','509030731',NULL,NULL,NULL,'MARCOS ALVES','M','1962-01-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('32',33,77,'CPF','491658920',NULL,NULL,NULL,'SANDRO SATO','M','1957-03-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('33',33,524,'CPF','147853359',NULL,NULL,NULL,'LUÍZ HENRIQUE DE SIQUEIRA CARRACCI','M','1960-02-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('34',33,490,'CPF','141336258',NULL,NULL,NULL,'LUÍZA DA SILVA RODRIGUES','F','1930-09-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('35',91,296,'PASSAPORTE','PS389892',NULL,NULL,NULL,'CARLOS ALBERTO DE GODOI LOPES','M','1942-08-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('36',33,510,'CPF','872848346',NULL,NULL,NULL,'TAÍS DA SILVA FILISMINO','F','1985-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('37',33,375,'CPF','411396954',NULL,NULL,NULL,'CARLOS ALBERTO DE ALMEIDA PERES','M','1957-08-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('38',241,413,'PASSAPORTE','PS648041',NULL,NULL,NULL,'DOUGLAS SUOUSKI','M','1918-07-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('39',241,477,'PASSAPORTE','PS475504',NULL,NULL,NULL,'JÚNIOR MOURA','M','1972-07-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('40',33,442,'CPF','154428579',NULL,NULL,NULL,'MARCELA SANTIAGO','F','1941-02-26',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('41',33,365,'CPF','848683120',NULL,NULL,NULL,'CARLA SATO','F','1972-07-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('42',97,357,'RNE','RN46643',NULL,NULL,NULL,'CARLOS ALBERTO SATO','M','1985-09-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('43',188,440,'PASSAPORTE','PS584430',NULL,NULL,NULL,'ALINE MOURA','F','1937-12-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('44',121,212,'PASSAPORTE','PS476550',NULL,NULL,NULL,'EMERSON DE GODOI PERES','M','1910-01-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('45',33,307,'CPF','133997120',NULL,NULL,NULL,'AMANDA DE SIQUEIRA HARMUCH','F','1911-04-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('46',96,158,'PASSAPORTE','PS30438',NULL,NULL,NULL,'MARCOS FERNANDEZ','M','1948-05-30',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('47',33,292,'CPF','487164446',NULL,NULL,NULL,'DANIEL RODRIGUES','M','1977-01-23',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('48',33,419,'CPF','840722323',NULL,NULL,NULL,'LUÍZ HENRIQUE FERNANDEZ','M','1967-06-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('49',33,100,'CPF','381647798',NULL,NULL,NULL,'JOSÉ DE ALMEIDA MYAMOTO','M','1905-10-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('50',33,207,'CPF','646376408',NULL,NULL,NULL,'MARCELO NAKAMURA','M','1973-12-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('51',33,496,'CPF','633707611',NULL,NULL,NULL,'DANIEL CARRACCI','M','1951-09-21',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('52',33,261,'CPF','936779509',NULL,NULL,NULL,'JOSÉ SOUZA','M','1965-01-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('53',33,514,'CPF','155226111',NULL,NULL,NULL,'BRUNA SATO','F','1967-06-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('54',33,469,'CPF','642500601',NULL,NULL,NULL,'WILSON MOURA','M','1922-05-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('55',33,204,'CPF','996299928',NULL,NULL,NULL,'CARLOS DE ALMEIDA SANTIAGO','M','1966-12-04',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('56',33,264,'CPF','137216093',NULL,NULL,NULL,'IGOR PETRELLI','M','1996-09-02',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('57',75,592,'RNE','RN124426',NULL,NULL,NULL,'OLGA SUOUSKI','F','1940-07-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('58',197,77,'RNE','RN617302',NULL,NULL,NULL,'SANDRO PETRELLI','M','1980-05-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('59',244,59,'PASSAPORTE','PS645776',NULL,NULL,NULL,'BRUNA WAY FUNG','F','1905-04-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('60',33,428,'CPF','110965997',NULL,NULL,NULL,'EMERSON WAY FUNG','M','1954-08-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('61',207,450,'PASSAPORTE','PS748090',NULL,NULL,NULL,'MARCELO MYAMOTO','M','1946-08-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('62',77,323,'RNE','RN31326',NULL,NULL,NULL,'JOÃO DE MORAIS BANDERAS','M','1910-09-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('63',33,589,'CPF','488373108',NULL,NULL,NULL,'RUBENS WAY FUNG','M','1909-08-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('64',238,40,'RNE','RN308262',NULL,NULL,NULL,'JESSÍCA MOURA','F','1985-09-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('65',33,149,'CPF','100737769',NULL,NULL,NULL,'JOÃO DE SIQUEIRA SANTIAGO','M','1993-02-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('66',22,45,'PASSAPORTE','PS36219',NULL,NULL,NULL,'DOUGLAS BANDERAS','M','1941-02-26',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('67',33,302,'CPF','149062077',NULL,NULL,NULL,'EMERSON GONZALEZ','M','1985-09-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('68',33,331,'CPF','150968289',NULL,NULL,NULL,'MARIA SUOUSKI','F','1918-07-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('69',170,83,'PASSAPORTE','PS101022',NULL,NULL,NULL,'AGNALDO DE ANDRADE FERNANDEZ','M','1976-01-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('70',131,404,'PASSAPORTE','PS126261',NULL,NULL,NULL,'TATIANE GUIMARAES','F','1946-08-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('71',108,588,'PASSAPORTE','PS283393',NULL,NULL,NULL,'DANIEL NAKAMURA','M','1937-12-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('72',33,198,'CPF','187745655',NULL,NULL,NULL,'DANIEL PERES','M','1996-08-31',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('73',33,47,'CPF','100249409',NULL,NULL,NULL,'ANA PAULA DE ANDRADE CARRACCI','F','1905-04-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('74',33,80,'CPF','100065966',NULL,NULL,NULL,'MARCELO DA SILVA TASSI','M','1974-06-23',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('75',230,74,'PASSAPORTE','PS84806',NULL,NULL,NULL,'IGOR FERNANDEZ','M','1931-12-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('76',33,379,'CPF','280000308',NULL,NULL,NULL,'DANIEL CARRACCI','M','1918-02-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('77',33,344,'CPF','438070738',NULL,NULL,NULL,'GABRIELA DE ANDRADE NAKAMURA','F','1926-10-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('78',33,38,'CPF','127444129',NULL,NULL,NULL,'GABRIELA GONZALEZ','F','1993-06-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('79',33,379,'CPF','215703539',NULL,NULL,NULL,'EMERSON SANTIAGO','M','1951-09-21',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('80',55,41,'PASSAPORTE','PS435721',NULL,NULL,NULL,'JESSÍCA FILISMINO','F','1996-01-30',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('81',197,134,'PASSAPORTE','PS384524',NULL,NULL,NULL,'CARLOS ALBERTO SOUZA','M','1907-11-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('82',33,291,'CPF','129157684',NULL,NULL,NULL,'GABRIELA PETRELLI','F','1978-04-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('83',33,121,'CPF','337871560',NULL,NULL,NULL,'MARCELA SOUZA','F','1937-01-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('84',33,536,'CPF','255482622',NULL,NULL,NULL,'JÚNIOR FILISMINO','M','1994-01-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('85',33,481,'CPF','832106432',NULL,NULL,NULL,'CARLOS ALBERTO GUIMARAES','M','1933-12-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('86',33,324,'CPF','346994702',NULL,NULL,NULL,'AMANDA DE SIQUEIRA SANTIAGO','F','1973-12-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('87',33,483,'CPF','182702309',NULL,NULL,NULL,'LUIZ DE ANDRADE SATO','M','1935-02-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('88',33,230,'CPF','129649254',NULL,NULL,NULL,'WILSON ALVES','M','1967-07-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('89',85,383,'PASSAPORTE','PS266494',NULL,NULL,NULL,'EMERSON DE ANDRADE PERES','M','1945-12-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('90',220,317,'RNE','RN625042',NULL,NULL,NULL,'JÚNIOR TASSI','M','1905-04-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('91',33,597,'CPF','953221439',NULL,NULL,NULL,'TATIANE WAY FUNG','F','1946-08-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('92',33,196,'CPF','137478097',NULL,NULL,NULL,'OLGA NAKAMURA','F','1939-08-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('93',33,404,'CPF','115705104',NULL,NULL,NULL,'TATIANE BANDERAS','F','1941-09-24',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('94',33,140,'CPF','129005040',NULL,NULL,NULL,'RODRIGO DA SILVA SANTIAGO','M','1976-09-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('95',33,227,'CPF','111274514',NULL,NULL,NULL,'DANIEL GONZALEZ','M','1992-09-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('96',64,21,'PASSAPORTE','PS397433',NULL,NULL,NULL,'MARIA DA SILVA SATO','F','1930-02-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('97',33,523,'CPF','282640423',NULL,NULL,NULL,'AGNALDO DE ALMEIDA PETRELLI','M','1935-02-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('98',33,285,'CPF','113652145',NULL,NULL,NULL,'LUÍZA GUIMARAES','F','1946-08-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('99',33,556,'CPF','415730754',NULL,NULL,NULL,'SANDRO MOURA','M','1942-03-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('100',33,160,'CPF','150628752',NULL,NULL,NULL,'VANESSA BANDERAS','F','1997-10-24',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('101',33,92,'CPF','105112349',NULL,NULL,NULL,'DANIEL FILISMINO','M','1980-02-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('102',33,493,'CPF','751685487',NULL,NULL,NULL,'LARÍSSA WAY FUNG','F','1986-08-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('103',33,44,'CPF','144703920',NULL,NULL,NULL,'SANDRO DE ALMEIDA GONZALEZ','M','1910-01-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('104',216,376,'RNE','RN139910',NULL,NULL,NULL,'DOUGLAS DA SILVA FERNANDEZ','M','1957-12-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('105',33,83,'CPF','955783768',NULL,NULL,NULL,'GÉSSICA LOPES','F','1915-11-29',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('106',33,587,'CPF','512404626',NULL,NULL,NULL,'CARLOS MYAMOTO','M','1986-02-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('107',132,241,'PASSAPORTE','PS50399',NULL,NULL,NULL,'WILSON PERES','M','1957-02-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('108',150,356,'PASSAPORTE','PS511697',NULL,NULL,NULL,'JESSÍCA GUIMARAES','F','1978-12-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('109',33,218,'CPF','152482814',NULL,NULL,NULL,'MARCELO SATO','M','1972-04-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('110',33,78,'CPF','602808620',NULL,NULL,NULL,'DÉBORA DE MORAIS COLUENE','F','1957-02-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('111',69,82,'PASSAPORTE','PS334160',NULL,NULL,NULL,'DANIEL DA SILVA PERES','M','1946-08-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('112',33,539,'CPF','207981738',NULL,NULL,NULL,'JOSÉ GUIMARAES','M','1924-08-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('113',33,97,'CPF','756679221',NULL,NULL,NULL,'JONATHAN COLUENE','M','1976-01-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('114',33,375,'CPF','155654578',NULL,NULL,NULL,'JÚNIOR FERNANDEZ','M','1906-01-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('115',33,99,'CPF','423105309',NULL,NULL,NULL,'EMERSON ALVES','M','1954-07-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('116',228,36,'RNE','RN122331',NULL,NULL,NULL,'MARCELA BANDERAS','F','1919-12-29',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('117',209,33,'RNE','RN395745',NULL,NULL,NULL,'TIAGO MYAMOTO','M','1919-10-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('118',231,378,'PASSAPORTE','PS784140',NULL,NULL,NULL,'LARÍSSA DE ALMEIDA COLUENE','F','1965-01-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('119',100,178,'PASSAPORTE','PS150497',NULL,NULL,NULL,'DÉBORA SOUZA','F','1937-12-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('120',14,323,'RNE','RN569669',NULL,NULL,NULL,'GÉSSICA ALVES','F','1996-09-02',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('121',33,590,'CPF','100492857',NULL,NULL,NULL,'RUBENS DE GODOI CARRACCI','M','1922-04-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('122',33,298,'CPF','140320948',NULL,NULL,NULL,'WILSON NAKAMURA','M','1932-09-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('123',33,546,'CPF','242021077',NULL,NULL,NULL,'TATIANE DE GODOI SOUZA','F','1952-06-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('124',33,486,'CPF','132421362',NULL,NULL,NULL,'MARIA LOPES','F','1951-01-21',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('125',64,267,'PASSAPORTE','PS488195',NULL,NULL,NULL,'HENRIQUE MYAMOTO','M','1952-06-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('126',33,90,'CPF','103814995',NULL,NULL,NULL,'TIAGO SUOUSKI','M','1968-03-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('127',33,175,'CPF','827857882',NULL,NULL,NULL,'JOSÉ ALVES','M','1928-10-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('128',33,190,'CPF','118768121',NULL,NULL,NULL,'AGNALDO FERNANDEZ','M','1930-04-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('129',94,568,'RNE','RN357416',NULL,NULL,NULL,'WILSON DE SIQUEIRA SATO','M','1980-01-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('130',160,594,'PASSAPORTE','PS666907',NULL,NULL,NULL,'MARCELO ALVES','M','1968-04-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('131',46,509,'PASSAPORTE','PS464643',NULL,NULL,NULL,'DÉBORA LOPES','F','1907-11-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('132',33,290,'CPF','477440929',NULL,NULL,NULL,'DOUGLAS GONZALEZ','M','1974-11-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('133',33,106,'CPF','126042422',NULL,NULL,NULL,'CARLA BANDERAS','F','1943-06-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('134',33,536,'CPF','136822460',NULL,NULL,NULL,'LUANA MYAMOTO','F','1954-08-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('135',33,130,'CPF','873210068',NULL,NULL,NULL,'JESSÍCA DE MORAIS GUIMARAES','F','1986-08-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('136',33,519,'CPF','364485498',NULL,NULL,NULL,'JONATHAN DE SIQUEIRA ALVES','M','1915-11-29',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('137',82,487,'RNE','RN480865',NULL,NULL,NULL,'RODRIGO SANTIAGO','M','1952-02-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('138',33,263,'CPF','472895506',NULL,NULL,NULL,'DÉBORA ALVES','F','1971-06-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('139',33,146,'CPF','485041359',NULL,NULL,NULL,'ANA PAULA WAY FUNG','F','1985-09-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('140',33,413,'CPF','149527143',NULL,NULL,NULL,'CARLOS GONZALEZ','M','1959-04-02',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('141',45,62,'PASSAPORTE','PS194075',NULL,NULL,NULL,'JONATHAN DA SILVA FERNANDEZ','M','1971-06-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('142',246,421,'RNE','RN761259',NULL,NULL,NULL,'CARLOS ALBERTO LOPES','M','1940-02-14',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('143',33,292,'CPF','627649907',NULL,NULL,NULL,'TATIANE DE SIQUEIRA SOUZA','F','1914-08-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('144',33,171,'CPF','106517298',NULL,NULL,NULL,'BRUNA DE GODOI SATO','F','1935-11-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('145',3,519,'PASSAPORTE','PS220707',NULL,NULL,NULL,'ALINE WAY FUNG','F','1981-01-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('146',136,473,'RNE','RN555380',NULL,NULL,NULL,'LUÍZ HENRIQUE HARMUCH','M','1980-01-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('147',33,419,'CPF','151331010',NULL,NULL,NULL,'MARIA PETRELLI','F','1926-10-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('148',33,64,'CPF','798989273',NULL,NULL,NULL,'JÚNIOR SANTIAGO','M','1961-05-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('149',146,186,'RNE','RN100862',NULL,NULL,NULL,'LARÍSSA FILISMINO','F','1921-11-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('150',33,470,'CPF','958446572',NULL,NULL,NULL,'VANESSA SUOUSKI','F','1994-01-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('151',33,290,'CPF','154763806',NULL,NULL,NULL,'CARLA GONZALEZ','F','1921-08-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('152',33,293,'CPF','323522566',NULL,NULL,NULL,'VANESSA GONZALEZ','F','1932-09-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('153',33,160,'CPF','100500147',NULL,NULL,NULL,'AMANDA DE SIQUEIRA COLUENE','F','1944-06-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('154',33,579,'CPF','672694325',NULL,NULL,NULL,'VINÍCIOS ALVES','M','1972-07-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('155',33,371,'CPF','113251159',NULL,NULL,NULL,'JONATHAN DA SILVA SOUZA','M','1970-03-31',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('156',59,241,'PASSAPORTE','PS187780',NULL,NULL,NULL,'DANIEL LOPES','M','1974-05-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('157',15,362,'PASSAPORTE','PS149393',NULL,NULL,NULL,'JOSÉ PERES','M','1986-08-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('158',33,412,'CPF','251685637',NULL,NULL,NULL,'AMANDA PERES','F','1936-11-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('159',33,341,'CPF','648930959',NULL,NULL,NULL,'LUÍZA SANTIAGO','F','1985-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('160',33,406,'CPF','759522562',NULL,NULL,NULL,'CLÁUDIO TASSI','M','1923-09-26',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('161',33,493,'CPF','106521680',NULL,NULL,NULL,'DÉBORA MYAMOTO','F','1975-07-23',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('162',32,46,'RNE','RN630694',NULL,NULL,NULL,'JOSÉ LOPES','M','1924-08-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('163',216,153,'PASSAPORTE','PS618091',NULL,NULL,NULL,'JONATHAN MYAMOTO','M','1959-11-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('164',33,341,'CPF','470961340',NULL,NULL,NULL,'JOÃO DE ANDRADE HARMUCH','M','1914-08-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('165',33,85,'CPF','761451646',NULL,NULL,NULL,'TIAGO PERES','M','1938-08-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('166',33,186,'CPF','148460166',NULL,NULL,NULL,'AGNALDO BANDERAS','M','1989-03-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('167',115,604,'PASSAPORTE','PS734309',NULL,NULL,NULL,'WILSON FERNANDEZ','M','1949-10-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('168',39,302,'PASSAPORTE','PS410443',NULL,NULL,NULL,'LARÍSSA SATO','F','1931-02-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('169',33,606,'CPF','103037605',NULL,NULL,NULL,'OLGA PERES','F','1996-03-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('170',33,43,'CPF','115621164',NULL,NULL,NULL,'VINÍCIOS WAY FUNG','M','1947-04-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('171',161,525,'RNE','RN253624',NULL,NULL,NULL,'DANIEL DE MORAIS SOUZA','M','1968-05-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('172',33,274,'CPF','841549725',NULL,NULL,NULL,'WILSON SUOUSKI','M','1908-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('173',33,351,'CPF','371611662',NULL,NULL,NULL,'DOUGLAS TASSI','M','1985-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('174',33,491,'CPF','123361343',NULL,NULL,NULL,'JONATHAN SATO','M','1942-08-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('175',33,501,'CPF','965051115',NULL,NULL,NULL,'CARLOS MYAMOTO','M','1937-01-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('176',33,490,'CPF','600591266',NULL,NULL,NULL,'DANIEL WAY FUNG','M','1940-02-14',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('177',33,508,'CPF','143301975',NULL,NULL,NULL,'RODRIGO GONZALEZ','M','1928-11-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('178',33,119,'CPF','147487943',NULL,NULL,NULL,'HELLEN HARMUCH','F','1989-07-21',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('179',33,253,'CPF','128919269',NULL,NULL,NULL,'BRUNA MOURA','F','1937-01-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('180',98,210,'RNE','RN566850',NULL,NULL,NULL,'CARLA HARMUCH','F','1986-08-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('181',33,481,'CPF','331325289',NULL,NULL,NULL,'IGOR SANTIAGO','M','1928-10-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('182',33,305,'CPF','125843106',NULL,NULL,NULL,'MARCOS PERES','M','1941-11-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('183',77,88,'PASSAPORTE','PS178336',NULL,NULL,NULL,'EMERSON MOURA','M','1981-01-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('184',26,533,'RNE','RN449964',NULL,NULL,NULL,'RUBENS SOUZA','M','1917-08-04',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('185',81,337,'PASSAPORTE','PS166531',NULL,NULL,NULL,'JOSÉ DE ANDRADE PERES','M','1920-07-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('186',25,134,'RNE','RN522319',NULL,NULL,NULL,'GABRIELA DA SILVA PETRELLI','F','1966-05-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('187',33,474,'CPF','115346185',NULL,NULL,NULL,'DOUGLAS SUOUSKI','M','1977-09-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('188',33,363,'CPF','387546551',NULL,NULL,NULL,'LUÍZ HENRIQUE LOPES','M','1944-06-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('189',48,283,'PASSAPORTE','PS624653',NULL,NULL,NULL,'MARCELO ALVES','M','1976-09-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('190',33,367,'CPF','167773120',NULL,NULL,NULL,'IGOR MYAMOTO','M','1954-07-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('191',33,256,'CPF','116378389',NULL,NULL,NULL,'CARLOS ALBERTO SUOUSKI','M','1976-01-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('192',197,493,'PASSAPORTE','PS613668',NULL,NULL,NULL,'VANESSA DA SILVA PERES','F','1975-05-31',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('193',33,513,'CPF','881577016',NULL,NULL,NULL,'RODRIGO DE SIQUEIRA MOURA','M','1940-02-14',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('194',33,485,'CPF','145265991',NULL,NULL,NULL,'LUÍZA MYAMOTO','F','1959-11-10',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('195',27,178,'PASSAPORTE','PS94879',NULL,NULL,NULL,'LUÍZ HENRIQUE PETRELLI','M','1906-01-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('196',211,536,'PASSAPORTE','PS97376',NULL,NULL,NULL,'MARCELO CARRACCI','M','1908-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('197',33,141,'CPF','107581804',NULL,NULL,NULL,'IGOR MYAMOTO','M','1993-02-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('198',33,483,'CPF','107946596',NULL,NULL,NULL,'WILSON PETRELLI','M','1947-10-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('199',33,329,'CPF','103792010',NULL,NULL,NULL,'DOUGLAS MYAMOTO','M','1918-02-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('200',105,394,'PASSAPORTE','PS235999',NULL,NULL,NULL,'JESSÍCA DE MORAIS SUOUSKI','F','1985-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('201',174,459,'PASSAPORTE','PS667905',NULL,NULL,NULL,'CARLOS SOUZA','M','1921-08-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('202',33,343,'CPF','123626044',NULL,NULL,NULL,'MARIA SATO','F','1930-04-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('203',33,403,'CPF','123399388',NULL,NULL,NULL,'RODRIGO BANDERAS','M','1944-06-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('204',182,440,'PASSAPORTE','PS736270',NULL,NULL,NULL,'VINÍCIOS PETRELLI','M','1997-04-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('205',33,477,'CPF','741089678',NULL,NULL,NULL,'DÉBORA DA SILVA FERNANDEZ','F','1917-08-04',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('206',33,21,'CPF','902351288',NULL,NULL,NULL,'ITAMAR SANTIAGO','M','1992-09-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('207',33,113,'CPF','102835928',NULL,NULL,NULL,'CLÁUDIO CARRACCI','M','1927-10-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('208',33,235,'CPF','444015021',NULL,NULL,NULL,'OLGA TASSI','F','1943-10-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('209',33,152,'CPF','152603809',NULL,NULL,NULL,'TATIANE SUOUSKI','F','1962-04-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('210',33,352,'CPF','128843405',NULL,NULL,NULL,'GÉSSICA MOURA','F','1936-02-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('211',130,350,'PASSAPORTE','PS434332',NULL,NULL,NULL,'HENRIQUE DE MORAIS FILISMINO','M','1927-10-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('212',103,472,'RNE','RN742477',NULL,NULL,NULL,'LUANA ALVES','F','1909-01-04',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('213',33,185,'CPF','154823367',NULL,NULL,NULL,'OLGA SANTIAGO','F','1910-07-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('214',33,271,'CPF','104452516',NULL,NULL,NULL,'JONATHAN SATO','M','1974-11-16',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('215',33,323,'CPF','693190975',NULL,NULL,NULL,'RUBENS PETRELLI','M','1952-02-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('216',33,571,'CPF','136342124',NULL,NULL,NULL,'ALINE BANDERAS','F','1909-08-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('217',33,553,'CPF','145030608',NULL,NULL,NULL,'CARLOS ALBERTO HARMUCH','M','1963-06-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('218',33,205,'CPF','113481285',NULL,NULL,NULL,'AMANDA PETRELLI','F','1962-04-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('219',33,72,'CPF','606165209',NULL,NULL,NULL,'TAÍS SOUZA','F','1974-06-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('220',33,465,'CPF','729675561',NULL,NULL,NULL,'ANA GONZALEZ','F','1927-10-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('221',33,177,'CPF','179281964',NULL,NULL,NULL,'CARLA RODRIGUES','F','1930-04-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('222',33,482,'CPF','115467677',NULL,NULL,NULL,'GABRIELA LOPES','F','1963-09-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('223',33,124,'CPF','688605779',NULL,NULL,NULL,'JONATHAN WAY FUNG','M','1925-09-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('224',23,300,'PASSAPORTE','PS271994',NULL,NULL,NULL,'ITAMAR NAKAMURA','M','1943-12-24',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('225',33,232,'CPF','358382169',NULL,NULL,NULL,'ITAMAR GONZALEZ','M','1918-11-15',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('226',33,285,'CPF','106705674',NULL,NULL,NULL,'TAÍS WAY FUNG','F','1971-06-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('227',33,223,'CPF','153186135',NULL,NULL,NULL,'HENRIQUE GONZALEZ','M','1933-03-30',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('228',105,352,'RNE','RN89743',NULL,NULL,NULL,'HELLEN SATO','F','1941-09-24',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('229',33,584,'CPF','567378728',NULL,NULL,NULL,'LUIZ WAY FUNG','M','1982-04-26',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('230',33,126,'CPF','966531669',NULL,NULL,NULL,'MARIA SOUZA','F','1921-08-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('231',33,492,'CPF','138701974',NULL,NULL,NULL,'GABRIELA SUOUSKI','F','1925-01-15',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('232',33,293,'CPF','719877356',NULL,NULL,NULL,'WILSON DE ANDRADE COLUENE','M','1945-12-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('233',33,284,'CPF','960844266',NULL,NULL,NULL,'VANESSA DE ANDRADE RODRIGUES','F','1920-07-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('234',33,465,'CPF','156541279',NULL,NULL,NULL,'IGOR SUOUSKI','M','1930-02-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('235',1,379,'PASSAPORTE','PS586938',NULL,NULL,NULL,'JONATHAN DE GODOI BANDERAS','M','1948-05-30',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('236',33,100,'CPF','820878993',NULL,NULL,NULL,'MARCELA DE ANDRADE PETRELLI','F','1954-07-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('237',33,517,'CPF','127727916',NULL,NULL,NULL,'GÉSSICA HARMUCH','F','1956-05-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('238',33,332,'CPF','432526361',NULL,NULL,NULL,'RUBENS DE ALMEIDA RODRIGUES','M','1966-05-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('239',11,254,'PASSAPORTE','PS515648',NULL,NULL,NULL,'JOSÉ SATO','M','1949-10-20',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('240',181,418,'PASSAPORTE','PS61864',NULL,NULL,NULL,'JESSÍCA RODRIGUES','F','1980-05-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('241',33,3,'CPF','778032232',NULL,NULL,NULL,'VINÍCIOS MYAMOTO','M','1930-02-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('242',33,227,'CPF','137988955',NULL,NULL,NULL,'LUANA FILISMINO','F','1963-09-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('243',33,437,'CPF','739411476',NULL,NULL,NULL,'MARIA SANTIAGO','F','1967-06-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('244',33,75,'CPF','548883899',NULL,NULL,NULL,'JOSÉ SANTIAGO','M','1920-07-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('245',33,574,'CPF','262763215',NULL,NULL,NULL,'TATIANE SOUZA','F','1921-11-01',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('246',33,243,'CPF','463675290',NULL,NULL,NULL,'LARÍSSA DE SIQUEIRA SANTIAGO','F','1937-05-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('247',33,107,'CPF','103793890',NULL,NULL,NULL,'JÚNIOR GUIMARAES','M','1926-10-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('248',33,563,'CPF','137350238',NULL,NULL,NULL,'MARCELA HARMUCH','F','1916-07-21',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('249',40,113,'PASSAPORTE','PS194667',NULL,NULL,NULL,'GÉSSICA DE MORAIS PETRELLI','F','1953-11-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('250',33,7,'CPF','265676426',NULL,NULL,NULL,'TIAGO COLUENE','M','1935-02-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('251',33,131,'CPF','133887421',NULL,NULL,NULL,'CARLA SATO','F','1985-09-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('252',33,466,'CPF','361722633',NULL,NULL,NULL,'ANA PAULA DE ALMEIDA FILISMINO','F','1939-01-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('253',33,466,'CPF','144100530',NULL,NULL,NULL,'OLGA ALVES','F','1980-02-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('254',160,132,'RNE','RN692923',NULL,NULL,NULL,'RODRIGO RODRIGUES','M','1928-10-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('255',33,277,'CPF','132373308',NULL,NULL,NULL,'GÉSSICA NAKAMURA','F','1969-04-02',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('256',33,320,'CPF','108440300',NULL,NULL,NULL,'EMERSON BANDERAS','M','1980-05-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('257',33,198,'CPF','150852876',NULL,NULL,NULL,'ANA PAULA PETRELLI','F','1971-06-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('258',33,46,'CPF','147555489',NULL,NULL,NULL,'LUÍZA DE SIQUEIRA FERNANDEZ','F','1904-12-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('259',33,314,'CPF','416640023',NULL,NULL,NULL,'CARLOS ALBERTO FILISMINO','M','1941-11-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('260',33,275,'CPF','352676999',NULL,NULL,NULL,'LUIZ DE ALMEIDA ALVES','M','1937-05-17',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('261',33,303,'CPF','150687134',NULL,NULL,NULL,'MARCOS CARRACCI','M','1939-07-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('262',33,81,'CPF','130642366',NULL,NULL,NULL,'LARÍSSA CARRACCI','F','1973-04-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('263',47,139,'RNE','RN100575',NULL,NULL,NULL,'LUÍZ HENRIQUE LOPES','M','1928-10-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('264',33,434,'CPF','132885515',NULL,NULL,NULL,'ANA MYAMOTO','F','1948-05-30',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('265',33,298,'CPF','804206166',NULL,NULL,NULL,'CARLOS ALBERTO SATO','M','1962-01-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('266',33,388,'CPF','801191104',NULL,NULL,NULL,'HELLEN PERES','F','1981-01-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('267',214,221,'PASSAPORTE','PS225606',NULL,NULL,NULL,'MARIA FILISMINO','F','1913-01-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('268',33,199,'CPF','126974357',NULL,NULL,NULL,'JESSÍCA PETRELLI','F','1932-09-03',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('269',33,500,'CPF','124918698',NULL,NULL,NULL,'TATIANE SOUZA','F','1931-02-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('270',33,411,'CPF','138570144',NULL,NULL,NULL,'CARLOS ALBERTO FERNANDEZ','M','1939-06-13',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('271',33,593,'CPF','253000071',NULL,NULL,NULL,'DÉBORA FILISMINO','F','1965-07-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('272',214,489,'RNE','RN226621',NULL,NULL,NULL,'JÚNIOR SOUZA','M','1921-08-08',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('273',110,252,'PASSAPORTE','PS135093',NULL,NULL,NULL,'JOSÉ NAKAMURA','M','1931-12-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('274',33,160,'CPF','786016293',NULL,NULL,NULL,'AMANDA SANTIAGO','F','1976-01-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('275',33,234,'CPF','142273789',NULL,NULL,NULL,'TAÍS CARRACCI','F','1985-04-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('276',245,296,'PASSAPORTE','PS270433',NULL,NULL,NULL,'LUÍZ HENRIQUE GONZALEZ','M','1909-08-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('277',212,400,'RNE','RN362856',NULL,NULL,NULL,'JOÃO CARRACCI','M','1933-08-15',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('278',33,38,'CPF','128860158',NULL,NULL,NULL,'ITAMAR DA SILVA FILISMINO','M','1981-01-24',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('279',108,201,'PASSAPORTE','PS604024',NULL,NULL,NULL,'BRUNA FILISMINO','F','1966-01-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('280',33,318,'CPF','961121209',NULL,NULL,NULL,'DÉBORA DE MORAIS SOUZA','F','1910-07-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('281',33,370,'CPF','841390444',NULL,NULL,NULL,'TAÍS FILISMINO','F','1944-06-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('282',210,461,'PASSAPORTE','PS359409',NULL,NULL,NULL,'JONATHAN DE MORAIS TASSI','M','1985-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('283',208,285,'RNE','RN786475',NULL,NULL,NULL,'BRUNA SUOUSKI','F','1931-02-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('284',33,53,'CPF','425404906',NULL,NULL,NULL,'ALINE RODRIGUES','F','1904-12-12',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('285',161,577,'RNE','RN258660',NULL,NULL,NULL,'DÉBORA MYAMOTO','F','1957-12-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('286',180,439,'PASSAPORTE','PS514726',NULL,NULL,NULL,'GÉSSICA SUOUSKI','F','1997-04-27',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('287',33,67,'CPF','998632002',NULL,NULL,NULL,'JÚNIOR DE SIQUEIRA FERNANDEZ','M','1935-02-19',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('288',33,465,'CPF','153566722',NULL,NULL,NULL,'DANIEL ALVES','M','1917-01-18',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('289',225,66,'PASSAPORTE','PS462987',NULL,NULL,NULL,'LARÍSSA TASSI','F','1930-04-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('290',33,194,'CPF','307302311',NULL,NULL,NULL,'AMANDA LOPES','F','1986-08-25',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('291',7,262,'PASSAPORTE','PS98067',NULL,NULL,NULL,'JÚNIOR SANTIAGO','M','1986-06-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('292',39,158,'RNE','RN256757',NULL,NULL,NULL,'CLÁUDIO FILISMINO','M','1993-06-22',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('293',33,162,'CPF','802590106',NULL,NULL,NULL,'JÚNIOR ALVES','M','1965-01-09',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('294',33,439,'CPF','154352724',NULL,NULL,NULL,'WILSON PERES','M','1952-02-11',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('295',33,144,'CPF','112168156',NULL,NULL,NULL,'DÉBORA WAY FUNG','F','1910-09-05',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('296',25,94,'RNE','RN668521',NULL,NULL,NULL,'MARIA MYAMOTO','F','1915-03-26',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('297',33,282,'CPF','142047667',NULL,NULL,NULL,'MARCELO TASSI','M','1908-03-28',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('298',233,229,'RNE','RN126478',NULL,NULL,NULL,'RUBENS PERES','M','1986-06-06',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('299',33,18,'CPF','204803351',NULL,NULL,NULL,'LUÍZA ALVES','F','1988-08-07',NULL,NULL,NULL,1);
INSERT INTO "hospede" ("id_hospede", "id_pais", "id_profissao", "identificacao_tipo", "identificacao", "data_emissao_passaporte", "data_expiracao_passaporte", "tipo_passaporte", "nome", "sexo", "data_nascimento", "telefone", "email", "observacao", "ativo") VALUES
	('300',33,13,'CPF','573865783',NULL,NULL,NULL,'MARCELA DE MORAIS COLUENE','F','1975-05-31',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE "hospede" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
