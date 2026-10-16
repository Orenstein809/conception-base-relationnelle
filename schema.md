# Niveau 1 – Fondamental 

## Étape 1 – La carte

 Table : 
- PLATS( <b>idPlat</b> ,nom ,prix ) . 

### <u> Question Piege :</u>

* On choisit le type **BIGINT** car ici on a les montants sont en ariary, sans centimes .
* On a comme identifiant **idPlat**.


## Étape 2 – Les catégories

Table :
- PLATS( <b>idPlat</b> ,nom ,prix, #idCategoriePlats ).  `(modifié)`
- CATEGORIEPLATS(<b>idCategoriePlats</b>,nomCategorie).  `(nouveau)`

### <u> Question Piege :</u>
* On ajoute pas simplement une colonne categorie VARCHAR(50) dans la table des plats car cela compliquera le regroupement des categorie. Si on ajoute une description a la categorie on doit toucher a tout les plats

* Exemple : Une categorie peut a la fois s'ecrire `Plat malagasy` et `plat malagasy` le systeme peut les considerer comme different.

