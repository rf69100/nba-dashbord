#!/bin/bash

# NBA Dashboard - Script de Déploiement Docker
# Ce script automatise le déploiement complet de l'application

set -e

echo "========================================="
echo "NBA Dashboard - Déploiement Docker"
echo "========================================="
echo ""

# Couleurs pour les messages
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Fonction pour afficher des messages
info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Vérifier si Docker est installé
if ! command -v docker &> /dev/null; then
    error "Docker n'est pas installé. Veuillez l'installer avant de continuer."
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    error "Docker Compose n'est pas installé. Veuillez l'installer avant de continuer."
    exit 1
fi

info "Docker et Docker Compose sont installés ✓"

# Vérifier si le fichier .env.docker existe
if [ ! -f .env.docker ]; then
    warn "Le fichier .env.docker n'existe pas. Création à partir du template..."
    cp .env.docker.example .env.docker 2>/dev/null || true
fi

# Demander confirmation
echo ""
warn "Ce script va:"
echo "  1. Arrêter les conteneurs existants"
echo "  2. Reconstruire les images Docker"
echo "  3. Démarrer tous les services (Database, API, Frontend)"
echo ""
read -p "Voulez-vous continuer? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    error "Déploiement annulé."
    exit 1
fi

# Arrêter les conteneurs existants
info "Arrêt des conteneurs existants..."
docker-compose down 2>/dev/null || true

# Nettoyer les anciennes images (optionnel)
read -p "Voulez-vous nettoyer les anciennes images Docker? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    info "Nettoyage des anciennes images..."
    docker system prune -f
fi

# Copier le fichier .env.docker vers .env pour docker-compose
info "Configuration des variables d'environnement..."
cp .env.docker .env

# Construire et démarrer les services
info "Construction des images Docker..."
docker-compose build --no-cache

info "Démarrage des services..."
docker-compose up -d

# Attendre que les services soient prêts
info "Attente du démarrage des services (cela peut prendre 1-2 minutes)..."
sleep 10

# Vérifier l'état des services
info "Vérification de l'état des services..."
docker-compose ps

# Attendre que la base de données soit complètement initialisée
info "Initialisation de la base de données..."
echo "Cela peut prendre jusqu'à 30 secondes..."

for i in {1..30}; do
    if docker-compose exec -T database mysqladmin ping -h localhost -u root -pnba_root_password_change_me_in_production --silent &> /dev/null; then
        info "Base de données prête ✓"
        break
    fi
    echo -n "."
    sleep 1
done
echo ""

# Afficher les logs
read -p "Voulez-vous afficher les logs? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    docker-compose logs --tail=50
fi

echo ""
echo "========================================="
info "Déploiement terminé avec succès! ✓"
echo "========================================="
echo ""
echo "Services disponibles:"
echo "  - Frontend (React):  http://localhost"
echo "  - API (Node.js):     http://localhost:3001"
echo "  - Database (MariaDB): localhost:3306"
echo ""
echo "Commandes utiles:"
echo "  - Voir les logs:        docker-compose logs -f"
echo "  - Arrêter:              docker-compose down"
echo "  - Redémarrer:           docker-compose restart"
echo "  - Voir l'état:          docker-compose ps"
echo ""
