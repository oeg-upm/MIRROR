CREATE TABLE biometria (
  idBiometria integer NOT NULL ,
  idCultivo integer DEFAULT NULL,
  dtBiometria varchar(19) DEFAULT NULL,
  amostragem integer DEFAULT NULL,
  mdPeso decimal(10,3) DEFAULT NULL,
  mdGanhoPeso decimal(10,3) DEFAULT NULL,
  mdGanhoPesoViveiro decimal(10,3) DEFAULT NULL,
  mdBiomassaEstimada decimal(10,3) DEFAULT NULL,
  mdComprimento decimal(10,2) DEFAULT NULL,
  perdaEstimada decimal(10,2) DEFAULT NULL,
  despesca integer DEFAULT NULL,
  PRIMARY KEY (idBiometria)
) ;

INSERT INTO biometria (idBiometria, idCultivo, dtBiometria, amostragem, mdPeso, mdGanhoPeso, mdGanhoPesoViveiro, mdBiomassaEstimada, mdComprimento, perdaEstimada, despesca) VALUES
(8, NULL, NULL, 41750, 15.000, 0.100, 0.050, 50.000, 100.00, 10.00, 0),
(9, NULL, NULL, 41752, 30.000, 0.143, 0.093, 50.000, 286.00, 10.00, 0),
(10, NULL, NULL, 41757, 15.000, 0.190, 0.140, 140.000, 190.00, 13.40, 2),
(11, NULL, NULL, 41758, 30.000, 0.250, 0.200, 200.000, 250.00, 13.80, 1),
(12, NULL, NULL, 41764, 15.000, 0.255, 0.205, 350.000, 255.00, 15.32, 1),
(13, NULL, NULL, 41765, 30.000, 0.300, 0.250, 360.000, 300.00, 15.44, 2);

CREATE TABLE cultivo (
  idCultivo integer NOT NULL ,
  idEspecie integer DEFAULT NULL,
  idViveiro integer DEFAULT NULL,
  dtAlevinagem varchar(19) DEFAULT NULL,
  qtdPeixesViveiro integer DEFAULT NULL,
  mediaComprimento decimal(10,2) DEFAULT NULL,
  mediaPesoInd decimal(10,3) DEFAULT NULL,
  PesoTotalEstimado decimal(10,3) DEFAULT NULL,
  perdaEstimada decimal(10,2) DEFAULT NULL,
  ativo integer DEFAULT '1',
  PRIMARY KEY (idCultivo)
) ;

INSERT INTO cultivo (idCultivo, idEspecie, idViveiro, dtAlevinagem, qtdPeixesViveiro, mediaComprimento, mediaPesoInd, PesoTotalEstimado, perdaEstimada, ativo) VALUES
(19, 1, 1, '0000-00-00', 1000, 5.00, 0.050, 50.000, 0.00, 1),
(20, 1, 2, '0000-00-00', 2000, 5.00, 0.050, 100.000, 0.00, 1),
(21, 1, 3, '0000-00-00', 1500, 5.00, 0.050, 100.000, 0.00, 1),
(22, 1, 4, '0000-00-00', 2000, 5.00, 0.050, 100.000, 0.00, 1),
(23, 1, 5, '0000-00-00', 1500, 5.00, 0.050, 100.000, 0.00, 1);

CREATE TABLE despesca (
  idDespesca integer NOT NULL ,
  idCultivo integer DEFAULT NULL,
  dtDespesca varchar(19) DEFAULT NULL,
  qtdPeixes integer DEFAULT NULL,
  qtdPeixesHa decimal(10,2) DEFAULT NULL,
  mdPesoIndividual decimal(10,3) DEFAULT NULL,
  PesoViveiro decimal(10,3) DEFAULT NULL,
  mdComprimento decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (idDespesca)
) ;

INSERT INTO despesca (idDespesca, idCultivo, dtDespesca, qtdPeixes, qtdPeixesHa, mdPesoIndividual, PesoViveiro, mdComprimento) VALUES
(12, 1, '0000-00-00', 950, 950.00, 0.800, 680.000, 20.90),
(13, 2, '0000-00-00', 1650, 1500.00, 0.700, 1050.000, 20.70),
(14, 3, '0000-00-00', 950, 950.00, 0.800, 680.000, 20.90),
(15, 4, '0000-00-00', 1650, 1500.00, 0.700, 1050.000, 20.70),
(16, 3, '0000-00-00', 950, 950.00, 0.800, 680.000, 20.90),
(17, 4, '0000-00-00', 1650, 1500.00, 0.700, 1050.000, 20.70);

CREATE TABLE especies (
  idEspecie integer NOT NULL ,
  nmEspecie varchar(45) DEFAULT NULL,
  nmEspecieComum varchar(45) DEFAULT NULL,
  PRIMARY KEY (idEspecie)
) ;

INSERT INTO especies (idEspecie, nmEspecie, nmEspecieComum) VALUES
(9, 'Oreochromis niloticus', 'Tilapia do Nilo'),
(10, 'Rhamdia quelen', 'Jundia'),
(11, 'Colossoma macropomum', 'Tambaqui'),
(12, 'Ctenopharyngodon idella.', 'Carpa Capim'),
(13, 'Hypophthalmichthys nobilis', 'Carpa Cabe?uda');

CREATE TABLE produtor (
  idProdutor integer NOT NULL ,
  nmProdutor varchar(45) DEFAULT NULL,
  cpfProdutor varchar(11) DEFAULT NULL,
  telProdutor varchar(20) DEFAULT NULL,
  comunidade varchar(45) DEFAULT NULL,
  Cidade varchar(45) DEFAULT NULL,
  UF char(2) DEFAULT NULL,
  PRIMARY KEY (idProdutor)
) ;

INSERT INTO produtor (idProdutor, nmProdutor, cpfProdutor, telProdutor, comunidade, Cidade, UF) VALUES
(11, 'Jo', '12323434545', '4454456789', 'Cedro', 'Guaira', 'PR'),
(12, 'Nelson', '32112332134', '4422334543', 'Cedrinho', 'Guaratuba', 'PR'),
(13, 'Alex', '43212345676', '4323456789', 'Lenhador', 'Toledo', 'PR'),
(14, 'Ana', '56787689075', '4233211234', 'Oliveira', 'Ponta Grossa', 'PR'),
(15, 'Paulo', '12345678910', '4436789087', 'Santo Angelo', 'Lapa', 'PR');

CREATE TABLE usuario (
  idUsuario integer NOT NULL ,
  nmUsuario varchar(45) DEFAULT NULL,
  cpf varchar(11) DEFAULT NULL,
  dataNasc varchar(19) DEFAULT NULL,
  idProdutor integer DEFAULT NULL,
  login varchar(45) DEFAULT NULL,
  senha varchar(200) DEFAULT NULL,
  PRIMARY KEY (idUsuario)
) ;

INSERT INTO usuario (idUsuario, nmUsuario, cpf, dataNasc, idProdutor, login, senha) VALUES
(8, 'Administrador', '44444444444', '2023-01-02', 0, 'admin', '123'),
(9, 'Usu?rio Teste', '11111111111', '0000-00-00', 1, 'teste', 'teste'),
(10, 'Zeca', '22222222222', '0000-00-00', 1, 'zeca', 'zeca'),
(11, 'Evaldo', '33333333333', '0000-00-00', 2, 'evaldo', 'evaldo'),
(12, 'Diego', '1234578910', '0000-00-00', 2, 'diego', 'diego');

CREATE TABLE viveiro (
  idViveiro integer NOT NULL ,
  idProdutor integer DEFAULT NULL,
  nmViveiro varchar(45) DEFAULT NULL,
  laminaAgua decimal(10,2) DEFAULT NULL,
  area decimal(10,2) DEFAULT NULL,
  dtCadastro varchar(19) DEFAULT NULL,
  obs text,
  ativo integer DEFAULT '1',
  PRIMARY KEY (idViveiro)
) ;

INSERT INTO viveiro (idViveiro, idProdutor, nmViveiro, laminaAgua, area, dtCadastro, obs, ativo) VALUES
(11, 1, 'Tanque 1', 0.60, 85.00, '0000-00-00', 'Tanque dos Fundos', 1),
(12, 1, 'Tanque 2 ', 0.55, 80.00, '0000-00-00', '', 1),
(13, 2, 'Viveiro 1', 0.70, 100.00, '0000-00-00', 'Tanque Maior', 1),
(14, 2, 'Viveiro 2', 0.60, 100.00, '0000-00-00', '', 1),
(15, 1, 'Tanque Novo', 0.80, 100.00, '0000-00-00', 'Tanque Principal', 1);
