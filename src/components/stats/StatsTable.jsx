import { motion } from "framer-motion";
import { Link } from "react-router-dom";
import StatsTableRow from "./StatsTableRow";
import PlayerAvatar from "../common/PlayerAvatar";

/**
 * Composant pour le tableau complet des statistiques
 * @param {Array} players - Liste des joueurs (triés)
 * @param {Object} currentCategory - Catégorie actuellement affichée
 * @param {string} statKey - Clé de la statistique
 */
export default function StatsTable({ players, currentCategory, statKey }) {
  return (
    <motion.div
      className="bg-white rounded-lg sm:rounded-xl overflow-hidden shadow-lg"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.4 }}
    >
      {/* Header du tableau */}
      <div className="bg-gradient-to-r from-blue-600 to-blue-700 px-3 sm:px-6 py-3 sm:py-4 border-b border-blue-800">
        <h3 className="text-lg sm:text-2xl font-bold text-white mb-1">{currentCategory.label}</h3>
        <p className="text-blue-100 text-xs sm:text-sm">Top 20 joueurs</p>
      </div>

      {/* Version Mobile - Cartes */}
      <div className="block sm:hidden">
        {players.slice(0, 20).map((player, index) => (
          <Link
            key={player.id}
            to={`/player/${player.id}`}
            className="block"
          >
            <motion.div
              className="border-b border-gray-200 p-3 hover:bg-blue-50 transition-colors active:bg-blue-100"
              initial={{ opacity: 0, x: -20 }}
              animate={{ opacity: 1, x: 0 }}
              transition={{ delay: 0.5 + index * 0.02 }}
            >
              <div className="flex items-center gap-3">
                <div className="flex-shrink-0 w-8 flex items-center justify-center">
                  <span className="text-lg font-bold">
                    {index === 0 ? "🥇" : index === 1 ? "🥈" : index === 2 ? "🥉" : index + 1}
                  </span>
                </div>
                <PlayerAvatar
                  photoUrl={player.photo}
                  playerName={player.name}
                  size="sm"
                  borderColor="border-blue-300"
                />
                <div className="flex-grow min-w-0">
                  <div className="font-bold text-gray-900 text-sm truncate">{player.name}</div>
                  <div className="text-xs text-gray-500 flex items-center gap-1">
                    <span>{player.team}</span>
                    <span>•</span>
                    <span>{player.position}</span>
                  </div>
                </div>
                <div className="flex-shrink-0 flex items-center gap-2">
                  <div className="text-right">
                    <div className="text-lg font-bold text-blue-600">{player.stats[statKey]}</div>
                    <div className="text-xs text-gray-500">{currentCategory.abbr}</div>
                  </div>
                  <svg 
                    className="w-5 h-5 text-gray-400" 
                    fill="none" 
                    stroke="currentColor" 
                    viewBox="0 0 24 24"
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                  </svg>
                </div>
              </div>
            </motion.div>
          </Link>
        ))}
      </div>

      {/* Tableau - Version Desktop */}
      <div className="hidden sm:block overflow-x-auto">
        <table className="w-full">
          <thead>
            <tr className="bg-gray-50 text-gray-700 text-xs sm:text-sm font-bold border-b-2 border-gray-200">
              <th className="px-3 sm:px-4 py-3 text-left">RANG</th>
              <th className="px-3 sm:px-4 py-3 text-left">JOUEUR</th>
              <th className="px-3 sm:px-4 py-3 text-center hidden md:table-cell">ÉQUIPE</th>
              <th className="px-3 sm:px-4 py-3 text-center hidden lg:table-cell">MJ</th>
              <th className="px-3 sm:px-4 py-3 text-center text-blue-600 font-bold">
                {currentCategory.abbr}
              </th>
            </tr>
          </thead>
          <tbody>
            {players.slice(0, 20).map((player, index) => (
              <StatsTableRow
                key={player.id}
                player={player}
                index={index}
                statKey={statKey}
              />
            ))}
          </tbody>
        </table>
      </div>

      {/* Footer */}
      <div className="bg-gray-50 px-3 sm:px-6 py-3 text-center border-t-2 border-gray-200">
        <p className="text-gray-600 text-xs sm:text-sm font-semibold">
          Statistiques NBA 2024-25
        </p>
      </div>
    </motion.div>
  );
}
