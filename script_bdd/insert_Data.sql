/*Ajout des différents états*/

INSERT INTO TEtat (NomEtat) 
VALUES 
("Demandé"),
("En préparation")
("Fini"),
("Historiser");

/*Ajout de magasin*/

INSERT INTO TMagasin (NomMagasin)
VALUES
("Naruto"),
("Luffy"),
("Son Goku"),
("Saitama");

/*Ajout d'entrepot*/

INSERT INTO TEntrepot (NomEntrepot)
VALUES
("Sakuke"),
("Sanji"),
("Vegeta"),
("Genos");

/*Ajout de commande*/

INSERT INTO TCommande (NumMagasin, NumEntrepot, Etat)
VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4);