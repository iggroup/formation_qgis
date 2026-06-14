-- Script SQL non spatial (DB Browser for SQLite)
-- À exécuter en 1er, en une seule fois

PRAGMA foreign_keys = ON;

-- ============================================================================
-- NETTOYAGE DES DONNÉES EXISTANTES
-- ============================================================================

DELETE FROM photos;
DELETE FROM observations;
DELETE FROM sites;
DELETE FROM especes;
DELETE FROM sqlite_sequence WHERE name IN ('sites', 'observations', 'especes', 'photos');

-- ============================================================================
-- TABLE ESPECES - Données de base (sans géométrie)
-- ============================================================================

INSERT INTO especes (
    id_espece,
    nom_latin,
    nom_vernaculaire,
    groupe,
    statut_uicn,
    altitude_min,
    altitude_max,
    profondeur_max
) VALUES
(1, 'Aquila chrysaetos', 'Aigle royal', 'Oiseau', 'LC', 500, 3500, NULL),
(2, 'Lynx lynx', 'Lynx boréal', 'Mammifère', 'VU', 600, 2800, NULL),
(3, 'Ursus arctos', 'Ours brun', 'Mammifère', 'LC', 700, 3000, NULL),
(4, 'Salmo salar', 'Saumon atlantique', 'Poisson', 'EN', NULL, NULL, 10),
(5, 'Tetrao urogallus', 'Grand tétras', 'Oiseau', 'VU', 900, 2400, NULL),
(6, 'Gypaetus barbatus', 'Vautour des lammergeier', 'Oiseau', 'LC', 1200, 4000, NULL),
(7, 'Marmota marmota', 'Marmotte des Alpes', 'Mammifère', 'LC', 800, 3200, NULL),
(8, 'Capreolus capreolus', 'Chevreuil européen', 'Mammifère', 'LC', 400, 2200, NULL),
(9, 'Vulpes vulpes', 'Renard roux', 'Mammifère', 'LC', 300, 2500, NULL),
(10, 'Rupicapra rupicapra', 'Chamois', 'Mammifère', 'LC', 1000, 3300, NULL),
(11, 'Capra ibex', 'Bouquetin des Alpes', 'Mammifère', 'LC', 1400, 3800, NULL),
(12, 'Parus cristatus', 'Mésange huppée', 'Oiseau', 'LC', 600, 2400, NULL),
(13, 'Parmigiana perdix', 'Perdrix bartavelle', 'Oiseau', 'VU', 1200, 3000, NULL);

-- Index non spatiaux
CREATE INDEX IF NOT EXISTS idx_especes_groupe ON especes(groupe);
CREATE INDEX IF NOT EXISTS idx_especes_statut ON especes(statut_uicn);
