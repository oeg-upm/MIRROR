SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA hotel_manager;
USE hotel_manager;

-- -----------------------------------------------------
-- Table pais
-- -----------------------------------------------------
DROP TABLE IF EXISTS pais ;

CREATE  TABLE IF NOT EXISTS pais 
(
	id_pais TINYINT UNSIGNED NOT NULL PRIMARY KEY ,
	nome VARCHAR(45) NOT NULL
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table profissao
-- -----------------------------------------------------
DROP TABLE IF EXISTS profissao ;

CREATE  TABLE IF NOT EXISTS profissao 
(
	id_profissao SMALLINT UNSIGNED NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table hospede
-- -----------------------------------------------------
DROP TABLE IF EXISTS hospede ;

CREATE  TABLE IF NOT EXISTS hospede 
(
	id_hospede INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	id_pais TINYINT UNSIGNED NOT NULL ,
	id_profissao SMALLINT UNSIGNED NOT NULL ,
	identificacao_tipo ENUM('CPF','PASSAPORTE','RNE') NOT NULL ,
	identificacao VARCHAR(20) NOT NULL ,
	data_emissao_passaporte DATE NULL ,
	data_expiracao_passaporte DATE NULL ,
	tipo_passaporte ENUM('P','D','S') NULL ,
	nome VARCHAR(60) NOT NULL ,
	sexo ENUM('M','F') NOT NULL ,
	data_nascimento DATE NOT NULL ,
	telefone VARCHAR(15) NULL ,
	email VARCHAR(120) NULL ,
	observacao TEXT NULL ,
	ativo BOOL NOT NULL ,
	UNIQUE INDEX (identificacao ASC) ,
	INDEX (id_pais ASC) ,
	INDEX (id_profissao ASC) ,
	FOREIGN KEY (id_pais ) REFERENCES pais (id_pais ),
	FOREIGN KEY (id_profissao ) REFERENCES profissao (id_profissao )
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table acomodacao
-- -----------------------------------------------------
DROP TABLE IF EXISTS acomodacao ;

CREATE  TABLE IF NOT EXISTS acomodacao 
(
	id_acomodacao INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo ENUM('QUARTO','SUÍTE','SALA','APARTAMENTO') NOT NULL ,
	numero SMALLINT UNSIGNED NOT NULL ,
	andar SMALLINT UNSIGNED NULL ,
	pessoas TINYINT UNSIGNED NOT NULL COMMENT 'Para quantas pessoas?' ,
	valor_diaria DOUBLE UNSIGNED NOT NULL ,
	observacao TEXT NULL ,
	situacao ENUM('DISPONÍVEL', 'INATIVO', 'OCUPADO') NOT NULL ,
	UNIQUE INDEX (tipo ASC, numero ASC) 
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table usuario
-- -----------------------------------------------------
DROP TABLE IF EXISTS usuario ;

CREATE  TABLE IF NOT EXISTS usuario 
(
	id_usuario INT UNSIGNED NOT NULL AUTO_INCREMENT ,
	perfil ENUM('GERENTE','RECEPCIONISTA') NOT NULL ,
	nome VARCHAR(60) NOT NULL ,
	login VARCHAR(30) NOT NULL ,
	senha CHAR(32) CHARACTER SET 'latin1' 
	COLLATE 'latin1_general_cs' NOT NULL COMMENT 'MD5' ,
	ativo BOOL NOT NULL DEFAULT TRUE ,
	PRIMARY KEY (id_usuario) ,
	UNIQUE INDEX (login ASC) 
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table diaria
-- -----------------------------------------------------
DROP TABLE IF EXISTS diaria ;

CREATE  TABLE IF NOT EXISTS diaria 
(
	id_diaria INT UNSIGNED NOT NULL AUTO_INCREMENT ,
	id_hospede INT UNSIGNED NOT NULL ,
	id_acomodacao INT UNSIGNED NOT NULL ,
	data_entrada DATETIME NOT NULL ,
	data_saida DATETIME NOT NULL ,
	valor DOUBLE UNSIGNED NOT NULL,
	deposito DOUBLE NOT NULL DEFAULT 0 ,
	acrescimo DOUBLE UNSIGNED NOT NULL ,
	desconto DOUBLE UNSIGNED NOT NULL COMMENT 'Aplicado ao finalizar' ,
	adultos TINYINT UNSIGNED NOT NULL DEFAULT 1 ,
	menores TINYINT UNSIGNED NOT NULL COMMENT 'Crianças ou Adolescentes' ,
	motivo_cancelamento TEXT NULL ,
	observacao TEXT NULL ,
	situacao ENUM('ATIVO','CANCELADO','RESERVADO','FINALIZADO') NOT NULL ,
	PRIMARY KEY (id_diaria) ,
	INDEX (id_hospede ASC) ,
	INDEX (id_acomodacao ASC) ,
	FOREIGN KEY (id_hospede ) REFERENCES hospede (id_hospede ) ,
	FOREIGN KEY (id_acomodacao ) REFERENCES acomodacao (id_acomodacao )
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table diaria_pagamento
-- -----------------------------------------------------
DROP TABLE IF EXISTS diaria_pagamento ;

CREATE  TABLE IF NOT EXISTS diaria_pagamento 
(
	id_diaria_pagamento INT UNSIGNED NOT NULL AUTO_INCREMENT ,
	id_diaria INT UNSIGNED NOT NULL ,
	moeda ENUM('DINHEIRO','CRÉDITO','DÉBITO','VOUCHER','CHEQUE') NOT NULL ,
	data DATE NOT NULL ,
	valor DOUBLE UNSIGNED NOT NULL ,
	observacao TEXT NULL ,
	PRIMARY KEY (id_diaria_pagamento) ,
	INDEX (id_diaria ASC) ,
	FOREIGN KEY (id_diaria ) REFERENCES diaria (id_diaria )
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table servico
-- -----------------------------------------------------
DROP TABLE IF EXISTS servico ;

CREATE  TABLE IF NOT EXISTS servico 
(
	id_servico SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT ,
	nome VARCHAR(60) NOT NULL ,
	valor DOUBLE UNSIGNED NOT NULL ,
	ativo BOOL NOT NULL ,
	PRIMARY KEY (id_servico) ,
	UNIQUE INDEX (nome ASC) 
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table diaria_servico
-- -----------------------------------------------------
DROP TABLE IF EXISTS diaria_servico ;

CREATE  TABLE IF NOT EXISTS diaria_servico 
(
	id_diaria_servico INT UNSIGNED NOT NULL AUTO_INCREMENT ,
	id_diaria INT UNSIGNED NOT NULL ,
	id_servico SMALLINT UNSIGNED NOT NULL ,
	data_servico DATE NOT NULL ,
	quantidade SMALLINT UNSIGNED NOT NULL DEFAULT 1 ,
	valor DOUBLE UNSIGNED NOT NULL ,
	PRIMARY KEY (id_diaria_servico) ,
	INDEX (id_diaria ASC) ,
	INDEX (id_servico ASC) ,
	FOREIGN KEY (id_diaria )
	REFERENCES diaria (id_diaria ) ,
	FOREIGN KEY (id_servico ) 
	REFERENCES servico (id_servico )
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table diaria_historico
-- -----------------------------------------------------
DROP TABLE IF EXISTS diaria_historico ;

CREATE  TABLE IF NOT EXISTS diaria_historico 
(
	id_diaria_historico INT UNSIGNED NOT NULL AUTO_INCREMENT ,
	id_diaria INT UNSIGNED NOT NULL ,
	id_usuario INT UNSIGNED NOT NULL ,
	data_insercao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	descricao VARCHAR(35) NOT NULL ,
	conteudo TEXT NOT NULL COMMENT 'JSON' ,
	PRIMARY KEY (id_diaria_historico) ,
	INDEX (id_diaria ASC) ,
	INDEX (id_usuario ASC) ,
	FOREIGN KEY (id_diaria ) REFERENCES diaria (id_diaria ) ,
	FOREIGN KEY (id_usuario ) REFERENCES usuario (id_usuario )
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table diaria_acompanhante
-- -----------------------------------------------------
DROP TABLE IF EXISTS diaria_acompanhante ;

CREATE  TABLE IF NOT EXISTS diaria_acompanhante 
(
	id_diaria_acompanhante INT UNSIGNED NOT NULL AUTO_INCREMENT ,
	id_diaria INT UNSIGNED NOT NULL ,
	nome VARCHAR(60) NOT NULL ,
	relacao VARCHAR(35) NOT NULL 
	COMMENT 'Tipo de relação (Amigo, Filho, Esposa, etc.)' ,
	PRIMARY KEY (id_diaria_acompanhante) ,
	INDEX (id_diaria ASC) ,
	FOREIGN KEY (id_diaria ) REFERENCES diaria (id_diaria )
)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
