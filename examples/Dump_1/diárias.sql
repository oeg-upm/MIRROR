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
# Dumping data for table 'diaria'
#

LOCK TABLES "diaria" WRITE;
/*!40000 ALTER TABLE "diaria" DISABLE KEYS;*/
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('1','13','1','2014-04-18 00:32:26','2014-09-20 00:08:00','90','9','0','33',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('2','163','2','2014-05-16 00:49:24','2014-05-21 00:31:09','50','25','0','3',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('3','31','10','2014-01-05 00:55:41','2014-10-28 00:17:12','200','130','0','15',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('4','28','1','2014-08-07 00:25:27','2014-10-26 00:09:52','90','110','0','10',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('5','67','10','2014-05-26 00:19:38','2014-05-29 00:46:10','200','173','0','1',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('6','111','4','2014-02-26 00:23:43','2014-06-08 00:14:18','120','1','0','13',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('7','151','8','2014-07-06 00:44:55','2014-08-25 00:12:02','300','152','0','7',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('8','109','1','2014-10-31 00:56:38','2014-10-31 00:12:29','90','42','0','17',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('9','203','3','2014-07-23 00:52:29','2014-09-24 00:19:04','90','193','0','35',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('10','239','12','2014-08-30 00:12:36','2014-10-21 00:36:11','1.65','77','0','5',1,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('11','169','9','2014-06-26 00:29:59','2014-07-02 00:27:59','350','167','0','31',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('12','120','7','2014-02-26 00:42:49','2014-05-16 00:41:06','115','57','0','15',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('13','271','3','2014-01-05 00:41:46','2014-09-24 00:39:39','90','43','0','4',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('14','66','11','2014-07-23 00:35:01','2014-10-18 00:14:29','180','91','0','22',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('15','96','3','2014-06-15 00:06:28','2014-07-04 00:47:32','90','128','0','33',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('16','266','6','2014-02-20 00:40:03','2014-05-10 00:12:57','140','15','0','30',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('17','292','5','2014-03-06 00:15:39','2014-09-24 00:59:52','95','41','0','2',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('18','88','5','2014-02-10 00:33:16','2014-03-14 00:36:27','95','75','0','2',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('19','76','1','2014-03-19 00:31:09','2014-10-15 00:51:28','90','146','0','3',1,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('20','40','10','2014-05-24 00:42:48','2014-10-15 00:09:18','200','127','0','28',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('21','130','5','2014-05-11 00:11:49','2014-09-24 00:55:37','95','9','0','18',1,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('22','37','7','2014-06-05 00:07:37','2014-09-21 00:44:26','115','65','0','16',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('23','289','11','2014-04-08 00:54:01','2014-09-07 00:36:36','180','70','0','37',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('24','263','9','2014-10-10 00:04:39','2014-10-26 00:36:54','350','169','0','15',1,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('25','144','10','2014-04-27 00:22:54','2014-05-10 00:38:57','200','20','0','22',1,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('26','171','11','2014-03-22 00:47:53','2014-04-07 00:32:57','180','70','0','4',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('27','179','4','2014-07-20 00:19:54','2014-08-10 00:47:06','120','186','0','12',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('28','142','1','2014-10-05 00:22:44','2014-10-09 00:25:27','90','197','0','26',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('29','103','11','2014-08-18 00:18:32','2014-10-31 00:32:37','180','158','0','13',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('30','272','3','2014-02-17 00:03:18','2014-02-26 00:59:53','90','165','0','5',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('31','119','5','2014-04-18 00:10:23','2014-04-24 00:55:16','95','17','0','27',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('32','40','11','2014-10-09 00:09:08','2014-11-03 00:31:28','180','33','0','10',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('33','260','5','2014-03-29 00:46:02','2014-10-10 00:57:46','95','102','0','27',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('34','177','3','2014-06-10 00:29:38','2014-09-09 00:46:58','90','86','0','32',2,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('35','81','5','2014-01-05 00:51:56','2014-03-19 00:03:56','95','146','0','18',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('36','17','2','2014-09-22 00:42:42','2014-09-23 00:31:03','50','91','0','28',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('37','8','3','2014-08-25 00:30:11','2014-10-01 00:22:44','90','77','0','32',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('38','48','8','2014-03-13 00:42:26','2014-10-06 00:28:42','300','54','0','37',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('39','198','2','2014-07-17 00:39:06','2014-10-28 00:28:12','50','79','0','23',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('40','57','9','2014-02-20 00:33:52','2014-06-09 00:10:36','350','38','0','17',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('41','136','10','2014-04-24 00:19:02','2014-09-01 00:52:57','200','92','0','26',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('42','273','10','2014-10-13 00:54:59','2014-10-24 00:34:24','200','24','0','35',2,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('43','210','2','2014-01-25 00:37:10','2014-09-28 00:34:20','50','1','0','12',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('44','35','1','2014-05-11 00:02:04','2014-08-20 00:18:42','90','91','0','14',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('45','30','1','2014-08-05 00:33:03','2014-08-26 00:42:45','90','182','0','17',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('46','102','8','2014-01-30 00:28:53','2014-02-05 00:36:45','300','124','0','10',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('47','80','8','2014-03-08 00:08:09','2014-09-03 00:35:36','300','112','0','1',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('48','230','1','2014-03-20 00:52:47','2014-10-18 00:05:03','90','156','0','26',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('49','221','3','2014-08-26 00:10:29','2014-08-26 00:16:13','90','165','0','13',1,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('50','13','3','2014-06-21 00:45:04','2014-09-14 00:09:04','90','100','0','2',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('51','259','2','2014-08-05 00:27:22','2014-08-14 00:00:45','50','139','0','17',1,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('52','215','9','2014-10-15 00:12:43','2014-10-28 00:35:41','350','68','0','36',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('53','110','4','2014-03-06 00:32:14','2014-10-04 00:12:25','120','85','0','20',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('54','275','6','2014-10-11 00:39:29','2014-10-26 00:19:11','140','125','0','7',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('55','59','9','2014-07-20 00:59:03','2014-09-14 00:41:25','350','100','0','17',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('56','102','8','2014-10-10 00:41:57','2014-11-03 00:01:25','300','4','0','1',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('57','183','3','2014-02-26 00:27:10','2014-08-20 00:43:11','90','48','0','2',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('58','182','3','2014-08-23 00:19:47','2014-10-21 00:31:07','90','121','0','19',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('59','62','5','2014-10-25 00:38:45','2014-10-28 00:31:53','95','144','0','0',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('60','207','6','2014-08-14 00:48:29','2014-09-07 00:04:13','140','186','0','17',1,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('61','252','12','2014-04-18 00:43:42','2014-10-31 00:48:30','1.65','171','0','34',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('62','230','12','2014-09-20 00:35:54','2014-10-29 00:38:00','1.65','74','0','38',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('63','266','3','2014-05-31 00:03:21','2014-07-22 00:02:05','90','1','0','37',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('64','125','10','2014-02-26 00:29:42','2014-04-01 00:29:53','200','1','0','21',2,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('65','160','12','2014-09-22 00:09:17','2014-10-23 00:26:45','1.65','153','0','19',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('66','123','7','2014-01-25 00:13:58','2014-09-24 00:21:42','115','22','0','19',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('67','241','9','2014-07-18 00:30:17','2014-10-03 00:34:12','350','67','0','39',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('68','173','1','2014-01-11 00:35:25','2014-05-24 00:29:36','90','139','0','40',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('69','10','6','2014-02-27 00:33:18','2014-09-26 00:40:02','140','134','0','14',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('70','26','9','2014-05-08 00:02:04','2014-09-05 00:09:07','350','131','0','33',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('71','263','10','2014-03-13 00:32:20','2014-09-21 00:24:27','200','84','0','35',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('72','223','4','2014-09-21 00:53:31','2014-10-13 00:41:56','120','164','0','40',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('73','207','8','2014-07-08 00:58:02','2014-08-18 00:55:05','300','138','0','27',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('74','2','4','2014-10-10 00:20:02','2014-10-28 00:27:17','120','54','0','40',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('75','162','1','2014-07-05 00:21:36','2014-09-21 00:52:18','90','56','0','31',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('76','158','11','2014-10-06 00:56:20','2014-10-11 00:35:11','180','23','0','33',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('77','172','5','2014-05-13 00:25:30','2014-05-16 00:22:36','95','122','0','36',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('78','253','2','2014-02-12 00:25:56','2014-03-11 00:10:48','50','121','0','19',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('79','48','7','2014-08-05 00:57:47','2014-09-09 00:05:27','115','113','0','22',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('80','166','9','2014-04-01 00:33:14','2014-05-11 00:01:44','350','97','0','13',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('81','155','4','2014-07-13 00:57:57','2014-09-14 00:20:30','120','162','0','1',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('82','295','11','2014-05-17 00:41:58','2014-06-18 00:38:10','180','17','0','20',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('83','117','6','2014-10-13 00:36:57','2014-10-29 00:58:13','140','1','0','4',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('84','160','10','2014-09-12 00:51:44','2014-09-23 00:27:51','200','147','0','11',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('85','166','12','2014-04-22 00:37:49','2014-04-29 00:39:49','1.65','85','0','6',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('86','240','3','2014-01-19 00:11:59','2014-02-06 00:46:41','90','58','0','5',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('87','176','12','2014-06-18 00:58:05','2014-09-07 00:50:23','1.65','59','0','38',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('88','1','8','2014-01-30 00:15:49','2014-10-04 00:38:04','300','76','0','0',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('89','56','12','2014-04-29 00:28:23','2014-10-01 00:33:44','1.65','78','0','11',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('90','273','11','2014-05-17 00:45:50','2014-10-05 00:59:12','180','128','0','10',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('91','182','12','2014-01-20 00:02:51','2014-05-29 00:25:37','1.65','199','0','27',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('92','58','7','2014-07-02 00:10:50','2014-09-05 00:28:47','115','171','0','34',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('93','219','7','2014-01-30 00:24:11','2014-08-06 00:32:31','115','100','0','35',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('94','98','12','2014-06-10 00:55:31','2014-06-17 00:34:35','1.65','21','0','32',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('95','261','7','2014-06-03 00:21:33','2014-07-16 00:37:29','115','9','0','14',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('96','31','9','2014-08-06 00:21:42','2014-09-07 00:36:32','350','192','0','39',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('97','175','10','2014-03-20 00:57:38','2014-06-23 00:52:34','200','100','0','35',2,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('98','42','12','2014-10-03 00:02:28','2014-10-10 00:57:01','1.65','126','0','12',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('99','160','8','2014-02-26 00:23:35','2014-03-24 00:43:50','300','95','0','7',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('100','178','8','2014-08-05 00:21:18','2014-09-17 00:49:51','300','18','0','38',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('101','135','10','2014-04-08 00:32:28','2014-07-06 00:16:32','200','151','0','38',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('102','106','5','2014-02-23 00:49:49','2014-04-22 00:20:19','95','40','0','40',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('103','233','3','2014-08-01 00:04:51','2014-08-15 00:29:17','90','39','0','21',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('104','199','10','2014-04-01 00:18:35','2014-09-07 00:56:31','200','156','0','3',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('105','242','2','2014-06-17 00:20:55','2014-09-05 00:50:30','50','33','0','12',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('106','171','4','2014-10-16 00:19:11','2014-10-31 00:24:04','120','9','0','1',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('107','182','7','2014-05-08 00:34:45','2014-07-13 00:25:12','115','73','0','22',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('108','12','8','2014-05-24 00:41:03','2014-07-05 00:34:33','300','165','0','16',2,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('109','125','5','2014-07-03 00:22:46','2014-09-12 00:11:07','95','158','0','15',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('110','293','10','2014-08-25 00:23:28','2014-09-05 00:00:05','200','167','0','7',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('111','206','5','2014-06-08 00:48:39','2014-09-05 00:44:44','95','59','0','10',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('112','218','6','2014-08-18 00:05:53','2014-10-01 00:23:49','140','138','0','10',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('113','176','10','2014-02-10 00:47:47','2014-08-19 00:47:33','200','115','0','20',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('114','57','3','2014-10-29 00:20:29','2014-11-03 00:59:14','90','183','0','24',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('115','89','12','2014-03-11 00:55:07','2014-07-02 00:16:09','1.65','118','0','6',2,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('116','238','10','2014-01-28 00:16:27','2014-02-14 00:48:29','200','44','0','27',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('117','57','1','2014-09-03 00:27:05','2014-09-26 00:37:54','90','161','0','5',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('118','258','10','2014-09-28 00:15:33','2014-10-11 00:15:59','200','111','0','39',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('119','27','9','2014-10-16 00:48:28','2014-10-31 00:32:27','350','56','0','31',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('120','60','1','2014-07-02 00:51:52','2014-07-13 00:58:09','90','51','0','14',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('121','55','12','2014-06-09 00:57:24','2014-08-04 00:37:47','1.65','56','0','20',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('122','1','10','2014-06-26 00:48:47','2014-07-20 00:15:30','200','171','0','20',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('123','254','7','2014-05-24 00:21:40','2014-06-26 00:20:00','115','117','0','37',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('124','9','2','2014-04-01 00:33:28','2014-08-29 00:42:43','50','177','0','12',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('125','142','10','2014-02-22 00:16:57','2014-08-25 00:07:17','200','152','0','18',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('126','254','9','2014-01-29 00:32:01','2014-06-18 00:03:27','350','137','0','11',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('127','121','5','2014-03-26 00:47:57','2014-08-25 00:52:20','95','193','0','8',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('128','34','10','2014-07-30 00:11:55','2014-10-21 00:53:54','200','179','0','31',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('129','2','6','2014-01-13 00:26:34','2014-04-07 00:59:18','140','123','0','4',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('130','274','3','2014-05-02 00:38:00','2014-07-08 00:48:00','90','20','0','4',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('131','105','11','2014-03-16 00:17:32','2014-09-22 00:37:39','180','52','0','17',1,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('132','47','10','2014-05-20 00:01:36','2014-06-15 00:35:28','200','175','0','24',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('133','270','1','2014-06-13 00:36:23','2014-07-17 00:50:36','90','80','0','18',1,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('134','109','7','2014-08-04 00:50:28','2014-09-14 00:00:15','115','99','0','19',2,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('135','71','10','2014-06-21 00:24:03','2014-09-12 00:31:15','200','80','0','18',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('136','98','11','2014-03-06 00:13:57','2014-04-08 00:27:19','180','116','0','21',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('137','73','4','2014-02-06 00:37:15','2014-10-09 00:21:53','120','192','0','29',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('138','64','8','2014-08-05 00:13:46','2014-09-21 00:55:47','300','192','0','1',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('139','181','8','2014-10-29 00:54:12','2014-11-03 00:23:12','300','45','0','38',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('140','229','10','2014-09-21 00:37:01','2014-09-21 00:32:25','200','170','0','25',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('141','3','7','2014-09-12 00:54:44','2014-09-21 00:30:26','115','160','0','19',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('142','29','11','2014-02-12 00:01:24','2014-03-29 00:23:48','180','183','0','15',1,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('143','282','2','2014-04-10 00:01:38','2014-09-20 00:25:49','50','14','0','2',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('144','161','9','2014-08-29 00:41:16','2014-10-29 00:06:46','350','100','0','7',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('145','210','11','2014-08-12 00:17:29','2014-10-25 00:29:27','180','116','0','17',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('146','205','3','2014-07-08 00:13:54','2014-07-20 00:09:00','90','11','0','33',2,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('147','53','2','2014-04-10 00:30:19','2014-05-21 00:50:10','50','133','0','33',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('148','26','12','2014-03-29 00:48:20','2014-10-18 00:41:30','1.65','8','0','5',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('149','141','7','2014-07-17 00:38:56','2014-08-07 00:26:00','115','44','0','32',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('150','174','7','2014-07-18 00:24:34','2014-10-15 00:01:41','115','182','0','19',2,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('151','115','10','2014-08-23 00:52:17','2014-10-15 00:28:55','200','159','0','21',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('152','58','1','2014-10-06 00:28:05','2014-10-24 00:44:17','90','57','0','9',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('153','252','7','2014-04-24 00:24:52','2014-05-05 00:45:44','115','114','0','22',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('154','242','9','2014-03-11 00:41:36','2014-10-04 00:14:24','350','24','0','35',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('155','221','4','2014-01-05 00:54:35','2014-11-03 00:47:18','120','43','0','28',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('156','252','11','2014-05-20 00:04:54','2014-10-28 00:54:58','180','67','0','37',2,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('157','269','1','2014-05-26 00:48:42','2014-08-29 00:21:41','90','74','0','31',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('158','206','6','2014-04-10 00:51:18','2014-06-17 00:17:25','140','177','0','22',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('159','215','1','2014-06-26 00:25:12','2014-07-13 00:49:16','90','169','0','31',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('160','217','1','2014-01-22 00:35:49','2014-07-25 00:34:23','90','15','0','26',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('161','123','3','2014-05-11 00:40:05','2014-10-10 00:06:07','90','101','0','9',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('162','131','4','2014-01-20 00:20:03','2014-10-06 00:00:10','120','2','0','2',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('163','272','6','2014-09-26 00:24:11','2014-10-23 00:10:26','140','132','0','31',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('164','284','10','2014-06-15 00:08:32','2014-10-26 00:54:57','200','31','0','1',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('165','36','6','2014-08-14 00:38:58','2014-10-06 00:50:40','140','55','0','33',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('166','101','6','2014-05-02 00:45:26','2014-07-30 00:14:53','140','194','0','4',2,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('167','206','1','2014-08-29 00:24:27','2014-10-26 00:22:58','90','138','0','13',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('168','281','9','2014-01-29 00:14:21','2014-06-03 00:09:50','350','21','0','1',2,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('169','74','9','2014-05-01 00:17:41','2014-10-15 00:39:11','350','76','0','38',2,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('170','101','9','2014-04-24 00:56:50','2014-07-17 00:50:36','350','75','0','14',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('171','21','8','2014-02-20 00:55:39','2014-06-23 00:55:51','300','174','0','23',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('172','242','4','2014-11-03 00:44:59','2014-11-03 00:37:20','120','172','0','18',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('173','94','12','2014-08-29 00:02:26','2014-10-06 00:37:08','1.65','195','0','0',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('174','259','2','2014-09-23 00:40:06','2014-10-01 00:46:51','50','180','0','6',1,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('175','110','11','2014-05-13 00:05:36','2014-05-31 00:29:19','180','33','0','14',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('176','289','3','2014-04-08 00:45:36','2014-05-10 00:25:13','90','164','0','34',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('177','245','11','2014-09-24 00:51:38','2014-10-18 00:41:02','180','168','0','6',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('178','165','11','2014-05-19 00:56:51','2014-10-05 00:41:57','180','131','0','7',2,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('179','292','8','2014-08-06 00:41:15','2014-10-18 00:24:50','300','1','0','32',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('180','74','12','2014-04-22 00:26:01','2014-05-22 00:34:01','1.65','107','0','39',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('181','296','6','2014-01-20 00:23:02','2014-04-27 00:07:37','140','97','0','2',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('182','283','1','2014-02-03 00:54:57','2014-03-24 00:47:57','90','50','0','34',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('183','10','3','2014-07-23 00:48:18','2014-09-01 00:53:06','90','2','0','16',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('184','222','3','2014-02-10 00:59:26','2014-05-19 00:43:40','90','134','0','6',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('185','46','8','2014-07-20 00:03:41','2014-08-07 00:16:28','300','38','0','5',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('186','8','2','2014-02-27 00:35:46','2014-04-18 00:57:43','50','4','0','9',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('187','112','2','2014-05-16 00:25:10','2014-10-16 00:05:34','50','41','0','30',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('188','178','3','2014-01-07 00:02:20','2014-07-22 00:23:50','90','174','0','6',1,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('189','21','10','2014-03-22 00:10:18','2014-05-24 00:52:23','200','170','0','25',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('190','82','10','2014-07-08 00:51:48','2014-09-14 00:56:20','200','21','0','28',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('191','145','9','2014-05-01 00:09:14','2014-08-16 00:07:48','350','38','0','22',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('192','204','2','2014-06-05 00:55:08','2014-09-28 00:12:56','50','64','0','38',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('193','41','6','2014-03-26 00:53:51','2014-07-03 00:05:21','140','151','0','20',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('194','234','3','2014-09-09 00:05:36','2014-09-26 00:31:56','90','76','0','12',1,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('195','243','4','2014-10-18 00:26:26','2014-10-26 00:12:32','120','144','0','39',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('196','174','6','2014-01-13 00:13:01','2014-02-23 00:15:55','140','135','0','23',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('197','113','9','2014-07-03 00:41:39','2014-07-17 00:43:54','350','115','0','27',2,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('198','23','4','2014-03-14 00:01:19','2014-04-21 00:24:24','120','193','0','25',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('199','202','11','2014-08-04 00:55:43','2014-08-05 00:58:23','180','16','0','19',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('200','92','8','2014-09-12 00:31:56','2014-10-01 00:16:53','300','162','0','8',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('201','177','9','2014-05-19 00:46:32','2014-10-04 00:01:23','350','158','0','35',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('202','122','7','2014-02-03 00:36:20','2014-04-21 00:14:49','115','84','0','14',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('203','37','2','2014-10-31 00:48:38','2014-10-31 00:36:41','50','125','0','12',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('204','77','6','2014-08-29 00:29:17','2014-10-21 00:19:19','140','29','0','31',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('205','231','2','2014-10-13 00:30:15','2014-10-18 00:21:10','50','50','0','8',1,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('206','74','3','2014-07-13 00:59:54','2014-07-21 00:46:56','90','183','0','9',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('207','155','3','2014-06-03 00:49:42','2014-10-03 00:32:43','90','48','0','23',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('208','282','3','2014-01-16 00:37:22','2014-01-29 00:37:53','90','58','0','22',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('209','35','4','2014-07-22 00:32:31','2014-08-26 00:04:52','120','156','0','26',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('210','199','2','2014-08-26 00:10:38','2014-10-01 00:18:35','50','3','0','6',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('211','137','1','2014-09-05 00:29:57','2014-10-25 00:38:18','90','139','0','22',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('212','193','10','2014-07-10 00:28:38','2014-08-25 00:10:22','200','86','0','26',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('213','200','8','2014-05-11 00:56:10','2014-10-18 00:27:10','300','91','0','37',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('214','85','10','2014-04-18 00:32:23','2014-05-21 00:52:24','200','150','0','5',1,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('215','25','1','2014-02-26 00:30:08','2014-02-27 00:44:20','90','37','0','29',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('216','152','2','2014-03-13 00:22:16','2014-06-25 00:54:49','50','91','0','21',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('217','34','11','2014-10-21 00:47:11','2014-10-23 00:28:42','180','6','0','29',2,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('218','257','2','2014-08-25 00:39:16','2014-10-28 00:50:11','50','44','0','23',1,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('219','283','10','2014-06-10 00:00:02','2014-08-05 00:42:42','200','111','0','26',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('220','193','1','2014-06-25 00:56:15','2014-07-05 00:01:08','90','56','0','14',2,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('221','229','7','2014-04-12 00:57:26','2014-08-12 00:14:43','115','71','0','2',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('222','107','5','2014-03-26 00:30:23','2014-10-15 00:31:16','95','17','0','35',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('223','75','9','2014-07-02 00:35:01','2014-07-17 00:02:16','350','88','0','3',1,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('224','139','12','2014-02-05 00:43:06','2014-08-15 00:43:33','1.65','95','0','8',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('225','291','10','2014-06-21 00:28:53','2014-08-06 00:10:46','200','91','0','29',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('226','40','11','2014-09-03 00:15:36','2014-09-07 00:08:15','180','182','0','5',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('227','162','1','2014-05-15 00:17:38','2014-08-18 00:42:55','90','139','0','13',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('228','208','2','2014-01-13 00:51:37','2014-08-10 00:20:13','50','21','0','20',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('229','40','1','2014-07-05 00:11:02','2014-08-18 00:41:10','90','176','0','13',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('230','183','3','2014-09-09 00:58:08','2014-09-23 00:13:53','90','50','0','22',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('231','157','2','2014-08-25 00:13:39','2014-10-01 00:06:21','50','169','0','37',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('232','241','1','2014-08-20 00:03:13','2014-10-03 00:40:14','90','38','0','38',1,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('233','74','5','2014-05-10 00:04:37','2014-09-26 00:17:10','95','40','0','6',1,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('234','65','8','2014-08-23 00:37:18','2014-10-11 00:08:31','300','169','0','32',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('235','144','12','2014-07-18 00:39:52','2014-08-14 00:42:37','1.65','112','0','27',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('236','278','9','2014-03-16 00:20:03','2014-04-14 00:42:28','350','107','0','23',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('237','18','10','2014-05-25 00:59:03','2014-10-31 00:20:17','200','147','0','27',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('238','11','4','2014-02-22 00:45:00','2014-10-04 00:18:28','120','58','0','21',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('239','88','7','2014-09-23 00:21:34','2014-11-03 00:20:58','115','134','0','12',1,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('240','280','1','2014-05-01 00:13:06','2014-10-04 00:08:47','90','15','0','38',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('241','144','9','2014-02-06 00:53:10','2014-05-25 00:47:54','350','67','0','11',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('242','65','5','2014-07-04 00:50:33','2014-08-12 00:00:20','95','100','0','19',2,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('243','287','4','2014-09-01 00:37:06','2014-10-04 00:34:57','120','12','0','22',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('244','137','6','2014-01-29 00:27:03','2014-03-07 00:06:52','140','44','0','30',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('245','8','5','2014-08-04 00:12:09','2014-08-15 00:27:06','95','130','0','36',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('246','183','5','2014-07-02 00:50:04','2014-08-29 00:00:29','95','107','0','26',2,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('247','119','3','2014-05-13 00:55:03','2014-07-27 00:33:50','90','13','0','26',2,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('248','105','1','2014-07-03 00:58:41','2014-08-04 00:32:23','90','153','0','8',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('249','256','3','2014-06-08 00:06:03','2014-10-28 00:27:31','90','198','0','23',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('250','259','5','2014-07-16 00:22:09','2014-10-06 00:38:54','95','27','0','29',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('251','72','5','2014-10-16 00:19:01','2014-10-16 00:07:22','95','133','0','38',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('252','121','8','2014-08-12 00:02:16','2014-10-24 00:57:19','300','133','0','18',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('253','275','3','2014-08-06 00:15:22','2014-09-05 00:43:46','90','176','0','8',1,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('254','40','5','2014-06-08 00:26:54','2014-06-08 00:50:16','95','169','0','28',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('255','201','1','2014-01-20 00:23:05','2014-09-28 00:20:43','90','114','0','33',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('256','61','4','2014-02-01 00:45:30','2014-07-08 00:25:01','120','162','0','32',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('257','44','11','2014-08-19 00:58:16','2014-10-28 00:39:34','180','77','0','38',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('258','145','10','2014-10-05 00:38:57','2014-10-15 00:42:35','200','120','0','35',2,0,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('259','18','11','2014-07-05 00:01:44','2014-09-23 00:39:16','180','37','0','39',1,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('260','252','12','2014-05-06 00:38:16','2014-05-20 00:05:46','1.65','114','0','22',1,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('261','91','3','2014-06-21 00:06:01','2014-08-05 00:58:30','90','115','0','38',1,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('262','142','12','2014-05-26 00:24:49','2014-10-01 00:46:02','1.65','119','0','27',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('263','261','8','2014-02-26 00:14:08','2014-10-03 00:16:03','300','126','0','14',2,0,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('264','197','10','2014-03-03 00:10:52','2014-06-17 00:33:00','200','41','0','15',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('265','224','5','2014-10-04 00:31:25','2014-10-24 00:52:02','95','153','0','9',2,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('266','231','12','2014-02-03 00:08:19','2014-06-15 00:03:08','1.65','169','0','3',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('267','157','6','2014-03-13 00:06:27','2014-04-29 00:50:33','140','178','0','37',2,1,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('268','211','9','2014-07-23 00:39:28','2014-09-07 00:07:05','350','123','0','29',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('269','83','4','2014-09-28 00:36:17','2014-10-28 00:17:54','120','136','0','20',1,1,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('270','125','1','2014-04-21 00:09:05','2014-07-23 00:27:48','90','173','0','37',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('271','228','11','2014-09-20 00:12:21','2014-09-20 00:27:27','180','134','0','39',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('272','109','4','2014-04-21 00:37:51','2014-05-21 00:00:45','120','34','0','33',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('273','15','11','2014-02-20 00:32:01','2014-08-26 00:17:22','180','169','0','15',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('274','173','2','2014-04-12 00:03:48','2014-10-28 00:22:00','50','129','0','5',2,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('275','201','8','2014-04-18 00:24:30','2014-08-26 00:24:06','300','157','0','28',1,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('276','91','12','2014-09-03 00:42:51','2014-09-05 00:57:16','1.65','126','0','11',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('277','36','10','2014-04-04 00:49:35','2014-08-19 00:55:25','200','28','0','37',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('278','27','9','2014-09-24 00:42:04','2014-10-11 00:31:32','350','105','0','2',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('279','26','3','2014-09-07 00:22:20','2014-09-09 00:33:04','90','128','0','22',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('280','152','9','2014-08-29 00:03:28','2014-10-01 00:33:10','350','118','0','12',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('281','175','2','2014-02-20 00:36:38','2014-07-21 00:51:11','50','87','0','24',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('282','122','5','2014-01-31 00:34:59','2014-02-01 00:59:47','95','47','0','7',1,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('283','119','1','2014-07-18 00:42:19','2014-10-15 00:45:43','90','139','0','7',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('284','187','1','2014-03-03 00:13:20','2014-07-04 00:38:27','90','108','0','31',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('285','139','11','2014-03-19 00:06:53','2014-10-10 00:35:18','180','119','0','9',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('286','201','7','2014-04-07 00:16:22','2014-10-29 00:25:09','115','56','0','5',2,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('287','164','11','2014-10-10 00:37:36','2014-10-16 00:19:39','180','151','0','32',2,0,'Erro de preenchimento dos dados',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('288','117','2','2014-02-14 00:44:31','2014-10-23 00:25:21','50','178','0','7',1,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('289','143','7','2014-02-26 00:54:26','2014-08-26 00:50:32','115','98','0','37',1,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('290','276','3','2014-04-04 00:34:04','2014-05-31 00:52:32','90','135','0','30',2,0,NULL,NULL,'RESERVADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('291','211','12','2014-02-23 00:32:27','2014-07-21 00:08:24','1.65','15','0','39',2,0,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('292','131','12','2014-10-21 00:37:54','2014-10-25 00:21:47','1.65','184','0','21',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('293','115','6','2014-04-08 00:47:53','2014-09-05 00:21:45','140','84','0','0',2,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('294','126','11','2014-02-10 00:47:38','2014-07-21 00:53:02','180','7','0','21',2,0,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('295','227','12','2014-01-31 00:45:13','2014-06-03 00:05:14','1.65','35','0','25',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('296','24','8','2014-08-15 00:54:04','2014-09-28 00:00:49','300','73','0','31',2,1,NULL,NULL,'FINALIZADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('297','129','5','2014-05-11 00:37:24','2014-07-23 00:33:40','95','187','0','40',1,1,'Hóspede optou por outra acomodação',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('298','53','7','2014-03-14 00:49:08','2014-09-09 00:05:26','115','199','0','28',2,1,'Hóspede desistiu',NULL,'CANCELADO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('299','297','8','2014-08-16 00:59:19','2014-10-18 00:50:43','300','52','0','31',1,1,NULL,NULL,'ATIVO');
INSERT INTO "diaria" ("id_diaria", "id_hospede", "id_acomodacao", "data_entrada", "data_saida", "valor", "deposito", "acrescimo", "desconto", "adultos", "menores", "motivo_cancelamento", "observacao", "situacao") VALUES
	('300','224','10','2014-04-22 00:33:47','2014-07-23 00:38:18','200','100','0','24',1,1,NULL,NULL,'ATIVO');
/*!40000 ALTER TABLE "diaria" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
