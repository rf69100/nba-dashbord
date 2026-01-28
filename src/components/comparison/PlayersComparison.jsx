import { motion } from 'framer-motion';
import PlayerStatsChart from '../players/PlayerStatsChart';

/**
 * Section complète de comparaison de joueurs
 */
export default function PlayersComparison({
  selectedPlayers,
  players,
  loading,
  onTogglePlayer,
}) {
  if (loading) {
    return (
      <motion.div
        className="text-center py-12 text-white"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
      >
        <p>Chargement des joueurs...</p>
      </motion.div>
    );
  }

  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.5 }}
    >
      <PlayerStatsChart
        selectedPlayers={selectedPlayers}
        togglePlayer={onTogglePlayer}
        allPlayers={players}
      />
    </motion.div>
  );
}
