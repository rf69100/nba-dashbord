# 📦 Services - Accès aux données

Ce dossier contient les services d'accès aux données de l'application.

## 📁 Fichiers

| Fichier | Description |
|---------|-------------|
| `nbaApi.js` | Point d'entrée unique pour récupérer les données NBA |
| `nbaData.js` | Données statiques (équipes, joueurs, stats) - **Généré automatiquement** |

## 🔧 Utilisation

```javascript
import { getPlayers, getTeams, getStandings } from '../services/nbaApi';

// Récupérer tous les joueurs
const players = await getPlayers();

// Récupérer une équipe
const team = await getTeam(teamId);

// Récupérer le classement
const standings = await getStandings({ conference: 'West' });
```

## 📋 Fonctions disponibles (`nbaApi.js`)

### Équipes
- `getStandings(filters)` - Classement avec filtres
- `getTeams(filters)` - Liste des équipes avec pagination
- `getTeamsByDivision()` - Équipes par conférence/division
- `getTeamsByConference(conference)` - Équipes par conférence
- `getTeam(teamId)` - Détails d'une équipe

### Joueurs
- `getPlayers(filters)` - Liste des joueurs avec filtres
- `getPlayer(playerId)` - Profil complet d'un joueur
- `getPlayersForComparison(ids)` - Joueurs pour comparaison

## ⚠️ Important

**Ne pas modifier `nbaData.js` manuellement !**

Ce fichier est généré automatiquement par les scripts Python dans `scripts/`.

Pour modifier les données :
1. Modifier les fichiers dans `data/`
2. Exécuter `python3 scripts/generate_players.py`
