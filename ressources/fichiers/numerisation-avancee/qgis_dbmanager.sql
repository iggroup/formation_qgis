-- Script à exécuter depuis QGIS DB Manager
-- Exécuter chaque instruction (ou groupe) séparément

-- 1) CRÉER TABLE ZONES (Polygones)
CREATE TABLE zones (
    id_zone INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT(100),
    type TEXT(50)
);

-- 2) AJOUTER LA GÉOMÉTRIE À ZONES
SELECT gpkgAddGeometryColumn('zones', 'geom', 'POLYGON', 0, 0, 2056);

-- 3) INSÉRER LES DONNÉES ZONES
INSERT INTO zones (nom, type, geom) VALUES
('Zone_A_irreguliere', 'prairie', ST_PolygonFromText('POLYGON((2683200 1247600, 2683250 1247600, 2683250 1247650, 2683200 1247650, 2683200 1247600))', 2056)),
('Zone_B_complexe', 'foret', ST_PolygonFromText('POLYGON((2683300 1247700, 2683350 1247700, 2683375 1247725, 2683350 1247750, 2683300 1247750, 2683300 1247700))', 2056)),
('Zone_C_avec_trou', 'eau', ST_PolygonFromText('POLYGON((2683400 1247500, 2683500 1247500, 2683500 1247600, 2683400 1247600, 2683400 1247500), (2683430 1247530, 2683470 1247530, 2683470 1247570, 2683430 1247570, 2683430 1247530))', 2056));

-- 4) CRÉER TABLE LIMITES (Lignes)
CREATE TABLE limites (
    id_limite INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT(100),
    type TEXT(50)
);

-- 5) AJOUTER LA GÉOMÉTRIE À LIMITES
SELECT gpkgAddGeometryColumn('limites', 'geom', 'LINESTRING', 0, 0, 2056);

-- 6) INSÉRER LES DONNÉES LIMITES
INSERT INTO limites (nom, type, geom) VALUES
('chemin_principal', 'sentier', ST_LineFromText('LINESTRING(2683100 1247500, 2683150 1247520, 2683200 1247550, 2683250 1247600)', 2056)),
('cours_eau', 'riviere', ST_LineFromText('LINESTRING(2683400 1247400, 2683420 1247430, 2683450 1247460, 2683500 1247500)', 2056)),
('parcelle_limite', 'bordure', ST_LineFromText('LINESTRING(2683300 1247300, 2683350 1247330, 2683400 1247360)', 2056));

-- 7) CRÉER TABLE POINTS_REPERES (Points)
CREATE TABLE points_reperes (
    id_point INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT(100),
    type TEXT(50),
    altitude REAL
);

-- 8) AJOUTER LA GÉOMÉTRIE À POINTS_REPERES
SELECT gpkgAddGeometryColumn('points_reperes', 'geom', 'POINT', 0, 0, 2056);

-- 9) INSÉRER LES DONNÉES POINTS
INSERT INTO points_reperes (nom, type, altitude, geom) VALUES
('sommet_A', 'pic', 1542.5, ST_PointFromText('POINT(2683150 1247600)', 2056)),
('refuge_B', 'construction', 1380.0, ST_PointFromText('POINT(2683350 1247450)', 2056)),
('source_C', 'hydrologie', 1250.8, ST_PointFromText('POINT(2683450 1247350)', 2056));

-- 10) CRÉER TABLE ZONES_MULTI (Multi-Polygones)
CREATE TABLE zones_multi (
    id_zone_multi INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT(100),
    type TEXT(50)
);

-- 11) AJOUTER LA GÉOMÉTRIE À ZONES_MULTI
SELECT gpkgAddGeometryColumn('zones_multi', 'geom', 'MULTIPOLYGON', 0, 0, 2056);

-- 12) INSÉRER LES DONNÉES ZONES_MULTI (entités avec plusieurs parties)
INSERT INTO zones_multi (nom, type, geom) VALUES
('commune_fragmentee', 'administration', ST_MultiPolygonFromText('MULTIPOLYGON(((2683100 1247400, 2683150 1247400, 2683150 1247450, 2683100 1247450, 2683100 1247400)), ((2683200 1247500, 2683250 1247500, 2683250 1247550, 2683200 1247550, 2683200 1247500)))', 2056)),
('zone_protegee_dispersee', 'protection', ST_MultiPolygonFromText('MULTIPOLYGON(((2683300 1247600, 2683330 1247600, 2683330 1247630, 2683300 1247630, 2683300 1247600)), ((2683350 1247650, 2683380 1247650, 2683380 1247680, 2683350 1247680, 2683350 1247650)))', 2056));

-- 13) CRÉER TABLE RESEAUX_MULTI (Multi-Lignes)
CREATE TABLE reseaux_multi (
    id_reseau_multi INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT(100),
    type TEXT(50)
);

-- 14) AJOUTER LA GÉOMÉTRIE À RESEAUX_MULTI
SELECT gpkgAddGeometryColumn('reseaux_multi', 'geom', 'MULTILINESTRING', 0, 0, 2056);

-- 15) INSÉRER LES DONNÉES RESEAUX_MULTI (entités avec plusieurs tronçons)
INSERT INTO reseaux_multi (nom, type, geom) VALUES
('route_discontinue', 'transport', ST_MultiLineStringFromText('MULTILINESTRING((2683100 1247300, 2683150 1247330, 2683200 1247360), (2683250 1247400, 2683300 1247430, 2683350 1247460))', 2056)),
('ligne_electrique_ramifiee', 'energie', ST_MultiLineStringFromText('MULTILINESTRING((2683400 1247300, 2683420 1247320, 2683440 1247340), (2683400 1247300, 2683380 1247280, 2683360 1247260))', 2056));
