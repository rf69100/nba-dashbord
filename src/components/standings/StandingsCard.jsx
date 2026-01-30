import { motion } from "framer-motion";
import { Link } from "react-router-dom";

/**
 * Composant carte pour affichage mobile du classement
 * @param {Object} team - Données de l'équipe
 * @param {number} index - Index pour l'alternance de couleurs
 */
export default function StandingsCard({ team, index }) {
  return (
    <Link
      to={`/team/${team.id}`}
      className="block"
      aria-label={`Voir le profil de ${team.name}`}
    >
      <motion.div
        whileHover={{ scale: 1.02 }}
        initial={{ opacity: 0, y: 10 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: index * 0.03 }}
        className={`mb-3 p-4 rounded-xl border border-gray-200 cursor-pointer transition-all duration-200 hover:shadow-md ${
          index % 2 === 0 ? "bg-white" : "bg-gray-50"
        }`}
      >
        {/* Informations principales de l'équipe */}
        <div className="flex items-center space-x-3 mb-3">
          <span className="text-lg font-bold text-gray-700 w-8">#{team.rank}</span>
          <img
            src={team.logo_url}
            alt={team.name}
            className="w-10 h-10 object-contain flex-shrink-0"
            onError={(e) => {
              e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`;
            }}
          />
          <span className="font-bold text-gray-900 text-sm flex-1 truncate">{team.name}</span>
        </div>

        {/* Statistiques de l'équipe */}
        <div className="flex justify-around items-center bg-gray-100 rounded-lg p-2">
          <div className="text-center">
            <div className="text-xs text-gray-600 mb-1">Victoires</div>
            <div className="font-semibold text-green-600 text-lg">{team.wins}</div>
          </div>
          <div className="h-8 w-px bg-gray-300"></div>
          <div className="text-center">
            <div className="text-xs text-gray-600 mb-1">Défaites</div>
            <div className="font-semibold text-red-600 text-lg">{team.losses}</div>
          </div>
          <div className="h-8 w-px bg-gray-300"></div>
          <div className="text-center">
            <div className="text-xs text-gray-600 mb-1">Pourcentage</div>
            <div className="font-semibold text-blue-600 text-lg">{team.percentage}%</div>
          </div>
        </div>
      </motion.div>
    </Link>
  );
}
