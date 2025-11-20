#!/bin/bash

# ============================================
# Script d'import de la base de données NBA
# ============================================

echo ""
echo "🏀 ========================================"
echo "   NBA API - Import de la base de données"
echo "========================================"
echo ""

# Couleurs pour l'affichage
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Charger les variables d'environnement
if [ -f ../.env ]; then
    export $(cat ../.env | grep -v '^#' | xargs)
    echo -e "${GREEN}✅ Fichier .env chargé${NC}"
else
    echo -e "${RED}❌ Fichier .env introuvable!${NC}"
    echo "Assurez-vous d'être dans le dossier nba-api/database/"
    exit 1
fi

# Vérifier que le fichier SQL existe
if [ ! -f complete-database.sql ]; then
    echo -e "${RED}❌ Fichier complete-database.sql introuvable!${NC}"
    exit 1
fi

echo -e "${GREEN}✅ Fichier SQL trouvé ($(du -h complete-database.sql | cut -f1))${NC}"
echo ""

# Demander confirmation
echo -e "${YELLOW}⚠️  ATTENTION: Cette opération va:${NC}"
echo "   1. Supprimer TOUTES les données existantes"
echo "   2. Recréer les tables"
echo "   3. Importer les nouvelles données"
echo ""
read -p "Voulez-vous continuer? (oui/non): " confirmation

if [ "$confirmation" != "oui" ]; then
    echo -e "${YELLOW}⏸  Opération annulée${NC}"
    exit 0
fi

echo ""
echo "📊 Import en cours..."
echo ""

# Supprimer et recréer la base de données
echo "1/3 Suppression de l'ancienne base de données..."
mysql -u $DB_USER -p$DB_PASSWORD -e "DROP DATABASE IF EXISTS $DB_NAME;" 2>/dev/null

echo "2/3 Création de la nouvelle base de données..."
mysql -u $DB_USER -p$DB_PASSWORD -e "CREATE DATABASE $DB_NAME CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" 2>/dev/null

# Import du fichier SQL complet
echo "3/3 Import des données (cela peut prendre 5-10 secondes)..."
mysql -u $DB_USER -p$DB_PASSWORD $DB_NAME < complete-database.sql 2>/dev/null

# Vérification
echo ""
echo "🔍 Vérification de l'import..."
echo ""

teams_count=$(mysql -u $DB_USER -p$DB_PASSWORD $DB_NAME -sse "SELECT COUNT(*) FROM teams;" 2>/dev/null)
players_count=$(mysql -u $DB_USER -p$DB_PASSWORD $DB_NAME -sse "SELECT COUNT(*) FROM players;" 2>/dev/null)
stats_count=$(mysql -u $DB_USER -p$DB_PASSWORD $DB_NAME -sse "SELECT COUNT(*) FROM player_stats;" 2>/dev/null)

if [ "$teams_count" -eq 30 ] && [ "$players_count" -gt 190 ] && [ "$stats_count" -gt 1900 ]; then
    echo -e "${GREEN}✅ Import réussi!${NC}"
    echo ""
    echo "📈 Résumé:"
    echo "   - Équipes: $teams_count"
    echo "   - Joueurs: $players_count"
    echo "   - Statistiques: $stats_count"
    echo ""
    echo -e "${GREEN}🎉 La base de données est prête à l'emploi!${NC}"
    echo ""
    echo "Pour démarrer l'API:"
    echo "   cd .."
    echo "   npm start"
else
    echo -e "${RED}❌ Erreur lors de l'import!${NC}"
    echo "   - Équipes: $teams_count (attendu: 30)"
    echo "   - Joueurs: $players_count (attendu: 190+)"
    echo "   - Statistiques: $stats_count (attendu: 1900+)"
    exit 1
fi

echo ""
