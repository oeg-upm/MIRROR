--
-- Database: 'example4'
--

-- --------------------------------------------------------

--
-- Table structure for table 'acomodacao'
--

CREATE TABLE acomodacao (
  id_acomodacao integer  NOT NULL ,
  tipo varchar(12) NOT NULL,
  numero integer  NOT NULL,
  andar integer  DEFAULT NULL,
  pessoas integer NOT NULL ,
  valor_diaria decimal(12,2)  NOT NULL,
  observacao text,
  situacao varchar(12) NOT NULL,
  PRIMARY KEY (id_acomodacao)
);

-- --------------------------------------------------------

--
-- Table structure for table 'diaria'
--

CREATE TABLE diaria (
  id_diaria integer  NOT NULL ,
  id_hospede integer  NOT NULL,
  id_acomodacao integer  NOT NULL,
  data_entrada timestamp NOT NULL,
  data_saida timestamp NOT NULL,
  valor decimal(12,2)  NOT NULL,
  deposito decimal(12,2) NOT NULL DEFAULT '0',
  acrescimo decimal(12,2)  NOT NULL,
  desconto decimal(12,2)  NOT NULL ,
  adultos integer  NOT NULL ,
  menores integer  NOT NULL ,
  motivo_cancelamento text,
  observacao text,
  situacao varchar(12) NOT NULL,
  PRIMARY KEY (id_diaria)
);

-- --------------------------------------------------------

--
-- Table structure for table 'diaria_acompanhante'
--

CREATE TABLE diaria_acompanhante (
  id_diaria_acompanhante integer  NOT NULL ,
  id_diaria integer  NOT NULL,
  nome varchar(60) NOT NULL,
  relacao varchar(35) NOT NULL ,
  PRIMARY KEY (id_diaria_acompanhante)
);

-- --------------------------------------------------------

--
-- Table structure for table 'diaria_historico'
--

CREATE TABLE diaria_historico (
  id_diaria_historico integer  NOT NULL ,
  id_diaria integer  NOT NULL,
  id_usuario integer  NOT NULL,
  data_insercao timestamp NOT NULL ,
  descricao varchar(35) NOT NULL,
  conteudo text NOT NULL,
  PRIMARY KEY (id_diaria_historico)
);

-- --------------------------------------------------------

--
-- Table structure for table 'diaria_pagamento'
--

CREATE TABLE diaria_pagamento (
  id_diaria_pagamento integer  NOT NULL ,
  id_diaria integer  NOT NULL,
  moeda varchar(12) NOT NULL,
  "data" timestamp NOT NULL,
  valor decimal(12,2)  NOT NULL,
  observacao text,
  PRIMARY KEY (id_diaria_pagamento)
);

-- --------------------------------------------------------

--
-- Table structure for table 'diaria_servico'
--

CREATE TABLE diaria_servico (
  id_diaria_servico integer  NOT NULL ,
  id_diaria integer  NOT NULL,
  id_servico integer  NOT NULL,
  data_servico timestamp NOT NULL,
  quantidade integer  NOT NULL DEFAULT '1',
  valor decimal(12,2)  NOT NULL,
  PRIMARY KEY (id_diaria_servico)
);

-- --------------------------------------------------------

--
-- Table structure for table 'hospede'
--

CREATE TABLE hospede (
  id_hospede integer  NOT NULL ,
  id_pais integer  NOT NULL,
  id_profissao integer  NOT NULL,
  identificacao_tipo varchar(12) NOT NULL,
  identificacao varchar(20) NOT NULL,
  data_emissao_passaporte timestamp DEFAULT NULL,
  data_expiracao_passaporte timestamp DEFAULT NULL,
  tipo_passaporte varchar(1) DEFAULT NULL,
  nome varchar(60) NOT NULL,
  sexo varchar(1) NOT NULL,
  data_nascimento timestamp NOT NULL,
  telefone varchar(15) DEFAULT NULL,
  email varchar(120) DEFAULT NULL,
  observacao text,
  ativo integer NOT NULL,
  PRIMARY KEY (id_hospede)
);

-- --------------------------------------------------------

--
-- Table structure for table 'pais'
--

CREATE TABLE pais (
  id_pais integer  NOT NULL,
  nome varchar(45) NOT NULL,
  PRIMARY KEY (id_pais)
);

-- --------------------------------------------------------

--
-- Table structure for table 'profissao'
--

CREATE TABLE profissao (
  id_profissao integer  NOT NULL,
  nome varchar(50) NOT NULL,
  PRIMARY KEY (id_profissao)
);

-- --------------------------------------------------------

--
-- Table structure for table 'servico'
--

CREATE TABLE servico (
  id_servico integer  NOT NULL ,
  nome varchar(60) NOT NULL,
  valor decimal(12,2)  NOT NULL,
  ativo integer NOT NULL,
  PRIMARY KEY (id_servico)
);

-- --------------------------------------------------------

--
-- Table structure for table 'usuario'
--

CREATE TABLE usuario (
  id_usuario integer  NOT NULL ,
  perfil varchar(12) NOT NULL,
  nome varchar(60) NOT NULL,
  login varchar(30) NOT NULL,
  senha char(32) NOT NULL ,
  ativo integer NOT NULL ,
  PRIMARY KEY (id_usuario)
);

--
-- Constraints for dumped tables
--

--
-- Constraints for table "diaria"
--
ALTER TABLE "diaria"
  ADD CONSTRAINT diaria_ibfk_1 FOREIGN KEY (id_hospede) REFERENCES hospede (id_hospede),
  ADD CONSTRAINT diaria_ibfk_2 FOREIGN KEY (id_acomodacao) REFERENCES acomodacao (id_acomodacao);

--
-- Constraints for table "diaria_acompanhante"
--
ALTER TABLE "diaria_acompanhante"
  ADD CONSTRAINT diaria_acompanhante_ibfk_1 FOREIGN KEY (id_diaria) REFERENCES diaria (id_diaria);

--
-- Constraints for table "diaria_historico"
--
ALTER TABLE "diaria_historico"
  ADD CONSTRAINT diaria_historico_ibfk_1 FOREIGN KEY (id_diaria) REFERENCES diaria (id_diaria),
  ADD CONSTRAINT diaria_historico_ibfk_2 FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario);

--
-- Constraints for table "diaria_pagamento"
--
ALTER TABLE "diaria_pagamento"
  ADD CONSTRAINT diaria_pagamento_ibfk_1 FOREIGN KEY (id_diaria) REFERENCES diaria (id_diaria);

--
-- Constraints for table "diaria_servico"
--
ALTER TABLE "diaria_servico"
  ADD CONSTRAINT diaria_servico_ibfk_1 FOREIGN KEY (id_diaria) REFERENCES diaria (id_diaria),
  ADD CONSTRAINT diaria_servico_ibfk_2 FOREIGN KEY (id_servico) REFERENCES servico (id_servico);

--
-- Constraints for table "hospede"
--
ALTER TABLE "hospede"
  ADD CONSTRAINT hospede_ibfk_1 FOREIGN KEY (id_pais) REFERENCES pais (id_pais),
  ADD CONSTRAINT hospede_ibfk_2 FOREIGN KEY (id_profissao) REFERENCES profissao (id_profissao);
