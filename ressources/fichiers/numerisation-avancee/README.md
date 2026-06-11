# Exercice : Numérisation Avancée

## Objectif
Cet exercice vise à pratiquer les outils avancés de numérisation dans QGIS :
- Édition des sommets et modification des coordonnées
- Gestion des multi-géométries
- Reshape et modification de forme
- Découpe et fusion d'entités

## Contenu

### Données fournies
Le projet `numerisation_avancee.qgz` contient trois couches :

1. **zones** (Polygones)
   - `Zone_A_irreguliere` : polygone simple à rectifier
   - `Zone_B_complexe` : polygone multi-sommets à remanier
   - `Zone_C_avec_trou` : polygone avec anneau (trou) à éditer

2. **limites** (Lignes)
   - `chemin_principal` : ligne à prolonger/rectifier
   - `cours_eau` : ligne discontinue à corriger
   - `parcelle_limite` : ligne courte à étendre

3. **points_reperes** (Points)
   - `sommet_A` : point à déplacer
   - `refuge_B` : point à repositionner
   - `source_C` : point d'hydrologie à éditer

### Exercice proposé

#### Partie 1 : Édition des sommets
1. Ouvrir le projet
2. Sélectionner la couche `zones`
3. Avec l'outil de sommets, modifier `Zone_A_irreguliere` pour en corriger la forme
4. Éditer les coordonnées exactes d'au moins un sommet

#### Partie 2 : Gestion des anneaux
1. Inspecter `Zone_C_avec_trou` (polygone avec anneau)
2. Ajouter un deuxième trou (anneau) au polygone
3. Vérifier que l'anneau est bien représenté

#### Partie 3 : Modification de forme
1. Utiliser l'outil Reshape sur `Zone_B_complexe`
2. Modifier le contour en redessinant une partie

#### Partie 4 : Édition de lignes
1. Prolonger `chemin_principal` avec l'outil de sommets
2. Corriger la discontinuité de `cours_eau` en ajoutant des sommets

#### Partie 5 : Points et multi-géométries (optionnel)
1. Déplacer les points avec precision
2. Créer une multi-géométrie en combinant plusieurs zones
3. Comparer le résultat à une entité unique

## Création du GPKG et du projet

### Méthode 1 : Utilisation manuelle dans QGIS

1. Créer un nouveau GeoPackage dans QGIS (voir [implementation-base-gpkg.qmd](../../base-de-donnees/implementation-base-gpkg.qmd))
2. Créer trois couches :
   - `zones` (Polygone, EPSG:2056)
   - `limites` (LineString, EPSG:2056)
   - `points_reperes` (Point, EPSG:2056)
3. Ajouter les entités avec les coordonnées indiquées dans `init.sql`
4. Sauvegarder le projet dans le GPKG

### Méthode 2 : Utilisation de DB Browser et du script SQL

1. Télécharger [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Créer une nouvelle base de données SQLite (`.gpkg`)
3. Ouvrir le fichier `init.sql` et exécuter les commandes
4. Ouvrir le GPKG dans QGIS et sauvegarder comme projet

## Conseils pédagogiques

- **Avant l'exercice :** montrer les outils sur un exemple simple
- **Pendant :** laisser les stagiaires expérimenter et comparer leurs résultats
- **Après :** comparer les différentes approches (sommet vs reshape vs reconstruction)
- **Validation :** vérifier que les géométries restent valides (pas d'autointersection)

## Fichiers dans ce dossier

- `init.sql` : script de création du GeoPackage (à exécuter manuellement si nécessaire)
- `numerisation_avancee.gpkg` : GeoPackage avec les données (créé après exécution du script)
- `numerisation_avancee.qgz` : projet QGIS pré-configuré (optionnel, à créer manuellement si nécessaire)
- `README.md` : ce fichier

---

Pour plus d'informations, consulter le chapitre [Numérisation Avancée](../../advanced-qgis/numerisation-avancee.qmd)
