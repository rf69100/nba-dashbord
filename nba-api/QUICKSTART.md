# 🚀 Guide de Démarrage Rapide

## Installation et lancement en 5 minutes

### 1️⃣ Installation des dépendances

```bash
npm install
```

Cela va installer :
- Express (framework web)
- mysql2 (driver MariaDB)
- dotenv (variables d'environnement)
- cors (gestion CORS pour React)
- helmet (sécurité)
- morgan (logs)
- express-rate-limit (protection)
- nodemon (auto-reload en dev)

### 2️⃣ Démarrer MariaDB avec Docker

```bash
docker-compose up -d
```

**Que fait cette commande ?**
- Lance un conteneur MariaDB
- Crée automatiquement la base de données `nba_database`
- Crée l'utilisateur `nba_user`
- Execute le script SQL d'initialisation
- Insère 5 équipes de test

**Vérifier que MariaDB est prêt :**
```bash
docker-compose logs mariadb
# Vous devriez voir: "ready for connections"
```

### 3️⃣ Lancer l'API

```bash
npm run dev
```

Vous devriez voir :
```
🚀 =======================================
🏀 NBA API is running on port 3001
📍 Environment: development
🌐 Server: http://localhost:3001
💚 Health check: http://localhost:3001/health
📚 API Base: http://localhost:3001/api/v1
🚀 =======================================
```

### 4️⃣ Tester que ça marche

**Option A - Dans votre navigateur :**
Ouvrez : http://localhost:3001/api/v1/teams

**Option B - Avec curl :**
```bash
curl http://localhost:3001/api/v1/teams
```

**Option C - Dans votre dashboard React :**
```javascript
fetch('http://localhost:3001/api/v1/teams')
  .then(res => res.json())
  .then(data => console.log(data));
```

---

## ✅ Commandes essentielles

| Action | Commande |
|--------|----------|
| Lancer l'API (dev) | `npm run dev` |
| Lancer l'API (prod) | `npm start` |
| Démarrer la DB | `docker-compose up -d` |
| Arrêter la DB | `docker-compose down` |
| Voir les logs DB | `docker-compose logs -f mariadb` |
| Se connecter à la DB | `docker exec -it nba-mariadb mysql -u nba_user -p` |

---

## 🔧 Résolution des problèmes courants

### ❌ Erreur : "Cannot connect to database"

**Solution :**
```bash
# Vérifier que Docker tourne
docker ps

# Redémarrer MariaDB
docker-compose restart mariadb

# Attendre 10 secondes puis relancer l'API
npm run dev
```

### ❌ Erreur : "Port 3306 already in use"

**Cause :** Vous avez déjà un MariaDB/MySQL qui tourne sur votre machine.

**Solution 1 - Arrêter l'autre instance :**
```bash
# Sur Mac/Linux
sudo systemctl stop mysql

# Sur Windows
# Arrêter MySQL dans les services
```

**Solution 2 - Changer le port dans docker-compose.yml :**
```yaml
ports:
  - "3307:3306"  # Utiliser le port 3307 à la place
```
Puis modifier `.env` :
```env
DB_PORT=3307
```

### ❌ Erreur : "CORS policy"

**Solution :** Vérifier que `.env` contient l'URL correcte de votre dashboard :
```env
CORS_ORIGIN=http://localhost:3000
```

---

## 🎯 Prochaines étapes

1. **Intégrer à votre dashboard React**
   - Remplacer votre `data.js`
   - Utiliser `fetch()` ou `axios`

2. **Ajouter vos propres données**
   - Modifier `database/init/01-schema.sql`
   - Ou utiliser l'endpoint POST pour créer des données

3. **Créer d'autres endpoints**
   - Players (joueurs)
   - Games (matchs)
   - Stats (statistiques)

4. **Me demander de l'aide quand vous bloquez !**

---

## 📞 Besoin d'aide ?

Si vous rencontrez un problème :
1. Vérifier les logs : `docker-compose logs mariadb`
2. Vérifier que l'API tourne : http://localhost:3001/health
3. Vérifier votre `.env`

---

**Bon développement ! 🏀**
