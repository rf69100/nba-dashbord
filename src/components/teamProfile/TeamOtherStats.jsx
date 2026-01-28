import { motion } from 'framer-motion';
import StatRow from '../common/StatRow';

/**
 * Carte des autres statistiques de l'équipe (défensives, etc.)
 */
export default function TeamOtherStats({ team }) {
  return (
    <motion.div
      className="bg-white/95 backdrop-blur-sm rounded-xl shadow-lg p-6"
      initial={{ opacity: 0, x: 20 }}
      animate={{ opacity: 1, x: 0 }}
      transition={{ delay: 0.4 }}
    >
      <h2 className="text-2xl font-bold text-red-700 mb-6 border-b-2 border-red-200 pb-2">
        Other Stats
      </h2>
      <div className="space-y-3">
        <StatRow label="Rebounds Per Game" value={team.stats?.rpg || '—'} />
        <StatRow label="Assists Per Game" value={team.stats?.apg || '—'} />
        <StatRow label="Steals Per Game" value={team.stats?.spg || '—'} />
        <StatRow label="Blocks Per Game" value={team.stats?.bpg || '—'} />
        <StatRow label="Turnovers Per Game" value={team.stats?.tpg || '—'} />
      </div>

      {/* Season info */}
      <div className="mt-8 p-4 bg-orange-50 rounded-lg">
        <div className="text-sm text-orange-700 font-semibold mb-2">SEASON</div>
        <div className="text-lg font-bold text-orange-900">2024-25 Regular Season</div>
        <div className="text-sm text-gray-600 mt-2">
          Record: {team.wins || 0}-{team.losses || 0}
        </div>
      </div>
    </motion.div>
  );
}
