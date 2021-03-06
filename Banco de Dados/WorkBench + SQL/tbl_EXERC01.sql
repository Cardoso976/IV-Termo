CREATE TABLE ENGENHEIRO
(	CREA FLOAT PRIMARY KEY NOT NULL,
	NOME VARCHAR(45) NOT NULL,
	E_MAIL VARCHAR(45) NOT NULL,
	TELEFONE VARCHAR(45) NOT NULL
);

CREATE TABLE FUNCIONARIO 
(	CPF VARCHAR(20) PRIMARY KEY NOT NULL,
	NOME VARCHAR(45) NOT NULL,
	TEL_FIXO VARCHAR(45),
	TEL_CEL VARCHAR(45) NOT NULL,
	CARGA_HORARIA DECIMAL(9,2) NOT NULL,
	FUNCIONALIDADE VARCHAR(45) NOT NULL
);
CREATE TABLE PROJETO
(
	NRO_PROJETO INT NOT NULL,
	DT_INICIO DATE NOT NULL,
	DT_FIM DATE NOT NULL,
	DESCRICAO VARCHAR(200) NOT NULL,
	NOME VARCHAR(45) NOT NULL,
	ENGENHEIRO_CREA FLOAT, 
	PRIMARY KEY(NRO_PROJETO,ENGENHEIRO_CREA),
	INDEX PROJETO_FKIndex1(ENGENHEIRO_CREA)
);
 
CREATE TABLE FUNCIONARIO_has_PROJETO 
(
  FUNCIONARIO_CPF VARCHAR(20) NOT NULL,
  PROJETO_ENGENHEIRO_CREA FLOAT NOT NULL,
  PROJETO_NRO_PROJETO INTEGER NOT NULL,
  DT_INICIO DATE NOT NULL,
  DT_FIM DATE NOT NULL,
  QTDADE_HORAS DECIMAL(9,2) NOT NULL,
  PRIMARY KEY(FUNCIONARIO_CPF, PROJETO_ENGENHEIRO_CREA, PROJETO_NRO_PROJETO),
  INDEX FUNCIONARIO_has_PROJETO_FKIndex1(FUNCIONARIO_CPF),
  INDEX FUNCIONARIO_has_PROJETO_FKIndex2(PROJETO_NRO_PROJETO, PROJETO_ENGENHEIRO_CREA)
);