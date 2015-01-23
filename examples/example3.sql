# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             syscontroller
# Server version:       5.5.8-log
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1*/;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI'*/;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0*/;

#
# Database structure for database 'syscontroller'
#

-- SET FOREIGN_KEY_CHECKS=0;


-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ syscontroller /*!40100 DEFAULT CHARACTER SET latin1 */;

-- USE syscontroller;


#
# Table structure for table 'cidade'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ cidade (
  IdCidade int(10) unsigned NOT NULL AUTO_INCREMENT,
  IdEstado int(10) unsigned NOT NULL,
  Nome varchar(50) NOT NULL,
  PRIMARY KEY (IdCidade),
  KEY fk_cidade_estado (IdEstado),
  CONSTRAINT fk_cidade_estado FOREIGN KEY (IdEstado) REFERENCES estado (IdEstado) ON DELETE NO ACTION ON UPDATE NO ACTION
) AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'cidade'
#

LOCK TABLES cidade WRITE;
/*!40000 ALTER TABLE cidade DISABLE KEYS*/;
REPLACE INTO cidade (IdCidade, IdEstado, Nome) VALUES
	('1','1','curitiba');
REPLACE INTO cidade (IdCidade, IdEstado, Nome) VALUES
	('2','1','sao jose dos pinhais');
REPLACE INTO cidade (IdCidade, IdEstado, Nome) VALUES
	('3','1','pinhais');
/*!40000 ALTER TABLE cidade ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'cliente'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ cliente (
  IdCliente int(10) unsigned NOT NULL AUTO_INCREMENT,
  IdCidade int(10) unsigned NOT NULL,
  Tipo enum('PF','PJ') NOT NULL,
  DataHoraCadastro timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CpfCnpj char(18) NOT NULL COMMENT 'Cpf/Cnpj com máscara',
  Nome varchar(70) NOT NULL COMMENT 'Nome ou Fantasia',
  Cep char(9) NOT NULL COMMENT 'Com traço',
  Endereco varchar(100) NOT NULL,
  Numero mediumint(8) unsigned DEFAULT NULL,
  Bairro varchar(50) NOT NULL,
  Complemento varchar(100) DEFAULT NULL,
  Email varchar(120) DEFAULT NULL,
  Observacao text,
  Ativo tinyint(1) NOT NULL,
  PRIMARY KEY (IdCliente),
  UNIQUE KEY uq_cliente_cpfcnpj (CpfCnpj),
  KEY idx_cliente_nome (Nome(20)),
  KEY fk_cliente_cidade (IdCidade),
  CONSTRAINT fk_cliente_cidade FOREIGN KEY (IdCidade) REFERENCES cidade (IdCidade) ON DELETE NO ACTION ON UPDATE NO ACTION
) AUTO_INCREMENT=3 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'cliente'
#

LOCK TABLES cliente WRITE;
/*!40000 ALTER TABLE cliente DISABLE KEYS*/;
REPLACE INTO cliente (IdCliente, IdCidade, Tipo, DataHoraCadastro, CpfCnpj, Nome, Cep, Endereco, Numero, Bairro, Complemento, Email, Observacao, Ativo) VALUES
	('1','1','PF','2014-08-14 13:00:00','066.714.919-84','claudio','81290-110','rua eduardo sprada',8319,'campo comprido','casa','claudio@email.com',NULL,1);
REPLACE INTO cliente (IdCliente, IdCidade, Tipo, DataHoraCadastro, CpfCnpj, Nome, Cep, Endereco, Numero, Bairro, Complemento, Email, Observacao, Ativo) VALUES
	('2','2','PJ','2014-08-14 13:00:00','00934032912','melissa','81290110','rua',88,'campo','casa','melissa@email.com',NULL,1);
/*!40000 ALTER TABLE cliente ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'clientepf'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ clientepf (
  IdCliente int(10) unsigned NOT NULL,
  IdProfissao smallint(5) unsigned NOT NULL,
  DataNascimento date NOT NULL,
  Sexo enum('M','F') NOT NULL,
  EstadoCivil enum('Solteiro','Casado','Divorciado','Viúvo','Amaziado') NOT NULL,
  Rg varchar(20) DEFAULT NULL,
  RgOrgaoExpedidor char(5) DEFAULT NULL,
  RgDataExpedicao date DEFAULT NULL,
  PRIMARY KEY (IdCliente),
  KEY fpk_cliente_pf_profissao (IdProfissao),
  CONSTRAINT fpk_cliente_pf_cliente FOREIGN KEY (IdCliente) REFERENCES cliente (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fpk_cliente_pf_profissao FOREIGN KEY (IdProfissao) REFERENCES profissao (IdProfissao) ON DELETE NO ACTION ON UPDATE NO ACTION
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'clientepf'
#

LOCK TABLES clientepf WRITE;
/*!40000 ALTER TABLE clientepf DISABLE KEYS*/;
REPLACE INTO clientepf (IdCliente, IdProfissao, DataNascimento, Sexo, EstadoCivil, Rg, RgOrgaoExpedidor, RgDataExpedicao) VALUES
	('1',2,'1990-07-29','M','Casado','856262','fsfs','2008-08-08');
REPLACE INTO clientepf (IdCliente, IdProfissao, DataNascimento, Sexo, EstadoCivil, Rg, RgOrgaoExpedidor, RgDataExpedicao) VALUES
	('2',1,'1990-06-29','M','Casado','999999','ssp','2008-08-08');
/*!40000 ALTER TABLE clientepf ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'clientepj'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ clientepj (
  IdCliente int(10) unsigned NOT NULL,
  RazaoSocial varchar(80) NOT NULL,
  Responsavel varchar(60) NOT NULL,
  DataFundacao date NOT NULL,
  PRIMARY KEY (IdCliente),
  CONSTRAINT fpk_cliente_pj_cliente FOREIGN KEY (IdCliente) REFERENCES cliente (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'clientepj'
#

LOCK TABLES clientepj WRITE;
/*!40000 ALTER TABLE clientepj DISABLE KEYS*/;
REPLACE INTO clientepj (IdCliente, RazaoSocial, Responsavel, DataFundacao) VALUES
	('2','teste','melissa','2014-08-14');
/*!40000 ALTER TABLE clientepj ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'clientetelefone'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ clientetelefone (
  IdClienteTelefone int(10) unsigned NOT NULL AUTO_INCREMENT,
  IdCliente int(10) unsigned NOT NULL,
  Tipo enum('Residencial','Comercial','Celular','Trabalho','Fax') NOT NULL,
  Telefone char(15) NOT NULL COMMENT 'Com máscara',
  PRIMARY KEY (IdClienteTelefone),
  KEY fk_cliente_telefone_cliente (IdCliente),
  CONSTRAINT fk_cliente_telefone_cliente FOREIGN KEY (IdCliente) REFERENCES cliente (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION
) AUTO_INCREMENT=3 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'clientetelefone'
#

LOCK TABLES clientetelefone WRITE;
/*!40000 ALTER TABLE clientetelefone DISABLE KEYS*/;
REPLACE INTO clientetelefone (IdClienteTelefone, IdCliente, Tipo, Telefone) VALUES
	('1','1','Residencial','4133731751');
REPLACE INTO clientetelefone (IdClienteTelefone, IdCliente, Tipo, Telefone) VALUES
	('2','1','Celular','4133333333');
/*!40000 ALTER TABLE clientetelefone ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'estado'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ estado (
  IdEstado int(10) unsigned NOT NULL,
  Sigla char(2) NOT NULL,
  PRIMARY KEY (IdEstado),
  UNIQUE KEY uq_estado_sigla (Sigla)
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'estado'
#

LOCK TABLES estado WRITE;
/*!40000 ALTER TABLE estado DISABLE KEYS*/;
REPLACE INTO estado (IdEstado, Sigla) VALUES
	('1','pr');
REPLACE INTO estado (IdEstado, Sigla) VALUES
	('2','sp');
/*!40000 ALTER TABLE estado ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'modulo'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ modulo (
  IdModulo int(10) unsigned NOT NULL AUTO_INCREMENT,
  Nome varchar(30) NOT NULL,
  Imagem varchar(30) NOT NULL COMMENT 'Imagem a ser colocada no ícone do botão de acesso',
  Classe varchar(30) NOT NULL COMMENT 'Classe JAVA que representa o módulo',
  Ordem tinyint(4) NOT NULL,
  PRIMARY KEY (IdModulo)
) AUTO_INCREMENT=8 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'modulo'
#

LOCK TABLES modulo WRITE;
/*!40000 ALTER TABLE modulo DISABLE KEYS*/;
REPLACE INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
	('1','Profissão','empresa.png','ProfissaoConsultaView',1);
REPLACE INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
	('2','Produto','empresa.png','ProdutoConsultaView',2);
REPLACE INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
	('3','Usuario','empresa.png','UsuarioConsultaView',3);
REPLACE INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
	('4','Pedido','empresa.png','PedidoConsultaView',4);
REPLACE INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
	('5','Cliente','empresa.png','ClienteConsultaView',5);
REPLACE INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
	('6','Relatório','empresa.png','GerarRelatoriosView',6);
REPLACE INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
	('7','Temas','empresa.png','AlterarTemaView',7);
/*!40000 ALTER TABLE modulo ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'movimento'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ movimento (
  IdMovimento int(10) unsigned NOT NULL AUTO_INCREMENT,
  IdUsuarioEfetivou int(10) unsigned NOT NULL,
  IdUsuarioCancelou int(10) unsigned DEFAULT NULL,
  DataHora timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  DataHoraCancelamento datetime DEFAULT NULL,
  MotivoCancelamento text,
  Observacao text,
  Tipo enum('Entrada','Saída') NOT NULL,
  Situacao enum('Pendente','Efetivado','Cancelado') NOT NULL DEFAULT 'Pendente',
  PRIMARY KEY (IdMovimento),
  KEY fk_movimento_usuario_efetivou (IdUsuarioEfetivou),
  KEY fk_movimento_usuario_cancelou (IdUsuarioCancelou),
  CONSTRAINT fk_movimento_usuario_cancelou FOREIGN KEY (IdUsuarioCancelou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_movimento_usuario_efetivou FOREIGN KEY (IdUsuarioEfetivou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION
) AUTO_INCREMENT=3 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'movimento'
#

LOCK TABLES movimento WRITE;
/*!40000 ALTER TABLE movimento DISABLE KEYS*/;
REPLACE INTO movimento (IdMovimento, IdUsuarioEfetivou, IdUsuarioCancelou, DataHora, DataHoraCancelamento, MotivoCancelamento, Observacao, Tipo, Situacao) VALUES
	('1','1','1','2014-08-14 13:11:00','0000-00-00 00:00:00',NULL,NULL,'Entrada','Pendente');
REPLACE INTO movimento (IdMovimento, IdUsuarioEfetivou, IdUsuarioCancelou, DataHora, DataHoraCancelamento, MotivoCancelamento, Observacao, Tipo, Situacao) VALUES
	('2','2','2','2014-08-14 13:11:00','2014-08-14 13:11:00',NULL,NULL,'Saída','Efetivado');
/*!40000 ALTER TABLE movimento ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'movimentoproduto'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ movimentoproduto (
  IdMovimento int(10) unsigned NOT NULL,
  IdProduto int(10) unsigned NOT NULL,
  Quantidade smallint(5) unsigned NOT NULL,
  PRIMARY KEY (IdMovimento,IdProduto),
  KEY fpk_movimento_produto_produto (IdProduto),
  CONSTRAINT fpk_movimento_produto_movimento FOREIGN KEY (IdMovimento) REFERENCES movimento (IdMovimento) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fpk_movimento_produto_produto FOREIGN KEY (IdProduto) REFERENCES produto (IdProduto) ON DELETE NO ACTION ON UPDATE NO ACTION
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'movimentoproduto'
#

LOCK TABLES movimentoproduto WRITE;
/*!40000 ALTER TABLE movimentoproduto DISABLE KEYS*/;
REPLACE INTO movimentoproduto (IdMovimento, IdProduto, Quantidade) VALUES
	('1','1',1);
REPLACE INTO movimentoproduto (IdMovimento, IdProduto, Quantidade) VALUES
	('2','2',5);
/*!40000 ALTER TABLE movimentoproduto ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'pedido'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ pedido (
  IdPedido int(10) unsigned NOT NULL AUTO_INCREMENT,
  IdCliente int(10) unsigned NOT NULL,
  IdUsuarioFaturou int(10) unsigned DEFAULT NULL,
  IdUsuarioCancelou int(10) unsigned DEFAULT NULL,
  DataHora timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  DataHoraFaturamento datetime DEFAULT NULL,
  DataHoraCancelamento datetime DEFAULT NULL,
  MotivoCancelamento text,
  Observacao text,
  Situacao enum('Pendente','Faturado','Cancelado') NOT NULL DEFAULT 'Pendente',
  PRIMARY KEY (IdPedido),
  KEY fk_pedido_cliente (IdCliente),
  KEY fk_pedido_usuario_faturou (IdUsuarioFaturou),
  KEY fk_pedido_usuario_cancelou (IdUsuarioCancelou),
  CONSTRAINT fk_pedido_cliente FOREIGN KEY (IdCliente) REFERENCES cliente (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_pedido_usuario_cancelou FOREIGN KEY (IdUsuarioCancelou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_pedido_usuario_faturou FOREIGN KEY (IdUsuarioFaturou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION
) AUTO_INCREMENT=2 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'pedido'
#

LOCK TABLES pedido WRITE;
/*!40000 ALTER TABLE pedido DISABLE KEYS*/;
REPLACE INTO pedido (IdPedido, IdCliente, IdUsuarioFaturou, IdUsuarioCancelou, DataHora, DataHoraFaturamento, DataHoraCancelamento, MotivoCancelamento, Observacao, Situacao) VALUES
	('1','1','1','1','2014-08-14 13:00:00','2014-08-14 13:00:00','2014-08-14 13:00:00',NULL,NULL,'Pendente');
/*!40000 ALTER TABLE pedido ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'pedidoitem'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ pedidoitem (
  IdPedido int(10) unsigned NOT NULL,
  IdProduto int(10) unsigned NOT NULL,
  Quantidade smallint(5) unsigned NOT NULL,
  ValorUnitario double unsigned NOT NULL,
  ValorDesconto double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (IdProduto,IdPedido),
  KEY fpk_produto_item_pedido (IdPedido),
  CONSTRAINT fpk_produto_item_pedido FOREIGN KEY (IdPedido) REFERENCES pedido (IdPedido) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fpk_produto_item_produto FOREIGN KEY (IdProduto) REFERENCES produto (IdProduto) ON DELETE NO ACTION ON UPDATE NO ACTION
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'pedidoitem'
#

LOCK TABLES pedidoitem WRITE;
/*!40000 ALTER TABLE pedidoitem DISABLE KEYS*/;
REPLACE INTO pedidoitem (IdPedido, IdProduto, Quantidade, ValorUnitario, ValorDesconto) VALUES
	('1','1',2,'50','0');
REPLACE INTO pedidoitem (IdPedido, IdProduto, Quantidade, ValorUnitario, ValorDesconto) VALUES
	('1','2',1,'40','0');
/*!40000 ALTER TABLE pedidoitem ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'pedidopagamento'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ pedidopagamento (
  IdPedido int(10) unsigned NOT NULL,
  Moeda enum('DINHEIRO','CHEQUE','CRÉDITO','DÉBITO','DEPÓSITO','VOUCHER') NOT NULL,
  Valor double unsigned NOT NULL,
  Observacao varchar(255) DEFAULT NULL,
  PRIMARY KEY (IdPedido,Moeda),
  CONSTRAINT fk_pedido_pagamento_pedido FOREIGN KEY (IdPedido) REFERENCES pedido (IdPedido) ON DELETE NO ACTION ON UPDATE NO ACTION
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'pedidopagamento'
#

LOCK TABLES pedidopagamento WRITE;
/*!40000 ALTER TABLE pedidopagamento DISABLE KEYS*/;
REPLACE INTO pedidopagamento (IdPedido, Moeda, Valor, Observacao) VALUES
	('1','DINHEIRO','50','teste');
/*!40000 ALTER TABLE pedidopagamento ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'permissaoacesso'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ permissaoacesso (
  IdTipoUsuario int(10) unsigned NOT NULL,
  IdModulo int(10) unsigned NOT NULL,
  PRIMARY KEY (IdTipoUsuario,IdModulo),
  KEY fpk_permissao_acesso_modulo (IdModulo),
  CONSTRAINT fpk_permissao_acesso_modulo FOREIGN KEY (IdModulo) REFERENCES modulo (IdModulo) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fpk_permissao_acesso_tipo_usuario FOREIGN KEY (IdTipoUsuario) REFERENCES tipousuario (IdTipoUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'permissaoacesso'
#

LOCK TABLES permissaoacesso WRITE;
/*!40000 ALTER TABLE permissaoacesso DISABLE KEYS*/;
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('1','1');
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('2','1');
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('1','2');
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('1','3');
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('1','4');
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('1','5');
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('1','6');
REPLACE INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
	('1','7');
/*!40000 ALTER TABLE permissaoacesso ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'produto'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ produto (
  IdProduto int(10) unsigned NOT NULL AUTO_INCREMENT,
  DataHoraCadastro timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Nome varchar(50) NOT NULL,
  Valor double unsigned NOT NULL,
  EstoqueInicial int(10) unsigned NOT NULL DEFAULT '0',
  EstoqueAtual int(11) NOT NULL,
  Ativo tinyint(1) NOT NULL,
  PRIMARY KEY (IdProduto)
) AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'produto'
#

LOCK TABLES produto WRITE;
/*!40000 ALTER TABLE produto DISABLE KEYS*/;
REPLACE INTO produto (IdProduto, DataHoraCadastro, Nome, Valor, EstoqueInicial, EstoqueAtual, Ativo) VALUES
	('1','2014-08-14 13:00:00','Agua','50','5',5,1);
REPLACE INTO produto (IdProduto, DataHoraCadastro, Nome, Valor, EstoqueInicial, EstoqueAtual, Ativo) VALUES
	('2','2014-09-01 14:05:37','Gás 2015','40','2',2,2);
REPLACE INTO produto (IdProduto, DataHoraCadastro, Nome, Valor, EstoqueInicial, EstoqueAtual, Ativo) VALUES
	('3','2014-09-03 14:00:00','Gás2000','30','10',2,1);
/*!40000 ALTER TABLE produto ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'profissao'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ profissao (
  IdProfissao smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  Nome varchar(60) NOT NULL,
  PRIMARY KEY (IdProfissao),
  UNIQUE KEY uq_profissao_nome (Nome)
) AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'profissao'
#

LOCK TABLES profissao WRITE;
/*!40000 ALTER TABLE profissao DISABLE KEYS*/;
REPLACE INTO profissao (IdProfissao, Nome) VALUES
	(2,'estoquista');
REPLACE INTO profissao (IdProfissao, Nome) VALUES
	(1,'gerente');
REPLACE INTO profissao (IdProfissao, Nome) VALUES
	(3,'teste');
/*!40000 ALTER TABLE profissao ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'tipousuario'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ tipousuario (
  IdTipoUsuario int(10) unsigned NOT NULL,
  Nome varchar(25) NOT NULL,
  PRIMARY KEY (IdTipoUsuario),
  UNIQUE KEY uq_tipo_usuario_nome (Nome)
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'tipousuario'
#

LOCK TABLES tipousuario WRITE;
/*!40000 ALTER TABLE tipousuario DISABLE KEYS*/;
REPLACE INTO tipousuario (IdTipoUsuario, Nome) VALUES
	('2','funcionario');
REPLACE INTO tipousuario (IdTipoUsuario, Nome) VALUES
	('1','gerente');
/*!40000 ALTER TABLE tipousuario ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'usuario'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ usuario (
  IdUsuario int(10) unsigned NOT NULL AUTO_INCREMENT,
  IdTipoUsuario int(10) unsigned NOT NULL,
  Nome varchar(60) NOT NULL,
  Login varchar(15) NOT NULL,
  Senha char(32) NOT NULL,
  TemaSistema varchar(12) NOT NULL DEFAULT 'Acryl',
  Ativo tinyint(1) NOT NULL,
  PRIMARY KEY (IdUsuario),
  KEY fk_usuario_tipo_usuario (IdTipoUsuario),
  CONSTRAINT fk_usuario_tipo_usuario FOREIGN KEY (IdTipoUsuario) REFERENCES tipousuario (IdTipoUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION
) AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'usuario'
#

LOCK TABLES usuario WRITE;
/*!40000 ALTER TABLE usuario DISABLE KEYS*/;
REPLACE INTO usuario (IdUsuario, IdTipoUsuario, Nome, Login, Senha, TemaSistema, Ativo) VALUES
	('1','1','Claudio','Claudio','3f216740c43238edf21c55e4de73a886','Luna',1);
REPLACE INTO usuario (IdUsuario, IdTipoUsuario, Nome, Login, Senha, TemaSistema, Ativo) VALUES
	('2','2','Jonathan','Jonathan','12345','Luna',1);
REPLACE INTO usuario (IdUsuario, IdTipoUsuario, Nome, Login, Senha, TemaSistema, Ativo) VALUES
	('3','2','teste','teste','698dc19d489c4e4db73e28a713eab07b','Acryl',1);
/*!40000 ALTER TABLE usuario ENABLE KEYS*/;
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE*/;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS*/;
