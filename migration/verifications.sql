--Niveau 1

-- Etape 1 afficher les plats du plus cher au moins cher.
SELECT nomPlat,prix 
FROM plats ORDER BY prix DESC;

-- Etape 2 nombre de plats par catégorie, y compris les catégories sans plat.
SELECT COUNT(p.idPlat) AS nombre_plats, c.nomCategorie
FROM categoriePlats c
JOIN plats p ON c.idCategoriePlats = p.idCategoriePlats
GROUP BY c.nomCategorie;

-- Etape 3 montant total de chaque commande.
SELECT c.idCommande, SUM(cf.pu * cf.quantite) AS montant_total
FROM commandes c
JOIN commandesF cf ON c.idCommande = cf.idCommande
GROUP BY c.idCommande;