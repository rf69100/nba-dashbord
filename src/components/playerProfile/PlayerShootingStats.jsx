import { motion } from 'framer-motion';
import PercentageBar from '../common/PercentageBar';
import { calculatePercentage } from '../../utils/players/playerStats';

/**
 * Carte des pourcentages de tir du joueur
 */
export default function PlayerShootingStats({ player }) {
  return (
    <motion.div
      className="bg-white rounded-xl shadow-lg p-6"
      initial={{ opacity: 0, x: 20 }}
      animate={{ opacity: 1, x: 0 }}
      transition={{ delay: 0.4 }}
    >
      <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
        Shooting %
      </h2>
      <div className="space-y-6">
        <PercentageBar
          label="Field Goal %"
          percentage={calculatePercentage(player, 'FG', 'FGA')}
          color="blue"
        />
        <PercentageBar
          label="3-Point %"
          percentage={calculatePercentage(player, '3P', '3PA')}
          color="green"
        />
        <PercentageBar
          label="Free Throw %"
          percentage={calculatePercentage(player, 'FT', 'FTA')}
          color="purple"
        />
      </div>

      {/* Season info */}
      <div className="mt-8 p-4 bg-blue-50 rounded-lg">
        <div className="text-sm text-blue-700 font-semibold mb-2">SEASON TYPE</div>
        <div className="text-lg font-bold text-blue-900">Regular Season 2024-25</div>
        <div className="text-sm text-gray-600 mt-2">
          Based on last {player.lastGames?.length || 10} games
        </div>
      </div>
    </motion.div>
  );
}
