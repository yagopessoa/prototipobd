/*Queries de SQL*/
/*INCLUDES*/
/*
Alef Segura Santos     			- 9762942
Gustavo de Moura Souza    		- 9762981
Thaís Lima de Oliveira Nobre  	- 7163822
Yago Rafael Pessoa     			- 9896218
*/




INSERT INTO elenco (codigo, nome, e_ator, e_diretor) 
VALUES 	(1, "Solange Silva Soares Santiago", 1, 1),
		(2, "William Paulo Bruno", 1, 0),
		(3, "Paulo José Salmo", 1, 0),
		(4, "Fernanda Sartori", 0, 1),
		(5, "Carlos Nascimento", 1, 1);


INSERT INTO atua (video, ator) 
VALUES (1, 1),
	   (2, 1),
	   (3, 2),
	   (4, 3),
	   (5, 5);	   

INSERT INTO dirige (video, diretor)
VALUES (1,1),
	   (2,4),
	   (3,4),
	   (4,5),
	   (5,1);


INSERT INTO planodeassinatura ()
VALUES ("Básico", "25,00", "100 diferentes opções de filmes e séries"),
       ("Família", "100,00", "Possível dividir o valor com até 5 pessoas e ter acesso a 100 diferentes opções de filmes e séries"),
       ("Master", "50,00", "Acesso ilimitado a todos os filmes e séries");


INSERT INTO seleciona (usuario, planoDeAssinatura)
VALUES ("111.111.111-00", "Básico"),
	   ("222.222.222-00", "Familiar"),
	   ("333.333.333-00", "Master"),
	   ("444.444.444-00", "Básico"),
	   ("555.555.555-00", "Master");

	   
INSERT INTO usuario ()
VALUES ("111.111.111-00", "Maria da Silva", "ms@gmail.com"),
	   ("222.222.222-00", "José Alfredo Costa", "jac@gmail.com"),
	   ("333.333.333-00", "Carla Nobrega", "cn@gmail.com"),
	   ("444.444.444-00", "Ronaldo Ferreira", "rf@gmail.com"),
	   ("555.555.555-00", "Natana Aguiar", "na@gmail.com");
	   
	   
INSERT INTO genero (nomeGenero)
VALUES ("Ficção Científica"),
	   ("Infanto Juvenil"),
	   ("Aventura"),
	   ("Terror"),
	   ("Comédia");


INSERT INTO tem ()
VALUES ("Ficção Científica", 1),
	   ("Ficção Científica", 2),
	   ("Infanto Juvenil", 3),
	   ("Infanto Juvenil", 4),
	   ("Comédia", 5);


INSERT INTO video (cod_video, titulo, tipoVideo)
VALUES (1, "Star Wars - O Império Contra ataca", "filme"),
	   (2, "Star Wars - O Retorno de Jedi", "filme"),  
	   (3, "Harry Potter e a Pedra Filosofal", "filme"),
	   (4, "Harry Potter e a Câmara Secreta", "filme"),
	   (5, "Friends", "série");
      
INSERT INTO avaliagenero (usuario, apelido, nomeGenero, nota, dataAvaliaGenero)
VALUES ("111.111.111-00", "Maria", "Ficção Científica", "10", "10/01/2017"),
	   ("111.111.111-00", "Maria", "Infanto Juvenil", "10", "10/01/2017"),
	   ("333.333.333-00", "Carla", "Ficção Científica", "8", "01/10/2017"),
	   ("444.444.444-00", "Ronaldo", "Aventura", "8", "01/11/2017"),
	   ("555.555.555-00", "Natana", "Terror", "4", "03/12/2017");

INSERT INTO amizade (usuarioSolic, usuarioAceit, dataSolic, dataAceito)
VALUES ("111.111.111-00", "Maria", "333.333.333-00", "Carla", "10/05/2017", "11/05/2017"),
	   ("111.111.111-00", "Carla", "444.444.444-00", "Ronaldo", "10/01/2017", "12/01/2017"),
	   ("444.444.444-00", "Ronaldo", "555.555.555-00", "Natana", "01/10/2017", "05/10/2017"),
	   ("444.444.444-00", "Ronaldo","111.111.111-00", "Maria", "01/11/2017", "01/11/2017");

INSERT INTO adulto (usuario, apelido, preferencia, qualidade, legenda, idioma)
// ??????????????????
VALUES ("111.111.111-00", "Maria", ""),
	   ("333.333.333-00", "Carla", ),
	   ("444.444.444-00", "Ronaldo",),
	   ("555.555.555-00", "Natana", );


INSERT INTO tipoperfil (usuario, apelido, tipoPerfil)
//tipoperfil ???????????
VALUES ("111.111.111-00", "Maria da Silva",""),
	   ("222.222.222-00", "José Alfredo Costa", ""),
	   ("333.333.333-00", "Carla Nobrega", ""),
	   ("444.444.444-00", "Ronaldo Ferreira",""),
	   ("555.555.555-00", "Natana Aguiar","" );
VALUES (),


INSERT INTO gerencia ()
VALUES (),


INSERT INTO avaliafilme ()
VALUES (),


INSERT INTO avaliaep ()
VALUES (),


INSERT INTO filme ()
VALUES (),


INSERT INTO serie ()
VALUES (),


INSERT INTO temporada ()
VALUES (),


INSERT INTO episodio ()
VALUES (),


INSERT INTO assisteep ()
VALUES (),


INSERT INTO assistefilme ()
VALUES (),


INSERT INTO recomenda ()
VALUES (),


INSERT INTO acesso ()
VALUES (),


INSERT INTO dispositivo ()
VALUES (),


INSERT INTO periodopaga ()
VALUES (),


INSERT INTO paga ()
VALUES (),


INSERT INTO cadastropagamento ()
VALUES (),


INSERT INTO cartao ()
VALUES (),


INSERT INTO debito ()
VALUES (),


INSERT INTO paypal ()
VALUES (),