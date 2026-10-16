CREATE TABLE commandes(
    idCommande SERIAL PRIMARY KEY ,
    dateCommande DATE NOT NULL
);

CREATE TABLE commandesF(
    idCommandeF SERIAL PRIMARY KEY ,
    idCommande INT REFERENCES commandes(idCommande),
    idPlat INT REFERENCES plats(idPlat),
    pu BIGINT,
    quantite INT
);

INSERT INTO commandes (dateCommande) VALUES
('2024-06-01');

INSERT INTO commandesF (idCommande, idPlat, pu, quantite) VALUES
(1, 1, 7000, 2),
(1, 2, 8000, 1),
(1, 3, 8500, 3);
