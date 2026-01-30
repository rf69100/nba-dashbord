# 📄 Pages - Pages de l'application

Ce dossier contient toutes les pages (vues) de l'application, correspondant aux routes définies dans `App.jsx`.

## 📁 Fichiers

| Page | Route | Description |
|------|-------|-------------|
| `Home.jsx` | `/` | Page d'accueil |
| `Player.jsx` | `/player` | Recherche de joueurs |
| `PlayerProfile.jsx` | `/player/:id` | Profil d'un joueur |
| `Teams.jsx` | `/teams` | Liste des équipes |
| `TeamProfile.jsx` | `/team/:id` | Profil d'une équipe |
| `Standings.jsx` | `/standings` | Classement NBA |
| `Stats.jsx` | `/stats` | Leaders statistiques |
| `Comparison.jsx` | `/comparison` | Comparaison joueurs/équipes |
| `Quiz.jsx` | `/quiz` | Menu du quiz NBA |
| `QuizGame.jsx` | `/quiz/:categoryId` | Jeu de quiz |
| `Season.jsx` | `/season` | Saison 2024-25 |
| `OfficialStats.jsx` | `/official-stats` | Statistiques officielles |
| `About.jsx` | `/about` | À propos |

## 💡 Conventions

Chaque page :
- Utilise un **hook personnalisé** pour la logique (`useXxxData`)
- Compose des **composants** du dossier `components/`
- Gère la **navigation** avec `react-router-dom`
- Est enveloppée dans `PageContainer` pour la mise en page

## 🔧 Exemple de structure

```jsx
import { usePlayersData } from '../hooks/usePlayersData';
import PageContainer from '../components/layout/PageContainer';
import PlayerCard from '../components/players/PlayerCard';

function Player() {
  const { players, loading, error } = usePlayersData();
  
  return (
    <PageContainer>
      <PageTitle>Joueurs NBA</PageTitle>
      {/* Contenu */}
    </PageContainer>
  );
}

export default Player;
```
