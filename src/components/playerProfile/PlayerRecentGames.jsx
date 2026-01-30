import { motion } from 'framer-motion';

/**
 * Tableau affichant les derniers matchs du joueur
 */
export default function PlayerRecentGames({ player }) {
  if (!player.lastGames || player.lastGames.length === 0) {
    return null;
  }

  return (
    <motion.div
      className="bg-white rounded-xl shadow-lg p-6 mt-6"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.5 }}
    >
      <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
        Recent Games
      </h2>
      <div className="overflow-x-auto">
        <table className="w-full text-sm">
          <thead>
            <tr className="bg-blue-50 text-blue-900 font-semibold">
              <th className="p-3 text-left">Game</th>
              <th className="p-3 text-center">MIN</th>
              <th className="p-3 text-center">PTS</th>
              <th className="p-3 text-center">REB</th>
              <th className="p-3 text-center">AST</th>
              <th className="p-3 text-center">STL</th>
              <th className="p-3 text-center">BLK</th>
              <th className="p-3 text-center">TOV</th>
              <th className="p-3 text-center">FG</th>
              <th className="p-3 text-center">3P</th>
              <th className="p-3 text-center">FT</th>
            </tr>
          </thead>
          <tbody>
            {player.lastGames.map((game, index) => (
              <tr key={index} className="border-b hover:bg-gray-50">
                <td className="p-3 font-semibold text-gray-700">#{index + 1}</td>
                <td className="p-3 text-center text-gray-600">{game.MIN ?? '-'}</td>
                <td className="p-3 text-center font-bold text-blue-900">{game.PTS}</td>
                <td className="p-3 text-center">{game.REB}</td>
                <td className="p-3 text-center">{game.AST}</td>
                <td className="p-3 text-center">{game.STL}</td>
                <td className="p-3 text-center">{game.BLK}</td>
                <td className="p-3 text-center text-red-600">{game.TOV ?? '-'}</td>
                <td className="p-3 text-center text-sm">
                  {game.FG}/{game.FGA}
                </td>
                <td className="p-3 text-center text-sm">
                  {game['3P']}/{game['3PA']}
                </td>
                <td className="p-3 text-center text-sm">
                  {game.FT}/{game.FTA}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      
      {/* Légende */}
      <div className="mt-4 text-xs text-gray-500 flex flex-wrap gap-4">
        <span><strong>MIN:</strong> Minutes</span>
        <span><strong>PTS:</strong> Points</span>
        <span><strong>REB:</strong> Rebounds</span>
        <span><strong>AST:</strong> Assists</span>
        <span><strong>STL:</strong> Steals</span>
        <span><strong>BLK:</strong> Blocks</span>
        <span><strong>TOV:</strong> Turnovers</span>
        <span><strong>FG:</strong> Field Goals</span>
        <span><strong>3P:</strong> 3-Pointers</span>
        <span><strong>FT:</strong> Free Throws</span>
      </div>
    </motion.div>
  );
}
