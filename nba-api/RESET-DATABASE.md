# Réinitialisation complète de la base de données NBA

## Résumé de ce qui a été fait

La base de données a été complètement réinitialisée et remplie avec :
- ✅ **30 équipes NBA** avec toutes leurs informations (logos, arenas, divisions, etc.)
- ✅ **312 joueurs actifs** de la saison 2024-2025 (tous les rosters complets)
- ✅ **159 photos de joueurs** (URLs officielles NBA.com)
- ✅ **78 joueurs avec statistiques** complètes de la saison
- ✅ **Classement de la saison 2024-25** avec les vraies statistiques
- ✅ **Schéma de base de données** complet avec toutes les tables

## Structure de la base de données

### Tables créées :
1. **teams** - Les 30 équipes NBA
2. **players** - Tous les joueurs actifs
3. **seasons** - Saisons NBA
4. **games** - Matchs (vide pour l'instant)
5. **player_stats** - Statistiques des joueurs (vide pour l'instant)
6. **team_stats** - Statistiques des équipes (rempli avec la saison 2024-25)

## Fichiers générés

### Fichiers SQL principaux :
```
database/populate-all-players-2024-25.sql
```
Ce fichier contient les 312 joueurs de la saison 2024-2025 avec tous les rosters complets.

```
database/add-photos-and-stats.sql
```
Ce fichier ajoute les photos (URLs NBA.com) et les statistiques pour 78 joueurs vedettes.

### Scripts de génération :
```
scripts/generate-all-players-2024-25.js
```
Script Node.js pour régénérer le fichier SQL des joueurs si besoin.

```
scripts/add-player-photos-and-stats.js
```
Script pour générer les photos et stats des joueurs.

## Comment réinitialiser la base de données

### Option 1 : Réinitialisation complète (recommandé)

```bash
# 1. Supprimer et recréer la base de données
mysql -u nba_user -p'nba_password' -e "DROP DATABASE IF EXISTS nba_database; CREATE DATABASE nba_database CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# 2. Exécuter les fichiers SQL d'initialisation dans l'ordre
cd /var/www/html/websites/react/nba-dashbord/nba-api

mysql -u nba_user -p'nba_password' nba_database < database/init/01-schema.sql
mysql -u nba_user -p'nba_password' nba_database < database/init/02-populate-teams.sql
mysql -u nba_user -p'nba_password' nba_database < database/init/03-add-logos.sql
mysql -u nba_user -p'nba_password' nba_database < database/init/10-update-real-standings-2024-25.sql

# 3. Ajouter la colonne photo_url aux joueurs
mysql -u nba_user -p'nba_password' nba_database -e "ALTER TABLE players ADD COLUMN photo_url VARCHAR(255) AFTER nationality;"

# 4. Insérer tous les joueurs
mysql -u nba_user -p'nba_password' nba_database < database/populate-all-players-2024-25.sql

# 5. Ajouter les photos et statistiques
mysql -u nba_user -p'nba_password' nba_database < database/add-photos-and-stats.sql
```

### Option 2 : Script automatique

```bash
cd /var/www/html/websites/react/nba-dashbord/nba-api
./reset-database.sh
```

## Données insérées

### Équipes par conférence :

**Eastern Conference (15):**
- ATL (Hawks), BOS (Celtics), BKN (Nets), CHA (Hornets), CHI (Bulls)
- CLE (Cavaliers), DET (Pistons), IND (Pacers), MIA (Heat), MIL (Bucks)
- NYK (Knicks), ORL (Magic), PHI (76ers), TOR (Raptors), WAS (Wizards)

**Western Conference (15):**
- DAL (Mavericks), DEN (Nuggets), GSW (Warriors), HOU (Rockets), LAC (Clippers)
- LAL (Lakers), MEM (Grizzlies), MIN (Timberwolves), NOP (Pelicans), OKC (Thunder)
- PHX (Suns), POR (Trail Blazers), SAC (Kings), SAS (Spurs), UTA (Jazz)

### Joueurs par équipe :
Chaque équipe a entre 10 et 12 joueurs (312 joueurs au total).

Exemples de stars présentes :
- **LAL**: LeBron James, Anthony Davis, D'Angelo Russell
- **GSW**: Stephen Curry, Klay Thompson, Draymond Green
- **BOS**: Jayson Tatum, Jaylen Brown, Kristaps Porzingis
- **MIL**: Giannis Antetokounmpo, Damian Lillard
- **DEN**: Nikola Jokic, Jamal Murray
- **DAL**: Luka Doncic, Kyrie Irving
- **OKC**: Shai Gilgeous-Alexander, Chet Holmgren
- **PHX**: Kevin Durant, Devin Booker, Bradley Beal
- **SAS**: Victor Wembanyama

## Endpoints API disponibles

### Équipes
```bash
# Récupérer toutes les équipes
curl http://localhost:3001/api/v1/teams

# Récupérer une équipe spécifique
curl http://localhost:3001/api/v1/teams/1

# Récupérer les stats d'une équipe
curl http://localhost:3001/api/v1/teams/1/stats
```

### Joueurs
```bash
# Récupérer tous les joueurs
curl http://localhost:3001/api/v1/players

# Récupérer les joueurs d'une équipe
curl "http://localhost:3001/api/v1/players?team_id=1"

# Récupérer un joueur spécifique
curl http://localhost:3001/api/v1/players/142  # LeBron James
```

### Saisons
```bash
# Récupérer toutes les saisons
curl http://localhost:3001/api/v1/seasons

# Récupérer la saison actuelle
curl http://localhost:3001/api/v1/seasons/current
```

## Vérification des données

```bash
# Compter les équipes, joueurs et saisons
mysql -u nba_user -p'nba_password' nba_database -e "
SELECT
  'Équipes' AS type, COUNT(*) AS count FROM teams
UNION ALL
SELECT
  'Joueurs actifs' AS type, COUNT(*) AS count FROM players WHERE is_active = true
UNION ALL
SELECT
  'Saisons' AS type, COUNT(*) AS count FROM seasons
UNION ALL
SELECT
  'Team Stats' AS type, COUNT(*) AS count FROM team_stats;
"

# Voir le nombre de joueurs par équipe
mysql -u nba_user -p'nba_password' nba_database -e "
SELECT t.abbreviation, COUNT(p.id) AS player_count
FROM teams t
LEFT JOIN players p ON t.id = p.team_id AND p.is_active = true
GROUP BY t.id, t.abbreviation
ORDER BY t.abbreviation;
"
```

## Prochaines étapes

Pour ajouter des statistiques de joueurs :
1. Utiliser l'API NBA officielle ou une API tierce
2. Générer des statistiques avec le script `generate-all-player-stats.js`
3. Ou ajouter manuellement des stats réelles

## Notes importantes

- La base de données utilise MariaDB avec le charset `utf8mb4`
- Les apostrophes dans les noms (De'Andre, D'Angelo, etc.) sont correctement échappées
- Les IDs des équipes correspondent aux IDs déjà présents dans la base
- La saison 2024-25 est marquée comme saison actuelle
