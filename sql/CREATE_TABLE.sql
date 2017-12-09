/*Queries de SQL*/
/*CREATE TABLES*/
/*
Alef Segura Santos     			- 9762942
Gustavo de Moura Souza    		- 9762981
Thaís Lima de Oliveira Nobre  	- 7163822
Yago Rafael Pessoa     			- 9896218
*/

CREATE TABLE elenco (
	codigo NUMBER(4,0) NOT NULL,
	nome VARCHAR2(100) NOT NULL,
	e_ator NUMBER(1,0) NOT NULL,
	e_diretor NUMBER(1,0) NOT NULL,

	CONSTRAINT PK_elenco PRIMARY KEY(codigo),
	CONSTRAINT CK_e_ator CHECK(e_ator IN(0,1)),
	CONSTRAINT CK_e_diretor CHECK(e_diretor IN(0,1))
);


CREATE TABLE atua (
	video NUMBER(4,0) NOT NULL,
	diretor NUMBER(4,0) NOT NULL,

	/*constraints*/
);


CREATE TABLE dirige (
	video NUMBER(4,0) NOT NULL,
	diretor NUMBER(4,0) NOT NULL,

	/*constraints*/
);


CREATE TABLE planodeassinatura (
	nome VARCHAR2(100) NOT NULL,
	valor NUMBER(5,2) NOT NULL,
	vantagens VARCHAR2(150),

	CONSTRAINT PK_planodeassinatura PRIMARY KEY(nome),
	CONSTRAINT CK_valor CHECK(valor >= 0)
);


CREATE TABLE seleciona (
	usuario CHAR(11) NOT NULL,
	planodeassinatura VARCHAR2(100) NOT NULL,

	/*constraints*/
);


CREATE TABLE genero (
	nome VARCHAR2(100) NOT NULL,

	CONSTRAINT PK_genero PRIMARY KEY(nome)
);


CREATE TABLE tem (
	
);


CREATE TABLE video (
	codigo  NUMBER(4,0) NOT NULL,
	titulo VARCHAR2(50) NOT NULL,
	/*tipovideo*/
);


CREATE TABLE avaliagenero ();
CREATE TABLE amizade ();


CREATE TABLE usuario (
	cpf CHAR(11) NOT NULL,
	nome VARCHAR2(100) NOT NULL,
	email VARCHAR2(100) NOT NULL,
	data_nascimento DATE NOT NULL,

	CONSTRAINT PK_usuario PRIMARY KEY(cpf)
);


CREATE TABLE adulto ();
CREATE TABLE tipoperfil ();
CREATE TABLE infantil ();
CREATE TABLE gerencia ();
CREATE TABLE avaliafilme ();
CREATE TABLE avaliaep ();
CREATE TABLE filme ();
CREATE TABLE serie ();
CREATE TABLE temporada ();
CREATE TABLE episodio ();
CREATE TABLE assisteep ();
CREATE TABLE assistefilme ();
CREATE TABLE recomenda ();
CREATE TABLE acesso ();


CREATE TABLE dispositivo (
	codigo NUMBER(4,0) NOT NULL,
	nome VARCHAR2(100) NOT NULL,
	versao_so VARCHAR2(30) NOT NULL,

	CONSTRAINT PK_dispositivo PRIMARY KEY(codigo)
);


CREATE TABLE periodopaga ();
CREATE TABLE paga ();
CREATE TABLE cadastropagamento ();
CREATE TABLE cartao ();
CREATE TABLE debito ();
CREATE TABLE paypal ();
