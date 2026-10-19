-- TABLE PAIEMENT / PAIEMENTF / TYPEPAIEMENT / 

CREATE TABLE paiement(
    idPaiement SERIAL PRIMARY KEY ,
    idCommande INT REFERENCES commandes(idCommande),
    datePaiement DATE NOT NULL,
    etat VARCHAR(50) NOT NULL CHECK (etat IN ('En attente', 'Paye', 'Annule')),
    montantTotal BIGINT 
);

CREATE TABLE typePaiement(
    idTypePaiement SERIAL PRIMARY KEY ,
    nomTypePaiement VARCHAR(50) NOT NULL
);

CREATE TABLE  paiementF(
    idPaiementF SERIAL PRIMARY KEY ,
    idPaiement INT REFERENCES paiement(idPaiement),
    montant BIGINT NOT NULL CHECK (montant > 0),
    idTypePaiement INT REFERENCES typePaiement(idTypePaiement) 
);



INSERT INTO typePaiement (nomTypePaiement) VALUES
('Espece'),
('MVola'),
('Orange Money'),
('Airtel Money');

INSERT INTO paiement (idCommande, datePaiement, etat) VALUES
(1, '2024-06-01', 'Paye');

INSERT INTO paiementF (idPaiement, montant, idTypePaiement) VALUES
(1, 40000, 1),
(1, 7500, 2);

INSERT INTO paiement (idCommande, datePaiement, etat) VALUES
(2, '2024-06-02', 'En attente');

INSERT INTO paiementF (idPaiement, montant, idTypePaiement) VALUES
(2, 5000, 3);