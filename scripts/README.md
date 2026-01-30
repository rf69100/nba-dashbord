# 🛠️ Scripts - Outils de génération NBA

Ce dossier contient les scripts Python pour générer et mettre à jour les données des joueurs NBA.

## 📁 Structure

```
scripts/
├── generate_players.py  # Script principal de génération
├── add_player.py        # Script interactif d'ajout de joueur
└── README.md            # Ce fichier
```

## 📊 Fichiers de données associés

Les données sources sont dans le dossier `../data/` :

| Fichier | Description |
|---------|-------------|
| `players_stats.txt` | Statistiques brutes (format TSV depuis Basketball Reference) |
| `player_nba_ids.json` | IDs NBA pour les photos (éditable manuellement) |
| `player_profiles.json` | Profils détaillés des joueurs (taille, poids, nationalité...) |

## 🚀 Utilisation

### Générer/Mettre à jour les joueurs

```bash
# Depuis la racine du projet
cd scripts

# Mode incrémental (par défaut) - Ajoute les nouveaux joueurs
python3 generate_players.py

# Mode rebuild - Reconstruit TOUT depuis les données sources
python3 generate_players.py --rebuild

# Lister les joueurs sans photo (ID = 0)
python3 generate_players.py --list-missing-ids

# Aide
python3 generate_players.py --help
```

### Ajouter un joueur manuellement

```bash
python3 add_player.py  # Mode interactif
```

## 📷 Ajouter des photos de joueurs

### 1. Trouver l'ID NBA

1. Allez sur [nba.com/players](https://www.nba.com/players)
2. L'ID est dans l'URL: `https://www.nba.com/player/201939/stephen-curry` → ID = `201939`

### 2. Éditer `../data/player_nba_ids.json`

```json
{
  "Stephen Curry": 201939,
  "LeBron James": 2544,
  "Nouveau Joueur": 123456
}
```

### 3. Régénérer

```bash
python3 generate_players.py --rebuild
```

## 🔄 Workflow de mise à jour saison

1. Télécharger les stats depuis [Basketball Reference](https://www.basketball-reference.com/)
2. Remplacer `../data/players_stats.txt`
3. Lancer `python3 generate_players.py`
4. Vérifier `../src/services/nbaData.js`

## ⚠️ Notes importantes

- Les scripts génèrent automatiquement `src/services/nbaData.js`
- Les joueurs échangés (marqués "2TM") gardent leur dernière équipe
- Le tri est automatique par points décroissants
