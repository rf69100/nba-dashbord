// Importation des modules nécessaires
import { HashRouter as Router, Routes, Route } from "react-router-dom"; // Routing
import Navbar from "./components/Navbar"; // Barre de navigation
import Home from "./pages/Home"; // Page d'accueil
import Player from "./pages/Player"; // Page de comparaison joueurs
import Teams from "./pages/Teams"; // Page classement équipes

/**
 * Composant racine de l'application NBA Dashboard.
 * Gère le routage entre les pages principales et affiche la barre de navigation.
 */
function App() {
  // Rendu principal de l'application avec le router et la navbar
  return (
    <Router>
      <div className="min-h-screen bg-gray-100 text-gray-900 transition-colors duration-500">
        <Navbar />
        <Routes>
          {/* Route vers la page d'accueil */}
          <Route path="/" element={<Home />} />
          {/* Route vers la page de comparaison des joueurs */}
          <Route path="/player" element={<Player />} />
          {/* Route vers la page du classement des équipes */}
          <Route path="/teams" element={<Teams />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;