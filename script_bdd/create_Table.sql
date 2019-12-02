/*Création de la table Produit*/

CREATE TABLE TMagasin
(
	NumMagasin int NOT NULL AUTO_INCREMENT,
	NomMagasin varchar(255) NOT NULL,
	PRIMARY KEY (NumMagasin)
);

/*Création de la table Etat*/

CREATE TABLE TEtat
(
	NumEtat int NOT NULL AUTO_INCREMENT,
	NomEtat varchar(255) NOT NULL,
	PRIMARY KEY (NumEtat)
);

/*Création de la table Entrepot*/

CREATE TABLE TEntrepot(
	NumEntrepot int NOT NULL AUTO_INCREMENT,
	NomEntrepot varchar(255) NOT NULL,
	PRIMARY KEY (NumEntrepot)
);

/*Création de la table Commande*/

CREATE TABLE TCommande
(
	NumCommande int NOT NULL AUTO_INCREMENT,
	NumMagasin int NOT NULL,
	NumEntrepot int NOT NULL,
	Etat int NOT NULL,
	PRIMARY KEY (NumCommande),
	FOREIGN KEY (NumMagasin) REFERENCES TMagasin(NumMagasin),
	FOREIGN KEY (Etat) REFERENCES TEtat(NumEtat),
	FOREIGN KEY (NumEntrepot) REFERENCES TEntrepot(NumEntrepot)
);