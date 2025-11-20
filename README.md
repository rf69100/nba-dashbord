# NBA Dashboard - balldontlie API

Application React pour visualiser les statistiques NBA en utilisant l'API [balldontlie](https://www.balldontlie.io/).

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## 🏀 Fonctionnalités

- **Comparaison de joueurs** : Comparez les statistiques de 2 joueurs côte à côte
- **Profils détaillés** : Consultez les profils complets des joueurs avec leurs stats
- **Classements d'équipes** : Visualisez les classements par conférence (Est/Ouest)
- **Leaders statistiques** : Découvrez les meilleurs joueurs dans différentes catégories

## 🚀 Installation et Configuration

### 1. Installer les dépendances
```bash
npm install
```

### 2. Configurer la clé API balldontlie

Créez un fichier `.env` à la racine du projet :
```bash
cp .env.example .env
```

Éditez le fichier `.env` et ajoutez votre clé API balldontlie :
```
REACT_APP_BALLDONTLIE_API_KEY=votre_cle_api_ici
```

**Pour obtenir une clé API gratuite** : [balldontlie.io](https://www.balldontlie.io/)

### 3. Lancer l'application
```bash
npm start
```

L'application sera accessible sur [http://localhost:3000](http://localhost:3000)

## ⚠️ Limites de l'API gratuite

L'API balldontlie gratuite a des **limites strictes** :
- **60 requêtes par minute**
- Si vous dépassez cette limite, vous devrez attendre 5-10 minutes

### Comment éviter les erreurs de limite :
1. ✅ Visitez **une seule page à la fois**
2. ✅ Attendez le chargement complet avant de naviguer
3. ✅ Ne rafraîchissez pas trop souvent
4. ❌ Évitez d'ouvrir plusieurs onglets simultanément

### Si vous voyez "Impossible de se connecter à l'API balldontlie" :
C'est que vous avez atteint la limite. **Attendez 5-10 minutes** puis réessayez.

📖 Plus de détails : Consultez [API_LIMITS.md](API_LIMITS.md)

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
