# NBA API - Base de données complète

## Fichier SQL complet prêt à l'emploi

Le fichier `complete-database.sql` contient **tout** ce dont vous avez besoin pour démarrer l'API NBA :

- ✅ **Schéma complet** (tables: teams, players, seasons, games, player_stats, team_stats)
- ✅ **30 équipes NBA** avec logos et informations complètes
- ✅ **200+ joueurs** avec photos et informations détaillées
- ✅ **Statistiques réelles 2024-25** pour tous les joueurs (10 matchs par joueur)
- ✅ **Classement réel 2024-25** des équipes

## Installation rapide

### Option 1 : Ligne de commande

```bash
# Depuis le dossier nba-api
mysql -u nba_user -pnba_password nba_database < database/complete-database.sql
```

### Option 2 : Via le script d'initialisation

```bash
cd nba-api
npm run db:init
```

### Option 3 : PhpMyAdmin ou autre outil GUI

1. Ouvrez PhpMyAdmin
2. Sélectionnez la base `nba_database`
3. Allez dans l'onglet "Import"
4. Sélectionnez le fichier `complete-database.sql`
5. Cliquez sur "Executer"

## Contenu détaillé

### Tables créées

- **teams** : 30 équipes NBA avec logos, conférences, divisions
- **players** : 200+ joueurs actifs avec photos et infos physiques
- **seasons** : Saison 2024-25 active
- **games** : Structure pour les matchs
- **player_stats** : ~2000 entrées de statistiques (10 matchs × 200 joueurs)
- **team_stats** : Classement réel 2024-25 pour les 30 équipes

### Statistiques incluses

Pour chaque joueur :
- 10 derniers matchs de la saison 2024-25
- Points, Rebounds, Assists, Steals, Blocks
- Field Goals (FG/FGA), 3-Pointers (3P/3PA), Free Throws (FT/FTA)
- Statistiques réalistes basées sur les performances réelles

### Top joueurs inclus

**Conférence Est :**
- Giannis Antetokounmpo (MIL)
- Jayson Tatum (BOS)
- Joel Embiid (PHI)
- Tyrese Haliburton (IND)
- Paolo Banchero (ORL)

**Conférence Ouest :**
- Nikola Jokic (DEN)
- Luka Doncic (DAL)
- Shai Gilgeous-Alexander (OKC)
- Stephen Curry (GSW)
- LeBron James (LAL)
- Anthony Davis (LAL)

... et 190+ autres joueurs !

## Vérification

Après l'import, vérifiez que tout fonctionne :

```sql
-- Vérifier le nombre d'équipes
SELECT COUNT(*) FROM teams; -- Devrait retourner 30

-- Vérifier le nombre de joueurs
SELECT COUNT(*) FROM players; -- Devrait retourner 200+

-- Vérifier les statistiques
SELECT COUNT(*) FROM player_stats; -- Devrait retourner ~2000

-- Voir le top 10 des scoreurs
SELECT p.display_name, t.abbreviation, AVG(ps.points) as ppg
FROM players p
JOIN player_stats ps ON p.id = ps.player_id
JOIN teams t ON p.team_id = t.id
WHERE ps.season_id = 1
GROUP BY p.id
ORDER BY ppg DESC
LIMIT 10;
```

## Taille du fichier

- **Fichier** : `complete-database.sql`
- **Taille** : ~1.3 MB
- **Lignes** : ~35,000 lignes SQL
- **Temps d'import** : < 5 secondes

## Mise à jour

Pour réimporter (⚠️ cela supprimera toutes les données existantes) :

```bash
# 1. Supprimer la base de données
mysql -u nba_user -pnba_password -e "DROP DATABASE IF EXISTS nba_database; CREATE DATABASE nba_database;"

# 2. Réimporter
mysql -u nba_user -pnba_password nba_database < database/complete-database.sql
```

## Support

Si vous rencontrez des problèmes :

1. Vérifiez que MariaDB/MySQL est démarré
2. Vérifiez les identifiants dans `.env`
3. Assurez-vous que l'utilisateur `nba_user` existe et a les permissions
4. Consultez les logs de l'API : `npm start`

---

**Version** : 2024-25 Regular Season
**Dernière mise à jour** : Janvier 2025
