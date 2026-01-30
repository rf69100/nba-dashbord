# 🏀 Générateur de Données Joueurs NBA v3.0

Script Python optimisé pour générer et mettre à jour automatiquement les données des joueurs NBA dans `nbaData.js` à partir du fichier `players_stats.txt`.

## 📁 Fichiers

| Fichier | Description |
|---------|-------------|
| `generate_players.py` | Script principal (v3.0) |
| `player_nba_ids.json` | **IDs NBA pour les photos** (éditable facilement) |
| `players_stats.txt` | Fichier source des statistiques |
| `src/services/nbaData.js` | Fichier de sortie |
| `generate_players_old.py` | Ancienne version (backup) |

## 🚀 Utilisation

```bash
# Mode incrémental (par défaut) - Ajoute uniquement les nouveaux joueurs
python3 generate_players.py

# Mode rebuild - Reconstruit TOUT depuis players_stats.txt
python3 generate_players.py --rebuild

# Lister les joueurs sans photo (ID = 0)
python3 generate_players.py --list-missing-ids

# Aide
python3 generate_players.py --help
```

## ✨ Nouvelles fonctionnalités v3.0

- **Fichier JSON séparé pour les IDs NBA** - Plus facile à éditer manuellement
- **Mode `--rebuild`** - Régénère complètement les données
- **Mode `--list-missing-ids`** - Voir les joueurs sans photo
- **Ajout automatique des nouveaux joueurs** dans `player_nba_ids.json`
- **Aucun doublon** - Vérification intelligente par nom

## 📷 Ajouter des photos de joueurs

### Méthode simple : Éditez `player_nba_ids.json`

```json
{
  "Aaron Gordon": 203932,
  "LeBron James": 2544,
  "Stephen Curry": 201939
}
```

### Où trouver les IDs NBA ?

1. Allez sur [nba.com/players](https://www.nba.com/players)
2. Cherchez le joueur
3. L'ID est dans l'URL: `https://www.nba.com/player/201939/stephen-curry`
4. Ou testez directement: `https://cdn.nba.com/headshots/nba/latest/1040x760/201939.png`

### Après modification

```bash
python3 generate_players.py --rebuild
```

## 📊 Format du fichier players_stats.txt

Format TSV (tab-separated) depuis [Basketball Reference](https://www.basketball-reference.com/):

```
Rk	Player	Age	Team	Pos	G	GS	MP	FG	FGA	FG%	3P	3PA	3P%	2P	2PA	2P%	eFG%	FT	FTA	FT%	ORB	DRB	TRB	AST	STL	BLK	TOV	PF	PTS	Trp-Dbl	Awards
```

### Gestion des joueurs échangés (2TM)

- Ligne `2TM` = stats totales de la saison
- Lignes suivantes = détails par équipe  
- Le script garde automatiquement l'équipe la plus récente

## 🔧 Fonctionnalités

| Fonctionnalité | Description |
|----------------|-------------|
| ✅ Parsing automatique | Lit `players_stats.txt` sans configuration |
| ✅ Gestion 2TM | Joueurs échangés → garde la dernière équipe |
| ✅ Fusion intelligente | Pas de doublons, préserve les données existantes |
| ✅ Tri automatique | Par points décroissants |
| ✅ Stats de match | Génère 10 matchs réalistes par joueur |
| ✅ IDs externalisés | Fichier JSON pour gestion simplifiée |

## 🔄 Workflow typique

### 1. Mettre à jour les statistiques

1. Télécharger les nouvelles stats depuis Basketball Reference
2. Remplacer `players_stats.txt`
3. Lancer `python3 generate_players.py`

### 2. Ajouter des photos

1. Ouvrir `player_nba_ids.json`
2. Remplacer les `0` par les vrais IDs NBA
3. Lancer `python3 generate_players.py --rebuild`

### 3. Vérifier les joueurs manquants

```bash
python3 generate_players.py --list-missing-ids
```

## 📈 Stats du projet

- **551+ joueurs** NBA 2024-2025
- **Tri automatique** par points marqués
- **Photos CDN NBA** pour les joueurs avec ID

## 📝 Structure du code

```
generate_players.py
├── Configuration
│   ├── TEAM_LOGOS, TEAM_NAMES, POSITION_MAP
│   └── load_player_ids() / save_player_ids()
├── Data Classes
│   ├── PlayerStats (statistiques saison)
│   └── Player (joueur complet)
├── Parsing
│   ├── parse_player_line()
│   └── parse_stats_file()
├── Génération
│   ├── generate_game_stats()
│   └── player_to_js_object()
├── I/O nbaData.js
│   ├── read_existing_players()
│   └── update_nba_data_file()
└── Commands
    ├── cmd_incremental() (par défaut)
    ├── cmd_rebuild() (--rebuild)
    └── cmd_list_missing_ids() (--list-missing-ids)
```
