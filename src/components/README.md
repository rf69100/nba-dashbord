# 🎨 Components - Composants React

Ce dossier contient tous les composants React de l'application, organisés par fonctionnalité.

## 📁 Structure

```
components/
├── common/          # Composants réutilisables (UI générique)
├── comparison/      # Page de comparaison joueurs/équipes
├── home/            # Page d'accueil
├── layout/          # Structure de page (Header, Footer, etc.)
├── playerProfile/   # Page profil d'un joueur
├── players/         # Liste et recherche de joueurs
├── quiz/            # Quiz NBA
├── standings/       # Classement des équipes
├── stats/           # Page statistiques
├── teamProfile/     # Page profil d'une équipe
└── teams/           # Liste des équipes
```

## 📦 Détail par dossier

### `common/` - Composants partagés
Composants UI réutilisables dans toute l'application :
- `InfoBox.jsx`, `InfoRow.jsx` - Affichage d'informations
- `LoadingSpinner.jsx` - Indicateur de chargement
- `PercentageBar.jsx` - Barre de progression
- `PlayerAvatar.jsx` - Avatar de joueur
- `StatCard.jsx`, `StatRow.jsx` - Affichage de statistiques

### `layout/` - Structure de page
- `Header.jsx` - Navigation principale
- `Footer.jsx` - Pied de page
- `PageContainer.jsx`, `PageTitle.jsx` - Conteneurs de page
- `PageLoader.jsx` - Écran de chargement
- `ErrorMessage.jsx` - Affichage d'erreurs
- `ScrollToTop.jsx` - Scroll automatique

### `players/` - Gestion des joueurs
- `PlayerCard.jsx` - Carte d'un joueur
- `PlayerStatsChart.jsx` - Graphiques stats
- `SearchBar.jsx`, `TeamFilter.jsx`, `PositionFilter.jsx` - Filtres

### `standings/` - Classement
- `StandingsCard.jsx` - Carte de classement
- `ConferenceFilter.jsx` - Filtre Est/Ouest

## 💡 Conventions

- **Un composant = Un fichier** avec le même nom (PascalCase)
- **Props typées** dans les commentaires JSDoc
- **Composants fonctionnels** avec hooks React
- **Styles avec Tailwind CSS**
