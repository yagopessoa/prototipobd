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
	genero VARCHAR2(100) NOT NULL,
	video NUMBER(4,0) NOT NULL,

	/*constraints*/
);


CREATE TABLE video (
	codigo NUMBER(4,0) NOT NULL,
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

CREATE TABLE tipoperfil (
	usuario CHAR(11) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	tipoperfil NUMBER(1,0) NOT NULL,

	/*constraints*/
);

CREATE TABLE infantil (
	usuario CHAR(11) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	preferencia,
	faixa_etaria,
);


CREATE TABLE gerencia (
	usuario_adulto CHAR(11) NOT NULL,
	apelido_adulto VARCHAR2(50) NOT NULL,
	usuario_infantil CHAR(11) NOT NULL,
	apelido_infantil VARCHAR2(50) NOT NULL,
);


CREATE TABLE avaliafilme (
	perfil_usuario CHAR(11) NOT NULL,
	perfil_apelido VARCHAR2(50) NOT NULL,
	filme NUMBER(4,0) NOT NULL,
	nota NUMBER(3,1) NOT NULL,
	data_avaliafilme DATE NOT NULL,
	opiniao VARCHAR2(140) NOT NULL,   /*pode ser nulo?*/

	CONSTRAINT PK_avaliafilme PRIMARY KEY(perfil_usuario, perfil_apelido, filme),
	CONSTRAINT FK_avaliafilme_tipoperfil FOREIGN KEY(perfil_usuario, perfil_apelido) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_avaliafilme_filme FOREIGN KEY(filme) REFERENCES filme,
	CONSTRAINT CK_nota CHECK(nota BETWEEN 0 AND 10)
);


CREATE TABLE avaliaep (
	perfil_usuario CHAR(11) NOT NULL,
	perfil_apelido VARCHAR2(50) NOT NULL,
	episodio,
	temporada,
	serie,
	nota NUMBER(3,1) NOT NULL,
	data_avaliafilme DATE NOT NULL,
	opiniao VARCHAR2(140) NOT NULL,   /*pode ser nulo?*/

	CONSTRAINT PK_avaliaep PRIMARY KEY(perfil_usuario, perfil_apelido, episodio, temporada, serie),
	CONSTRAINT FK_avaliaep_tipoperfil FOREIGN KEY(perfil_usuario, perfil_apelido) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_avaliaep_episodio FOREIGN KEY(episodio, temporada, serie) REFERENCES episodio(nro_ep, nro_temporada, serie),
	CONSTRAINT CK_nota CHECK(nota BETWEEN 0 AND 10)
);


CREATE TABLE filme ();


CREATE TABLE serie ();


CREATE TABLE temporada ();


CREATE TABLE episodio (
	nro_episodio,
	nro_temporada,
	serie,

	CONSTRAINT FK_episodio_temporada FOREIGN KEY(serie, nro_temporada) REFERENCES temporada(serie, nro_temporada),

);


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

CREATE TABLE paga (
	codigo NUMBER(4,0),
	nome_dispositivo VARCHAR2(100),
	versao_so VARCHAR2(30),

	CONSTRAINT PK_paga PRIMARY KEY(codigo)
	/*second key*/
);

CREATE TABLE cadastropagamento ();
CREATE TABLE cartao ();
CREATE TABLE debito ();
CREATE TABLE paypal ();
