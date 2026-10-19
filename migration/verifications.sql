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

-- Etape 4 liste des commandes avec le nom du client, en affichant « client de passage » quand il n'y en a pas.
SELECT
    c.idCommande,
    CASE
        WHEN cl.nomClient IS NULL THEN 'client de passage'
        ELSE cl.nomClient
    END AS nomClient
FROM commandes c
LEFT JOIN clients cl ON c.idClient = cl.idClient;

-- Etape 5 nombre de commandes et chiffre d'affaires par serveur.
SELECT s.idServeur, COUNT(DISTINCT c.idCommande) AS nombre_commandes, SUM(cf.pu * cf.quantite) AS chiffre_affaires
FROM serveur s
LEFT JOIN commandes c ON s.idServeur = c.idServeur
LEFT JOIN commandesF cf ON c.idCommande = cf.idCommande
GROUP BY s.idServeur;

-- Etape 6 liste des commandes non solde avec le montant du, le montant payé et le reste à payer.
SELECT c.idCommande,
       SUM(cf.pu * cf.quantite) AS montant_du,
       COALESCE(p.montant_paye, 0) AS montant_paye,
       SUM(cf.pu * cf.quantite) - COALESCE(p.montant_paye, 0) AS reste_a_payer
FROM commandes c
JOIN commandesF cf ON c.idCommande = cf.idCommande
LEFT JOIN (
    SELECT p.idCommande, SUM(pf.montant) AS montant_paye
    FROM paiementF pf
    JOIN paiement p ON pf.idPaiement = p.idPaiement
    GROUP BY idCommande
) p ON c.idCommande = p.idCommande
GROUP BY c.idCommande, p.montant_paye;