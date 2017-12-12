/*Queries de SQL*/
/*INCLUDES*/
/*
Alef Segura Santos     			- 9762942
Gustavo de Moura Souza    		- 9762981
Thaís Lima de Oliveira Nobre  	- 7163822
Yago Rafael Pessoa     			- 9896218
*/


INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (1, 'Star Wars Episódio I: A Ameaça Fantasma', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (2, 'Star Wars Episódio II: Ataque dos Clones', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (3, 'Star Wars Episódio III: A Vingança dos Sith', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (4, 'Star Wars Episódio IV: Uma Nova Esperança', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (5, 'Star Wars Episódio V: O Império Contra Ataca', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (6, 'Star Wars Episódio VI: O Retorno de Jedi', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (7, 'Star Wars Episódio VII: O Despertar da Força', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (8, 'Rogue One: Uma História Star Wars', 'Filme');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (9, 'Friends', 'Série'); 
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (10, 'Once Upon a Time', 'Série');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (11, 'Big Mouth', 'Série');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (12, 'Suits', 'Série');
INSERT INTO video (cod_video, titulo, tipoVideo) VALUES (13, 'RuPauls Drag Race', 'Série');

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

INSERT INTO linguas VALUES ('Português-Brasil');
INSERT INTO linguas VALUES ('Português-Portugal');
INSERT INTO linguas VALUES ('English-USA');
INSERT INTO linguas VALUES ('English-UK');
INSERT INTO linguas VALUES ('Español');
INSERT INTO linguas VALUES ('Deutsch');
INSERT INTO linguas VALUES ('Français');    

INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (1, 'Solange Silva Soares Santiago', 1, 1);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (2, 'William Paulo Bruno', 1, 0);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (3, 'Paulo José Salmo', 1, 0);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (4, 'Fernanda Sartori', 0, 1);
INSERT INTO elenco (codigo, nome, e_ator, e_diretor) VALUES (5, 'Carlos Nascimento', 1, 1);

INSERT INTO tem (video, genero) VALUES (1, 'Ação');
INSERT INTO tem (video, genero) VALUES (2, 'Ação');
INSERT INTO tem (video, genero) VALUES (3, 'Ação');
INSERT INTO tem (video, genero) VALUES (4, 'Aventura');
INSERT INTO tem (video, genero) VALUES (5, 'Aventura');
INSERT INTO tem (video, genero) VALUES (6, 'Aventura');
INSERT INTO tem (video, genero) VALUES (7, 'Suspense');
INSERT INTO tem (video, genero) VALUES (8, 'Suspense');
INSERT INTO tem (video, genero) VALUES (9, 'Comédia');
INSERT INTO tem (video, genero) VALUES (10, 'Drama');
INSERT INTO tem (video, genero) VALUES (11, 'Animação');
INSERT INTO tem (video, genero) VALUES (12, 'Suspense');
INSERT INTO tem (video, genero) VALUES (13, 'LGBT');

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

INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('398.356.665-01', 'Básico');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('225.265.985-03', 'Familiar');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('464.566.956-15', 'Master');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('558.987.523-12', 'Básico');
INSERT INTO seleciona (usuario, planoDeAssinatura) VALUES ('662.596.684-05', 'Master');
 
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('398.356.665-01 ', 'Maria Mãe', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('398.356.665-01 ', 'Maria Filha', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('225.265.985-03', 'José', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('225.265.985-03', 'Zezinho', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('464.566.956-15', 'Carla', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('464.566.956-15', 'Carla Segunda', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('558.987.523-12', 'Ronaldo', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('558.987.523-12', 'Ronaldinho', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('662.596.684-05', 'Natana', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoPerfil) VALUES ('662.596.684-05', 'Anatan', 'Infantil');

INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, legenda_prefere, idioma_prefere) VALUES ('464.566.956-15', 'Carla', 'Drama', '4K', 'Português-Brasil', 'English-UK');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, legenda_prefere, idioma_prefere) VALUES ('558.987.523-12', 'Ronaldo', 'Ação', '720p', 'Português-Brasil', 'Français');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, legenda_prefere, idioma_prefere) VALUES ('225.265.985-03', 'José', 'Animação', 'HD', 'English-UK', 'Deutsch');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, idioma_prefere) VALUES ('398.356.665-01 ', 'Maria Mãe', 'Romance', '1080p', 'Português-Brasil');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, idioma_prefere) VALUES ('662.596.684-05', 'Natana', 'LGBT', '4K', 'Español');

INSERT INTO infantil (usuario, apelido, genero_prefere, faixaEtaria) VALUES ('398.356.665-01', 'Maria Filha', '12+');
INSERT INTO infantil (usuario, apelido, genero_prefere, faixaEtaria) VALUES ('225.265.985-03', 'Zezinho', '10+');
INSERT INTO infantil (usuario, apelido, genero_prefere, faixaEtaria) VALUES ('464.566.956-15', 'Carla Segunda', 'Livre');
INSERT INTO infantil (usuario, apelido, genero_prefere, faixaEtaria) VALUES ('558.987.523-12', 'Ronaldinho', '14+');
INSERT INTO infantil (usuario, apelido, genero_prefere, faixaEtaria) VALUES ('662.596.684-05', 'Anatan', 'Livre');

INSERT INTO gerencia (usuario_adulto, apelido_adulto, usuario_infantil, apelido_infantil) VALUES ('398.356.665-01', 'Maria Mãe', '398.356.665-01', 'Maria Filha');
INSERT INTO gerencia (usuario_adulto, apelido_adulto, usuario_infantil, apelido_infantil) VALUES ('225.265.985-03', 'José', '225.265.985-03', 'Zezinho');
INSERT INTO gerencia (usuario_adulto, apelido_adulto, usuario_infantil, apelido_infantil) VALUES ('464.566.956-15', 'Carla', '464.566.956-15', 'Carla Segunda');
INSERT INTO gerencia (usuario_adulto, apelido_adulto, usuario_infantil, apelido_infantil) VALUES ('558.987.523-12', 'Ronaldo', '558.987.523-12', 'Ronaldinho');
INSERT INTO gerencia (usuario_adulto, apelido_adulto, usuario_infantil, apelido_infantil) VALUES ('662.596.684-05', 'Natana', '662.596.684-05', 'Anatan');

INSERT INTO amizade (usuario_solicita, usuario_aceita, data_solicitado, data_aceito) VALUES ('464.566.956-15', '225.265.985-03', '01/10/2015', '02/10/2015');
INSERT INTO amizade (usuario_solicita, usuario_aceita, data_solicitado, data_aceito) VALUES ('398.356.665-01', '464.566.956-15', '02/11/2015', '03/11/2015');
INSERT INTO amizade (usuario_solicita, usuario_aceita, data_solicitado, data_aceito) VALUES ('398.356.665-01', '225.265.985-03', '08/10/2016', '09/10/2016');
INSERT INTO amizade (usuario_solicita, usuario_aceita, data_solicitado, data_aceito) VALUES ('398.356.665-01', '558.987.523-12', '01/02/2016', '02/02/2016');
INSERT INTO amizade (usuario_solicita, usuario_aceita, data_solicitado, data_aceito) VALUES ('398.356.665-01', '662.596.684-05', '30/04/2016', '26/05/2016');

INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (1, 
	'Obi-Wan Kenobi (Ewan McGregor) is a young apprentice Jedi knight under the tutelage of Qui-Gon Jinn (Liam Neeson) ; Anakin Skywalker (Jake Lloyd), who will later father Luke Skywalker and become known as Darth Vader, is just a 9-year-old boy.',
	'10+', '196min', 1999, 'English-USA', 'Português-Brasil');
INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (2, 
	'Set ten years after the events of "The Phantom Menace," the Republic continues to be mired in strife and chaos. A separatist movement encompassing hundreds of planets and powerful corporate alliances poses new threats to the galaxy that even the Jedi cannot stem. These moves, long planned',
	'10+', '202min', 2002, 'English-USA', 'Português-Brasil');
INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (3, 
	'It has been three years since the Clone Wars began. Jedi Master Obi-Wan Kenobi (Ewan McGregor) and Jedi Knight Anakin Skywalker (Hayden Christensen) rescue Chancellor Palpatine (Ian McDiarmid) from General Grievous, the commander of the droid armies, but Grievous escapes.',
	'12+', '200min', 2005, 'English-USA', 'Português-Brasil');
INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (4, 
	'The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium Falcon',
	'12+', '185min', 1974, 'English-USA', 'Português-Brasil');
INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (5, 
	'The adventure continues in this "Star Wars" sequel. Luke Skywalker (Mark Hamill), Han Solo (Harrison Ford), Princess Leia (Carrie Fisher) and Chewbacca (Peter Mayhew) face attack by the Imperial forces and its AT-AT walkers on the ice planet Hoth. ',
	'10+', '187min', 1980, 'English-USA', 'Português-Brasil');
INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (6, 
	'Luke Skywalker (Mark Hamill) battles horrible Jabba the Hut and cruel Darth Vader to save his comrades in the Rebel Alliance and triumph over the Galactic Empire. Han Solo (Harrison Ford) and Princess Leia (Carrie Fisher) reaffirm their love and team with Chewbacca',
	'10+', '196min', 1983, 'English-USA', 'Português-Brasil');
INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (7, 
	'Thirty years after the defeat of the Galactic Empire, the galaxy faces a new threat from the evil Kylo Ren (Adam Driver) and the First Order. When a defector named Finn (John Boyega) crash-lands on a desert planet, he meets Rey (Daisy Ridley)',
	'12+', '195min', 2015, 'English-USA', 'Português-Brasil');
INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (8, 
	'Former scientist Galen Erso lives on a farm with his wife and young daughter, Jyn. His peaceful existence comes crashing down when the evil Orson Krennic takes him away from his beloved family. Many years later',
	'14+', '193min', 2016, 'English-USA', 'Português-Brasil');

INSERT INTO serie (video, qtd_temporadas, nota) VALUES (9, 3, 10);
INSERT INTO serie (video, qtd_temporadas, nota) VALUES (10, 1, 8);
INSERT INTO serie (video, qtd_temporadas, nota) VALUES (11, 1, 9);
INSERT INTO serie (video, qtd_temporadas, nota) VALUES (12, 1, 8);
INSERT INTO serie (video, qtd_temporadas, nota) VALUES (13, 2, 10);

INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (9, 1, 1, 'Season 1');
INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (9, 2, 1, 'Season 2');
INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (9, 3, 1, 'Season 3');
INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (10, 1, 1, 'Season 1');
INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (11, 1, 1, 'Season 1');
INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (12, 1, 1, 'Season 1');
INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (13, 7, 1, '7th Drag');
INSERT INTO temporada (serie, nro_temporada, qtd_episodios, titulo) VALUES (13, 8, 1, '8th Drag');

INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (9, 1, 1, 'The One Where Monica Gets a Roommate', 'Rachel runs from her wedding and meet the friends at the coffe shop',
	'12+', '22min', 1994, 'English-USA', 'English-USA');
INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (9, 2, 1, 'The One with Rosss New Girlfriend', 'Rachel waits at the airport for Ross',
	'12+', '22min', 1995, 'English-USA', 'English-USA');
INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (9, 3, 1, 'The One with the Princess Leia Fantasy', 'Rachel dress up as Princess Leia',
	'12+', '22min', 1996, 'English-USA', 'English-USA');
INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (10, 1, 1, 'Pilot', 'Meet the characters from fairy tales',
	'14+', '41min', 2013, 'English-USA', 'English-USA');
INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (11, 1, 1, 'Pilot', 'Learn puberty from animations',
	'18+', '45min', 2017, 'English-USA', 'English-USA');
INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (12, 1, 1, 'Suit up', 'Let the law begin',
	'14+', '41min', 2013, 'English-USA', 'Português-Brasil');
INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (13, 7, 1, 'Born Naked', 'Fourteen fierce queens kickoff by showing three differente looks',
	'14+', '43min', 2015, 'English-USA', 'Português-Brasil');
INSERT INTO episodio (serie, nro_temporada, nro_episodio, titulo, sinopse, faixa_etaria, duracao, ano, idioma, legenda) 
VALUES (13, 8, 1, 'Keeping it 100!', 'For the 100th episode, Ru challanges a new crop of queens',
	'14+', '44min', 2016, 'English-USA', 'Português-Brasil');


INSERT INTO assisteep VALUES ();

INSERT INTO assistefilme VALUES ();

INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('398.356.665-01 ', 'Maria Mãe', 'Ficção Científica', '10', '10/01/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('398.356.665-01 ', 'Maria Mãe', 'Terror', '10', '10/01/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('464.566.956-15', 'Carla', 'Ficção Científica', '8', '01/10/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('558.987.523-12', 'Ronaldo', 'Aventura', '8', '01/11/2017');
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero) VALUES ('662.596.684-05', 'Natana', 'Infanto Juvenil', '4', '03/12/2017');

INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('398.356.665-01 ', 'Maria Mãe', 1, 10, '12/06/2017');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('398.356.665-01 ', 'Maria Filha', 1, 5, '10/06/2017');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('464.566.956-15', 'Carla', 3, 9, '11/12/2017');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('464.566.956-15', 'Carla', 4, 8, '10/12/2017');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('464.566.956-15', 'Carla', 5, 7, '15/11/2017');

INSERT INTO avaliaep () VALUES ();

INSERT INTO recomenda VALUES ();

INSERT INTO acesso VALUES ();

INSERT INTO dispositivo VALUES ();

INSERT INTO periodopaga VALUES ();

INSERT INTO paga VALUES ();

INSERT INTO cadastropagamento VALUES ();

INSERT INTO cartao VALUES ();

INSERT INTO debito VALUES ();

INSERT INTO paypal VALUES ();