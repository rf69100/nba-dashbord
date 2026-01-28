import { motion } from 'framer-motion';
import StatRow from '../common/StatRow';
import { calculateAverage } from '../../utils/players/playerStats';

/**
 * Carte des statistiques par match du joueur
 */
export default function PlayerStatsCard({ player }) {
  return (
    <motion.div
      className="bg-white rounded-xl shadow-lg p-6"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.3 }}
    >
      <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
        Per Game Stats
      </h2>
      <div className="space-y-3">
        <StatRow label="Points" value={calculateAverage(player, 'PTS')} />
        <StatRow label="Rebounds" value={calculateAverage(player, 'REB')} />
        <StatRow label="Assists" value={calculateAverage(player, 'AST')} />
        <StatRow label="Steals" value={calculateAverage(player, 'STL')} />
        <StatRow label="Blocks" value={calculateAverage(player, 'BLK')} />
        <StatRow label="FG Made" value={calculateAverage(player, 'FG')} />
        <StatRow label="FG Attempted" value={calculateAverage(player, 'FGA')} />
        <StatRow label="3PT Made" value={calculateAverage(player, '3P')} />
        <StatRow label="3PT Attempted" value={calculateAverage(player, '3PA')} />
        <StatRow label="FT Made" value={calculateAverage(player, 'FT')} />
        <StatRow label="FT Attempted" value={calculateAverage(player, 'FTA')} />
      </div>
    </motion.div>
  );
}
