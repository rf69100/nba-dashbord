# NBA Dashboard - Guide de Déploiement Docker

Ce guide explique comment déployer l'application NBA Dashboard sur votre VPS en utilisant Docker.

## Table des Matières

1. [Prérequis](#prérequis)
2. [Architecture Docker](#architecture-docker)
3. [Installation Rapide](#installation-rapide)
4. [Configuration](#configuration)
5. [Déploiement](#déploiement)
6. [Gestion des Conteneurs](#gestion-des-conteneurs)
7. [Résolution de Problèmes](#résolution-de-problèmes)
8. [Sécurité](#sécurité)

---

## Prérequis

### Sur votre VPS

Vous devez avoir installé:
- Docker (version 20.10+)
- Docker Compose (version 2.0+)
- Git (pour cloner le projet)

### Installation de Docker sur Ubuntu/Debian

```bash
# Mise à jour du système
sudo apt update && sudo apt upgrade -y

# Installation des dépendances
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Ajout de la clé GPG Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Ajout du repository Docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Installation de Docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Vérification
docker --version
docker compose version

# Ajouter votre utilisateur au groupe docker (optionnel)
sudo usermod -aG docker $USER
```

---

## Architecture Docker

L'application est composée de **3 conteneurs**:

### 1. **nba-database** (MariaDB 11.2)
- Port: 3306
- Volume persistant pour les données
- Initialisation automatique avec tous les scripts SQL
- Contient les 30 équipes NBA et les statistiques

### 2. **nba-api** (Node.js 20)
- Port: 3001
- API REST Express.js
- Connexion à la base de données
- Health checks automatiques

### 3. **nba-frontend** (Nginx + React)
- Port: 80 (HTTP) et 443 (HTTPS)
- Application React buildée et servie par Nginx
- Reverse proxy vers l'API
- Compression Gzip

### Réseau Docker
Tous les conteneurs communiquent via un réseau bridge nommé `nba-network`.

---

## Installation Rapide

### Option 1: Déploiement Automatique (Recommandé)

```bash
# 1. Aller dans le répertoire du projet
cd /var/www/html/websites/react/nba-dashbord

# 2. Lancer le script de déploiement
./deploy.sh
```

Le script va:
- Vérifier les prérequis
- Construire les images Docker
- Démarrer tous les services
- Initialiser la base de données

### Option 2: Déploiement Manuel

```bash
# 1. Copier le fichier d'environnement
cp .env.docker .env

# 2. Construire les images
docker compose build

# 3. Démarrer les services
docker compose up -d

# 4. Vérifier l'état
docker compose ps
```

---

## Configuration

### Variables d'Environnement

Avant le déploiement, modifiez le fichier `.env.docker`:

```bash
# Database Configuration
DB_ROOT_PASSWORD=CHANGEZ_MOI_EN_PRODUCTION
DB_NAME=nba_database
DB_USER=nba_user
DB_PASSWORD=CHANGEZ_MOI_AUSSI

# Node.js API
NODE_ENV=production

# CORS (mettez votre domaine ou *)
CORS_ORIGIN=*

# Frontend API URL
# Remplacez par l'URL de votre VPS
REACT_APP_API_URL=http://votre-domaine.com/api/v1
```

### Configuration Nginx (Optionnel)

Pour activer HTTPS, modifiez `nginx.conf`:

```nginx
server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;

    ssl_certificate /etc/nginx/ssl/cert.pem;
    ssl_certificate_key /etc/nginx/ssl/key.pem;

    # ... reste de la configuration
}
```

---

## Déploiement

### Étape 1: Préparation

```bash
# Cloner le projet (si pas déjà fait)
cd /var/www/html/websites/react
git clone <votre-repo> nba-dashbord
cd nba-dashbord

# Créer et configurer .env.docker
nano .env.docker
```

### Étape 2: Construction

```bash
# Construction des images Docker
docker compose build --no-cache
```

Cela prendra environ 5-10 minutes la première fois.

### Étape 3: Lancement

```bash
# Démarrer tous les services en arrière-plan
docker compose up -d

# Voir les logs en temps réel
docker compose logs -f
```

### Étape 4: Vérification

```bash
# Vérifier l'état des conteneurs
docker compose ps

# Tous les conteneurs doivent être "healthy"
# Si un conteneur n'est pas "Up", vérifier les logs:
docker compose logs <nom-du-service>
```

### Étape 5: Test

Ouvrez votre navigateur:
- Frontend: `http://votre-vps-ip/`
- API: `http://votre-vps-ip:3001/health`

---

## Gestion des Conteneurs

### Commandes Essentielles

```bash
# Voir l'état des conteneurs
docker compose ps

# Voir les logs (tous les services)
docker compose logs -f

# Voir les logs d'un service spécifique
docker compose logs -f api
docker compose logs -f frontend
docker compose logs -f database

# Arrêter tous les services
docker compose down

# Redémarrer tous les services
docker compose restart

# Redémarrer un service spécifique
docker compose restart api

# Reconstruire et redémarrer
docker compose up -d --build

# Voir l'utilisation des ressources
docker stats
```

### Accéder à un Conteneur

```bash
# Shell dans le conteneur API
docker compose exec api sh

# Shell dans la base de données
docker compose exec database mariadb -u nba_user -p nba_database

# Shell dans le frontend
docker compose exec frontend sh
```

### Backup de la Base de Données

```bash
# Créer un backup
docker compose exec database mysqldump -u nba_user -pnba_password nba_database > backup.sql

# Restaurer un backup
docker compose exec -T database mysql -u nba_user -pnba_password nba_database < backup.sql
```

---

## Résolution de Problèmes

### Problème: Le frontend ne se charge pas

**Solution:**
```bash
# Vérifier les logs du frontend
docker compose logs frontend

# Vérifier que le build React s'est bien passé
docker compose exec frontend ls -la /usr/share/nginx/html

# Reconstruire le frontend
docker compose up -d --build frontend
```

### Problème: L'API ne répond pas

**Solution:**
```bash
# Vérifier les logs
docker compose logs api

# Vérifier la connexion à la base de données
docker compose exec api node -e "require('./src/config/database.js')"

# Redémarrer l'API
docker compose restart api
```

### Problème: Erreur de connexion à la base de données

**Solution:**
```bash
# Vérifier que la base est bien démarrée
docker compose ps database

# Voir les logs de la base
docker compose logs database

# Tester la connexion
docker compose exec database mysqladmin -u nba_user -pnba_password ping

# Réinitialiser complètement la base (ATTENTION: supprime toutes les données)
docker compose down -v
docker compose up -d
```

### Problème: Port déjà utilisé

**Solution:**
```bash
# Voir quel processus utilise le port
sudo lsof -i :80
sudo lsof -i :3001
sudo lsof -i :3306

# Arrêter le processus ou changer le port dans docker-compose.yml
```

### Problème: Manque d'espace disque

**Solution:**
```bash
# Nettoyer les images et conteneurs inutilisés
docker system prune -a

# Voir l'utilisation de l'espace
docker system df
```

---

## Sécurité

### Recommandations pour la Production

1. **Changez tous les mots de passe par défaut** dans `.env.docker`

2. **Configurez un pare-feu** (UFW):
```bash
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw enable
```

3. **Utilisez HTTPS** avec Let's Encrypt:
```bash
# Installer Certbot
sudo apt install certbot

# Obtenir un certificat
sudo certbot certonly --standalone -d votre-domaine.com
```

4. **Limitez l'accès à la base de données**:
Dans `docker-compose.yml`, retirez l'exposition du port 3306 si non nécessaire.

5. **Activez les logs de sécurité**:
```bash
# Logs Nginx
docker compose logs frontend | grep -i error

# Logs API
docker compose logs api | grep -i error
```

6. **Mettez à jour régulièrement**:
```bash
# Mise à jour des images
docker compose pull
docker compose up -d
```

---

## Configuration Avancée

### Reverse Proxy avec Nginx (Hôte)

Si vous utilisez déjà Nginx sur votre VPS:

```nginx
# /etc/nginx/sites-available/nba-dashboard
server {
    listen 80;
    server_name votre-domaine.com;

    location / {
        proxy_pass http://localhost:80;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```

### Surveillance avec Portainer (Optionnel)

```bash
docker run -d -p 9000:9000 --name portainer \
  --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:latest
```

Accès: `http://votre-vps-ip:9000`

---

## Maintenance

### Mise à Jour de l'Application

```bash
# 1. Récupérer les dernières modifications
git pull origin main

# 2. Reconstruire et redémarrer
docker compose up -d --build

# 3. Vérifier
docker compose ps
```

### Logs et Monitoring

```bash
# Rotation des logs (éviter de remplir le disque)
docker compose logs --tail=1000 > logs-$(date +%Y%m%d).txt

# Voir l'utilisation mémoire/CPU
docker stats --no-stream
```

---

## Support

En cas de problème:
1. Vérifiez les logs: `docker compose logs -f`
2. Vérifiez l'état: `docker compose ps`
3. Consultez la documentation Docker

---

**Félicitations!** Votre NBA Dashboard devrait maintenant être opérationnel sur votre VPS.
