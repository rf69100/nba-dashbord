import { motion } from 'framer-motion';
import StatRow from '../common/StatRow';
import { calculateAverage } from '../../utils/playerStats';

/**
 * Carte des statistiques par match du joueur
 */
export default function PlayerStatsCard({ player }) {
  // Récupère les stats de saison si disponibles
  const seasonStats = player.season_stats || {};
  const gamesPlayed = seasonStats.GP || player.lastGames?.length || 0;

  // Calcule la moyenne par match depuis season_stats
  const perGame = (stat) => {
    if (seasonStats[stat] && gamesPlayed > 0) {
      return (seasonStats[stat] / gamesPlayed).toFixed(1);
    }
    return calculateAverage(player, stat);
  };

  return (
    <motion.div
      className="bg-white rounded-xl shadow-lg p-6"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.3 }}
    >
      <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
        Stats Per Game
      </h2>
      
      {/* Stats générales */}
      <div className="space-y-3 mb-6">
        <StatRow label="Points" value={perGame('PTS')} highlight />
        <StatRow label="Rebounds" value={perGame('TRB') || perGame('REB')} />
        <StatRow label="Assists" value={perGame('AST')} />
        <StatRow label="Steals" value={perGame('STL')} />
        <StatRow label="Blocks" value={perGame('BLK')} />
      </div>

      {/* Stats de tir */}
      <h3 className="text-lg font-semibold text-blue-800 mb-3 border-b border-blue-100 pb-1">
        Shooting
      </h3>
      <div className="space-y-3 mb-6">
        <StatRow label="FG Made" value={perGame('FG')} />
        <StatRow label="FG Attempted" value={perGame('FGA')} />
        <StatRow label="3PT Made" value={perGame('3P')} />
        <StatRow label="3PT Attempted" value={perGame('3PA')} />
        <StatRow label="FT Made" value={perGame('FT')} />
        <StatRow label="FT Attempted" value={perGame('FTA')} />
      </div>

      {/* Rebonds détaillés */}
      <h3 className="text-lg font-semibold text-blue-800 mb-3 border-b border-blue-100 pb-1">
        Rebonds
      </h3>
      <div className="space-y-3 mb-6">
        <StatRow label="Offensive" value={perGame('ORB')} />
        <StatRow label="Defensive" value={perGame('DRB')} />
        <StatRow label="Total" value={perGame('TRB') || perGame('REB')} />
      </div>

      {/* Autres stats */}
      <h3 className="text-lg font-semibold text-blue-800 mb-3 border-b border-blue-100 pb-1">
        Other
      </h3>
      <div className="space-y-3">
        <StatRow label="Turnovers" value={perGame('TOV')} />
        <StatRow label="Personal Fouls" value={perGame('PF')} />
        <StatRow label="Minutes" value={perGame('MP') || perGame('MIN')} />
      </div>
    </motion.div>
  );
}
