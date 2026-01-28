// Importation des modules nécessaires
import React from "react"; // React
import { Link } from "react-router-dom";
import { motion } from "framer-motion"; // Pour les animations

/**
 * Tableau de classement des équipes NBA.
 * Affiche le rang, le logo, le nom, les victoires, défaites et pourcentage.
 * @param {Array} teams - Liste des équipes à afficher
 */
const TeamRankingTable = ({ teams }) => {
  return (
    <div className="overflow-x-auto">
      <div className="min-w-full divide-y divide-gray-200 rounded-2xl shadow-lg">
        {/* En-tête du tableau */}
        <div className="grid grid-cols-12 gap-4 p-4 font-bold text-gray-700 bg-gray-100 rounded-t-2xl">
          <span className="col-span-1 text-center">Rang</span>
          <span className="col-span-5">Équipe</span>
          <span className="col-span-2 text-center">Victoires</span>
          <span className="col-span-2 text-center">Défaites</span>
          <span className="col-span-2 text-center">%</span>
        </div>

        {/* Lignes du tableau pour chaque équipe */}
        {teams.map((team, index) => (
          <Link
            key={team.id}
            to={`/team/${team.id}`}
            className="block"
            aria-label={`Voir le profil de ${team.name}`}
          >
            <motion.div
              whileHover={{ scale: 1.01 }}
              className={`grid grid-cols-12 gap-4 p-4 items-center transition-colors rounded-b-xl cursor-pointer ${
                index % 2 === 0 ? "bg-white" : "bg-gray-50"
              }`}
            >
              {/* Rang de l'équipe */}
              <span className="col-span-1 text-center font-semibold text-lg">{team.rank}</span>

              {/* Équipe avec logo */}
              <div className="col-span-5 flex items-center gap-3">
                <img
                  src={`${process.env.PUBLIC_URL}${team.logo_url}`}
                  alt={team.name}
                  className="w-12 h-12 object-contain"
                  onError={(e) => {
                    e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`;
                  }}
                />
                <span className="font-medium text-gray-900">{team.name}</span>
              </div>

              {/* Victoires */}
              <span className="col-span-2 text-center font-semibold text-green-600">{team.wins}</span>

              {/* Défaites */}
              <span className="col-span-2 text-center font-semibold text-red-600">{team.losses}</span>

              {/* Pourcentage de victoires */}
              <span className="col-span-2 text-center font-semibold text-blue-600">{(team.percentage * 100).toFixed(1)}%</span>
            </motion.div>
          </Link>
        ))}
      </div>
    </div>
  );
};

export default TeamRankingTable;