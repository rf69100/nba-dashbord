// Importation des modules nécessaires
import { Link } from "react-router-dom"; // Pour la navigation entre pages
import { motion, AnimatePresence } from "framer-motion"; // Pour les animations
import { useState } from "react"; // Pour gérer l'état du menu

/**
 * Header principal de l'application (anciennement Navbar).
 * Permet de naviguer entre les pages Stats, Standings, Teams et Players.
 * Version responsive avec menu hamburger pour mobile.
 */
export default function Header() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const toggleMenu = () => {
    setIsMenuOpen(!isMenuOpen);
  };

  const closeMenu = () => {
    setIsMenuOpen(false);
  };

  return (
    <>
      <motion.nav
        initial={{ y: -80 }}
        animate={{ y: 0 }}
        transition={{ duration: 0.6 }}
        className="fixed top-0 left-0 w-full z-50 flex justify-between items-center p-4 bg-gray-900 text-white shadow-lg"
      >
        {/* Titre/logo de la navbar */}
        <Link to="/" className="text-xl font-bold hover:text-yellow-400 transition">
          🏀 NBA Dashboard
        </Link>
        
        {/* Liens de navigation - Desktop */}
        <div className="hidden md:flex items-center space-x-6">
          <Link to="/stats" className="hover:text-yellow-400 transition">Stats</Link>
          <Link to="/standings" className="hover:text-yellow-400 transition">Standings</Link>
          <Link to="/teams" className="hover:text-yellow-400 transition">Teams</Link>
          <Link to="/player" className="hover:text-yellow-400 transition">Players</Link>
          <Link to="/comparison" className="hover:text-yellow-400 transition">Comparison</Link>
          <Link to="/quiz" className="hover:text-yellow-400 transition">Quiz</Link>
        </div>

        {/* Bouton hamburger - Mobile */}
        <button
          onClick={toggleMenu}
          className="md:hidden flex flex-col justify-center items-center w-10 h-10 space-y-1.5 focus:outline-none"
          aria-label="Toggle menu"
        >
          <motion.span
            animate={isMenuOpen ? { rotate: 45, y: 8 } : { rotate: 0, y: 0 }}
            className="block w-6 h-0.5 bg-white"
          />
          <motion.span
            animate={isMenuOpen ? { opacity: 0 } : { opacity: 1 }}
            className="block w-6 h-0.5 bg-white"
          />
          <motion.span
            animate={isMenuOpen ? { rotate: -45, y: -8 } : { rotate: 0, y: 0 }}
            className="block w-6 h-0.5 bg-white"
          />
        </button>
      </motion.nav>

      {/* Menu mobile */}
      <AnimatePresence>
        {isMenuOpen && (
          <>
            {/* Overlay */}
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              onClick={closeMenu}
              className="fixed inset-0 bg-black bg-opacity-50 z-40 md:hidden"
            />
            
            {/* Menu déroulant */}
            <motion.div
              initial={{ x: "100%" }}
              animate={{ x: 0 }}
              exit={{ x: "100%" }}
              transition={{ type: "tween", duration: 0.3 }}
              className="fixed top-0 right-0 h-full w-64 bg-gray-900 text-white shadow-2xl z-50 md:hidden"
            >
              {/* Header du menu mobile */}
              <div className="flex justify-between items-center p-4 border-b border-gray-700">
                <h2 className="text-lg font-bold">Menu</h2>
                <button
                  onClick={closeMenu}
                  className="text-2xl hover:text-yellow-400 transition"
                  aria-label="Close menu"
                >
                  ×
                </button>
              </div>

              {/* Liens de navigation mobile */}
              <div className="flex flex-col p-4 space-y-4">
                <Link 
                  to="/stats" 
                  className="text-lg hover:text-yellow-400 transition py-2 border-b border-gray-700"
                  onClick={closeMenu}
                >
                  Stats
                </Link>
                <Link 
                  to="/standings" 
                  className="text-lg hover:text-yellow-400 transition py-2 border-b border-gray-700"
                  onClick={closeMenu}
                >
                  Standings
                </Link>
                <Link 
                  to="/teams" 
                  className="text-lg hover:text-yellow-400 transition py-2 border-b border-gray-700"
                  onClick={closeMenu}
                >
                  Teams
                </Link>
                <Link 
                  to="/player" 
                  className="text-lg hover:text-yellow-400 transition py-2 border-b border-gray-700"
                  onClick={closeMenu}
                >
                  Players
                </Link>
                <Link 
                  to="/comparison" 
                  className="text-lg hover:text-yellow-400 transition py-2 border-b border-gray-700"
                  onClick={closeMenu}
                >
                  Comparison
                </Link>
                <Link 
                  to="/quiz" 
                  className="text-lg hover:text-yellow-400 transition py-2 border-b border-gray-700"
                  onClick={closeMenu}
                >
                  Quiz
                </Link>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>
    </>
  );
}
