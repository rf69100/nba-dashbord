import { motion } from "framer-motion";
import { Link } from "react-router-dom";

/**
 * Composant pour une ligne du tableau des stats
 * @param {Object} player - Données du joueur
 * @param {number} index - Position du joueur (pour le rang)
 * @param {string} statKey - Clé de la statistique à afficher
 */
export default function StatsTableRow({ player, index, statKey }) {
  const getRankMedal = (index) => {
    if (index === 0) return "🥇";
    if (index === 1) return "🥈";
    if (index === 2) return "🥉";
    return index + 1;
  };

  const getRankColor = (index) => {
    if (index === 0) return "text-yellow-500";
    if (index === 1) return "text-gray-400";
    if (index === 2) return "text-orange-400";
    return "text-gray-600";
  };

  return (
    <Link to={`/player/${player.id}`} className="contents">
      <motion.tr
        className="border-b border-gray-200 hover:bg-blue-50 transition-colors cursor-pointer"
        initial={{ opacity: 0, x: -20 }}
        animate={{ opacity: 1, x: 0 }}
        transition={{ delay: 0.5 + index * 0.02 }}
        whileHover={{ backgroundColor: "rgba(59, 130, 246, 0.05)" }}
      >
      <td className="px-3 sm:px-4 py-3 sm:py-4">
        <div className="flex items-center justify-center">
          <span className={`text-base sm:text-lg font-bold ${getRankColor(index)}`}>
            {getRankMedal(index)}
          </span>
        </div>
      </td>
      <td className="px-3 sm:px-4 py-3 sm:py-4">
        <div className="flex items-center gap-2">
          <img
            src={player.photo}
            alt={player.name}
            className="w-9 h-9 sm:w-11 sm:h-11 lg:w-12 lg:h-12 rounded-full object-cover border-2 border-blue-300 flex-shrink-0"
            onError={(e) => {
              const name = player.name.replace(" ", "+");
              e.target.src = `https://ui-avatars.com/api/?name=${name}&size=48&background=3b82f6&color=fff&bold=true`;
            }}
          />
          <div className="min-w-0">
            <div className="font-bold text-gray-900 text-xs sm:text-sm truncate">
              {player.name}
            </div>
            <div className="text-xs text-gray-500 uppercase tracking-wider hidden md:block">
              {player.position}
            </div>
          </div>
        </div>
      </td>
      <td className="px-3 sm:px-4 py-3 sm:py-4 text-center hidden md:table-cell">
        <span className="text-blue-600 font-bold text-xs sm:text-sm">{player.team}</span>
      </td>
      <td className="px-3 sm:px-4 py-3 sm:py-4 text-center text-gray-600 font-semibold hidden lg:table-cell text-xs sm:text-sm">
        {player.stats.gamesPlayed}
      </td>
      <td className="px-3 sm:px-4 py-3 sm:py-4 text-center">
        <span className="text-base sm:text-lg lg:text-xl font-extrabold text-blue-600">
          {player.stats[statKey]}
        </span>
      </td>
      <td className="px-3 sm:px-4 py-3 sm:py-4 text-center hidden lg:table-cell">
        <span className="inline-block px-2 sm:px-3 py-1 sm:py-2 bg-blue-600 text-white text-xs font-semibold rounded shadow-md">
          Voir profil
        </span>
      </td>
    </motion.tr>
    </Link>
  );
}
