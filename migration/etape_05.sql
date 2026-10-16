CREATE TABLE table_(
    idTable SERIAL PRIMARY KEY 
);

CREATE TABLE serveur(
    idServeur SERIAL PRIMARY KEY,
    nomServeur VARCHAR(50) NOT NULL
);

ALTER TABLE commandes ADD COLUMN idServeur INT REFERENCES serveur(idServeur);
ALTER TABLE commandes ADD COLUMN idTable INT REFERENCES table_(idTable);

INSERT INTO serveur (nomServeur) VALUES('RAKOTONDRAMANANA');
INSERT INTO table_ VALUES(1);

UPDATE commandes SET idServeur = 1, idTable = 1 WHERE idCommande = 1;
UPDATE commandes SET idServeur = 1, idTable = 1 WHERE idCommande = 2;
