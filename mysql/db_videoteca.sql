CREATE DATABASE IF NOT EXISTS videoteca_zeng;
USE videoteca_zeng;

DROP TABLE IF EXISTS attore;
CREATE TABLE attore(
    ID_attore int not null AUTO_INCREMENT PRIMARY KEY,
    nome varchar(20) not null,
    cognome varchar(20) not null,
    data_nascita date
);

DROP TABLE IF EXISTS film;
CREATE TABLE film(
    ID_film int not null AUTO_INCREMENT PRIMARY KEY,
    nome_film varchar(20) not null,
    genere varchar(64),
    data_nascita date
);

DROP TABLE IF EXISTS contratto;
CREATE TABLE contratto(
    ID_contratto int not null AUTO_INCREMENT PRIMARY KEY,
	ID_attore int REFERENCES attore(ID_attore),
	ID_film int REFERENCES film(ID_film)
);

SHOW TABLES;

-- Inseriamo un po' di dati nelle tabelle
INSERT INTO attore (nome, cognome, data_nascita)
VALUES
    ('io','zio','2005-01-09'),
    ('cane','pipo','1955-01-09');
