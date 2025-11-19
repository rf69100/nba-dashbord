# 🏀 NBA API - Projet Personnel

API RESTful complète pour les données NBA, conçue pour alimenter le dashboard [www.ryanfonseca.fr/nba_dashboard](http://www.ryanfonseca.fr/nba_dashboard).

## 📋 Table des Matières

- [Démarrage Rapide](#démarrage-rapide)
- [Structure du Projet](#structure-du-projet)
- [Endpoints Disponibles](#endpoints-disponibles)
- [Configuration](#configuration)
- [Base de Données](#base-de-données)
- [Développement](#développement)

---

## 🚀 Démarrage Rapide

### Prérequis

- Node.js (v18+)
- Docker & Docker Compose
- npm ou yarn

### Installation en 3 étapes

```bash
# 1. Installer les dépendances
npm install

# 2. Démarrer MariaDB avec Docker
docker-compose up -d

# 3. Démarrer l'API
npm run dev
```

✅ L'API est maintenant accessible sur **http://localhost:3001**

---

## 📁 Structure du Projet

```
nba-api/
├── src/
│   ├── config/          # Configuration (DB, etc.)
│   │   └── database.js
│   ├── controllers/     # Logique métier
│   │   └── teamController.js
│   ├── models/          # Modèles de données
│   │   └── Team.js
│   ├── routes/          # Définition des routes
│   │   └── teamRoutes.js
│   ├── middlewares/     # Middlewares Express
│   │   └── errorHandler.js
│   ├── utils/           # Utilitaires
│   │   └── responseFormatter.js
│   ├── app.js           # Configuration Express
│   └── server.js        # Point d'entrée
├── database/
│   └── init/
│       └── 01-schema.sql
├── docker-compose.yml
├── package.json
└── .env
```

---

## 🌐 Endpoints Disponibles

### Base URL: `http://localhost:3001/api/v1`

### 🏀 Teams (Équipes)

#### Récupérer toutes les équipes
```http
GET /api/v1/teams
```

**Paramètres de requête (optionnels):**
- `conference` - Filtrer par conférence (`East` ou `West`)
- `division` - Filtrer par division
- `is_active` - Filtrer les équipes actives (`true`/`false`)
- `page` - Numéro de page (défaut: 1)
- `limit` - Nombre de résultats par page (défaut: 30)

**Exemple:**
```bash
curl http://localhost:3001/api/v1/teams?conference=West&page=1&limit=10
```

**Réponse:**
```json
{
  "success": true,
  "message": "Teams retrieved successfully",
  "data": [
    {
      "id": 1,
      "name": "Lakers",
      "city": "Los Angeles",
      "abbreviation": "LAL",
      "conference": "West",
      "division": "Pacific",
      "founded_year": 1947,
      "arena": "Crypto.com Arena",
      "is_active": true
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 10,
    "total": 30,
    "totalPages": 3
  }
}
```

#### Récupérer une équipe par ID
```http
GET /api/v1/teams/:id
```

**Exemple:**
```bash
curl http://localhost:3001/api/v1/teams/1
```

#### Créer une équipe
```http
POST /api/v1/teams
```

**Body:**
```json
{
  "name": "Suns",
  "city": "Phoenix",
  "abbreviation": "PHX",
  "conference": "West",
  "division": "Pacific",
  "founded_year": 1968,
  "arena": "Footprint Center"
}
```

#### Mettre à jour une équipe
```http
PUT /api/v1/teams/:id
```

#### Supprimer une équipe (soft delete)
```http
DELETE /api/v1/teams/:id
```

---

## ⚙️ Configuration

### Variables d'environnement (.env)

```env
# Serveur
PORT=3001
NODE_ENV=development

# Base de données
DB_HOST=localhost
DB_PORT=3306
DB_USER=nba_user
DB_PASSWORD=nba_password
DB_NAME=nba_database

# CORS (URL de votre dashboard React)
CORS_ORIGIN=http://localhost:3000

# Rate Limiting
RATE_LIMIT_WINDOW_MS=900000      # 15 minutes
RATE_LIMIT_MAX_REQUESTS=100      # 100 requêtes max
```

---

## 🗄️ Base de Données

### Schéma des tables

#### Table `teams`
| Colonne | Type | Description |
|---------|------|-------------|
| id | INT | Identifiant unique |
| name | VARCHAR(100) | Nom de l'équipe |
| city | VARCHAR(100) | Ville |
| abbreviation | VARCHAR(3) | Abréviation (ex: LAL) |
| conference | ENUM | East ou West |
| division | VARCHAR(50) | Division |
| founded_year | INT | Année de fondation |
| arena | VARCHAR(100) | Arène |
| is_active | BOOLEAN | Équipe active |

### Commandes utiles

```bash
# Voir les logs de MariaDB
docker-compose logs -f mariadb

# Se connecter à MariaDB
docker exec -it nba-mariadb mysql -u nba_user -p
# Password: nba_password

# Redémarrer la base de données
docker-compose restart mariadb

# Arrêter tous les services
docker-compose down

# Supprimer les données (⚠️ attention!)
docker-compose down -v
```

---

## 💻 Développement

### Scripts disponibles

```bash
# Démarrer en mode développement (avec auto-reload)
npm run dev

# Démarrer en mode production
npm start

# Lancer les tests (à venir)
npm test
```

### Tester l'API

#### Avec curl
```bash
# Health check
curl http://localhost:3001/health

# Liste des équipes
curl http://localhost:3001/api/v1/teams

# Une équipe spécifique
curl http://localhost:3001/api/v1/teams/1

# Filtrer par conférence
curl "http://localhost:3001/api/v1/teams?conference=West"
```

#### Avec votre dashboard React

```javascript
// Example dans votre composant React
const fetchTeams = async () => {
  try {
    const response = await fetch('http://localhost:3001/api/v1/teams');
    const data = await response.json();
    
    if (data.success) {
      console.log(data.data); // Tableau des équipes
    }
  } catch (error) {
    console.error('Erreur:', error);
  }
};
```

---

## 🛣️ Roadmap

### ✅ Phase 1 - MVP (Terminé)
- [x] Structure du projet
- [x] Configuration Express + MariaDB
- [x] CRUD Teams complet
- [x] Pagination et filtres
- [x] Gestion d'erreurs
- [x] Docker pour MariaDB

### 🚧 Phase 2 - Prochaines étapes
- [ ] Modèle Players (joueurs)
- [ ] Modèle Games (matchs)
- [ ] Modèle Stats (statistiques)
- [ ] Endpoint roster d'équipe
- [ ] Endpoint stats par saison

### 🔮 Phase 3 - Améliorations
- [ ] Authentification JWT
- [ ] Tests automatisés
- [ ] Documentation Swagger/OpenAPI
- [ ] Cache Redis
- [ ] CI/CD

---

## 📚 Ressources

- [Express.js Documentation](https://expressjs.com/)
- [MariaDB Documentation](https://mariadb.org/documentation/)
- [Node.js Best Practices](https://github.com/goldbergyoni/nodebestpractices)

---

## 🤝 Contribution

C'est un projet personnel d'apprentissage, mais les suggestions sont bienvenues !

---

## 📝 Notes

- Les endpoints POST/PUT/DELETE ne sont pas encore sécurisés (authentification à venir)
- Les données de seed sont minimales (5 équipes pour tester)
- La structure est évolutive pour ajouter facilement de nouvelles ressources

---

**Fait avec ❤️ pour l'apprentissage et l'amélioration continue**
