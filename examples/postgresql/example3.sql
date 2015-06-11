
--
-- Database: 'example3'
--

-- --------------------------------------------------------

--
-- Table structure for table 'cidade'
--

CREATE TABLE IF NOT EXISTS cidade (
  IdCidade integer  NOT NULL ,
  IdEstado integer  NOT NULL,
  Nome varchar(50) NOT NULL,
  PRIMARY KEY (IdCidade)
);

--
-- Dumping data for table 'cidade'
--

INSERT INTO cidade (IdCidade, IdEstado, Nome) VALUES
(1, 1, 'curitiba'),
(2, 1, 'sao jose dos pinhais'),
(3, 1, 'pinhais');

-- --------------------------------------------------------

--
-- Table structure for table 'cliente'
--

CREATE TABLE IF NOT EXISTS cliente (
  IdCliente integer  NOT NULL ,
  IdCidade integer  NOT NULL,
  Tipo varchar(2) NOT NULL,
  DataHoraCadastro varchar(19) ,
  CpfCnpj char(18) NOT NULL,
  Nome varchar(70) NOT NULL ,
  Cep char(9) NOT NULL ,
  Endereco varchar(100) NOT NULL,
  Numero integer  DEFAULT NULL,
  Bairro varchar(50) NOT NULL,
  Complemento varchar(100) DEFAULT NULL,
  Email varchar(120) DEFAULT NULL,
  Observacao text,
  Ativo integer NOT NULL,
  PRIMARY KEY (IdCliente)  
);

--
-- Dumping data for table 'cliente'
--

INSERT INTO cliente (IdCliente, IdCidade, Tipo, DataHoraCadastro, CpfCnpj, Nome, Cep, Endereco, Numero, Bairro, Complemento, Email, Observacao, Ativo) VALUES
(1, 1, 'PF', '2014-08-14 13:00:00', '066.714.919-84', 'claudio', '81290-110', 'rua eduardo sprada', 8319, 'campo comprido', 'casa', 'claudio@email.com', NULL, 1),
(2, 2, 'PJ', '2014-08-14 13:00:00', '00934032912', 'melissa', '81290110', 'rua', 88, 'campo', 'casa', 'melissa@email.com', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table 'clientepf'
--

CREATE TABLE IF NOT EXISTS clientepf (
  IdCliente integer  NOT NULL,
  IdProfissao integer NOT NULL,
  DataNascimento date NOT NULL,
  Sexo varchar(2) NOT NULL,
  EstadoCivil varchar(12) NOT NULL,
  Rg varchar(20) DEFAULT NULL,
  RgOrgaoExpedidor char(5) DEFAULT NULL,
  RgDataExpedicao date DEFAULT NULL,
  PRIMARY KEY (IdCliente)
 );

--
-- Dumping data for table 'clientepf'
--

INSERT INTO clientepf (IdCliente, IdProfissao, DataNascimento, Sexo, EstadoCivil, Rg, RgOrgaoExpedidor, RgDataExpedicao) VALUES
(1, 2, '1990-07-29', 'M', 'Casado', '856262', 'fsfs', '2008-08-08'),
(2, 1, '1990-06-29', 'M', 'Casado', '999999', 'ssp', '2008-08-08');

-- --------------------------------------------------------

--
-- Table structure for table 'clientepj'
--

CREATE TABLE IF NOT EXISTS clientepj (
  IdCliente integer  NOT NULL,
  RazaoSocial varchar(80) NOT NULL,
  Responsavel varchar(60) NOT NULL,
  DataFundacao date NOT NULL
);

--
-- Dumping data for table 'clientepj'
--

INSERT INTO clientepj (IdCliente, RazaoSocial, Responsavel, DataFundacao) VALUES
(2, 'teste', 'melissa', '2014-08-14');

-- --------------------------------------------------------

--
-- Table structure for table 'clientetelefone'
--

CREATE TABLE IF NOT EXISTS clientetelefone (
  IdClienteTelefone integer  NOT NULL ,
  IdCliente integer  NOT NULL,
  Tipo varchar(12) NOT NULL,
  Telefone char(15) NOT NULL ,
  PRIMARY KEY (IdClienteTelefone)
);

--
-- Dumping data for table 'clientetelefone'
--

INSERT INTO clientetelefone (IdClienteTelefone, IdCliente, Tipo, Telefone) VALUES
(1, 1, 'Residencial', '4133731751'),
(2, 1, 'Celular', '4133333333');

-- --------------------------------------------------------

--
-- Table structure for table 'estado'
--

CREATE TABLE IF NOT EXISTS estado (
  IdEstado integer  NOT NULL,
  Sigla char(2) NOT NULL,
  PRIMARY KEY (IdEstado)
);

--
-- Dumping data for table 'estado'
--

INSERT INTO estado (IdEstado, Sigla) VALUES
(1, 'pr'),
(2, 'sp');

-- --------------------------------------------------------

--
-- Table structure for table 'modulo'
--

CREATE TABLE IF NOT EXISTS modulo (
  IdModulo integer  NOT NULL ,
  Nome varchar(30) NOT NULL,
  Imagem varchar(30) NOT NULL ,
  Classe varchar(30) NOT NULL ,
  Ordem integer NOT NULL,
  PRIMARY KEY (IdModulo)
);

--
-- Dumping data for table 'modulo'
--

INSERT INTO modulo (IdModulo, Nome, Imagem, Classe, Ordem) VALUES
(1, 'Profissão', 'empresa.png', 'ProfissaoConsultaView', 1),
(2, 'Produto', 'empresa.png', 'ProdutoConsultaView', 2),
(3, 'Usuario', 'empresa.png', 'UsuarioConsultaView', 3),
(4, 'Pedido', 'empresa.png', 'PedidoConsultaView', 4),
(5, 'Cliente', 'empresa.png', 'ClienteConsultaView', 5),
(6, 'Relatório', 'empresa.png', 'GerarRelatoriosView', 6),
(7, 'Temas', 'empresa.png', 'AlterarTemaView', 7);

-- --------------------------------------------------------

--
-- Table structure for table 'movimento'
--

CREATE TABLE IF NOT EXISTS movimento (
  IdMovimento integer  NOT NULL ,
  IdUsuarioEfetivou integer  NOT NULL,
  IdUsuarioCancelou integer  DEFAULT NULL,
  DataHora varchar(19) NOT NULL ,
  DataHoraCancelamento varchar(19) DEFAULT NULL,
  MotivoCancelamento text,
  Observacao text,
  Tipo varchar(12) NOT NULL,
  Situacao varchar(12) NOT NULL,
  PRIMARY KEY (IdMovimento)
);

--
-- Dumping data for table 'movimento'
--

INSERT INTO movimento (IdMovimento, IdUsuarioEfetivou, IdUsuarioCancelou, DataHora, DataHoraCancelamento, MotivoCancelamento, Observacao, Tipo, Situacao) VALUES
(1, 1, 1, '2014-08-14 13:11:00', '0000-00-00 00:00:00', NULL, NULL, 'Entrada', 'Pendente'),
(2, 2, 2, '2014-08-14 13:11:00', '2014-08-14 13:11:00', NULL, NULL, 'Saída', 'Efetivado');

-- --------------------------------------------------------

--
-- Table structure for table 'movimentoproduto'
--

CREATE TABLE IF NOT EXISTS movimentoproduto (
  IdMovimento integer  NOT NULL,
  IdProduto integer  NOT NULL,
  Quantidade integer  NOT NULL,
  PRIMARY KEY (IdMovimento,IdProduto)
);

--
-- Dumping data for table 'movimentoproduto'
--

INSERT INTO movimentoproduto (IdMovimento, IdProduto, Quantidade) VALUES
(1, 1, 1),
(2, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table 'pedido'
--

CREATE TABLE IF NOT EXISTS pedido (
  IdPedido integer  NOT NULL ,
  IdCliente integer  NOT NULL,
  IdUsuarioFaturou integer  DEFAULT NULL,
  IdUsuarioCancelou integer  DEFAULT NULL,
  DataHora varchar(19) NOT NULL ,
  DataHoraFaturamento varchar(19) DEFAULT NULL,
  DataHoraCancelamento varchar(19) DEFAULT NULL,
  MotivoCancelamento text,
  Observacao text,
  Situacao varchar(12) NOT NULL DEFAULT 'Pendente',
  PRIMARY KEY (IdPedido)
);

--
-- Dumping data for table 'pedido'
--

INSERT INTO pedido (IdPedido, IdCliente, IdUsuarioFaturou, IdUsuarioCancelou, DataHora, DataHoraFaturamento, DataHoraCancelamento, MotivoCancelamento, Observacao, Situacao) VALUES
(1, 1, 1, 1, '2014-08-14 13:00:00', '2014-08-14 13:00:00', '2014-08-14 13:00:00', NULL, NULL, 'Pendente');

-- --------------------------------------------------------

--
-- Table structure for table 'pedidoitem'
--

CREATE TABLE IF NOT EXISTS pedidoitem (
  IdPedido integer  NOT NULL,
  IdProduto integer  NOT NULL,
  Quantidade integer  NOT NULL,
  ValorUnitario decimal(12,2)  NOT NULL,
  ValorDesconto decimal(12,2)  NOT NULL DEFAULT '0',
  PRIMARY KEY (IdProduto,IdPedido)
);

--
-- Dumping data for table 'pedidoitem'
--

INSERT INTO pedidoitem (IdPedido, IdProduto, Quantidade, ValorUnitario, ValorDesconto) VALUES
(1, 1, 2, 50, 0),
(1, 2, 1, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table 'pedidopagamento'
--

CREATE TABLE IF NOT EXISTS pedidopagamento (
  IdPedido integer  NOT NULL,
  Moeda varchar(12) NOT NULL,
  Valor decimal(12,2)  NOT NULL,
  Observacao varchar(255) DEFAULT NULL,
  PRIMARY KEY (IdPedido,Moeda)
);

--
-- Dumping data for table 'pedidopagamento'
--

INSERT INTO pedidopagamento (IdPedido, Moeda, Valor, Observacao) VALUES
(1, 'DINHEIRO', 50, 'teste');

-- --------------------------------------------------------

--
-- Table structure for table 'permissaoacesso'
--

CREATE TABLE IF NOT EXISTS permissaoacesso (
  IdTipoUsuario integer  NOT NULL,
  IdModulo integer  NOT NULL,
  PRIMARY KEY (IdTipoUsuario,IdModulo)
);

--
-- Dumping data for table 'permissaoacesso'
--

INSERT INTO permissaoacesso (IdTipoUsuario, IdModulo) VALUES
(1, 1),
(2, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7);

-- --------------------------------------------------------

--
-- Table structure for table 'produto'
--

CREATE TABLE IF NOT EXISTS produto (
  IdProduto integer  NOT NULL ,
  DataHoraCadastro varchar(19) ,
  Nome varchar(50) NOT NULL,
  Valor decimal(12,2)  NOT NULL,
  EstoqueInicial integer  NOT NULL DEFAULT '0',
  EstoqueAtual integer NOT NULL,
  Ativo integer NOT NULL,
  PRIMARY KEY (IdProduto)
);

--
-- Dumping data for table 'produto'
--

INSERT INTO produto (IdProduto, DataHoraCadastro, Nome, Valor, EstoqueInicial, EstoqueAtual, Ativo) VALUES
(1, '2014-08-14 13:00:00', 'Agua', 50, 5, 5, 1),
(2, '2014-09-01 14:05:37', 'Gás 2015', 40, 2, 2, 2),
(3, '2014-09-03 14:00:00', 'Gás2000', 30, 10, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table 'profissao'
--

CREATE TABLE IF NOT EXISTS profissao (
  IdProfissao integer  NOT NULL ,
  Nome varchar(60) NOT NULL,
  PRIMARY KEY (IdProfissao)
);

--
-- Dumping data for table 'profissao'
--

INSERT INTO profissao (IdProfissao, Nome) VALUES
(2, 'estoquista'),
(1, 'gerente'),
(3, 'teste');

-- --------------------------------------------------------

--
-- Table structure for table 'tipousuario'
--

CREATE TABLE IF NOT EXISTS tipousuario (
  IdTipoUsuario integer  NOT NULL,
  Nome varchar(25) NOT NULL,
  PRIMARY KEY (IdTipoUsuario)
);

--
-- Dumping data for table 'tipousuario'
--

INSERT INTO tipousuario (IdTipoUsuario, Nome) VALUES
(2, 'funcionario'),
(1, 'gerente');

-- --------------------------------------------------------

--
-- Table structure for table 'usuario'
--

CREATE TABLE IF NOT EXISTS usuario (
  IdUsuario integer  NOT NULL ,
  IdTipoUsuario integer  NOT NULL,
  Nome varchar(60) NOT NULL,
  Login varchar(15) NOT NULL,
  Senha char(32) NOT NULL,
  TemaSistema varchar(12) NOT NULL DEFAULT 'Acryl',
  Ativo integer NOT NULL,
  PRIMARY KEY (IdUsuario)
);

--
-- Dumping data for table 'usuario'
--

INSERT INTO usuario (IdUsuario, IdTipoUsuario, Nome, Login, Senha, TemaSistema, Ativo) VALUES
(1, 1, 'Claudio', 'Claudio', '3f216740c43238edf21c55e4de73a886', 'Luna', 1),
(2, 2, 'Jonathan', 'Jonathan', '12345', 'Luna', 1),
(3, 2, 'teste', 'teste', '698dc19d489c4e4db73e28a713eab07b', 'Acryl', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table "cidade"
--
ALTER TABLE "cidade"
  ADD CONSTRAINT fk_cidade_estado FOREIGN KEY (IdEstado) REFERENCES estado (IdEstado) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "cliente"
--
ALTER TABLE "cliente"
  ADD CONSTRAINT fk_cliente_cidade FOREIGN KEY (IdCidade) REFERENCES cidade (IdCidade) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "clientepf"
--
ALTER TABLE "clientepf"
  ADD CONSTRAINT fpk_cliente_pf_cliente FOREIGN KEY (IdCliente) REFERENCES "cliente" (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fpk_cliente_pf_profissao FOREIGN KEY (IdProfissao) REFERENCES profissao (IdProfissao) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "clientepj"
--
ALTER TABLE "clientepj"
  ADD CONSTRAINT fpk_cliente_pj_cliente FOREIGN KEY (IdCliente) REFERENCES "cliente" (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "clientetelefone"
--
ALTER TABLE "clientetelefone"
  ADD CONSTRAINT fk_cliente_telefone_cliente FOREIGN KEY (IdCliente) REFERENCES "cliente" (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "movimento"
--
ALTER TABLE "movimento"
  ADD CONSTRAINT fk_movimento_usuario_cancelou FOREIGN KEY (IdUsuarioCancelou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_movimento_usuario_efetivou FOREIGN KEY (IdUsuarioEfetivou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "movimentoproduto"
--
ALTER TABLE "movimentoproduto"
  ADD CONSTRAINT fpk_movimento_produto_movimento FOREIGN KEY (IdMovimento) REFERENCES movimento (IdMovimento) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fpk_movimento_produto_produto FOREIGN KEY (IdProduto) REFERENCES produto (IdProduto) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "pedido"
--
ALTER TABLE "pedido"
  ADD CONSTRAINT fk_pedido_cliente FOREIGN KEY (IdCliente) REFERENCES "cliente" (IdCliente) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_pedido_usuario_cancelou FOREIGN KEY (IdUsuarioCancelou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_pedido_usuario_faturou FOREIGN KEY (IdUsuarioFaturou) REFERENCES usuario (IdUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "pedidoitem"
--
ALTER TABLE "pedidoitem"
  ADD CONSTRAINT fpk_produto_item_pedido FOREIGN KEY (IdPedido) REFERENCES pedido (IdPedido) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fpk_produto_item_produto FOREIGN KEY (IdProduto) REFERENCES produto (IdProduto) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "pedidopagamento"
--
ALTER TABLE "pedidopagamento"
  ADD CONSTRAINT fk_pedido_pagamento_pedido FOREIGN KEY (IdPedido) REFERENCES pedido (IdPedido) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "permissaoacesso"
--
ALTER TABLE "permissaoacesso"
  ADD CONSTRAINT fpk_permissao_acesso_modulo FOREIGN KEY (IdModulo) REFERENCES modulo (IdModulo) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fpk_permissao_acesso_tipo_usuario FOREIGN KEY (IdTipoUsuario) REFERENCES tipousuario (IdTipoUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table "usuario"
--
ALTER TABLE "usuario"
  ADD CONSTRAINT fk_usuario_tipo_usuario FOREIGN KEY (IdTipoUsuario) REFERENCES tipousuario (IdTipoUsuario) ON DELETE NO ACTION ON UPDATE NO ACTION;
