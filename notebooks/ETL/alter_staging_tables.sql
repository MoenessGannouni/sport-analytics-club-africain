
USE Staging_Test;
GO

-- JOUEURS
ALTER TABLE Joueurs DROP COLUMN Position;
ALTER TABLE Joueurs ADD ID_Poste INT;
ALTER TABLE Joueurs
ADD CONSTRAINT FK_Joueurs_Poste FOREIGN KEY (ID_Poste) REFERENCES Postes(ID_Poste);

ALTER TABLE Joueurs DROP COLUMN Catégorie;
ALTER TABLE Joueurs ADD ID_Categorie INT;
ALTER TABLE Joueurs
ADD CONSTRAINT FK_Joueurs_Categorie FOREIGN KEY (ID_Categorie) REFERENCES Categories(ID_Categorie);

ALTER TABLE Joueurs DROP COLUMN Pied_Dominant;
ALTER TABLE Joueurs ADD ID_Pied INT;
ALTER TABLE Joueurs
ADD CONSTRAINT FK_Joueurs_Pied FOREIGN KEY (ID_Pied) REFERENCES Pieds(ID_Pied);

-- MATCHS
ALTER TABLE Matchs DROP COLUMN Catégorie;
ALTER TABLE Matchs ADD ID_Categorie INT;
ALTER TABLE Matchs
ADD CONSTRAINT FK_Matchs_Categorie FOREIGN KEY (ID_Categorie) REFERENCES Categories(ID_Categorie);

ALTER TABLE Matchs DROP COLUMN Compétition;
ALTER TABLE Matchs ADD ID_Competition INT;
ALTER TABLE Matchs
ADD CONSTRAINT FK_Matchs_Competition FOREIGN KEY (ID_Competition) REFERENCES Competitions(ID_Competition);

ALTER TABLE Matchs DROP COLUMN Résultat;
ALTER TABLE Matchs ADD ID_Resultat INT;
ALTER TABLE Matchs
ADD CONSTRAINT FK_Matchs_Resultat FOREIGN KEY (ID_Resultat) REFERENCES Resultats(ID_Resultat);

-- DONNEES CONTEXTUELLES
ALTER TABLE Donnees_Contextuelles DROP COLUMN Météo;
ALTER TABLE Donnees_Contextuelles ADD ID_Meteo INT;
ALTER TABLE Donnees_Contextuelles
ADD CONSTRAINT FK_Contextes_Meteo FOREIGN KEY (ID_Meteo) REFERENCES Meteo(ID_Meteo);

ALTER TABLE Donnees_Contextuelles DROP COLUMN Etat_Terrain;
ALTER TABLE Donnees_Contextuelles ADD ID_Etat INT;
ALTER TABLE Donnees_Contextuelles
ADD CONSTRAINT FK_Contextes_Etat FOREIGN KEY (ID_Etat) REFERENCES Etats_Terrain(ID_Etat);

ALTER TABLE Donnees_Contextuelles DROP COLUMN Compétition;
ALTER TABLE Donnees_Contextuelles ADD ID_Competition INT;
ALTER TABLE Donnees_Contextuelles
ADD CONSTRAINT FK_Contextes_Competition FOREIGN KEY (ID_Competition) REFERENCES Competitions(ID_Competition);
GO
