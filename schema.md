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

## Étape 3 – Les commandes
 Table :
- PLATS( <b>idPlat</b> ,nom ,prix, #idCategoriePlats ).  
- CATEGORIEPLATS(<b>idCategoriePlats</b>,nomCategorie).  
- COMMANDES(<b>idCommande</b>,dateCommande)  `(nouveau)`
- COMMANDESF(<b>idCommandeF</b>, #idCommandes ,#idPlats, pu, quantite)  `(nouveau)`

### <u> Question Piege :</u>
* La quantite d'un plats sera placer dans la table : **commandesF** 

## Étape 4 – Les habitués
Table :
- PLATS( <b>idPlat</b> ,nom ,prix, #idCategoriePlats ).  
- CATEGORIEPLATS(<b>idCategoriePlats</b>,nomCategorie).  
- COMMANDES(<b>idCommande</b>,dateCommande, #idClient?).  `(modifié)`
- COMMANDESF(<b>idCommandeF</b>, #idCommandes ,#idPlats, pu, quantite)  
- CLIENTS(<b>idClient</b>, nomClient)  `(nouveau)`

### <u> Question Piege :</u>
* Ma cle etrangere peut etre null pour designer un client de passage.
* On doit utiliser `LEFT JOIN`  pour recuperer toute les commandes 

## Étape 5 – Serveurs et tables 
Table :
- PLATS( <b>idPlat</b> ,nom ,prix, #idCategoriePlats ).  
- CATEGORIEPLATS(<b>idCategoriePlats</b>,nomCategorie).  
- COMMANDES(<b>idCommande</b>,dateCommande, #idClient?, #idTable, #idServeur).  
- COMMANDESF(<b>idCommandeF</b>, #idCommandes ,#idPlats, pu, quantite)  
- CLIENTS(<b>idClient</b>, nomClient) 
- TABLE(<b>idTable</b>) `(nouveau)`
- SERVEUR(<b>idServeur</b>, nomServeur) `(nouveau)`

### <u> Question Piege :</u>
Une table peut avoir plusieurs commande mais une commande ne peut pas avoir plusieurs table.
Le nom table pose probleme car c'est deja reserver dans le language 