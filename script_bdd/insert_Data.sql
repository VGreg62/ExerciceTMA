/*Ajout des différents états*/

INSERT INTO TEtat (NomEtat) 
VALUES 
("Demandé"),
("En préparation"),
("Fini"),
("Historiser");

/*Ajout d'entrepot*/

INSERT INTO TEntrepot (NomEntrepot)
VALUES
("Sasuke"),
("Sanji"),
("Vegeta"),
("Genos");


/*Ajout de magasin*/

INSERT INTO TMagasin (NomMagasin, NumEntrepot)
VALUES
("Naruto", 1),
("Luffy", 2),
("Son Goku", 3),
("Saitama", 4);


/*Ajout de commande*/

INSERT INTO TCommande (NumMagasin, Etat)
VALUES
(1,1),
(2,2),
(3,3),
(4,4);