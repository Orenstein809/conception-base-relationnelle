--Niveau 1

-- Etape 1
SELECT nomPlat,prix FROM plats ORDER BY prix DESC;

-- Etape 2 nombre de plats par catégorie, y compris les catégories sans plat.
SELECT COUNT(p.idPlat) AS nombre_plats, c.nomCategorie
FROM categoriePlats c
JOIN plats p ON c.idCategoriePlats = p.idCategoriePlats
GROUP BY c.nomCategorie;