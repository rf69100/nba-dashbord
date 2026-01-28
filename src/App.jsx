// Importation des modules nécessaires
import { BrowserRouter as Router, Routes, Route } from "react-router-dom"; // Routing
import Header from "./components/layout/Header"; // Header de navigation
import Footer from "./components/layout/Footer"; // Footer
import ScrollToTop from "./components/layout/ScrollToTop"; // Scroll automatique vers le haut
import Home from "./pages/Home"; // Page d'accueil
import Player from "./pages/Player"; // Page de recherche joueurs
import Comparison from "./pages/Comparison"; // Page de comparaison joueurs
import PlayerProfile from "./pages/PlayerProfile"; // Page de profil joueur
import Standings from "./pages/Standings"; // Page classement équipes
import Stats from "./pages/Stats"; // Page des statistiques
import Teams from "./pages/Teams"; // Page des équipes
import TeamProfile from "./pages/TeamProfile"; // Page de profil équipe

/**
 * Composant racine de l'application NBA Dashboard.
 * Gère le routage entre les pages principales et affiche le header de navigation.
 */
function App() {
  // Rendu principal de l'application avec le router et le header
  return (
    <Router basename="/nba_dashboard">
      <ScrollToTop />
      <div className="min-h-screen bg-gray-100 text-gray-900 transition-colors duration-500 flex flex-col">
        <Header />
        <main className="flex-grow">
          <Routes>
            {/* Route vers la page d'accueil */}
            <Route path="/" element={<Home />} />
            {/* Route vers la page de recherche des joueurs */}
            <Route path="/player" element={<Player />} />
            {/* Route vers la page de comparaison des joueurs */}
            <Route path="/comparison" element={<Comparison />} />
            {/* Route vers le profil d'un joueur */}
            <Route path="/player/:id" element={<PlayerProfile />} />
            {/* Route vers la page des équipes */}
            <Route path="/teams" element={<Teams />} />
            {/* Route vers le profil d'une équipe */}
            <Route path="/team/:id" element={<TeamProfile />} />
            {/* Route vers la page du classement des équipes */}
            <Route path="/standings" element={<Standings />} />
            {/* Route vers la page des statistiques */}
            <Route path="/stats" element={<Stats />} />
          </Routes>
        </main>
        <Footer />
      </div>
    </Router>
  );
}

export default App;