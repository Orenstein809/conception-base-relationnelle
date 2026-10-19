CREATE TABLE historiquePrixPlats(
    idHistoriquePrixPlats SERIAL PRIMARY KEY ,
    idPlat INT REFERENCES plats(idPlat),
    prix BIGINT NOT NULL,
    dateDebut DATE NOT NULL,
    dateFin DATE
);

UPDATE plats SET prix = 7500 WHERE idPlat = 1;

INSERT INTO historiquePrixPlats (idPlat, prix, dateDebut, dateFin) VALUES
(1, 7000, '2024-06-01', '2024-06-30'),
(1, 7500, '2024-07-01', NULL);