/*Création de la table Produit*/
CREATE TABLE TProduit
(
	NumProduit int NOT NULL AUTO_INCREMENT,
	NomProduit varchar(255) NOT NULL,
	PRIMARY KEY (NumProduit)
);

/*Création de la table Etat*/
CREATE TABLE TEtat
(
	NumEtat int NOT NULL AUTO_INCREMENT,
	NomEtat varchar(255) NOT NULL,
	PRIMARY KEY (NumEtat)
);

/*Création de la table Commande*/
CREATE TABLE TCommande
(
	NumCommande int NOT NULL AUTO_INCREMENT,
	NumProduit int NOT NULL,
	NomMagasin varchar(255) NOT NULL,
	Etat int NOT NULL,
	PRIMARY KEY (NumCommande),
	FOREIGN KEY (NumProduit) REFERENCES TProduit(NumProduit),
	FOREIGN KEY (Etat) REFERENCES TEtat(NumEtat)
);