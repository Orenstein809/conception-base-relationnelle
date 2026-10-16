CREATE TABLE clients(
    idClient SERIAL PRIMARY KEY ,
    nomClient VARCHAR(50) NOT NULL
);

ALTER TABLE commandes ADD COLUMN idClient INT REFERENCES clients(idClient);

INSERT INTO clients (nomClient) VALUES('RAKOTOARISOA');

INSERT INTO commandes (dateCommande, idClient) VALUES('2024-06-01', 1);
INSERT INTO commandesF (idCommande, idPlat, pu, quantite) VALUES
(2, 1, 7000, 2),
(2, 2, 8000, 1),
(2, 3, 8500, 3);