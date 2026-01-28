// Importation des modules nécessaires
import { Link } from "react-router-dom"; // Pour la navigation entre pages
import { motion } from "framer-motion"; // Pour les animations

/**
 * Barre de navigation principale de l'application.
 * Permet de naviguer entre les pages Home, Players et Ranking.
 */
export default function Navbar() {
  return (
    <motion.nav
      initial={{ y: -80 }}
      animate={{ y: 0 }}
      transition={{ duration: 0.6 }}
      className="fixed top-0 left-0 w-full z-50 flex justify-between items-center p-4 bg-gray-900 text-white shadow-lg"
    >
      {/* Titre/logo de la navbar */}
      <h1 className="text-xl font-bold">🏀 NBA Dashboard</h1>
      {/* Liens de navigation */}
      <div className="flex items-center space-x-6">
        <Link to="/" className="hover:text-yellow-400 transition">Home</Link>
        <Link to="/player" className="hover:text-yellow-400 transition">Players</Link>
        <Link to="/ranking" className="hover:text-yellow-400 transition">Ranking</Link>
        <Link to="/stats" className="hover:text-yellow-400 transition">Stats</Link>
      </div>
    </motion.nav>
  );
}
