import { useState } from "react";
import { motion } from "framer-motion";
import PlayerStatsChart from "../components/PlayerStatsChart";
import { players } from "../services/nbaData";

export default function Player() {
  const [selectedPlayers, setSelectedPlayers] = useState([]);

  // Ajouter ou retirer un joueur (max 2)
  const togglePlayer = (player) => {
    if (selectedPlayers.find((p) => p.id === player.id)) {
      setSelectedPlayers(selectedPlayers.filter((p) => p.id !== player.id));
      return;
    }
    if (selectedPlayers.length < 2) {
      setSelectedPlayers([...selectedPlayers, player]);
    }
  };

  return (
    <motion.div
      className="pt-24 px-5 pb-10 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 1 }}
    >
      {/* Titre animé */}
      <motion.h1
        className="text-4xl sm:text-5xl md:text-6xl font-extrabold mb-8 drop-shadow-lg text-center"
        initial={{ y: -30, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 1 }}
      >
        Compare Players 🏀
      </motion.h1>

      {/* Description */}
      <motion.p
        className="text-sm sm:text-lg md:text-xl mb-10 max-w-3xl mx-auto drop-shadow-md text-center"
        initial={{ y: 20, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ delay: 0.5, duration: 1 }}
      >
        Explore les statistiques des joueurs et compare leurs performances sur la saison NBA 2025-2026. Sélectionne un ou deux joueurs ci-dessous.
      </motion.p>

      {/* PlayerStatsChart */}
      <div className="w-full max-w-5xl">
        <PlayerStatsChart
          selectedPlayers={selectedPlayers}
          togglePlayer={togglePlayer}
          allPlayers={players} // prop renommée pour cohérence
        />
      </div>

      {/* Info saison */}
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
