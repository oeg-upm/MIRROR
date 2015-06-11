-- CREATE DATABASE `dbsapea` /*!40100 DEFAULT CHARACTER SET latin1 */;

DROP TABLE IF EXISTS `biometria`;
CREATE TABLE  `biometria` (
  `idBiometria` int(11) NOT NULL AUTO_INCREMENT,
  `idCultivo` int(11) DEFAULT NULL,
  `dtBiometria` date DEFAULT NULL,
  `amostragem` int(11) DEFAULT NULL,
  `mdPeso` decimal(10,3) DEFAULT NULL,
  `mdGanhoPeso` decimal(10,3) DEFAULT NULL,
  `mdGanhoPesoViveiro` decimal(10,3) DEFAULT NULL,
  `mdBiomassaEstimada` decimal(10,3) DEFAULT NULL,
  `mdComprimento` decimal(10,2) DEFAULT NULL,
  `perdaEstimada` decimal(10,2) DEFAULT NULL,
  `despesca` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idBiometria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `cultivo`;
CREATE TABLE  `cultivo` (
  `idCultivo` int(11) NOT NULL AUTO_INCREMENT,
  `idEspecie` int(11) DEFAULT NULL,
  `idViveiro` int(11) DEFAULT NULL,
  `dtAlevinagem` date DEFAULT NULL,
  `qtdPeixesViveiro` int(11) DEFAULT NULL,
  `mediaComprimento` decimal(10,2) DEFAULT NULL,
  `mediaPesoInd` decimal(10,3) DEFAULT NULL,
  `PesoTotalEstimado` decimal(10,3) DEFAULT NULL,
  `perdaEstimada` decimal(10,2) DEFAULT NULL,
  `ativo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idCultivo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `despesca`;
CREATE TABLE  `despesca` (
  `idDespesca` int(11) NOT NULL AUTO_INCREMENT,
  `idCultivo` int(11) DEFAULT NULL,
  `dtDespesca` date DEFAULT NULL,
  `qtdPeixes` int(11) DEFAULT NULL,
  `qtdPeixesHa` decimal(10,2) DEFAULT NULL,
  `mdPesoIndividual` decimal(10,3) DEFAULT NULL,
  `PesoViveiro` decimal(10,3) DEFAULT NULL,
  `mdComprimento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDespesca`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `especies`;
CREATE TABLE  `especies` (
  `idEspecie` int(11) NOT NULL AUTO_INCREMENT,
  `nmEspecie` varchar(45) DEFAULT NULL,
  `nmEspecieComum` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEspecie`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `produtor`;
CREATE TABLE  `produtor` (
  `idProdutor` int(11) NOT NULL AUTO_INCREMENT,
  `nmProdutor` varchar(45) DEFAULT NULL,
  `cpfProdutor` varchar(11) DEFAULT NULL,
  `telProdutor` varchar(20) DEFAULT NULL,
  `comunidade` varchar(45) DEFAULT NULL,
  `Cidade` varchar(45) DEFAULT NULL,
  `UF` char(2) DEFAULT NULL,
  PRIMARY KEY (`idProdutor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE  `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nmUsuario` varchar(45) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `idProdutor` int(11) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
DROP TABLE IF EXISTS `viveiro`;
CREATE TABLE  `viveiro` (
  `idViveiro` int(11) NOT NULL AUTO_INCREMENT,
  `idProdutor` int(11) DEFAULT NULL,
  `nmViveiro` varchar(45) DEFAULT NULL,
  `laminaAgua` decimal(10,2) DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `dtCadastro` date DEFAULT NULL,
  `obs` text,
  `ativo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idViveiro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `especies` (`nmEspecie`, `nmEspecieComum`) VALUES ('Oreochromis niloticus','Tilapia do Nilo');
INSERT INTO `especies` (`nmEspecie`, `nmEspecieComum`) VALUES ('Rhamdia quelen','Jundia');
INSERT INTO `especies` (`nmEspecie`, `nmEspecieComum`) VALUES ('Colossoma macropomum','Tambaqui');
INSERT INTO `especies` (`nmEspecie`, `nmEspecieComum`) VALUES ('Ctenopharyngodon idella.','Carpa Capim');
INSERT INTO `especies` (`nmEspecie`, `nmEspecieComum`) VALUES ('Hypophthalmichthys nobilis','Carpa Cabeçuda');
INSERT INTO `produtor` (`nmProdutor`,`cpfProdutor`,`telProdutor`,`comunidade`,`Cidade`,`UF`) VALUES ('João','12323434545','4454456789','Cedro','Guaira','PR');
INSERT INTO `produtor` (`nmProdutor`,`cpfProdutor`,`telProdutor`,`comunidade`,`Cidade`,`UF`) VALUES ('Nelson','32112332134','4422334543','Cedrinho','Guaratuba','PR');
INSERT INTO `produtor` (`nmProdutor`,`cpfProdutor`,`telProdutor`,`comunidade`,`Cidade`,`UF`) VALUES ('Alex','43212345676','4323456789','Lenhador','Toledo','PR');
INSERT INTO `produtor` (`nmProdutor`,`cpfProdutor`,`telProdutor`,`comunidade`,`Cidade`,`UF`) VALUES ('Ana','56787689075','4233211234','Oliveira','Ponta Grossa','PR');
INSERT INTO `produtor` (`nmProdutor`,`cpfProdutor`,`telProdutor`,`comunidade`,`Cidade`,`UF`) VALUES ('Paulo','12345678910','4436789087','Santo Angelo','Lapa','PR');
INSERT INTO `usuario` (`nmUsuario`, `cpf`, `dataNasc`, `idProdutor`, `login`, `senha`) VALUES ('Administrador','44444444444','23012',0,'admin','123');
INSERT INTO `usuario` (`nmUsuario`, `cpf`, `dataNasc`, `idProdutor`, `login`, `senha`) VALUES ('Usuário Teste','11111111111','23012',1,'teste','teste');
INSERT INTO `usuario` (`nmUsuario`, `cpf`, `dataNasc`, `idProdutor`, `login`, `senha`) VALUES ('Zeca','22222222222','23012',1,'zeca','zeca');
INSERT INTO `usuario` (`nmUsuario`, `cpf`, `dataNasc`, `idProdutor`, `login`, `senha`) VALUES ('Evaldo','33333333333','23012',2,'evaldo','evaldo');
INSERT INTO `usuario` (`nmUsuario`, `cpf`, `dataNasc`, `idProdutor`, `login`, `senha`) VALUES ('Diego','1234578910','23012',2,'diego','diego');
INSERT INTO `viveiro` (`idProdutor`, `nmViveiro`, `laminaAgua`, `area`, `dtCadastro`, `obs`, `ativo`) VALUES ('1','Tanque 1','0.60','85','23012','Tanque dos Fundos','1');
INSERT INTO `viveiro` (`idProdutor`, `nmViveiro`, `laminaAgua`, `area`, `dtCadastro`, `obs`, `ativo`) VALUES ('1','Tanque 2 ','0.55','80','23012','','1');
INSERT INTO `viveiro` (`idProdutor`, `nmViveiro`, `laminaAgua`, `area`, `dtCadastro`, `obs`, `ativo`) VALUES ('2','Viveiro 1','0.70','100','23012','Tanque Maior','1');
INSERT INTO `viveiro` (`idProdutor`, `nmViveiro`, `laminaAgua`, `area`, `dtCadastro`, `obs`, `ativo`) VALUES ('2','Viveiro 2','0.60','100','23012','','1');
INSERT INTO `viveiro` (`idProdutor`, `nmViveiro`, `laminaAgua`, `area`, `dtCadastro`, `obs`, `ativo`) VALUES ('1','Tanque Novo','0.80','100','23012','Tanque Principal','1');
INSERT INTO `despesca` (`idCultivo`, `dtDespesca`, `qtdPeixes`, `qtdPeixesHa`, `mdPesoIndividual`, `PesoViveiro`, `mdComprimento`) VALUES ('1','23012','950','950','0.800','680','20.9');
INSERT INTO `despesca` (`idCultivo`, `dtDespesca`, `qtdPeixes`, `qtdPeixesHa`, `mdPesoIndividual`, `PesoViveiro`, `mdComprimento`) VALUES ('2','23012','1650','1500','0.700','1050','20.7');
INSERT INTO `despesca` (`idCultivo`, `dtDespesca`, `qtdPeixes`, `qtdPeixesHa`, `mdPesoIndividual`, `PesoViveiro`, `mdComprimento`) VALUES ('3','23012','950','950','0.800','680','20.9');
INSERT INTO `despesca` (`idCultivo`, `dtDespesca`, `qtdPeixes`, `qtdPeixesHa`, `mdPesoIndividual`, `PesoViveiro`, `mdComprimento`) VALUES ('4','23012','1650','1500','0.700','1050','20.7');
INSERT INTO `despesca` (`idCultivo`, `dtDespesca`, `qtdPeixes`, `qtdPeixesHa`, `mdPesoIndividual`, `PesoViveiro`, `mdComprimento`) VALUES ('3','23012','950','950','0.800','680','20.9');
INSERT INTO `despesca` (`idCultivo`, `dtDespesca`, `qtdPeixes`, `qtdPeixesHa`, `mdPesoIndividual`, `PesoViveiro`, `mdComprimento`) VALUES ('4','23012','1650','1500','0.700','1050','20.7');
INSERT INTO `cultivo` (`idEspecie`, `idViveiro`, `dtAlevinagem`, `qtdPeixesViveiro`, `mediaComprimento`, `mediaPesoInd`, `PesoTotalEstimado`, `perdaEstimada`, `ativo`) VALUES ('1','1','23012','1000','5','0.050','50','0','1');
INSERT INTO `cultivo` (`idEspecie`, `idViveiro`, `dtAlevinagem`, `qtdPeixesViveiro`, `mediaComprimento`, `mediaPesoInd`, `PesoTotalEstimado`, `perdaEstimada`, `ativo`) VALUES ('1','2','23012','2000','5','0.050','100','0','1');
INSERT INTO `cultivo` (`idEspecie`, `idViveiro`, `dtAlevinagem`, `qtdPeixesViveiro`, `mediaComprimento`, `mediaPesoInd`, `PesoTotalEstimado`, `perdaEstimada`, `ativo`) VALUES ('1','3','23012','1500','5','0.050','100','0','1');
INSERT INTO `cultivo` (`idEspecie`, `idViveiro`, `dtAlevinagem`, `qtdPeixesViveiro`, `mediaComprimento`, `mediaPesoInd`, `PesoTotalEstimado`, `perdaEstimada`, `ativo`) VALUES ('1','4','23012','2000','5','0.050','100','0','1');
INSERT INTO `cultivo` (`idEspecie`, `idViveiro`, `dtAlevinagem`, `qtdPeixesViveiro`, `mediaComprimento`, `mediaPesoInd`, `PesoTotalEstimado`, `perdaEstimada`, `ativo`) VALUES ('1','5','23012','1500','5','0.050','100','0','1');
INSERT INTO `biometria` (`idCultivo`, `dtBiometria`, `amostragem`, `mdPeso`, `mdGanhoPeso`, `mdGanhoPesoViveiro`, `mdBiomassaEstimada`, `mdComprimento`, `perdaEstimada`, `despesca`) VALUES (NULL,NULL,'41750','15','0.100','0.050','50','100','10','0');
INSERT INTO `biometria` (`idCultivo`, `dtBiometria`, `amostragem`, `mdPeso`, `mdGanhoPeso`, `mdGanhoPesoViveiro`, `mdBiomassaEstimada`, `mdComprimento`, `perdaEstimada`, `despesca`) VALUES (NULL,NULL,'41752','30','0.143','0.093','50','286','10','0');
INSERT INTO `biometria` (`idCultivo`, `dtBiometria`, `amostragem`, `mdPeso`, `mdGanhoPeso`, `mdGanhoPesoViveiro`, `mdBiomassaEstimada`, `mdComprimento`, `perdaEstimada`, `despesca`) VALUES (NULL,NULL,'41757','15','0.190','0.140','140','190','13.4','2');
INSERT INTO `biometria` (`idCultivo`, `dtBiometria`, `amostragem`, `mdPeso`, `mdGanhoPeso`, `mdGanhoPesoViveiro`, `mdBiomassaEstimada`, `mdComprimento`, `perdaEstimada`, `despesca`) VALUES (NULL,NULL,'41758','30','0.250','0.200','200','250','13.8','1');
INSERT INTO `biometria` (`idCultivo`, `dtBiometria`, `amostragem`, `mdPeso`, `mdGanhoPeso`, `mdGanhoPesoViveiro`, `mdBiomassaEstimada`, `mdComprimento`, `perdaEstimada`, `despesca`) VALUES (NULL,NULL,'41764','15','0.255','0.205','350','255','15.32','1');
INSERT INTO `biometria` (`idCultivo`, `dtBiometria`, `amostragem`, `mdPeso`, `mdGanhoPeso`, `mdGanhoPesoViveiro`, `mdBiomassaEstimada`, `mdComprimento`, `perdaEstimada`, `despesca`) VALUES (NULL,NULL,'41765','30','0.300','0.250','360','300','15.44','2');

