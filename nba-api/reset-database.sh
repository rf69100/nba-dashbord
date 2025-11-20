#!/bin/bash

# Script pour réinitialiser complètement la base de données NBA

echo "🏀 Réinitialisation de la base de données NBA"
echo "=============================================="
echo ""

# Configuration
DB_USER="nba_user"
DB_PASS="nba_password"
DB_NAME="nba_database"

echo "📊 Étape 1/5: Suppression et recréation de la base de données..."
mysql -u $DB_USER -p"$DB_PASS" -e "DROP DATABASE IF EXISTS $DB_NAME; CREATE DATABASE $DB_NAME CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
if [ $? -eq 0 ]; then
    echo "✅ Base de données recréée"
else
    echo "❌ Erreur lors de la recréation de la base"
    exit 1
fi

echo ""
echo "📊 Étape 2/5: Création du schéma..."
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME < database/init/01-schema.sql
if [ $? -eq 0 ]; then
    echo "✅ Schéma créé"
else
    echo "❌ Erreur lors de la création du schéma"
    exit 1
fi

echo ""
echo "📊 Étape 3/5: Insertion des équipes et logos..."
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME < database/init/02-populate-teams.sql
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME < database/init/03-add-logos.sql
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME < database/init/10-update-real-standings-2024-25.sql
if [ $? -eq 0 ]; then
    echo "✅ Équipes et classement insérés"
else
    echo "❌ Erreur lors de l'insertion des équipes"
    exit 1
fi

echo ""
echo "📊 Étape 4/5: Ajout de la colonne photo_url..."
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME -e "ALTER TABLE players ADD COLUMN photo_url VARCHAR(255) AFTER nationality;" 2>/dev/null
echo "✅ Colonne photo_url ajoutée"

echo ""
echo "📊 Étape 5/6: Insertion des joueurs (312 joueurs)..."
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME < database/populate-all-players-2024-25.sql
if [ $? -eq 0 ]; then
    echo "✅ Tous les joueurs insérés"
else
    echo "❌ Erreur lors de l'insertion des joueurs"
    exit 1
fi

echo ""
echo "📊 Étape 6/6: Ajout des photos et statistiques..."
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME < database/add-photos-and-stats.sql
if [ $? -eq 0 ]; then
    echo "✅ Photos et statistiques ajoutées"
else
    echo "❌ Erreur lors de l'ajout des photos/stats"
    exit 1
fi

echo ""
echo "=============================================="
echo "✅ Base de données NBA réinitialisée avec succès!"
echo ""

# Afficher les statistiques
echo "📊 Statistiques de la base de données:"
mysql -u $DB_USER -p"$DB_PASS" $DB_NAME -e "
SELECT
  'Équipes' AS Type, COUNT(*) AS Total FROM teams
UNION ALL
SELECT
  'Joueurs actifs' AS Type, COUNT(*) AS Total FROM players WHERE is_active = true
UNION ALL
SELECT
  'Saisons' AS Type, COUNT(*) AS Total FROM seasons
UNION ALL
SELECT
  'Team Stats' AS Type, COUNT(*) AS Total FROM team_stats;
"

echo ""
echo "🚀 Pour démarrer l'API:"
echo "   npm start"
echo ""
echo "📖 Documentation complète dans RESET-DATABASE.md"
