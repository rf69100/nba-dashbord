import { motion } from 'framer-motion';

/**
 * Section affichant les derniers matchs de l'équipe
 */
export default function TeamRecentGames({ lastGames }) {
  if (!lastGames || lastGames.length === 0) {
    return null;
  }

  return (
    <motion.div
      className="bg-white/95 backdrop-blur-sm rounded-xl shadow-lg p-6 mt-6"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.6 }}
    >
      <h2 className="text-2xl font-bold text-red-700 mb-6 border-b-2 border-red-200 pb-2">
        Recent Games
      </h2>
      <div className="overflow-x-auto">
        <table className="w-full text-sm">
          <thead>
            <tr className="bg-orange-50 text-red-700 font-semibold">
              <th className="p-3 text-left">Game</th>
              <th className="p-3 text-center">Opponent</th>
              <th className="p-3 text-center">Result</th>
              <th className="p-3 text-center">Score</th>
              <th className="p-3 text-center">Date</th>
            </tr>
          </thead>
          <tbody>
            {lastGames.map((game, index) => (
              <tr key={index} className="border-b hover:bg-orange-50">
                <td className="p-3 font-semibold text-gray-700">#{index + 1}</td>
                <td className="p-3 text-center">{game.opponent}</td>
                <td className="p-3 text-center">
                  <span className={`font-bold ${game.won ? 'text-green-600' : 'text-red-600'}`}>
                    {game.won ? 'W' : 'L'}
                  </span>
                </td>
                <td className="p-3 text-center font-bold">{game.score}</td>
                <td className="p-3 text-center text-gray-600">{game.date}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </motion.div>
  );
}
