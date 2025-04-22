
USE Staging_Test;
GO

-- 1. Postes
CREATE TABLE Postes (
    ID_Poste INT IDENTITY(1,1) PRIMARY KEY,
    Nom_Poste VARCHAR(50) UNIQUE
);
INSERT INTO Postes (Nom_Poste) VALUES 
('Gardien'), ('Défenseur'), ('Milieu'), ('Attaquant');

-- 2. Catégories
CREATE TABLE Categories (
    ID_Categorie INT IDENTITY(1,1) PRIMARY KEY,
    Nom_Categorie VARCHAR(50) UNIQUE
);
INSERT INTO Categories (Nom_Categorie) VALUES 
('Minime'), ('Cadet'), ('Junior'), ('Senior');

-- 3. Pieds
CREATE TABLE Pieds (
    ID_Pied INT IDENTITY(1,1) PRIMARY KEY,
    Cote_Pied VARCHAR(20) UNIQUE
);
INSERT INTO Pieds (Cote_Pied) VALUES 
('Gauche'), ('Droit'), ('Ambidextre');

-- 4. Compétitions
CREATE TABLE Competitions (
    ID_Competition INT IDENTITY(1,1) PRIMARY KEY,
    Nom_Competition VARCHAR(100) UNIQUE
);
INSERT INTO Competitions (Nom_Competition) VALUES 
('Ligue 1'), ('Coupe Nationale'), ('Amical'), ('Championnat');

-- 5. Météo
CREATE TABLE Meteo (
    ID_Meteo INT IDENTITY(1,1) PRIMARY KEY,
    Type_Meteo VARCHAR(50) UNIQUE
);
INSERT INTO Meteo (Type_Meteo) VALUES 
('Ensoleillé'), ('Pluvieux'), ('Nuageux'), ('Venteux');

-- 6. Etats_Terrain
CREATE TABLE Etats_Terrain (
    ID_Etat INT IDENTITY(1,1) PRIMARY KEY,
    Etat VARCHAR(50) UNIQUE
);
INSERT INTO Etats_Terrain (Etat) VALUES 
('Sec'), ('Humide'), ('Boueu'), ('Gelé');

-- 7. Résultats
CREATE TABLE Resultats (
    ID_Resultat INT IDENTITY(1,1) PRIMARY KEY,
    Nom_Resultat VARCHAR(20) UNIQUE
);
INSERT INTO Resultats (Nom_Resultat) VALUES 
('Victoire'), ('Défaite'), ('Nul');
GO
