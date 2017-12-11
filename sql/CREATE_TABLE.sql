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

CREATE TABLE planodeassinatura (
	nome VARCHAR2(100) NOT NULL,
	valor NUMBER(5,2) NOT NULL,
	vantagens VARCHAR2(150),

	CONSTRAINT PK_planodeassinatura PRIMARY KEY(nome),
	CONSTRAINT CK_valor CHECK(valor >= 0)
);

CREATE TABLE genero (
	nome VARCHAR2(100) NOT NULL,

	CONSTRAINT PK_genero PRIMARY KEY(nome)
);

CREATE TABLE usuario (
	cpf CHAR(14) NOT NULL,
	nome VARCHAR2(100) NOT NULL,
	email VARCHAR2(100) NOT NULL,
	data_nascimento DATE NOT NULL,

	CONSTRAINT PK_usuario PRIMARY KEY(cpf)
);

CREATE TABLE seleciona (
	usuario char(14) NOT NULL,
	planodeassinatura VARCHAR2(100) NOT NULL,

	CONSTRAINT PK_seleciona PRIMARY KEY(usuario),
	CONSTRAINT FK_usuario FOREIGN KEY(usuario) REFERENCES usuario,
	CONSTRAINT FK_planodeassinatura FOREIGN KEY(planodeassinatura) REFERENCES planodeassinatura
);

CREATE TABLE video (
	codigo NUMBER(4,0) NOT NULL,
	titulo VARCHAR2(50) NOT NULL,
	tipovideo VARCHAR2(20) NOT NULL,

	CONSTRAINT PK_video PRIMARY KEY(codigo),
	CONSTRAINT CK_tipovideo CHECK(tipovideo IN('filme', 'serie'))
);

CREATE TABLE atua (
	video NUMBER(4,0) NOT NULL,
	ator NUMBER(4,0) NOT NULL,

	CONSTRAINT PK_atua PRIMARY KEY(video, ator),
	CONSTRAINT FK_video FOREIGN KEY(video) REFERENCES video,
	CONSTRAINT FK_ator FOREIGN KEY(ator) REFERENCES elenco
	/* como garantir que elenco.e_ator = true? */
);

CREATE TABLE dirige (
	video NUMBER(4,0) NOT NULL,
	diretor NUMBER(4,0) NOT NULL,

	CONSTRAINT PK_dirige PRIMARY KEY(video, diretor),
	CONSTRAINT FK_video_dirige FOREIGN KEY(video) REFERENCES video,
	CONSTRAINT FK_diretor FOREIGN KEY(diretor) REFERENCES elenco
	/* como garantir que elenco.e_diretor = true? */
);

CREATE TABLE tem (
	genero VARCHAR2(100) NOT NULL,
	video NUMBER(4,0) NOT NULL,

	CONSTRAINT PK_tem PRIMARY KEY(video),
	CONSTRAINT FK_genero FOREIGN KEY(genero) REFERENCES genero,
	CONSTRAINT FK_video_tem FOREIGN KEY(video) REFERENCES video
);


CREATE TABLE linguas (	/*### ALTERAR NOS MODELOS #########################################*/
	lingua VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_linguas PRIMARY KEY(lingua)
);

CREATE TABLE cadastropagamento (
	id_opcao NUMBER(2, 0) NOT NULL,
	usuario char(14) NOT NULL,
	tipopagamento VARCHAR2(10) NOT NULL,

	CONSTRAINT PK_cadastropagamento PRIMARY KEY(id_opcao, usuario),
	CONSTRAINT FK_usuario_cadastropagamento FOREIGN KEY(usuario) REFERENCES usuario
);

CREATE TABLE paypal (
	formadepagamento_id NUMBER(2,0) NOT NULL,
	formadepagamento_usuario char(14) NOT NULL,
	email VARCHAR2(100) NOT NULL,
	senha VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_cartao PRIMARY KEY(formadepagamento_id, formadepagamento_usuario),
	CONSTRAINT FK_cartao FOREIGN KEY(formadepagamento_id, formadepagamento_usuario) REFERENCES cadastropagamento(id_opcao, usuario)
);

CREATE TABLE dispositivo (
	codigo NUMBER(4,0) NOT NULL,
	nome VARCHAR2(100) NOT NULL,
	versao_so VARCHAR2(30) NOT NULL,

	CONSTRAINT PK_dispositivo PRIMARY KEY(codigo)
);

CREATE TABLE paga (
	codigo NUMBER(4,0) NOT NULL,
	planodeassinatura VARCHAR2(100) NOT NULL,
	formadepagamento_id NUMBER(2,0) NOT NULL,
	formadepagamento_usuario CHAR(14) NOT NULL,

	CONSTRAINT PK_paga PRIMARY KEY(codigo),
	CONSTRAINT Uniq_paga UNIQUE(codigo, planodeassinatura, formadepagamento_id, formadepagamento_usuario), /* chave secundaria */
	CONSTRAINT FK_formadepagamento_id FOREIGN KEY(formadepagamento_id, formadepagamento_usuario) REFERENCES cadastropagamento(id_opcao, usuario)
);

CREATE TABLE debito (
	formadepagamento_id NUMBER(2,0) NOT NULL,
	formadepagamento_usuario char(14) NOT NULL,
	cpf CHAR(14) NOT NULL,
	nome VARCHAR2(100) NOT NULL,
	agencia VARCHAR2(20) NOT NULL,
	conta VARCHAR2(20) NOT NULL,
	banco VARCHAR2(20) NOT NULL,

	CONSTRAINT PK_cartao_debito PRIMARY KEY(formadepagamento_id, formadepagamento_usuario),
	CONSTRAINT FK_cartao_debito FOREIGN KEY(formadepagamento_id, formadepagamento_usuario) REFERENCES cadastropagamento(id_opcao, usuario)
);

CREATE TABLE cartao (
	formadepagamento_id NUMBER(2,0) NOT NULL,
	formadepagamento_usuario char(14) NOT NULL,
	numero CHAR(16) NOT NULL,
	bandeira VARCHAR2(20) NOT NULL,
	validade CHAR(5) NOT NULL, /* validade: MM/AA */ /* como garantir que não está vencido? k: acho que é dever da aplicação*/
	nome VARCHAR2(100) NOT NULL,
	cod_seguranca NUMBER(3, 0),

	CONSTRAINT PK_cartao2 PRIMARY KEY(formadepagamento_id, formadepagamento_usuario),
	CONSTRAINT FK_cartao2 FOREIGN KEY(formadepagamento_id, formadepagamento_usuario) REFERENCES cadastropagamento(id_opcao, usuario)
);

CREATE TABLE periodopaga (
	codigo NUMBER(4, 0) NOT NULL,
	periodo VARCHAR2(20) NOT NULL,	/* mês? como garantir? */

	CONSTRAINT PK_periodopaga PRIMARY KEY(codigo),
	CONSTRAINT FK_periodopaga FOREIGN KEY(codigo) REFERENCES paga
);

CREATE TABLE acesso (
	dispositivo NUMBER(4, 0) NOT NULL,
	usuario CHAR(14) NOT NULL,
	horario CHAR(8) NOT NULL,	/* hh:mm:ss */
	ip CHAR(11)	NOT NULL,	/* ex: 192.168.1.2 */

	CONSTRAINT PK_acesso PRIMARY KEY(dispositivo, usuario, horario),
	CONSTRAINT FK_dispositivo FOREIGN KEY(dispositivo) REFERENCES dispositivo,
	CONSTRAINT FK_usuario_acesso FOREIGN KEY(usuario) REFERENCES usuario
);

CREATE TABLE tipoperfil (
	usuario char(14) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	tipoperfil VARCHAR2(20) NOT NULL,

	CONSTRAINT PK_tipoperfil PRIMARY KEY(usuario, apelido),
	CONSTRAINT FK_usuario_tipoperfil FOREIGN KEY(usuario) REFERENCES usuario,
	CONSTRAINT CK_tipoperfil CHECK(tipoperfil IN('adulto','infantil'))
);

CREATE TABLE avaliagenero (
	usuario char(14) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	genero VARCHAR2(100) NOT NULL,
	nota NUMBER(3, 1) NOT NULL,
	data DATE NOT NULL,

	CONSTRAINT PK_avaliagenero PRIMARY KEY(usuario, apelido, genero),
	CONSTRAINT FK_usuario_avaliagenero FOREIGN KEY(usuario, apelido) REFERENCES tipoperfil,
	CONSTRAINT FK_genero_avaliagenero FOREIGN KEY(genero) REFERENCES genero,
	CONSTRAINT CK_nota CHECK(nota BETWEEN 0 AND 10)
);

CREATE TABLE amizade (
	usuario_solicita char(14) NOT NULL,
	usuario_aceita char(14) NOT NULL,
	data_solicitado DATE NOT NULL,
	data_aceito DATE NOT NULL,	/* data_aceito tem que ser posterior à data_solicitado */

	CONSTRAINT PK_amizade PRIMARY KEY(usuario_solicita, usuario_aceita),
	CONSTRAINT FK_usuario_solic FOREIGN KEY(usuario_solicita) REFERENCES usuario,
	CONSTRAINT FK_usuario_aceita FOREIGN KEY(usuario_aceita) REFERENCES usuario
);

CREATE TABLE serie (
	video NUMBER(4,0) NOT NULL,
	qtd_temporadas NUMBER(2,0) NOT NULL, 
	nota NUMBER(3,1) NOT NULL,

	CONSTRAINT PK_serie PRIMARY KEY(video),
	CONSTRAINT FK_serie_video FOREIGN KEY(video) REFERENCES video,
	CONSTRAINT CK_qtdtemporadas CHECK(qtd_temporadas >= 1), 
	CONSTRAINT CK_nota_serie CHECK(nota BETWEEN 0 AND 10)
);

CREATE TABLE recomenda (
	usuario_recomenda char(14) NOT NULL,
	perf_recomenda VARCHAR2(50) NOT NULL,
	usuario_recebe char(14) NOT NULL,
	perf_recebe VARCHAR2(50) NOT NULL,
	video NUMBER(4, 0) NOT NULL,
	comentario VARCHAR2(200),

	CONSTRAINT PK_recomenda PRIMARY KEY(usuario_recomenda, perf_recomenda, usuario_recebe, perf_recebe, video),
	CONSTRAINT FK_recomenda FOREIGN KEY(usuario_recomenda, perf_recomenda) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_recebe FOREIGN KEY(usuario_recebe, perf_recebe) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_video_recomenda FOREIGN KEY(video) REFERENCES video
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

CREATE TABLE filme (
	video NUMBER(4,0) NOT NULL,
	sinopse VARCHAR2(200) NOT NULL,
	faixa_etaria VARCHAR2(6) NOT NULL,
	duracao VARCHAR2(6) NOT NULL,
	ano NUMBER(4,0) NOT NULL,
	/*thumb*/
	idioma VARCHAR2(50) NOT NULL,
	legenda VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_filme PRIMARY KEY(video),
	CONSTRAINT FK_filme_video FOREIGN KEY(video) REFERENCES video,
	CONSTRAINT FK_filmeidioma_linguas FOREIGN KEY(idioma) REFERENCES linguas,
	CONSTRAINT FK_filmelegenda_linguas FOREIGN KEY(legenda) REFERENCES linguas,
	CONSTRAINT CK_faixaetaria CHECK(faixa_etaria IN('Livre', '10+', '12+', '14+', '16+', '18+')),
	CONSTRAINT CK_duracao CHECK(duracao LIKE '%min'),
	CONSTRAINT CK_ano CHECK(ano > 1900)
);

CREATE TABLE avaliafilme (
	perfil_usuario char(14) NOT NULL,
	perfil_apelido VARCHAR2(50) NOT NULL,
	filme NUMBER(4,0) NOT NULL,
	nota NUMBER(3,1) NOT NULL,
	data_avaliafilme DATE NOT NULL,
	opiniao VARCHAR2(140),

	CONSTRAINT PK_avaliafilme PRIMARY KEY(perfil_usuario, perfil_apelido, filme),
	CONSTRAINT FK_avaliafilme_tipoperfil FOREIGN KEY(perfil_usuario, perfil_apelido) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_avaliafilme_filme FOREIGN KEY(filme) REFERENCES filme,
	CONSTRAINT CK_nota_avaliafilme CHECK(nota BETWEEN 0 AND 10)
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
	/*thumb*/
	idioma VARCHAR2(50) NOT NULL,
	legenda VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_episodio PRIMARY KEY(serie, nro_temporada, nro_episodio),
	CONSTRAINT FK_episodio_temporada FOREIGN KEY(serie, nro_temporada) REFERENCES temporada(serie, nro_temporada),
	CONSTRAINT FK_episodioidioma_linguas FOREIGN KEY(idioma) REFERENCES linguas,
	CONSTRAINT FK_episodiolegenda_linguas FOREIGN KEY(legenda) REFERENCES linguas,
	CONSTRAINT CK_nrotemporada_episodio CHECK(nro_temporada >= 0),
	CONSTRAINT CK_nroepisodios_episodio CHECK(nro_episodio >= 0),
	CONSTRAINT CK_faixaetaria_episodio CHECK(faixa_etaria IN('Livre', '10+', '12+', '14+', '16+', '18+')),
	CONSTRAINT CK_duracao_episodio CHECK(duracao LIKE '%min'),	/* não é melhor tratar só como numero mesmo? */
	CONSTRAINT CK_ano_episodio CHECK(ano > 1900)
);

CREATE TABLE avaliaep (
	perfil_usuario char(14) NOT NULL,
	perfil_apelido VARCHAR2(50) NOT NULL,
	episodio NUMBER(2,0) NOT NULL,
	temporada NUMBER(2,0) NOT NULL,
	serie NUMBER(4,0) NOT NULL,
	nota NUMBER(3,1) NOT NULL,
	data_avaliafilme DATE NOT NULL,
	opiniao VARCHAR2(140), 

	CONSTRAINT PK_avaliaep PRIMARY KEY(perfil_usuario, perfil_apelido, episodio, temporada, serie),
	CONSTRAINT FK_avaliaep_tipoperfil FOREIGN KEY(perfil_usuario, perfil_apelido) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_avaliaep_episodio FOREIGN KEY(episodio, temporada, serie) REFERENCES episodio(nro_episodio, nro_temporada, serie),
	CONSTRAINT CK_nota_avaliaep CHECK(nota BETWEEN 0 AND 10)
);

CREATE TABLE assisteep (
	usuario char(14) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	serie NUMBER(4,0) NOT NULL,
	temporada NUMBER(2,0) NOT NULL,
	episodio NUMBER(2,0) NOT NULL,
	minutos_assistidos NUMBER(3, 0) NOT NULL,
	data DATE NOT NULL,	/*cuidar da semântica, data>=1980 e deve corresponder ao dia em que foi assistido*/
						/* solucao: talvez tenha uma forma de pegar a data do momento da insercao da tupla? */

	CONSTRAINT PK_avaliaep_ PRIMARY KEY(usuario, apelido, episodio, temporada, serie),
	CONSTRAINT CK_temporada CHECK(temporada >= 0),
	CONSTRAINT CK_episodios CHECK(episodio >= 0),
	CONSTRAINT FK_tipoperfil FOREIGN KEY(usuario, apelido) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_episodio_assisteep FOREIGN KEY(episodio, temporada, serie) REFERENCES episodio(nro_episodio, nro_temporada, serie)
);


CREATE TABLE assistefilme (
	usuario char(14) NOT NULL,
	perfil VARCHAR2(50) NOT NULL,
	filme NUMBER(4, 0) NOT NULL,
	minutos_assistidos NUMBER(3, 0) NOT NULL,
	data DATE NOT NULL,

	CONSTRAINT PK_assistefilme PRIMARY KEY(usuario, perfil, filme),
	CONSTRAINT FK_perfil FOREIGN KEY(usuario, perfil) REFERENCES tipoperfil(usuario, apelido),
	CONSTRAINT FK_video_assistefilme FOREIGN KEY(filme) REFERENCES filme
);

CREATE TABLE infantil (
	usuario char(14) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	preferencia VARCHAR2(100),	/* genero preferido */
	faixa_etaria VARCHAR2(6) NOT NULL,	/* coloca em qual classificacao se encontra ou a idade? k: coloca na classificação*/

	CONSTRAINT PK_infantil PRIMARY KEY(usuario, apelido),
	CONSTRAINT FK_usuario_infantil FOREIGN KEY(usuario, apelido) REFERENCES tipoperfil,
	CONSTRAINT CK_faixaetaria_infantil CHECK(faixa_etaria IN('Livre', '10', '12+', '14+', '16+', '18+')),
	CONSTRAINT FK_preferencia_infantil FOREIGN KEY(preferencia) REFERENCES genero
);

CREATE TABLE adulto (  
	usuario char(14) NOT NULL,
	apelido VARCHAR2(50) NOT NULL,
	genero_prefere VARCHAR2(100),
	qualidade VARCHAR2(5) NOT NULL,
	legenda_prefere VARCHAR2(50) NOT NULL,	/* opcao preferencial de legenda */
	idioma_prefere VARCHAR2(50) NOT NULL,	/* opcao preferencial de idioma */

	CONSTRAINT PK_adulto PRIMARY KEY(usuario, apelido),
	CONSTRAINT FK_usuario_adulto FOREIGN KEY(usuario, apelido) REFERENCES tipoperfil,
	CONSTRAINT CK_legenda_adulto FOREIGN KEY(legenda_prefere) REFERENCES linguas,
	CONSTRAINT CK_idioma_adulto FOREIGN KEY(idioma_prefere) REFERENCES linguas,
	CONSTRAINT CK_qualidade_adulto CHECK(qualidade IN ('360p', '480p', '720p', '1080p', 'HD', '4K')),
	CONSTRAINT FK_preferencia_adulto FOREIGN KEY(genero_prefere) REFERENCES genero
);

CREATE TABLE gerencia (
	usuario_adulto char(14) NOT NULL,
	apelido_adulto VARCHAR2(50) NOT NULL,
	usuario_infantil char(14) NOT NULL,
	apelido_infantil VARCHAR2(50) NOT NULL,

	CONSTRAINT PK_gerencia PRIMARY KEY(usuario_infantil, apelido_infantil),
	CONSTRAINT FK_adulto FOREIGN KEY(usuario_adulto, apelido_adulto) REFERENCES adulto(usuario, apelido),
	CONSTRAINT FK_infantil FOREIGN KEY(usuario_infantil, apelido_infantil) REFERENCES infantil(usuario, apelido)
);