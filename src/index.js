// Point d'entrée principal de l'application React
import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css'; // Styles globaux (inclut Tailwind)
import App from './App'; // Composant racine
import reportWebVitals from './reportWebVitals'; // Outil de mesure des performances

// Création de la racine React et rendu de l'application
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);

// Démarre la collecte des métriques de performance (optionnel)
reportWebVitals();