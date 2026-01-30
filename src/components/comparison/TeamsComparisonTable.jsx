import { motion } from 'framer-motion';
import TeamLogo from '../teams/TeamLogo';

/**
 * Tableau comparatif des équipes
 */
export default function TeamsComparisonTable({ teams }) {
  if (!teams || teams.length === 0) {
    return (
      <motion.div
        className="text-center py-12 text-gray-600"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
      >
        <p className="text-lg">Sélectionne 1 ou 2 équipes pour voir la comparaison</p>
      </motion.div>
    );
  }

  const stats = [
    { label: 'Wins', key: 'wins' },
    { label: 'Losses', key: 'losses' },
    { label: 'Win %', key: 'win_percentage' },
    { label: 'PPG', key: 'ppg' },
    { label: 'RPG', key: 'rpg' },
    { label: 'APG', key: 'apg' },
  ];

  return (
    <motion.div
      className="bg-white/30 backdrop-blur-md rounded-2xl shadow-lg p-6 sm:p-8 overflow-x-auto"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.5 }}
    >
      <table className="w-full text-gray-900">
        <thead>
          <tr className="border-b-2 border-gray-300">
            <th className="p-4 text-left font-bold">Statistique</th>
            {teams.map((team) => (
              <th key={team.id} className="p-4 text-center font-bold">
                <div className="flex flex-col items-center gap-2">
                  <div className="w-10 h-10">
                    <TeamLogo
                      teamId={team.id}
                      teamName={team.name}
                      className="w-full h-full object-contain"
                    />
                  </div>
                  <div className="text-sm text-gray-900 font-bold">{team.abbreviation}</div>
                  <div className="text-xs text-gray-700">{team.name}</div>
                </div>
              </th>
            ))}
          </tr>
        </thead>
        <tbody>
          {stats.map((stat, idx) => (
            <tr
              key={stat.key}
              className={`border-b border-gray-200 ${idx % 2 === 0 ? 'bg-white/10' : 'bg-transparent'}`}
            >
              <td className="p-4 font-semibold text-gray-900">{stat.label}</td>
              {teams.map((team) => (
                <td
                  key={team.id}
                  className="p-4 text-center font-bold text-orange-600"
                >
                  {team.stats?.[stat.key] || team[stat.key] || '—'}
                </td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </motion.div>
  );
}
