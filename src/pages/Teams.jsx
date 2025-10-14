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
    .map((team, index) => ({ 
      ...team, 
      rank: index + 1,
      percentage: ((team.wins / (team.wins + team.losses)) * 100).toFixed(1)
    }));

  return (
    <div className="pt-24 px-4 sm:px-5 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center">
      
      {/* Titre animé */}
      <motion.h1
        className="text-3xl sm:text-4xl md:text-5xl font-extrabold mb-6 sm:mb-8 drop-shadow-lg text-center"
        initial={{ y: -30, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 1 }}
      >
        Classement des équipes 🏀
      </motion.h1>

      {/* Boutons de filtre */}
      <div className="flex flex-wrap justify-center gap-3 sm:gap-4 mb-6 sm:mb-10">
        {["All", "East", "West"].map(conf => (
          <motion.button
            key={conf}
            onClick={() => setConference(conf)}
            whileHover={{ scale: 1.05 }}
            whileTap={{ scale: 0.95 }}
            className={`px-4 py-2 text-sm sm:text-base sm:px-5 rounded-full font-bold shadow-lg transition-colors ${
              conference === conf
                ? "bg-blue-600 text-white"
                : "bg-white text-gray-900 hover:bg-gray-200"
            }`}
          >
            {conf === "All" ? "Toutes" : conf === "East" ? "Est" : "Ouest"}
          </motion.button>
        ))}
      </div>

      {/* Tableau avec conteneur responsive */}
      <motion.div
        className="w-full max-w-4xl bg-white text-gray-900 rounded-xl sm:rounded-2xl shadow-2xl p-3 sm:p-6 overflow-x-auto"
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.8 }}
      >
        {/* Version mobile simplifiée */}
        <div className="block sm:hidden">
          {filteredTeams.map((team, index) => (
            <motion.div
              key={team.name}
              whileHover={{ scale: 1.02 }}
              className={`mb-3 p-4 rounded-xl border border-gray-200 cursor-pointer transition-colors ${
                index % 2 === 0 ? "bg-white" : "bg-gray-50"
              }`}
            >
              <div className="flex items-center justify-between mb-2">
                <div className="flex items-center space-x-3">
                  <span className="text-lg font-bold text-gray-700">#{team.rank}</span>
                  <img 
                    src={`${process.env.PUBLIC_URL}/images/nba-logos/${team.name.toLowerCase().replace(/\s+/g, "-")}.svg`}
                    alt={team.name} 
                    className="w-10 h-10 object-contain"
                    onError={(e) => { 
                      e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`; 
                    }}
                  />
                  <span className="font-bold text-gray-900 text-sm">{team.name}</span>
                </div>
              </div>
              
              <div className="flex justify-between items-center">
                <div className="text-center">
                  <div className="text-xs text-gray-600">Victoires</div>
                  <div className="font-semibold text-green-600">{team.wins}</div>
                </div>
                <div className="text-center">
                  <div className="text-xs text-gray-600">Défaites</div>
                  <div className="font-semibold text-red-600">{team.losses}</div>
                </div>
                <div className="text-center">
                  <div className="text-xs text-gray-600">%</div>
                  <div className="font-semibold text-blue-600">{team.percentage}%</div>
                </div>
              </div>
            </motion.div>
          ))}
        </div>

        {/* Version desktop - tableau complet */}
        <div className="hidden sm:block">
          <TeamRankingTable teams={filteredTeams} />
        </div>
      </motion.div>

      {/* Légende */}
      <motion.p
        className="mt-6 text-white/80 italic text-center max-w-md text-sm sm:text-base"
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