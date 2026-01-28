import { motion } from 'framer-motion';
import StatRow from '../common/StatRow';

/**
 * Carte des statistiques offensives de l'équipe
 */
export default function TeamOffensiveStats({ stats }) {
  return (
    <motion.div
      className="bg-white/95 backdrop-blur-sm rounded-xl shadow-lg p-6"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.3 }}
    >
      <h2 className="text-2xl font-bold text-red-700 mb-6 border-b-2 border-red-200 pb-2">
        Offensive Stats
      </h2>
      <div className="space-y-3">
        <StatRow label="Points Per Game" value={stats?.ppg || '—'} />
        <StatRow label="Field Goals Made" value={stats?.fgm || '—'} />
        <StatRow label="Field Goals Attempted" value={stats?.fga || '—'} />
        <StatRow label="FG Percentage" value={stats?.fg_pct ? `${(stats.fg_pct * 100).toFixed(1)}%` : '—'} />
        <StatRow label="3-Pointers Made" value={stats?.tpm || '—'} />
        <StatRow label="3-Pointers Attempted" value={stats?.tpa || '—'} />
        <StatRow label="3P Percentage" value={stats?.tp_pct ? `${(stats.tp_pct * 100).toFixed(1)}%` : '—'} />
        <StatRow label="Free Throws Made" value={stats?.ftm || '—'} />
        <StatRow label="Free Throws Attempted" value={stats?.fta || '—'} />
        <StatRow label="FT Percentage" value={stats?.ft_pct ? `${(stats.ft_pct * 100).toFixed(1)}%` : '—'} />
      </div>
    </motion.div>
  );
}
