import React, { useState } from "react";
import { motion } from "framer-motion";
import TeamRankingTable from "../components/TeamRankingTable";
import { teams as allTeams } from "../services/nbaData";

const Teams = () => {
  const [conference, setConference] = useState("All");

  // Filtrage par conférence et tri par wins descendant + rang automatique
  const filteredTeams = allTeams
    .filter(team => conference === "All" || team.conference === conference)
    .sort((a, b) => b.wins - a.wins)
    .map((team, index) => ({ ...team, rank: index + 1 }));

  return (
    <div className="pt-24 px-5 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center">
      
      {/* Titre animé */}
      <motion.h1
        className="text-4xl sm:text-5xl font-extrabold mb-8 drop-shadow-lg text-center"
        initial={{ y: -30, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 1 }}
      >
        Classement des équipes 🏀
      </motion.h1>

      {/* Boutons de filtre */}
      <div className="flex flex-wrap justify-center gap-4 mb-10">
        {["All", "East", "West"].map(conf => (
          <motion.button
            key={conf}
            onClick={() => setConference(conf)}
            whileHover={{ scale: 1.05 }}
            whileTap={{ scale: 0.95 }}
            className={`px-5 py-2 rounded-full font-bold shadow-lg transition-colors ${
              conference === conf
                ? "bg-blue-600 text-white"
                : "bg-white text-gray-900 hover:bg-gray-200"
            }`}
          >
            {conf}
          </motion.button>
        ))}
      </div>

      {/* Tableau */}
      <motion.div
        className="w-full max-w-6xl bg-white text-gray-900 rounded-3xl shadow-2xl p-6 overflow-x-auto"
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.8 }}
      >
        <TeamRankingTable teams={filteredTeams} />
      </motion.div>

      {/* Légende */}
      <motion.p
        className="mt-6 text-white/80 italic text-center max-w-md"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 1, duration: 1 }}
      >
        Classement basé sur la saison NBA 2025-2026.
      </motion.p>
    </div>
  );
};

export default Teams;
