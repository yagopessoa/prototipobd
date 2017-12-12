/*Queries de SQL*/
/*INCLUDES*/
/*
Alef Segura Santos     			- 9762942
Gustavo de Moura Souza    		- 9762981
Thaís Lima de Oliveira Nobre  	- 7163822
Yago Rafael Pessoa     			- 9896218
*/

INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (1, 'Solange Silva Soares Santiago', 1, 1);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (2, 'William Paulo Bruno', 1, 0);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (3, 'Paulo José Salmo', 1, 0);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (4, 'Fernanda Sartori', 0, 1);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (5, 'Carlos Nascimento', 1, 1);

INSERT INTO planodeassinatura VALUES ('Básico', '25,00', 'Assista em 1 tela, com 100 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Padrão', '30,00', 'Assista em 1 tela, com 200 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Familiar', '40,00', 'Assista em 3 telas, com 200 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Master', '50,00', 'Assista em quantas telas quiser, com 300 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Premium', '60,00', 'Assista em quantas telas quiser, quantos filmes e séries quiser');

INSERT INTO usuario VALUES ('398.356.665-01', 'Maria da Silva', 'ms@gmail.com', '12/05/1998');
INSERT INTO usuario VALUES ('225.265.985-03', 'José Alfredo Costa', 'jac@gmail.com', '01/10/1960');
INSERT INTO usuario VALUES ('464.566.956-15', 'Carla Nobrega', 'cn@gmail.com', '03/05/1970');
INSERT INTO usuario VALUES ('558.987.523-12', 'Ronaldo Ferreira', 'rf@gmail.com', '05/09/1995');
INSERT INTO usuario VALUES ('662.596.684-05', 'Natana Aguiar', 'na@gmail.com', '29/01/1986');
	   
##### ATÉ AQUI JÁ ESTÃO SENDO INSERIDOS NORMAMENTE ######

INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (1, 'Star Wars - O Império Contra ataca', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES	(2, 'Star Wars - O Retorno de Jedi', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES	(3, 'Harry Potter e a Pedra Filosofal', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES	(4, 'Harry Potter e a Câmara Secreta', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (5, 'Friends', 'serie');

INSERT INTO atua (video, ator) VALUES (1, 1);
INSERT INTO atua (video, ator) VALUES (2, 1);
INSERT INTO atua (video, ator) VALUES (3, 2);
INSERT INTO atua (video, ator) VALUES (4, 3);
INSERT INTO atua (video, ator) VALUES (5, 5);	   

INSERT INTO dirige (video, diretor) VALUES (1,1);
INSERT INTO dirige (video, diretor) VALUES (2,4);
INSERT INTO dirige (video, diretor) VALUES (3,4);
INSERT INTO dirige (video, diretor) VALUES (4,5);
INSERT INTO dirige (video, diretor) VALUES (5,1);

INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('398.356.665-01 ', 'Básico');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('225.265.985-03', 'Familiar');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('464.566.956-15', 'Master');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('558.987.523-12', 'Básico');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('662.596.684-05', 'Master');

	   
INSERT INTO genero (nomeGenero) VALUES ('Ficção Científica');
INSERT INTO genero (nomeGenero) VALUES ('Infanto Juvenil');
INSERT INTO genero (nomeGenero) VALUES ('Aventura');
INSERT INTO genero (nomeGenero) VALUES ('Terror');
INSERT INTO genero (nomeGenero) VALUES ('Comédia');
INSERT INTO genero (nomeGenero) VALUES ('Drama');
INSERT INTO genero (nomeGenero) VALUES ('Suspense');
INSERT INTO genero (nomeGenero) VALUES ('Documentário');
INSERT INTO genero (nomeGenero) VALUES ('Ação');
INSERT INTO genero (nomeGenero) VALUES ('Animação');
INSERT INTO genero (nomeGenero) VALUES ('LGBT');
INSERT INTO genero (nomeGenero) VALUES ('Estrangeiro');


INSERT INTO tem VALUES ('Ficção Científica', 1);
INSERT INTO tem VALUES ('Ficção Científica', 2);
INSERT INTO tem VALUES ('Infanto Juvenil', 3);
INSERT INTO tem VALUES ('Infanto Juvenil', 4);
INSERT INTO tem VALUES ('Comédia', 5);


INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (1, 'Star Wars - O Império Contra ataca', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (2, 'Star Wars - O Retorno de Jedi', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (3, 'Harry Potter e a Pedra Filosofal', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (4, 'Harry Potter e a Câmara Secreta', 'filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (5, 'Friends', 'série');
      

INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('398.356.665-01 ', 'Maria', 'Ficção Científica', '10', '10/01/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('398.356.665-01 ', 'Maria', 'Terror', '10', '10/01/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('464.566.956-15', 'Carla', 'Ficção Científica', '8', '01/10/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('558.987.523-12', 'Ronaldo', 'Aventura', '8', '01/11/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('662.596.684-05', 'Natana', 'Infanto Juvenil', '4', '03/12/2017');


INSERT INTO amizade (usuarioSolic, usuarioAceit, dataSolic, dataAceito) VALUES ('398.356.665-01', 'Maria', '464.566.956-15', 'Carla', '10/05/2017', '11/05/2017');
INSERT INTO amizade (usuarioSolic, usuarioAceit, dataSolic, dataAceito) VALUES ('398.356.665-01', 'Carla', '558.987.523-12', 'Ronaldo', '10/01/2017', '12/01/2017');
INSERT INTO amizade (usuarioSolic, usuarioAceit, dataSolic, dataAceito) VALUES ('558.987.523-12', 'Ronaldo', '662.596.684-05', 'Natana', '01/10/2017', '05/10/2017');
INSERT INTO amizade (usuarioSolic, usuarioAceit, dataSolic, dataAceito) VALUES ('558.987.523-12', 'Ronaldo','398.356.665-01 ', 'Maria', '01/11/2017', '01/11/2017');

INSERT INTO adulto (usuario, apelido, preferencia, qualidade, legenda, idioma) VALUES ('398.356.665-01 ', 'Maria');
	   ('464.566.956-15', 'Carla' ),
	   ('558.987.523-12', 'Ronaldo'),


INSERT INTO tipoperfil (usuario, apelido, tipoPerfil)
/*tipoperfil ???????????*/
VALUES ('398.356.665-01 ', 'Maria da Silva');
	   ('225.265.985-03', 'José Alfredo Costa');
	   ('464.566.956-15', 'Carla Nobrega');
	   ('558.987.523-12', 'Ronaldo Ferreira');
	   ('662.596.684-05', 'Natana Aguiar');


INSERT INTO gerencia (adulto, apelidoAdulto, usuarioInfantil, apelidoInfantil) VALUES ('398.356.665-01 ', 'Maria', '225.265.985-03', 'José');
INSERT INTO gerencia (adulto, apelidoAdulto, usuarioInfantil, apelidoInfantil) VALUES ('464.566.956-15', 'Carla', '662.596.684-05', 'Natana');
INSERT INTO gerencia (adulto, apelidoAdulto, usuarioInfantil, apelidoInfantil) VALUES ('558.987.523-12', 'Ronaldo', '225.265.985-03', 'José');
	   

/*preferencia ???*/
INSERT INTO infantil (usuario, apelido, preferencia, faixaEtaria) VALUES ('225.265.985-03', 'José', '12-17');
INSERT INTO infantil (usuario, apelido, preferencia, faixaEtaria) VALUES ('662.596.684-05', 'Natana', '7-10');

INSERT INTO avaliafilme (perfilUsuario, perfilApelido, filme, nota, dataAvaliaFilme, opiniao) VALUES ();

INSERT INTO avaliaep () VALUES ();

INSERT INTO filme VALUES ();

INSERT INTO serie VALUES ();

INSERT INTO temporada VALUES ();

INSERT INTO episodio VALUES ();

INSERT INTO assisteep VALUES ();

INSERT INTO assistefilme VALUES ();

INSERT INTO recomenda VALUES ();

INSERT INTO acesso VALUES ();

INSERT INTO dispositivo VALUES ();

INSERT INTO periodopaga VALUES ();

INSERT INTO paga VALUES ();

INSERT INTO cadastropagamento VALUES ();

INSERT INTO cartao VALUES ();

INSERT INTO debito VALUES ();

INSERT INTO paypal VALUES ();