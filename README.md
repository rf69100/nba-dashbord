# 🏀 NBA Dashboard

Application web React pour explorer les statistiques NBA 2024-2025.

![React](https://img.shields.io/badge/React-19.1-blue)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-3.x-38B2AC)
![License](https://img.shields.io/badge/license-MIT-green)

## ✨ Fonctionnalités

- 📊 **Classement NBA** - Est/Ouest avec statistiques
- 👤 **Profils Joueurs** - 550+ joueurs avec stats détaillées
- 🏆 **Profils Équipes** - 30 équipes NBA avec roster
- 🔍 **Recherche avancée** - Filtres par équipe, position, nom
- ⚖️ **Comparaison** - Comparer joueurs et équipes
- 📈 **Leaders statistiques** - Points, rebonds, passes...
- 🧠 **Quiz NBA** - Testez vos connaissances

## 🚀 Installation

```bash
# Cloner le projet
git clone https://github.com/rf69100/nba-dashbord.git
cd nba-dashbord

# Installer les dépendances
npm install

# Lancer en développement
npm start
```

L'application sera disponible sur [http://localhost:3000](http://localhost:3000)

## 📁 Structure du projet

```
nba-dashbord/
├── public/              # Assets statiques (logos, images)
├── src/
│   ├── components/      # Composants React par fonctionnalité
│   ├── hooks/           # Hooks personnalisés (logique métier)
│   ├── pages/           # Pages de l'application (routes)
│   ├── services/        # Accès aux données (API)
│   ├── utils/           # Fonctions utilitaires
│   └── data/            # Données statiques (quiz)
├── scripts/             # Scripts Python de génération
├── data/                # Données sources (stats, profils)
└── package.json
```

Chaque dossier contient un `README.md` avec plus de détails.

## 🛠️ Scripts disponibles

```bash
npm start      # Lancer en mode développement
npm run build  # Construire pour la production
npm run lint   # Vérifier le code (ESLint)
npm test       # Lancer les tests
```

## 📊 Mettre à jour les données

Les données des joueurs proviennent de [Basketball Reference](https://www.basketball-reference.com/).

```bash
# Depuis le dossier scripts/
cd scripts
python3 generate_players.py          # Mode incrémental
python3 generate_players.py --rebuild # Reconstruction complète
```

Voir [scripts/README.md](scripts/README.md) pour plus de détails.

## 🏗️ Technologies

- **React 19** - Framework UI
- **React Router 7** - Navigation
- **Tailwind CSS** - Styles
- **Recharts** - Graphiques
- **Framer Motion** - Animations

## 📄 License

MIT © 2024
