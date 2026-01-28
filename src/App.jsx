// Importation des modules nécessaires
import { BrowserRouter as Router, Routes, Route } from "react-router-dom"; // Routing
import Navbar from "./components/Navbar"; // Barre de navigation
import Home from "./pages/Home"; // Page d'accueil
import Player from "./pages/Player"; // Page de comparaison joueurs
import PlayerProfile from "./pages/PlayerProfile"; // Page de profil joueur
import Ranking from "./pages/Ranking"; // Page classement équipes (renommée en Ranking)
import Stats from "./pages/Stats"; // Page des statistiques
import Teams from "./pages/Teams"; // Page des équipes
import TeamProfile from "./pages/TeamProfile"; // Page de profil équipe

/**
 * Composant racine de l'application NBA Dashboard.
 * Gère le routage entre les pages principales et affiche la barre de navigation.
 */
function App() {
  // Rendu principal de l'application avec le router et la navbar
  return (
    <Router basename="/nba_dashboard">
      <div className="min-h-screen bg-gray-100 text-gray-900 transition-colors duration-500">
        <Navbar />
        <Routes>
          {/* Route vers la page d'accueil */}
          <Route path="/" element={<Home />} />
          {/* Route vers la page de comparaison des joueurs */}
          <Route path="/player" element={<Player />} />
          {/* Route vers le profil d'un joueur */}
          <Route path="/player/:id" element={<PlayerProfile />} />
          {/* Route vers la page des équipes */}
          <Route path="/teams" element={<Teams />} />
          {/* Route vers le profil d'une équipe */}
          <Route path="/team/:id" element={<TeamProfile />} />
          {/* Route vers la page du classement des équipes */}
          <Route path="/ranking" element={<Ranking />} />
          {/* Route vers la page des statistiques */}
          <Route path="/stats" element={<Stats />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;