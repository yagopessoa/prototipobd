/*Queries de SQL*/
/*INCLUDES*/
/*
Alef Segura Santos     			- 9762942
Gustavo de Moura Souza    		- 9762981
Thaís Lima de Oliveira Nobre  	- 7163822
Yago Rafael Pessoa     			- 9896218
*/


INSERT INTO video (codigo, titulo, tipovideo) VALUES (1, 'Star Wars Episódio I: A Ameaça Fantasma', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (2, 'Star Wars Episódio II: Ataque dos Clones', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (3, 'Star Wars Episódio III: A Vingança dos Sith', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (4, 'Star Wars Episódio IV: Uma Nova Esperança', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (5, 'Star Wars Episódio V: O Império Contra Ataca', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (6, 'Star Wars Episódio VI: O Retorno de Jedi', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (7, 'Star Wars Episódio VII: O Despertar da Força', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (8, 'Rogue One: Uma História Star Wars', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (9, 'Friends', 'Série'); 
INSERT INTO video (codigo, titulo, tipovideo) VALUES (10, 'Once Upon a Time', 'Série');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (11, 'Big Mouth', 'Série');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (12, 'Suits', 'Série');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (13, 'RuPauls Drag Race', 'Série');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (14, 'Matrix', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (15, 'Titanic', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (16, 'O Rei Le�o', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (17, 'As Branquelas', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (18, 'A Origem', 'Filme');
INSERT INTO video (codigo, titulo, tipovideo) VALUES (19, 'Wolverine Origins', 'Filme');

INSERT INTO genero VALUES ('Ficção Científica');
INSERT INTO genero VALUES ('Infanto Juvenil');
INSERT INTO genero VALUES ('Aventura');
INSERT INTO genero VALUES ('Terror');
INSERT INTO genero VALUES ('Comédia');
INSERT INTO genero VALUES ('Drama');
INSERT INTO genero VALUES ('Suspense');
INSERT INTO genero VALUES ('Documentário');
INSERT INTO genero VALUES ('Ação');
INSERT INTO genero VALUES ('Animação');
INSERT INTO genero VALUES ('LGBT');
INSERT INTO genero VALUES ('Estrangeiro');
INSERT INTO genero VALUES ('Romance');

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

INSERT INTO planodeassinatura VALUES ('Básico', 25.00, 'Assista em 1 tela, com 100 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Padrão', 30.00, 'Assista em 1 tela, com 200 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Familiar', 40.00, 'Assista em 3 telas, com 200 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Master', 50.00, 'Assista em quantas telas quiser, com 300 diferentes opções de filmes e séries por mês');
INSERT INTO planodeassinatura VALUES ('Premium', 60.00, 'Assista em quantas telas quiser, quantos filmes e séries quiser');

INSERT INTO usuario VALUES ('398.356.665-01', 'Maria da Silva', 'ms@gmail.com', '12/05/1998');
INSERT INTO usuario VALUES ('225.265.985-03', 'José Alfredo Costa', 'jac@gmail.com', '01/10/1960');
INSERT INTO usuario VALUES ('464.566.956-15', 'Carla Nobrega', 'cn@gmail.com', '03/05/1970');
INSERT INTO usuario VALUES ('558.987.523-12', 'Ronaldo Ferreira', 'rf@gmail.com', '05/09/1995');
INSERT INTO usuario VALUES ('662.596.684-05', 'Natana Aguiar', 'na@gmail.com', '29/01/1986');

INSERT INTO seleciona (usuario, planodeassinatura) VALUES ('662.596.684-05', 'Básico');
INSERT INTO seleciona (usuario, planodeassinatura) VALUES ('558.987.523-12', 'Padrão');
INSERT INTO seleciona (usuario, planodeassinatura) VALUES ('464.566.956-15', 'Familiar');
INSERT INTO seleciona (usuario, planodeassinatura) VALUES ('225.265.985-03', 'Master');
INSERT INTO seleciona (usuario, planodeassinatura) VALUES ('398.356.665-01', 'Premium');
 
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('398.356.665-01', 'Maria Mãe', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('398.356.665-01', 'Maria Filha', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('225.265.985-03', 'José', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('225.265.985-03', 'Zezinho', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('464.566.956-15', 'Carla', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('464.566.956-15', 'Carla Segunda', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('558.987.523-12', 'Ronaldo', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('558.987.523-12', 'Ronaldinho', 'Infantil');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('662.596.684-05', 'Natana', 'Adulto');
INSERT INTO tipoperfil (usuario, apelido, tipoperfil) VALUES ('662.596.684-05', 'Anatan', 'Infantil');

INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, legenda_prefere, idioma_prefere) VALUES ('464.566.956-15', 'Carla', 'Drama', '4K', 'Português-Brasil', 'English-UK');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, legenda_prefere, idioma_prefere) VALUES ('558.987.523-12', 'Ronaldo', 'Ação', '720p', 'Português-Brasil', 'Français');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, legenda_prefere, idioma_prefere) VALUES ('225.265.985-03', 'José', 'Animação', 'HD', 'English-UK', 'Deutsch');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, idioma_prefere) VALUES ('398.356.665-01', 'Maria Mãe', 'Romance', '1080p', 'Português-Brasil');
INSERT INTO adulto (usuario, apelido, genero_prefere, qualidade_prefere, idioma_prefere) VALUES ('662.596.684-05', 'Natana', 'LGBT', '4K', 'Español');

INSERT INTO infantil (usuario, apelido, genero_prefere, faixa_etaria) VALUES ('398.356.665-01', 'Maria Filha', 'Aventura', '12+');
INSERT INTO infantil (usuario, apelido, faixa_etaria) VALUES ('225.265.985-03', 'Zezinho', '10+');
INSERT INTO infantil (usuario, apelido, genero_prefere, faixa_etaria) VALUES ('464.566.956-15', 'Carla Segunda', 'Ação', 'Livre');
INSERT INTO infantil (usuario, apelido, genero_prefere, faixa_etaria) VALUES ('558.987.523-12', 'Ronaldinho', 'Aventura', '14+');
INSERT INTO infantil (usuario, apelido, faixa_etaria) VALUES ('662.596.684-05', 'Anatan', 'Livre');

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

INSERT INTO assisteep (usuario, apelido, serie, temporada, episodio, minutos_assistidos, data) VALUES ('398.356.665-01', 'Maria Mãe', 9, 1, 1, 20, '10/01/2017');
INSERT INTO assisteep (usuario, apelido, serie, temporada, episodio, minutos_assistidos, data) VALUES ('398.356.665-01', 'Maria Mãe', 9, 2, 1, 20, '11/01/2017');
INSERT INTO assisteep (usuario, apelido, serie, temporada, episodio, minutos_assistidos, data) VALUES ('398.356.665-01', 'Maria Filha', 12, 1, 1, 30, '10/01/2017');
INSERT INTO assisteep (usuario, apelido, serie, temporada, episodio, minutos_assistidos, data) VALUES ('225.265.985-03', 'José', 11, 1, 1, 44, '10/08/2017');
INSERT INTO assisteep (usuario, apelido, serie, temporada, episodio, minutos_assistidos, data) VALUES ('558.987.523-12', 'Ronaldinho', 9, 1, 1, 21, '24/02/2017');
INSERT INTO assisteep (usuario, apelido, serie, temporada, episodio, minutos_assistidos, data) VALUES ('558.987.523-12', 'Ronaldinho', 13, 7, 1, 40, '11/01/2017');

INSERT INTO assistefilme (usuario, perfil, filme, minutos_assistidos, data) VALUES ('225.265.985-03', 'Zezinho', 1, 50, '10/01/2017');
INSERT INTO assistefilme (usuario, perfil, filme, minutos_assistidos, data) VALUES ('464.566.956-15', 'Carla', 1, 30, '11/01/2017');
INSERT INTO assistefilme (usuario, perfil, filme, minutos_assistidos, data) VALUES ('464.566.956-15', 'Carla Segunda', 2, 100, '10/01/2017');
INSERT INTO assistefilme (usuario, perfil, filme, minutos_assistidos, data) VALUES ('464.566.956-15', 'Carla Segunda', 3, 50, '11/01/2017');
INSERT INTO assistefilme (usuario, perfil, filme, minutos_assistidos, data) VALUES ('558.987.523-12', 'Ronaldo', 2, 12, '11/01/2017');
INSERT INTO assistefilme (usuario, perfil, filme, minutos_assistidos, data) VALUES ('662.596.684-05', 'Natana', 7, 150, '24/02/2017');
INSERT INTO assistefilme (usuario, perfil, filme, minutos_assistidos, data) VALUES ('662.596.684-05', 'Natana', 1, 88, '24/02/2017');

INSERT INTO avaliagenero (usuario, apelido, genero, nota, data) VALUES ('398.356.665-01', 'Maria Mãe', 'Ficção Científica', '10', '10/01/2017');
INSERT INTO avaliagenero (usuario, apelido, genero, nota, data) VALUES ('398.356.665-01', 'Maria Mãe', 'Terror', '10', '10/01/2017');
INSERT INTO avaliagenero (usuario, apelido, genero, nota, data) VALUES ('464.566.956-15', 'Carla', 'Ficção Científica', '8', '01/10/2017');
INSERT INTO avaliagenero (usuario, apelido, genero, nota, data) VALUES ('558.987.523-12', 'Ronaldo', 'Aventura', '8', '01/11/2017');
INSERT INTO avaliagenero (usuario, apelido, genero, nota, data) VALUES ('662.596.684-05', 'Natana', 'Infanto Juvenil', '4', '03/12/2017');

INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('398.356.665-01', 'Maria Mãe', 1, 10, '12/06/2017', 'Achei o filme muito legal');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('398.356.665-01', 'Maria Filha', 1, 5, '10/06/2017','Adorei o novo vilão! Não tanto o ator');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('464.566.956-15', 'Carla', 3, 9, '11/12/2017','Gostei muito! Trouxeram de volta os mesmo atores!');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('464.566.956-15', 'Carla', 4, 8, '10/12/2017','Incrível poder ver Stars Wars com os efeitos especiais atuais ');
INSERT INTO avaliafilme (perfil_usuario, perfil_apelido, filme, nota, data_avaliafilme, opiniao) VALUES ('464.566.956-15', 'Carla', 5, 7, '15/11/2017','Adorei! Quero fazer uma maratona!');

INSERT INTO avaliaep (perfil_usuario, perfil_apelido, episodio, temporada, serie, nota, data_avaliafilme, opiniao) VALUES ('558.987.523-12', 'Ronaldo', 1, 1, 9, 10, '08/08/2017', 'O Ross é o melhor');
INSERT INTO avaliaep (perfil_usuario, perfil_apelido, episodio, temporada, serie, nota, data_avaliafilme, opiniao) VALUES ('558.987.523-12', 'Ronaldo', 1, 2, 9, 9, '07/09/2017', 'Ross é muito lerdo! Só minha mãe pra gostar dele');
INSERT INTO avaliaep (perfil_usuario, perfil_apelido, episodio, temporada, serie, nota, data_avaliafilme, opiniao) VALUES ('662.596.684-05', 'Natana', 1, 3, 9, 10, '12/10/2017', 'Só eu que choro de rir das piadas do Chandler? hahahaha');
INSERT INTO avaliaep (perfil_usuario, perfil_apelido, episodio, temporada, serie, nota, data_avaliafilme, opiniao) VALUES ('662.596.684-05', 'Natana', 1, 1, 9, 9, '04/11/2017', 'Oh the fuf');
INSERT INTO avaliaep (perfil_usuario, perfil_apelido, episodio, temporada, serie, nota, data_avaliafilme, opiniao) VALUES ('662.596.684-05', 'Anatan', 1, 2, 9, 10, '29/11/2017', 'Phoebe é a melhor personagem de todas! Haha');

INSERT INTO recomenda (usuario_recomenda, perf_recomenda, usuario_recebe, perf_recebe, video, comentario) VALUES ('398.356.665-01', 'Maria Mãe', '558.987.523-12', 'Ronaldinho', 1, 'Cara, veja esse filme');
INSERT INTO recomenda (usuario_recomenda, perf_recomenda, usuario_recebe, perf_recebe, video) VALUES ('398.356.665-01', 'Maria Filha', '662.596.684-05', 'Natana', 4);
INSERT INTO recomenda (usuario_recomenda, perf_recomenda, usuario_recebe, perf_recebe, video, comentario) VALUES ('225.265.985-03', 'José', '662.596.684-05', 'Anatan', 2, 'Man, mto bom esse filme');
INSERT INTO recomenda (usuario_recomenda, perf_recomenda, usuario_recebe, perf_recebe, video) VALUES ('225.265.985-03', 'Zezinho', '398.356.665-01', 'Maria Mãe', 2);
INSERT INTO recomenda (usuario_recomenda, perf_recomenda, usuario_recebe, perf_recebe, video, comentario) VALUES ('464.566.956-15', 'Carla', '225.265.985-03', 'José', 3, 'Quando puder asssista, serio!!!');
INSERT INTO recomenda (usuario_recomenda, perf_recomenda, usuario_recebe, perf_recebe, video, comentario) VALUES ('558.987.523-12', 'Ronaldo', '225.265.985-03', 'Zezinho', 5, 'Esse é mais ou menos, veja se quiser');

INSERT INTO dispositivo (codigo, nome, versao_so) VALUES (1, 'Android', 'Oreo');
INSERT INTO dispositivo (codigo, nome, versao_so) VALUES (2, 'iOS', '11');
INSERT INTO dispositivo (codigo, nome, versao_so) VALUES (3, 'WindowsPhone', 'win10');
INSERT INTO dispositivo (codigo, nome, versao_so) VALUES (4, 'BlackBerry OS', '4.1');
INSERT INTO dispositivo (codigo, nome, versao_so) VALUES (5, 'Symbian', '2');

INSERT INTO acesso (dispositivo, usuario, horario, ip) VALUES (1, '398.356.665-01', '21:00:08', '17718010278');
INSERT INTO acesso (dispositivo, usuario, horario, ip) VALUES (2, '398.356.665-01', '08:45:44', '18818010277');
INSERT INTO acesso (dispositivo, usuario, horario, ip) VALUES (3, '225.265.985-03', '19:00:28', '17418010858');
INSERT INTO acesso (dispositivo, usuario, horario, ip) VALUES (4, '225.265.985-03', '08:00:01', '24818010270');
INSERT INTO acesso (dispositivo, usuario, horario, ip) VALUES (5, '225.265.985-03', '11:30:47', '31578910271');

INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (1, '398.356.665-01', 'Cartao');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (2, '398.356.665-01', 'Debito');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (3, '398.356.665-01', 'Paypal');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (1, '225.265.985-03', 'Cartao');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (2, '225.265.985-03', 'Debito');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (3, '225.265.985-03', 'Paypal');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (1, '464.566.956-15', 'Cartao');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (2, '464.566.956-15', 'Debito');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (3, '464.566.956-15', 'Paypal');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (1, '558.987.523-12', 'Cartao');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (2, '558.987.523-12', 'Debito');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (3, '558.987.523-12', 'Paypal');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (1, '662.596.684-05', 'Cartao');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (2, '662.596.684-05', 'Debito');
INSERT INTO cadastropagamento(id_opcao, usuario, tipopagamento) VALUES (3, '662.596.684-05', 'Paypal');

INSERT INTO cartao(formadepagamento_id, formadepagamento_usuario, numero, bandeira, validade, nome, cod_seguranca) VALUES (1, '398.356.665-01', '8856023457947688', 'MasterCard', '12/28', 'Ezequiel A Pereira', '773');
INSERT INTO cartao(formadepagamento_id, formadepagamento_usuario, numero, bandeira, validade, nome, cod_seguranca) VALUES (1, '225.265.985-03', '7521458698128648', 'VISA', '02/25', 'Andreia Martins Silva', '688');
INSERT INTO cartao(formadepagamento_id, formadepagamento_usuario, numero, bandeira, validade, nome, cod_seguranca) VALUES (1, '464.566.956-15', '1254765894128426', 'MasterCard', '08/20', 'Leandra Leal', '387');
INSERT INTO cartao(formadepagamento_id, formadepagamento_usuario, numero, bandeira, validade, nome, cod_seguranca) VALUES (1, '558.987.523-12', '3204650498258113', 'Elo', '06/26', 'Patrícia Nishida Yamaki', '426');
INSERT INTO cartao(formadepagamento_id, formadepagamento_usuario, numero, bandeira, validade, nome, cod_seguranca) VALUES (1, '662.596.684-05', '1254459645714563', 'American Express', '10/23', 'Heitor Gonzaga Filho', '443');

INSERT INTO debito(formadepagamento_id, formadepagamento_usuario, cpf, nome, agencia, conta, banco) VALUES(2, '398.356.665-01', '240.548.769-88', 'Ezequiel A Pereira', '1273', '1548545-7', 'Itau');
INSERT INTO debito(formadepagamento_id, formadepagamento_usuario, cpf, nome, agencia, conta, banco) VALUES(2, '225.265.985-03', '125.578.468-12', 'Andreia Martins Silva', '5684', '425816-8', 'Bradesco');
INSERT INTO debito(formadepagamento_id, formadepagamento_usuario, cpf, nome, agencia, conta, banco) VALUES(2, '464.566.956-15', '859.245.846-82', 'Leandra Leal', '4685', '485436-6', 'Santander');
INSERT INTO debito(formadepagamento_id, formadepagamento_usuario, cpf, nome, agencia, conta, banco) VALUES(2, '558.987.523-12', '546.475.554-46', 'Patrícia Nishida Yamaki', '7645', '516684-0', 'Bradesco');
INSERT INTO debito(formadepagamento_id, formadepagamento_usuario, cpf, nome, agencia, conta, banco) VALUES(2, '662.596.684-05', '166.685.696-02', 'Heitor Gonzaga Filho', '6525', '855254-8', 'Banco do Brasil');

INSERT INTO paypal(formadepagamento_id, formadepagamento_usuario, email, senha) VALUES (3, '398.356.665-01', 'ezequiel.apereira@yahoo.com.br', 'pereira5496');
INSERT INTO paypal(formadepagamento_id, formadepagamento_usuario, email, senha) VALUES (3, '225.265.985-03', 'deiamartinss@gmail.com', 'ms08martins');
INSERT INTO paypal(formadepagamento_id, formadepagamento_usuario, email, senha) VALUES (3, '464.566.956-15', 'le_leal2012@hotmail.com', 'leal1990');
INSERT INTO paypal(formadepagamento_id, formadepagamento_usuario, email, senha) VALUES (3, '558.987.523-12', 'yamaki.nishidapatricia@uol.com.br', 'yanigap08137');
INSERT INTO paypal(formadepagamento_id, formadepagamento_usuario, email, senha) VALUES (3, '662.596.684-05', 'h.gfilho@hotmail.com', 'brotas032filho');

INSERT INTO paga(codigo, planodeassinatura, formadepagamento_id, formadepagamento_usuario) VALUES (1, 'Básico', 1, '398.356.665-01'); 
INSERT INTO paga(codigo, planodeassinatura, formadepagamento_id, formadepagamento_usuario) VALUES (2, 'Padrão', 2, '398.356.665-01'); 
INSERT INTO paga(codigo, planodeassinatura, formadepagamento_id, formadepagamento_usuario) VALUES (3, 'Familiar', 3, '398.356.665-01'); 
INSERT INTO paga(codigo, planodeassinatura, formadepagamento_id, formadepagamento_usuario) VALUES (4, 'Master', 1, '225.265.985-03'); 
INSERT INTO paga(codigo, planodeassinatura, formadepagamento_id, formadepagamento_usuario) VALUES (5, 'Premium', 2, '225.265.985-03'); 

INSERT INTO periodopaga(codigo, periodo) VALUES (1, 'jan17');
INSERT INTO periodopaga(codigo, periodo) VALUES (2, 'set17');
INSERT INTO periodopaga(codigo, periodo) VALUES (3, 'mar17');
INSERT INTO periodopaga(codigo, periodo) VALUES (4, 'ago17');
INSERT INTO periodopaga(codigo, periodo) VALUES (5, 'fev17');

COMMIT;
