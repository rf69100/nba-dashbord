# 🔧 Utils - Fonctions utilitaires

Ce dossier contient les fonctions utilitaires pures, sans effet de bord.

## 📁 Fichiers

| Fichier | Description |
|---------|-------------|
| `filters.js` | Filtrage des joueurs (recherche, équipe, position) |
| `playerStats.js` | Calculs de statistiques joueur (moyennes, pourcentages) |
| `statsHelpers.js` | Préparation et tri des stats pour affichage |

## 🔧 Utilisation

### `filters.js`

```javascript
import { applyAllFilters } from '../utils/filters';

// Filtrer les joueurs
const filtered = applyAllFilters(players, 'curry', 'Golden State Warriors', 'Guard');
```

### `playerStats.js`

```javascript
import { calculateAverage, calculatePercentage, calculateExperience } from '../utils/playerStats';

// Moyenne de points sur les derniers matchs
const avgPts = calculateAverage(player, 'PTS');

// Pourcentage de tirs
const fgPct = calculatePercentage(player, 'FG', 'FGA');

// Expérience NBA
const exp = calculateExperience(player.birth_date);
```

### `statsHelpers.js`

```javascript
import { preparePlayerSeasonStats, sortPlayersByCategory } from '../utils/statsHelpers';

// Préparer les stats d'un joueur pour affichage
const playerStats = preparePlayerSeasonStats(player);

// Trier par catégorie
const topScorers = sortPlayersByCategory(players, 'points');
```

## 💡 Conventions

- **Fonctions pures** : pas d'effets de bord
- **Pas d'appels API** : uniquement transformation de données
- **Testables** : facilement testables unitairement
- **Documentées** : JSDoc pour chaque fonction exportée
