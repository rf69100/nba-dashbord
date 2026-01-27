# NBA Dashboard - Branche Vercel

Cette branche est optimisée pour un déploiement sur Vercel.

## 🚀 Déploiement sur Vercel

### Prérequis
- Un compte Vercel (gratuit sur [vercel.com](https://vercel.com))
- Git configuré

### Étapes de déploiement

#### 1. Depuis GitHub
1. Connectez-vous à [vercel.com](https://vercel.com)
2. Cliquez sur "New Project"
3. Importez ce repository GitHub
4. Sélectionnez la branche `vercel`
5. Les paramètres seront automatiquement détectés
6. Cliquez sur "Deploy"

#### 2. En utilisant Vercel CLI
```bash
# Installer Vercel CLI
npm install -g vercel

# Se connecter à Vercel
vercel login

# Déployer depuis la branche vercel
vercel --prod
```

### Configuration automatique
- **Build Command** : `npm run build`
- **Output Directory** : `build/`
- **Framework** : React (détecté automatiquement)

### Variables d'environnement (si nécessaire)
Aucune variable d'environnement requise pour cette application.

### Caractéristiques de déploiement
- ✅ Support du routing client-side (React Router)
- ✅ Cache optimisé pour les assets statiques
- ✅ Source maps désactivées en production (build plus rapide)
- ✅ Configuration Vercel incluée (`vercel.json`)

### Après le déploiement
- Votre application sera disponible à `https://<votre-projet>.vercel.app`
- Les déploiements automatiques se feront à chaque push sur cette branche

### Vérification du déploiement
```bash
# Pour voir les logs du déploiement
vercel logs [URL]

# Pour lister les déploiements
vercel list
```
