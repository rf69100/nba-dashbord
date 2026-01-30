# 🪝 Hooks - Hooks React personnalisés

Ce dossier contient tous les hooks personnalisés de l'application pour la gestion d'état et la logique métier.

## 📁 Fichiers

| Hook | Description | Page associée |
|------|-------------|---------------|
| `usePlayersData.js` | Chargement et filtrage des joueurs | `/player` |
| `usePlayerProfile.js` | Données d'un profil joueur | `/player/:id` |
| `useTeamsData.js` | Chargement des équipes | `/teams` |
| `useTeamProfile.js` | Données d'un profil équipe | `/team/:id` |
| `useStandingsData.js` | Classement des équipes | `/standings` |
| `useStatsData.js` | Statistiques leaders | `/stats` |
| `useComparisonData.js` | Données de comparaison joueurs | `/comparison` |
| `useComparisonMode.js` | Mode de comparaison (joueurs/équipes) | `/comparison` |
| `useTeamsComparison.js` | Comparaison d'équipes | `/comparison` |
| `useHomeStats.js` | Stats pour la page d'accueil | `/` |
| `useQuiz.js` | Logique du quiz NBA | `/quiz` |

## 🔧 Utilisation

```javascript
import { usePlayersData } from '../hooks/usePlayersData';

function PlayersList() {
  const { players, loading, error, setFilters } = usePlayersData();
  
  if (loading) return <Spinner />;
  if (error) return <Error message={error} />;
  
  return <List data={players} />;
}
```

## 💡 Conventions

Chaque hook retourne généralement :
- `data` - Les données chargées
- `loading` - État de chargement (boolean)
- `error` - Message d'erreur (string | null)
- `setXxx` - Fonctions de mise à jour

## 📋 Responsabilités

Les hooks gèrent :
- ✅ Appels aux services (`nbaApi.js`)
- ✅ Gestion des états (loading, error)
- ✅ Filtrage et tri des données
- ✅ Mise en cache simple

Les hooks ne gèrent **pas** :
- ❌ Le rendu UI (c'est le rôle des composants)
- ❌ La navigation (c'est le rôle des pages)
