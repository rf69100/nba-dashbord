# Limites de l'API balldontlie

## 🚨 Problème actuel : Rate Limit atteint

Votre application affiche l'erreur "Impossible de se connecter à l'API balldontlie" car **vous avez atteint la limite de requêtes autorisées** par l'API balldontlie.

### Pourquoi cela arrive ?

L'API balldontlie **gratuite** a des limites strictes :
- **60 requêtes par minute** (environ 1 requête par seconde)
- Votre application faisait **BEAUCOUP trop de requêtes** au démarrage

### Exemple de requêtes au démarrage (AVANT optimisation) :
1. Page `/player` : **5 requêtes** pour charger 500 joueurs
2. Page `/stats` : **1 requête** + **50 requêtes** (1 par joueur pour les stats) = **51 requêtes**
3. Page `/teams` : **1 requête** pour les classements

**Total** : Plus de 50 requêtes en quelques secondes = **LIMITE DÉPASSÉE** ❌

---

## ✅ Optimisations appliquées

J'ai optimisé l'application pour **réduire drastiquement** le nombre de requêtes :

### 1. Page Players (`/player`)
**AVANT** : 5 requêtes (500 joueurs)
**APRÈS** : **1 seule requête** (100 joueurs)
```javascript
// Avant
const allPlayers = await balldontlieApi.getAllPlayers(5); // 5 × requêtes

// Après
const response = await balldontlieApi.getPlayers({ per_page: 100 }); // 1 requête
```

### 2. Page Stats (`/stats`)
**AVANT** : 1 + 50 requêtes = 51 requêtes
**APRÈS** : **1 + 20 requêtes** = 21 requêtes (avec délais de 2s entre lots)
```javascript
// Avant
const response = await balldontlieApi.getActivePlayers({ season });
const allPlayers = response.players.slice(0, 50);
// 1 requête + 50 requêtes stats = 51 requêtes

// Après
const response = await balldontlieApi.getPlayers({ per_page: 25 });
const allPlayers = response.players.slice(0, 20);
// 1 requête + 20 requêtes stats = 21 requêtes (avec délais)
```

### 3. Délais entre requêtes
- **Stats** : 2000ms (2 secondes) entre chaque lot de 3 joueurs
- **Player comparison** : Chargement à la demande uniquement

---

## 🕐 Solution : Attendez la réinitialisation

### Option 1 : Attendre (RECOMMANDÉ)
Les limites de l'API se réinitialisent généralement :
- **Toutes les minutes** pour le compteur de 60 req/min
- **Toutes les heures** pour le quota journalier

**Attendez 5-10 minutes** puis rechargez l'application.

### Option 2 : Effacer le cache du navigateur
1. Ouvrez les DevTools (F12)
2. Onglet "Application" ou "Storage"
3. Cliquez sur "Clear storage" / "Effacer le stockage"
4. Rechargez la page

### Option 3 : Utiliser le mode incognito
Ouvrez l'application dans une fenêtre de navigation privée pour repartir à zéro.

---

## 📊 Utilisation optimale de l'application

Pour éviter de dépasser les limites à l'avenir :

### ✅ Bonnes pratiques :
1. **Ne visitez qu'UNE page à la fois**
2. **Attendez que chaque page se charge complètement** avant de naviguer
3. **Ne rafraîchissez pas trop souvent** (F5)
4. **Sur la page Stats** : Les données se chargent progressivement (20 joueurs avec des délais)

### ❌ À éviter :
1. Rafraîchir rapidement plusieurs fois
2. Ouvrir plusieurs onglets de l'application
3. Naviguer rapidement entre les pages avant chargement complet

---

## 🔑 Limites par page (après optimisation)

| Page | Requêtes au chargement | Temps de chargement |
|------|------------------------|---------------------|
| **Home** | 0 | Instantané |
| **Players** | 1 | ~1 seconde |
| **Teams** | 1 | ~1 seconde |
| **Stats** | 21 | ~40 secondes (avec délais) |
| **Player Profile** | 2 | ~2 secondes |

---

## 💡 Amélioration future : Plan payant

Si vous voulez utiliser l'application sans limites, balldontlie propose un **plan payant** :
- Limites beaucoup plus élevées
- Accès à plus de données
- Support prioritaire

Visitez : https://www.balldontlie.io/pricing

---

## 🛠️ Test de la clé API

Pour vérifier si votre clé fonctionne et voir votre quota :

```bash
curl -H "Authorization: VOTRE_CLE_API" "https://api.balldontlie.io/v1/teams"
```

**Réponses possibles** :
- ✅ `{"data": [...]}` → Clé valide, quota OK
- ❌ `"Too many requests"` → Limite atteinte, attendez
- ❌ `"Unauthorized"` → Clé invalide

---

## 📝 Résumé

1. **Votre clé API fonctionne** ✅
2. **Vous avez atteint la limite de requêtes** ⏱️
3. **J'ai optimisé l'application** pour réduire les requêtes ✅
4. **Attendez 5-10 minutes** puis réessayez 🕐
5. **Utilisez l'app modérément** pour ne plus dépasser les limites 👍

---

## 🎯 Prochaines étapes

Une fois que les limites sont réinitialisées :

1. ✅ Rechargez l'application
2. ✅ Visitez d'abord la page **Home** ou **Players** (peu de requêtes)
3. ✅ Évitez la page **Stats** au début (elle charge 20 joueurs)
4. ✅ Testez la **comparaison de joueurs** (2 requêtes max)

**L'application est maintenant optimisée et prête à être utilisée !** 🏀
