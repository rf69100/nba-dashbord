import { motion } from "framer-motion";
import TeamListItem from "./TeamListItem";

/**
 * Composant pour une carte de division
 * @param {string} divisionName - Nom de la division
 * @param {Array} teams - Liste des équipes de la division
 * @param {Object} variants - Variants Framer Motion pour l'animation
 */
export default function DivisionCard({ divisionName, teams, variants }) {
  return (
    <motion.div
      variants={variants}
      className="bg-gradient-to-br from-orange-50 to-yellow-50 rounded-xl p-5 shadow-lg hover:shadow-xl transition-shadow"
    >
      <h3 className="text-xl font-bold text-red-600 mb-4 pb-2 border-b-2 border-orange-300">
        {divisionName}
      </h3>
      <div className="space-y-2">
        {teams.map((team) => (
          <TeamListItem key={team.id} team={team} />
        ))}
      </div>
    </motion.div>
  );
}
