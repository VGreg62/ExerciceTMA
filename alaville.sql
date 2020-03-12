CREATE TABLE CLIENT(
	idClient INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nom varchar(255),
	prenom varchar(255),
	numTel varchar(10),
	mail varchar(255),

);

CREATE TABLE MAGASIN(
	idMagasin INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nom varchar(255) 
);

CREATE TABLE PRODUIT(
	idProduit INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nom varchar(255),
	prix double
);

CREATE TABLE COMMANDE(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	idProduit INTEGER,
	idMagasin INTEGER,
	idClient INTEGER,
	dateAchat DATE,
	quantite INTEGER,
	FOREIGN KEY (idProduit) REFERENCES PRODUIT(idProduit),
	FOREIGN KEY (idMagasin) REFERENCES MAGASIN(idMagasin),
	FOREIGN KEY (idClient) REFERENCES CLIENT(idClient)
);

INSERT INTO CLIENT(nom, prenom) VALUES ('DEPARDIEU','Gérard');
INSERT INTO CLIENT(nom, prenom) VALUES ('POUTINE','Vladimir');
INSERT INTO CLIENT(nom, prenom) VALUES ('RASPOUTINE','Gregory');
INSERT INTO CLIENT(nom, prenom) VALUES ('BOGDANOFF','Igor');
INSERT INTO CLIENT(nom, prenom) VALUES ('BOGDANOFF','Grichka');

INSERT INTO MAGASIN(nom) VALUES ('Auchan');
INSERT INTO MAGASIN(nom) VALUES ('Carrefour');
INSERT INTO MAGASIN(nom) VALUES ('Leclerc');
INSERT INTO MAGASIN(nom) VALUES ('Intermarché');
INSERT INTO MAGASIN(nom) VALUES ('Casino');

INSERT INTO PRODUIT(nom, prix) VALUES ('Vodka',1.1);
INSERT INTO PRODUIT(nom, prix) VALUES ('Chips',1.2);
INSERT INTO PRODUIT(nom, prix) VALUES ('Biere',1.3);
INSERT INTO PRODUIT(nom, prix) VALUES ('Vin',1.4);
INSERT INTO PRODUIT(nom, prix) VALUES ('Rhum',1.5);
INSERT INTO PRODUIT(nom, prix) VALUES ('Blini',1.6);
INSERT INTO PRODUIT(nom, prix) VALUES ('Vatrouchka',1.7);
INSERT INTO PRODUIT(nom, prix) VALUES ('Chapka',1.8);
INSERT INTO PRODUIT(nom, prix) VALUES ('K-Way',1.9);
INSERT INTO PRODUIT(nom, prix) VALUES ('Bortsch',1.0);

INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (1,1,1,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (2,1,2,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (3,1,3,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (4,3,1,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (5,1,1,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (6,1,3,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (7,2,1,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (8,1,1,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (9,1,1,'2019-01-01',1);
INSERT INTO COMMANDE(idProduit, idMagasin, idClient, dateAchat,quantite) VALUES (10,1,1,'2019-01-01',1);

ALTER TABLE CLIENT 
ADD Mail varchar(255),
ADD Tel varchar(10);