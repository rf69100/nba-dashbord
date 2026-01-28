import { motion } from 'framer-motion';

/**
 * Selector pour choisir entre comparer des équipes ou des joueurs
 */
export default function ComparisonModeSelector({ mode, onModeChange }) {
  const modes = [
    {
      id: 'players',
      label: '🏀 Comparer les Joueurs',
      description: 'Compare les statistiques de joueurs individuels',
    },
    {
      id: 'teams',
      label: '🏢 Comparer les Équipes',
      description: 'Compare les performances des équipes NBA',
    },
  ];

  return (
    <motion.div
      className="mb-12"
      initial={{ opacity: 0, y: -20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.5 }}
    >
      <div className="max-w-2xl mx-auto">
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {modes.map((m) => (
            <motion.button
              key={m.id}
              onClick={() => onModeChange(m.id)}
              className={`p-6 rounded-2xl font-semibold transition-all duration-300 border-2 ${
                mode === m.id
                  ? 'bg-blue-600 text-white border-blue-700 shadow-lg'
                  : 'bg-white/20 text-white border-white/40 hover:border-white/60'
              }`}
              whileHover={{ scale: 1.02 }}
              whileTap={{ scale: 0.98 }}
            >
              <div className="text-xl mb-2">{m.label}</div>
              <div className="text-sm opacity-90">{m.description}</div>
            </motion.button>
          ))}
        </div>
      </div>
    </motion.div>
  );
}
