CREATE TABLE categoriePlats(
    idCategoriePlats SERIAL PRIMARY KEY ,
    nomCategorie VARCHAR(50) NOT NULL

);

INSERT INTO categoriePlats(nomCategorie) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE plats ADD COLUMN idCategoriePlats INT REFERENCES categoriePlats(idCategoriePlats);

UPDATE plats SET idCategoriePlats = 1 WHERE idPlat = 1;
UPDATE plats SET idCategoriePlats = 1 WHERE idPlat = 2;
UPDATE plats SET idCategoriePlats = 1 WHERE idPlat = 3;
UPDATE plats SET idCategoriePlats = 2 WHERE idPlat = 4;
UPDATE plats SET idCategoriePlats = 3 WHERE idPlat = 5;
UPDATE plats SET idCategoriePlats = 4 WHERE idPlat = 6;
UPDATE plats SET idCategoriePlats = 5 WHERE idPlat = 7;

