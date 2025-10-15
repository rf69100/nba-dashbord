// Importation des hooks et composants nécessaires
import { useState } from "react"; // Hook React pour gérer l'état local
import { motion } from "framer-motion"; // Pour les animations
import PlayerStatsChart from "../components/PlayerStatsChart"; // Composant graphique des stats
import { players } from "../services/nbaData"; // Données des joueurs

/**
 * Page principale pour comparer les joueurs NBA.
 * Permet de sélectionner jusqu'à 2 joueurs et d'afficher leurs statistiques comparées.
 */
export default function Player() {
  // État local : liste des joueurs sélectionnés (max 2)
  const [selectedPlayers, setSelectedPlayers] = useState([]);

  /**
   * Ajoute ou retire un joueur de la sélection.
   * Si le joueur est déjà sélectionné, il est retiré.
   * Sinon, il est ajouté (max 2 joueurs).
   * @param {Object} player - Joueur à ajouter ou retirer
   */
  const togglePlayer = (player) => {
    // Vérifie si le joueur est déjà sélectionné
    if (selectedPlayers.find((p) => p.id === player.id)) {
      setSelectedPlayers(selectedPlayers.filter((p) => p.id !== player.id));
      return;
    }
    // Ajoute le joueur si moins de 2 sélectionnés
    if (selectedPlayers.length < 2) {
      setSelectedPlayers([...selectedPlayers, player]);
    }
  };

  // Rendu principal de la page
  return (
    <motion.div
      className="pt-24 px-5 pb-10 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 1 }}
    >
      {/* Titre animé de la page */}
      <motion.h1
        className="text-4xl sm:text-5xl md:text-6xl font-extrabold mb-8 drop-shadow-lg text-center"
        initial={{ y: -30, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 1 }}
      >
        Compare Players 🏀
      </motion.h1>

      {/* Description de la fonctionnalité */}
      <motion.p
        className="text-sm sm:text-lg md:text-xl mb-10 max-w-3xl mx-auto drop-shadow-md text-center"
        initial={{ y: 20, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ delay: 0.5, duration: 1 }}
      >
        Explore les statistiques des joueurs et compare leurs performances sur la saison NBA 2025-2026. Sélectionne un ou deux joueurs ci-dessous.
      </motion.p>

      {/* Composant graphique pour la comparaison des joueurs */}
      <div className="w-full max-w-5xl">
        <PlayerStatsChart
          selectedPlayers={selectedPlayers}
          togglePlayer={togglePlayer}
          allPlayers={players} // prop renommée pour cohérence
        />
      </div>

      {/* Informations sur la saison affichées en bas */}
      <motion.p
        className="mt-10 text-center text-white/80 italic max-w-md drop-shadow-md"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.8, duration: 1 }}
      >
        Données basées sur la saison NBA 2025-2026. Sélectionne un ou deux joueurs pour comparer leurs performances.
      </motion.p>
    </motion.div>
  );
}
