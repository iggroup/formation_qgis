# Ressources de l'exercice QFieldSync Biodiv

Ce dossier contient les éléments nécessaires pour l'exercice de préparation d'un projet QGIS pour QFieldSync.

## Contenu

- `biodiv.gpkg` : GeoPackage de biodiversité copié depuis le jeu de données de formation.
- `biodiv_qfieldsync.qgs` : projet QGIS préconfiguré avec les couches principales du cas Biodiv.
- `ajout_table_photos.sql` : script SQL pour ajouter une table de photos liée aux observations.

## Couches du projet

- `sites` : polygones des zones d'étude
- `observations` : points d'observations
- `especes` : table de référence des espèces
- `photos` : table de pièces jointes liées aux observations (pour QField)

## Objectif pédagogique

L'exercice consiste à :

1. ouvrir le projet dans QGIS ;
2. vérifier les couches et les formulaires ;
3. configurer les actions QFieldSync par couche ;
4. exporter un paquet QField ;
5. transférer le paquet sur l'appareil mobile ;
7. saisir des observations sur le terrain ;
8. joindre des photos aux observations ;
9. synchroniser les modifications vers QGIS.

## Remarque

Le fichier projet est fourni comme **base de travail**. Selon la version de QGIS utilisée, il peut être utile de l'ouvrir une première fois dans QGIS puis de le réenregistrer avant l'export QFieldSync.
