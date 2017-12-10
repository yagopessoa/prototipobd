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
	tipovideo
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


CREATE TABLE adulto (
	usuario CHAR(11) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	preferencia,
	qualidade,
	legenda,
	idioma,

);


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


CREATE TABLE filme (
	video NUMBER(4,0) NOT NULL,
	sinopse VARCHAR2(200) NOT NULL,
	faixa_etaria VARCHAR2(6) NOT NULL,
	duracao VARCHAR2(6) NOT NULL,
	ano NUMBER(4,0) NOT NULL,
	thumb,							/*definir dominio*/
	idioma VARCHAR2(50) NOT NULL,
	legenda VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_filme PRIMARY KEY(video),
	CONSTRAINT FK_filme_video FOREIGN KEY(video) REFERENCES video,
	CONSTRAINT FK_filmeidioma_linguas FOREIGN KEY(idioma) REFERENCES linguas,
	CONSTRAINT FK_filmelegenda_linguas FOREIGN KEY(legenda) REFERENCES linguas,
	CONSTRAINT CK_faixaetaria CHECK(faixa_etaria IN("Livre", "10+", "12+", "14+", "16+", "18+")),
	CONSTRAINT CK_duracao CHECK(duracao LIKE "%min"),
	CONSTRAINT CK_ano CHECK(ano > 1900)
);


/*#############################################*/
/*ALTERAR NOS MODELOS*/
CREATE TABLE linguas (
	lingua VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_linguas PRIMARY KEY(lingua)
);

/*#############################################*/


CREATE TABLE serie (
	video NUMBER(4,0) NOT NULL,
	qtd_temporadas NUMBER(2,0) NOT NULL, 
	nota NUMBER(3,1) NOT NULL,

	CONSTRAINT PK_serie PRIMARY KEY(video),
	CONSTRAINT FK_serie_video FOREIGN KEY(video) REFERENCES video,
	CONSTRAINT CK_qtdtemporadas CHECK(qtd_temporadas >= 1), 
	CONSTRAINT CK_nota CHECK(nota BETWEEN 0 AND 10)
);


CREATE TABLE temporada (
	serie NUMBER(4,0) NOT NULL,
	nro_temporada NUMBER(2,0) NOT NULL,
	qtd_episodios NUMBER(2,0) NOT NULL,
	titulo VARCHAR2(100) NOT NULL,

	CONSTRAINT PK_temporada PRIMARY KEY(serie, nro_temporada),
	CONSTRAINT FK_temporada_serie FOREIGN KEY(serie) REFERENCES serie,
	CONSTRAINT CK_nrotemporada CHECK(nro_temporada >= 0),
	CONSTRAINT CK_qtdepisodios CHECK(qtd_episodios >= 1) 
);


CREATE TABLE episodio (
	serie NUMBER(4,0) NOT NULL,
	nro_temporada NUMBER(2,0) NOT NULL,
	nro_episodio NUMBER(2,0) NOT NULL,
	titulo VARCHAR2(100) NOT NULL,
	sinopse VARCHAR2(200) NOT NULL,
	faixa_etaria VARCHAR2(6) NOT NULL,
	duracao VARCHAR2(6) NOT NULL,
	ano NUMBER(4,0) NOT NULL,
	thumb,							/*definir dominio*/
	idioma VARCHAR2(50) NOT NULL,
	legenda VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_episodio PRIMARY KEY(serie, nro_temporada, nro_episodio),
	CONSTRAINT FK_episodio_temporada FOREIGN KEY(serie, nro_temporada) REFERENCES temporada(serie, nro_temporada),
	CONSTRAINT FK_episodioidioma_linguas FOREIGN KEY(idioma) REFERENCES linguas,
	CONSTRAINT FK_episodiolegenda_linguas FOREIGN KEY(legenda) REFERENCES linguas,
	CONSTRAINT CK_nrotemporada CHECK(nro_temporada >= 0),
	CONSTRAINT CK_nroepisodios CHECK(nro_episodios >= 0),
	CONSTRAINT CK_faixaetaria CHECK(faixa_etaria IN("Livre", "10+", "12+", "14+", "16+", "18+")),
	CONSTRAINT CK_duracao CHECK(duracao LIKE "%min"),
	CONSTRAINT CK_ano CHECK(ano > 1900)
);


CREATE TABLE assisteep (
	usuario ,
	apelido ,
	serie NUMBER(4,0) NOT NULL,
	temporada NUMBER(2,0) NOT NULL,
	episodio NUMBER(2,0) NOT NULL,
	tempo_final, /*definir domínio*/
	data DATE,	/*cuidar da semântica, data>=1980 e deve corresponder ao dia em que foi assistido*/


	CONSTRAINT CK_temporada CHECK(temporada >= 0),
	CONSTRAINT CK_episodios CHECK(episodios >= 0),
);


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
