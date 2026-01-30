# 📊 Data - Données sources NBA

Ce dossier contient les données brutes utilisées pour générer les données de l'application.

## 📁 Fichiers

| Fichier | Description | Format |
|---------|-------------|--------|
| `players_stats.txt` | Statistiques des joueurs de la saison | TSV (tab-separated) |
| `player_nba_ids.json` | IDs NBA pour les photos des joueurs | JSON |
| `player_profiles.json` | Profils détaillés (taille, poids, nationalité...) | JSON |

## 📝 Format `players_stats.txt`

Données provenant de [Basketball Reference](https://www.basketball-reference.com/).

```
Rk	Player	Age	Team	Pos	G	GS	MP	FG	FGA	FG%	3P	3PA	3P%	2P	2PA	2P%	eFG%	FT	FTA	FT%	ORB	DRB	TRB	AST	STL	BLK	TOV	PF	PTS	Trp-Dbl	Awards
```

### Notes
- `2TM` = Joueur échangé (stats cumulées sur toutes les équipes)
- Les lignes après `2TM` = détails par équipe

## 📝 Format `player_nba_ids.json`

```json
{
  "Nom du Joueur": ID_NBA,
  "LeBron James": 2544,
  "Stephen Curry": 201939
}
```

- `0` = Pas de photo disponible
- L'ID permet de construire l'URL: `https://cdn.nba.com/headshots/nba/latest/1040x760/{ID}.png`

## 📝 Format `player_profiles.json`

```json
{
  "LeBron James": {
    "height_cm": 206,
    "weight_kg": 113,
    "nationality": "USA",
    "birth_date": "1984-12-30",
    "draft_year": 2003,
    "draft_pick": 1
  }
}
```

## 🔄 Mise à jour

1. Télécharger les nouvelles stats depuis Basketball Reference
2. Remplacer `players_stats.txt`
3. Exécuter `python3 scripts/generate_players.py`

## ⚠️ Important

Ces fichiers sont les **sources** de données. Les modifications sont ensuite compilées dans `src/services/nbaData.js` par les scripts du dossier `scripts/`.
