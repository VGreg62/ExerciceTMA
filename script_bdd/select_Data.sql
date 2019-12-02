/*Récupération de tous les états*/

SELECT * 
FROM TEtat;

/*Récupération de tous les magasins*/

SELECT *
FROM TMagasin;

/*Récupération de tous les entrepots*/

SELECT * 
FROM TEntrepot;

/*Récupération de toutes les commandes*/

SELECT * 
FROM TCommande;

/*Récupérer les commandes dont l'état est "Demandé"*/

SELECT TC.Numcommande, TM.NomMagasin, TEn.NomEntrepot
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "Demandé";

/*Récupérer les commandes dont l'état est "Demandé" par Entrepot*/

SELECT TC.Numcommande, TM.NomMagasin
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "Demandé" AND TEn.NomEntrepot = "Sasuke";

/*Récupérer les commandes dont l'état est "En préparation"*/

SELECT TC.Numcommande, TM.NomMagasin, TEn.NomEntrepot
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "En préparation";

/*Récupérer les commandes dont l'état est "En préparation" par Entrepot*/

SELECT TC.Numcommande, TM.NomMagasin
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "En préparation" AND TEn.NomEntrepot = "Sanji";

/*Récupérer les commandes dont l'état est "Fini"*/

SELECT TC.Numcommande, TM.NomMagasin, TEn.NomEntrepot
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "Fini";

/*Récupérer les commandes dont l'état est "Fini" par Entrepot*/

SELECT TC.Numcommande, TM.NomMagasin
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "Fini" AND TEn.NomEntrepot = "Vegeta";

/*Récupérer les commandes dont l'état est "Historiser"*/

SELECT TC.Numcommande, TM.NomMagasin, TEn.NomEntrepot
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "Historiser";

/*Récupérer les commandes dont l'état est "Historiser" par Entrepot*/

SELECT TC.Numcommande, TM.NomMagasin
FROM TCommande AS TC
INNER JOIN TEtat AS TE
ON TC.Etat = TE.NumEtat
INNER JOIN TMagasin AS TM
ON TC.NumMagasin = TM.NumMagasin
INNER JOIN TEntrepot AS TEn
ON TM.NumEntrepot = TEn.NumEntrepot
WHERE TE.NomEtat = "Historiser" AND TEn.NomEntrepot = "Genos";