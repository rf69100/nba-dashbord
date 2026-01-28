import { motion } from 'framer-motion';
import TeamsSelectionList from './TeamsSelectionList';
import TeamsComparisonTable from './TeamsComparisonTable';

/**
 * Composant de comparaison d'équipes
 */
export default function TeamsComparison({ teams, selectedTeams, onToggleTeam, loading, error }) {
  const containerVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: {
      opacity: 1,
      y: 0,
      transition: { duration: 0.5, ease: 'easeOut' },
    },
  };

  return (
    <motion.div
      variants={containerVariants}
      initial="hidden"
      animate="visible"
    >
      {/* Liste de sélection */}
      <TeamsSelectionList 
        teams={teams}
        selectedTeams={selectedTeams}
        onToggleTeam={onToggleTeam}
      />

      {/* Message d'erreur */}
      {error && (
        <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded-lg mb-6">
          {error}
        </div>
      )}

      {/* Tableau de comparaison */}
      {selectedTeams.length === 2 && (
        <TeamsComparisonTable teams={selectedTeams} loading={loading} />
      )}
    </motion.div>
  );
}
