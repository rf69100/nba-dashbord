import { motion } from 'framer-motion';
import TeamLogo from '../teams/TeamLogo';

/**
 * Liste des équipes pour sélection dans la comparaison
 */
export default function TeamsSelectionList({ teams, selectedTeams, onToggleTeam }) {
  const isSelected = (teamId) => selectedTeams.some((t) => t.id === teamId);
  const canSelect = selectedTeams.length < 2;

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.05,
      },
    },
  };

  const itemVariants = {
    hidden: { opacity: 0, scale: 0.9 },
    visible: {
      opacity: 1,
      scale: 1,
      transition: { type: 'spring', stiffness: 100 },
    },
  };

  return (
    <motion.div
      className="mb-8 bg-white/30 backdrop-blur-md rounded-2xl shadow-lg p-6 sm:p-8"
      variants={containerVariants}
      initial="hidden"
      animate="visible"
    >
      <h3 className="text-xl font-bold text-gray-900 mb-6 text-center">
        Sélectionne {selectedTeams.length < 2 ? '1-2 équipes' : 'tes équipes'}
      </h3>
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4">
        {teams.map((team) => (
          <motion.button
            key={team.id}
            onClick={() => onToggleTeam(team)}
            disabled={!isSelected(team.id) && !canSelect}
            className={`p-4 rounded-xl transition-all duration-300 border-2 ${
              isSelected(team.id)
                ? 'bg-yellow-400/70 border-yellow-500 shadow-lg text-black'
                : canSelect
                ? 'bg-gradient-to-br from-orange-50 to-yellow-50 border-orange-200 hover:border-orange-300 hover:shadow-md text-gray-900'
                : 'bg-gray-100 border-gray-300 opacity-50 cursor-not-allowed text-gray-600'
            }`}
            variants={itemVariants}
            whileHover={canSelect || isSelected(team.id) ? { scale: 1.05 } : {}}
            whileTap={canSelect || isSelected(team.id) ? { scale: 0.95 } : {}}
          >
            <TeamLogo
              teamId={team.id}
              teamName={team.name}
              className="w-12 h-12 mx-auto mb-2 object-contain"
            />
            <div className={`text-xs font-bold text-center truncate ${
              isSelected(team.id) ? 'text-black' : 'text-gray-900'
            }`}>
              {team.abbreviation}
            </div>
            <div className={`text-xs text-center mt-2 font-semibold truncate ${
              isSelected(team.id) ? 'text-black/90' : 'text-gray-700'
            }`}>
              {team.name}
            </div>
          </motion.button>
        ))}
      </div>
    </motion.div>
  );
}
