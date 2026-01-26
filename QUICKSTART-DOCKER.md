# NBA Dashboard - Démarrage Rapide Docker

Guide ultra-rapide pour déployer l'application en 5 minutes.

## Prérequis

Vérifiez que Docker est installé:
```bash
docker --version
docker compose version
```

Si non installé, suivez [DOCKER-DEPLOYMENT.md](DOCKER-DEPLOYMENT.md#installation-de-docker-sur-ubuntudebian)

## Installation en 3 Étapes

### 1. Configuration (30 secondes)

```bash
# Copier le fichier d'environnement
cp .env.docker.example .env.docker

# IMPORTANT: Éditez .env.docker et changez:
# - DB_ROOT_PASSWORD
# - DB_PASSWORD
# - REACT_APP_API_URL (mettez votre domaine/IP)
nano .env.docker
```

### 2. Déploiement (5-10 minutes)

**Option A - Script Automatique (Recommandé):**
```bash
./deploy.sh
```

**Option B - Manuel:**
```bash
cp .env.docker .env
docker compose build
docker compose up -d
```

### 3. Vérification (10 secondes)

```bash
# Voir l'état des conteneurs
docker compose ps

# Tous doivent être "Up" et "healthy"
```

## Accès à l'Application

- **Frontend**: http://votre-ip/
- **API**: http://votre-ip:3001/health
- **Database**: localhost:3306

## Commandes Essentielles

```bash
# Voir les logs
docker compose logs -f

# Arrêter
docker compose down

# Redémarrer
docker compose restart

# Reconstruire et redémarrer
docker compose up -d --build
```

## Résolution de Problèmes Rapide

### Problème: "Cannot find module 'cors'"
**Solution:** Les dépendances seront installées automatiquement dans Docker. Pas besoin de `npm install` local.

### Problème: "Port already in use"
**Solution:**
```bash
# Voir ce qui utilise le port
sudo lsof -i :80
sudo lsof -i :3001

# Arrêter le processus ou changer le port dans docker-compose.yml
```

### Problème: Frontend ne charge pas
**Solution:**
```bash
# Vérifier les logs
docker compose logs frontend

# Reconstruire
docker compose up -d --build frontend
```

### Problème: Erreur de connexion base de données
**Solution:**
```bash
# Attendre 30 secondes que la DB s'initialise
# Ou vérifier les logs
docker compose logs database
```

## Configuration Production

### Changements Obligatoires dans `.env.docker`:

```bash
# Changez TOUS les mots de passe
DB_ROOT_PASSWORD=UnMotDePasseTresSecurise123!
DB_PASSWORD=AutreMotDePasseSecurise456!

# Mettez votre vraie URL
REACT_APP_API_URL=http://votre-domaine.com/api/v1
# OU avec IP
REACT_APP_API_URL=http://123.456.789.012/api/v1

# Limitez CORS en production
CORS_ORIGIN=http://votre-domaine.com
```

## Architecture des Conteneurs

```
┌─────────────────────────────────────┐
│  nba-frontend (Nginx + React)       │
│  Port: 80, 443                      │
│  http://localhost/                  │
└─────────────────┬───────────────────┘
                  │
                  ↓
┌─────────────────────────────────────┐
│  nba-api (Node.js + Express)        │
│  Port: 3001                         │
│  http://localhost:3001/             │
└─────────────────┬───────────────────┘
                  │
                  ↓
┌─────────────────────────────────────┐
│  nba-database (MariaDB 11.2)        │
│  Port: 3306                         │
│  Volume: mariadb_data               │
└─────────────────────────────────────┘
```

## Volumes Docker

```bash
# Voir les volumes
docker volume ls

# Backup de la base de données
docker compose exec database mysqldump -u nba_user -p nba_database > backup.sql

# Supprimer TOUTES les données (DANGER!)
docker compose down -v
```

## Monitoring

```bash
# Voir l'utilisation CPU/Mémoire
docker stats

# Logs en temps réel
docker compose logs -f

# Logs d'un service spécifique
docker compose logs -f api
```

## Mise à Jour

```bash
# Récupérer les derniers changements
git pull

# Reconstruire et redémarrer
docker compose up -d --build
```

## Support

Documentation complète: [DOCKER-DEPLOYMENT.md](DOCKER-DEPLOYMENT.md)

---

**C'est tout!** Votre NBA Dashboard devrait maintenant fonctionner.

Test rapide:
1. Ouvrez http://votre-ip/
2. Vous devriez voir le dashboard NBA
3. Si erreur "Impossible de se connecter à l'API", vérifiez `REACT_APP_API_URL` dans `.env.docker`
