# 🏀 NBA API - Démarrage Rapide

## Fichier SQL prêt à l'emploi

Vous avez un fichier SQL complet qui contient **TOUT** :
- ✅ 30 équipes NBA
- ✅ 200+ joueurs avec photos
- ✅ 2000+ statistiques réelles 2024-25
- ✅ Classement réel 2024-25

## 🚀 Installation en 3 commandes

```bash
# 1. Se placer dans le dossier database
cd nba-api/database

# 2. Rendre le script exécutable (première fois seulement)
chmod +x import.sh

# 3. Lancer l'import
./import.sh
```

## Ou en une seule commande SQL

```bash
mysql -u nba_user -pnba_password nba_database < complete-database.sql
```

## 📦 Contenu du fichier

**Fichier** : `complete-database.sql`
- **Taille** : 1.3 MB
- **Lignes** : 35,000+
- **Tables** : 6 (teams, players, seasons, games, player_stats, team_stats)
- **Données** : 30 équipes + 200+ joueurs + 2000+ stats

## ✅ Vérification rapide

Après l'import, testez l'API :

```bash
# Démarrer l'API
cd ..
npm start

# Dans un autre terminal, tester les endpoints
curl http://localhost:3001/health
curl http://localhost:3001/api/v1/teams
curl http://localhost:3001/api/v1/players
```

Ou ouvrez dans votre navigateur :
- http://localhost:3001/api/v1/teams
- http://localhost:3001/api/v1/players

## 📚 Documentation complète

Voir [README.md](README.md) pour plus de détails.

---

**Prêt en 30 secondes!** 🎉
