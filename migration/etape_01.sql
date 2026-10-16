CREATE TABLE plats(
    idPlat SERIAL PRIMARY KEY ,
    nomPlat VARCHAR(50) NOT NULL,
    prix BIGINT NOT NULL
);

INSERT INTO plats (nomPlat, prix) VALUES
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy (les 4)', 1000),
('Ranon`ampango', 500);

