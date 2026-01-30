import { motion } from 'framer-motion';

/**
 * Carte des statistiques de saison totales du joueur
 */
export default function PlayerSeasonTotals({ player }) {
  const stats = player.season_stats;
  
  if (!stats) {
    return null;
  }

  const statGroups = [
    {
      title: 'Général',
      items: [
        { label: 'Matchs joués', value: stats.GP, key: 'GP' },
        { label: 'Matchs débutés', value: stats.GS, key: 'GS' },
        { label: 'Minutes totales', value: stats.MP, key: 'MP' },
        { label: 'Points totaux', value: stats.PTS, key: 'PTS', highlight: true },
      ]
    },
    {
      title: 'Tirs au panier',
      items: [
        { label: 'Field Goals', value: `${stats.FG}/${stats.FGA}`, key: 'FG' },
        { label: 'FG%', value: stats['FG%'] ? `${(stats['FG%'] * 100).toFixed(1)}%` : '-', key: 'FG%' },
        { label: '3-Points', value: `${stats['3P']}/${stats['3PA']}`, key: '3P' },
        { label: '3P%', value: stats['3P%'] ? `${(stats['3P%'] * 100).toFixed(1)}%` : '-', key: '3P%' },
        { label: 'Lancers francs', value: `${stats.FT}/${stats.FTA}`, key: 'FT' },
        { label: 'FT%', value: stats['FT%'] ? `${(stats['FT%'] * 100).toFixed(1)}%` : '-', key: 'FT%' },
      ]
    },
    {
      title: 'Rebonds',
      items: [
        { label: 'Rebonds offensifs', value: stats.ORB, key: 'ORB' },
        { label: 'Rebonds défensifs', value: stats.DRB, key: 'DRB' },
        { label: 'Rebonds totaux', value: stats.TRB, key: 'TRB' },
      ]
    },
    {
      title: 'Playmaking & Défense',
      items: [
        { label: 'Passes décisives', value: stats.AST, key: 'AST' },
        { label: 'Interceptions', value: stats.STL, key: 'STL' },
        { label: 'Contres', value: stats.BLK, key: 'BLK' },
        { label: 'Pertes de balle', value: stats.TOV, key: 'TOV' },
        { label: 'Fautes personnelles', value: stats.PF, key: 'PF' },
      ]
    },
  ];

  return (
    <motion.div
      className="bg-white rounded-xl shadow-lg p-6 mt-6"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.45 }}
    >
      <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
        Season Totals 2024-25
      </h2>
      
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        {statGroups.map((group) => (
          <div key={group.title}>
            <h3 className="text-sm font-bold text-blue-600 uppercase tracking-wider mb-3">
              {group.title}
            </h3>
            <div className="space-y-2">
              {group.items.map((item) => (
                <div 
                  key={item.key} 
                  className={`flex justify-between items-center p-2 rounded ${
                    item.highlight ? 'bg-blue-50' : 'bg-gray-50'
                  }`}
                >
                  <span className="text-sm text-gray-600">{item.label}</span>
                  <span className={`font-bold ${
                    item.highlight ? 'text-blue-600 text-lg' : 'text-gray-900'
                  }`}>
                    {item.value ?? '-'}
                  </span>
                </div>
              ))}
            </div>
          </div>
        ))}
      </div>
    </motion.div>
  );
}
