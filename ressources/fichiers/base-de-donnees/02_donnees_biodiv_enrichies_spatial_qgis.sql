-- Script SQL spatial (QGIS DB Manager)
-- À exécuter en 2e, après le script non spatial DB Browser

-- ============================================================================
-- TABLE SITES - Zones d'étude en Valais (EPSG:2056)
-- ============================================================================

INSERT INTO sites (id_site, nom, code_national, surface_ha, statut, geom) VALUES
(1, 'Réserve Basses Alpes', 'VS_001', 450.5, 'protection_intégrale',
 GeomFromText('POLYGON((2680000 1247000, 2680500 1247000, 2680500 1247500, 2680000 1247500, 2680000 1247000))', 2056)),

(2, 'Zone de chasse Vallée de Saas', 'VS_002', 320.0, 'chasse_autorisée',
 GeomFromText('POLYGON((2681000 1248000, 2681800 1248000, 2681800 1248500, 2681000 1248500, 2681000 1248000))', 2056)),

(3, 'Réserve Mattmark', 'VS_003', 250.0, 'protection_intégrale',
 GeomFromText('POLYGON((2682500 1245500, 2683200 1245500, 2683200 1246200, 2682500 1246200, 2682500 1245500))', 2056)),

(4, 'Alpage du Vallon', 'VS_004', 180.0, 'pastorale',
 GeomFromText('POLYGON((2684000 1246000, 2684500 1246000, 2684500 1246800, 2684000 1246800, 2684000 1246000))', 2056)),

(5, 'Secteur Matterhorn', 'VS_005', 890.0, 'protection_intégrale',
 GeomFromText('POLYGON((2683500 1243500, 2684500 1243500, 2684500 1244800, 2683500 1244800, 2683500 1243500))', 2056)),

(6, 'Réserve Lac de Emosson', 'VS_006', 150.0, 'protection_intégrale',
 GeomFromText('POLYGON((2679500 1245000, 2680200 1245000, 2680200 1245600, 2679500 1245600, 2679500 1245000))', 2056)),

(7, 'Zone Rhône supérieur', 'VS_007', 420.0, 'chasse_autorisée',
 GeomFromText('POLYGON((2685000 1248000, 2685800 1248000, 2685800 1249000, 2685000 1249000, 2685000 1248000))', 2056));

-- ============================================================================
-- TABLE OBSERVATIONS - Données de relevé (points)
-- ============================================================================

INSERT INTO observations (id_site, id_espece, date_obs, nb_individus, observateur, geom) VALUES
(1, 1, '2024-05-15', 2, 'Norbert Schneider', GeomFromText('POINT(2680150 1247150)', 2056)),
(1, 7, '2024-05-16', 5, 'Norbert Schneider', GeomFromText('POINT(2680300 1247300)', 2056)),
(1, 10, '2024-05-18', 8, 'Sophie Müller', GeomFromText('POINT(2680400 1247400)', 2056)),
(1, 11, '2024-05-20', 12, 'Sophie Müller', GeomFromText('POINT(2680250 1247250)', 2056)),
(1, 9, '2024-06-02', 3, 'Claude Fontaine', GeomFromText('POINT(2680100 1247100)', 2056)),
(1, 5, '2024-06-10', 1, 'Claude Fontaine', GeomFromText('POINT(2680450 1247450)', 2056)),
(1, 12, '2024-06-15', 15, 'Norbert Schneider', GeomFromText('POINT(2680200 1247350)', 2056)),

(2, 2, '2024-04-22', 1, 'Thomas Keller', GeomFromText('POINT(2681200 1248200)', 2056)),
(2, 3, '2024-05-05', 4, 'Thomas Keller', GeomFromText('POINT(2681400 1248400)', 2056)),
(2, 6, '2024-05-28', 2, 'Anna Weber', GeomFromText('POINT(2681600 1248100)', 2056)),
(2, 8, '2024-06-01', 6, 'Anna Weber', GeomFromText('POINT(2681300 1248300)', 2056)),
(2, 10, '2024-06-12', 10, 'Thomas Keller', GeomFromText('POINT(2681500 1248250)', 2056)),
(2, 11, '2024-06-18', 9, 'Anna Weber', GeomFromText('POINT(2681700 1248200)', 2056)),

(3, 4, '2024-05-10', 2, 'Norbert Schneider', GeomFromText('POINT(2682700 1245700)', 2056)),
(3, 1, '2024-05-25', 3, 'Sophie Müller', GeomFromText('POINT(2682900 1245900)', 2056)),
(3, 7, '2024-06-05', 7, 'Claude Fontaine', GeomFromText('POINT(2682600 1245800)', 2056)),
(3, 12, '2024-06-20', 20, 'Norbert Schneider', GeomFromText('POINT(2682800 1246100)', 2056)),
(3, 9, '2024-06-22', 2, 'Sophie Müller', GeomFromText('POINT(2682700 1246000)', 2056)),

(4, 8, '2024-05-02', 4, 'Thomas Keller', GeomFromText('POINT(2684150 1246300)', 2056)),
(4, 9, '2024-05-15', 2, 'Anna Weber', GeomFromText('POINT(2684300 1246600)', 2056)),
(4, 11, '2024-06-08', 8, 'Claude Fontaine', GeomFromText('POINT(2684200 1246400)', 2056)),
(4, 7, '2024-06-25', 6, 'Thomas Keller', GeomFromText('POINT(2684100 1246500)', 2056)),

(5, 1, '2024-04-15', 1, 'Sophie Müller', GeomFromText('POINT(2684000 1243800)', 2056)),
(5, 5, '2024-05-20', 3, 'Norbert Schneider', GeomFromText('POINT(2684200 1244000)', 2056)),
(5, 6, '2024-05-30', 2, 'Anna Weber', GeomFromText('POINT(2683800 1244200)', 2056)),
(5, 2, '2024-06-03', 1, 'Claude Fontaine', GeomFromText('POINT(2684100 1243600)', 2056)),
(5, 11, '2024-06-15', 15, 'Thomas Keller', GeomFromText('POINT(2684300 1244500)', 2056)),
(5, 10, '2024-06-28', 12, 'Sophie Müller', GeomFromText('POINT(2683900 1244100)', 2056)),

(6, 1, '2024-05-22', 1, 'Claude Fontaine', GeomFromText('POINT(2679800 1245300)', 2056)),
(6, 7, '2024-06-01', 4, 'Thomas Keller', GeomFromText('POINT(2679700 1245200)', 2056)),
(6, 12, '2024-06-10', 18, 'Norbert Schneider', GeomFromText('POINT(2680000 1245400)', 2056)),
(6, 8, '2024-06-24', 3, 'Anna Weber', GeomFromText('POINT(2679900 1245500)', 2056)),

(7, 9, '2024-05-08', 2, 'Norbert Schneider', GeomFromText('POINT(2685300 1248500)', 2056)),
(7, 10, '2024-05-18', 9, 'Sophie Müller', GeomFromText('POINT(2685600 1248800)', 2056)),
(7, 3, '2024-06-02', 3, 'Thomas Keller', GeomFromText('POINT(2685400 1248600)', 2056)),
(7, 8, '2024-06-12', 5, 'Claude Fontaine', GeomFromText('POINT(2685700 1248900)', 2056)),
(7, 11, '2024-06-20', 11, 'Anna Weber', GeomFromText('POINT(2685200 1248400)', 2056)),
(7, 6, '2024-06-26', 1, 'Norbert Schneider', GeomFromText('POINT(2685500 1248700)', 2056));

-- ============================================================================
-- TABLE PHOTOS - Pièces jointes liées aux observations
-- ============================================================================

INSERT INTO photos (id_observation, nom_fichier, chemin_rel, legende, date_photo, auteur, type_media) VALUES
('1', 'photo1.jpg', 'photos/photo1.jpg', 'Photo terrain 1', '2024-05-15', 'Norbert Schneider', 'photo'),
('2', 'photo2.jpg', 'photos/photo2.jpg', 'Photo terrain 2', '2024-05-16', 'Norbert Schneider', 'photo'),
('3', 'photo3.jpg', 'photos/photo3.jpg', 'Photo terrain 3', '2024-05-18', 'Sophie Müller', 'photo');

-- Index performances
CREATE INDEX IF NOT EXISTS idx_observations_site ON observations(id_site);
CREATE INDEX IF NOT EXISTS idx_observations_espece ON observations(id_espece);
CREATE INDEX IF NOT EXISTS idx_observations_date ON observations(date_obs);
