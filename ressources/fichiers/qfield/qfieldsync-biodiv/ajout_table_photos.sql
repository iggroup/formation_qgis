-- Ajout de la table photos pour le projet Biodiv
-- À exécuter dans le GeoPackage biodiv.gpkg si l'on veut gérer des pièces jointes

PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS photos (
    id_photo INTEGER PRIMARY KEY AUTOINCREMENT,
    id_obs INTEGER NOT NULL,
    nom_fichier TEXT(255),
    chemin_rel TEXT(500),
    legende TEXT,
    date_photo DATE,
    auteur TEXT(150),
    type_media TEXT(50) DEFAULT 'photo',
    FOREIGN KEY (id_obs) REFERENCES observations (id_obs)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_photos_obs ON photos(id_obs);
