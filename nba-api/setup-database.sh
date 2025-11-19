#!/bin/bash

# ============================================
# Script de configuration de la base de données NBA API
# ============================================

echo "🏀 Configuration de la base de données NBA API"
echo "=============================================="
echo ""

# Couleurs pour l'affichage
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Variables de configuration
DB_NAME="nba_database"
DB_USER="nba_user"
DB_PASSWORD="nba_password"
DB_HOST="localhost"

# Demander le mot de passe root MySQL
echo -e "${YELLOW}🔐 Entrez le mot de passe root de MySQL/MariaDB:${NC}"
read -s ROOT_PASSWORD
echo ""

# Fonction pour exécuter des commandes MySQL
execute_mysql() {
    mysql -h "$DB_HOST" -u root -p"$ROOT_PASSWORD" -e "$1" 2>&1
}

# 1. Créer la base de données
echo "📦 Création de la base de données '$DB_NAME'..."
CREATE_DB=$(execute_mysql "CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Base de données créée avec succès${NC}"
else
    echo -e "${RED}❌ Erreur lors de la création de la base de données${NC}"
    echo "$CREATE_DB"
    exit 1
fi

# 2. Créer l'utilisateur et accorder les privilèges
echo "👤 Création de l'utilisateur '$DB_USER'..."
CREATE_USER=$(execute_mysql "
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Utilisateur créé et privilèges accordés${NC}"
else
    echo -e "${RED}❌ Erreur lors de la création de l'utilisateur${NC}"
    echo "$CREATE_USER"
    exit 1
fi

# 3. Exécuter le script de schéma
echo "🗂️  Exécution du script de schéma (01-schema.sql)..."
SCHEMA_RESULT=$(mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < database/init/01-schema.sql 2>&1)
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Schéma créé avec succès${NC}"
else
    echo -e "${RED}❌ Erreur lors de la création du schéma${NC}"
    echo "$SCHEMA_RESULT"
    exit 1
fi

# 4. Exécuter le script de population des équipes
echo "🏆 Population des 30 équipes NBA (02-populate-teams.sql)..."
POPULATE_RESULT=$(mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < database/init/02-populate-teams.sql 2>&1)
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Données des équipes insérées avec succès${NC}"
else
    echo -e "${RED}❌ Erreur lors de l'insertion des données${NC}"
    echo "$POPULATE_RESULT"
    exit 1
fi

# 5. Vérification finale
echo ""
echo "🔍 Vérification de l'installation..."
VERIFICATION=$(mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "
SELECT
    (SELECT COUNT(*) FROM teams) as total_teams,
    (SELECT COUNT(*) FROM team_stats) as total_stats,
    (SELECT COUNT(*) FROM seasons) as total_seasons;
" 2>&1)

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Vérification réussie${NC}"
    echo "$VERIFICATION"
else
    echo -e "${RED}❌ Erreur lors de la vérification${NC}"
    echo "$VERIFICATION"
    exit 1
fi

echo ""
echo "=============================================="
echo -e "${GREEN}🎉 Configuration terminée avec succès!${NC}"
echo "=============================================="
echo ""
echo "📊 Informations de connexion:"
echo "   - Base de données: $DB_NAME"
echo "   - Utilisateur: $DB_USER"
echo "   - Host: $DB_HOST"
echo "   - Port: 3306"
echo ""
echo "🚀 Vous pouvez maintenant lancer l'API avec:"
echo "   cd nba-api && npm install && npm start"
echo ""
