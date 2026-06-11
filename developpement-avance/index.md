---
title: "Module : Développement avancé"
---

## Bienvenue dans le module Développement avancé QGIS

Ce module couvre la progression complète du **utilisateur** de QGIS au **développeur** qui crée et distribue des extensions.

### Structure du module

* [Introduction au développement](introduction-developpement.qmd)
  - Progression du script au plugin
  - Architecture générale

* [Traitement personnalisé KDE](traitement-kde.qmd)
  - Convertir un script Python en traitement QGIS
  - Classe `QgsProcessingAlgorithm`
  - Enregistrement et tests

* [Plugin QGIS KDE](plugin-kde.qmd)
  - Structure complète d'un plugin
  - Interface graphique (PyQt5)
  - Métadonnées et distribution
  - Publication sur le marché QGIS

### Préalables

* Connaître les bases de Python
* Avoir compris les flux du modéleur (module Advanced > Modéleur)
* Être familier avec l'architecture de QGIS

### Cas d'étude

Tout le module utilise un **exemple concret** : convertir le flux d'analyse KDE de distribution d'espèce (biodiversité) en plugin complet.

### Progression pédagogique

```
Boîte à outils (outils manuels)
        ↓
Modéleur (flux visuels)
        ↓
Script Python (automatisation)
        ↓
Traitement personnalisé (réutilisable)
        ↓
Plugin QGIS (distributable)
```

Chaque étape construit sur la précédente, montrant comment :
1. **Automatiser** les tâches répétitives
2. **Packager** les solutions
3. **Partager** avec d'autres utilisateurs

---

## Cas d'usage réels

### Pour un chercheur
Créer un traitement d'analyse écologique réutilisable que d'autres peuvent télécharger.

### Pour une collectivité
Packager les workflows SIG locaux en plugin pour tous les techniciens.

### Pour une agence de conseil
Distribuer les méthodologies standardisées sous forme de plugin aux clients.

---

## Points clés à retenir

* **Pas besoin de savoir coder pour commencer** : le modéleur génère le code
* **La progression est incrémentale** : chaque étape ajoute une complexité gérée
* **La documentation est tout** : un bon plugin est un plugin bien documenté
* **Les tests assurent la qualité** : toujours valider avant de distribuer

---

Bonne exploration du développement QGIS !
