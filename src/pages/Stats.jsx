import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { Link } from "react-router-dom";
import LoadingSpinner from "../components/LoadingSpinner";
import { getPlayers, getPlayerWithStats } from "../services/nbaApi";

/**
 * Page des statistiques NBA - Leaders de la ligue
 * Affiche les meilleurs joueurs dans différentes catégories
 */
export default function Stats() {
  const [players, setPlayers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [selectedCategory, setSelectedCategory] = useState("points");

  // Catégories de statistiques disponibles
  const categories = [
    { key: "points", label: "POINTS", abbr: "PTS" },
    { key: "rebounds", label: "REBOUNDS", abbr: "REB" },
    { key: "assists", label: "ASSISTS", abbr: "AST" },
    { key: "steals", label: "STEALS", abbr: "STL" },
    { key: "blocks", label: "BLOCKS", abbr: "BLK" },
    { key: "fieldGoalPct", label: "FG%", abbr: "FG%" },
    { key: "threePointPct", label: "3P%", abbr: "3P%" },
    { key: "freeThrowPct", label: "FT%", abbr: "FT%" },
  ];

  useEffect(() => {
    const fetchStats = async () => {
      try {
        setLoading(true);
        setError(null);

        const response = await getPlayers();

        // Fonction pour charger les stats d'un joueur via le service local
        const loadPlayerStats = async (player) => {
          try {
            const playerData = await getPlayerWithStats(player.id);

            if (playerData && playerData.lastGames) {
              const games = playerData.lastGames;
              const gamesCount = games.length;

              return {
                id: player.id,
                name: playerData.display_name || playerData.name,
                team: playerData.team_abbreviation,
                position: playerData.position,
                photo: playerData.photo_url || playerData.info?.photo,
                stats: {
                  points: (games.reduce((sum, g) => sum + g.PTS, 0) / gamesCount).toFixed(1),
                  rebounds: (games.reduce((sum, g) => sum + g.REB, 0) / gamesCount).toFixed(1),
                  assists: (games.reduce((sum, g) => sum + g.AST, 0) / gamesCount).toFixed(1),
                  steals: (games.reduce((sum, g) => sum + g.STL, 0) / gamesCount).toFixed(1),
                  blocks: (games.reduce((sum, g) => sum + g.BLK, 0) / gamesCount).toFixed(1),
                  fieldGoalPct: (
                    (games.reduce((sum, g) => sum + g.FG, 0) /
                      games.reduce((sum, g) => sum + g.FGA, 0)) *
                    100
                  ).toFixed(1),
                  threePointPct: (
                    (games.reduce((sum, g) => sum + g["3P"], 0) /
                      games.reduce((sum, g) => sum + g["3PA"], 0)) *
                    100
                  ).toFixed(1),
                  freeThrowPct: (
                    (games.reduce((sum, g) => sum + g.FT, 0) /
                      games.reduce((sum, g) => sum + g.FTA, 0)) *
                    100
                  ).toFixed(1),
                  gamesPlayed: gamesCount,
                },
              };
            }
            return null;
          } catch {
            return null;
          }
        };

        // Charger les stats de tous les joueurs
        const allPlayers = response.players.slice(0, 30);
        const playersWithStats = await Promise.all(allPlayers.map(loadPlayerStats));

        setPlayers(playersWithStats.filter(p => p !== null));
      } catch (err) {
        console.error("Erreur lors du chargement des stats:", err);
        setError(err.message || "Impossible de charger les données");
      } finally {
        setLoading(false);
      }
    };

    fetchStats();
  }, []);

  // Trier les joueurs selon la catégorie sélectionnée
  const getSortedPlayers = () => {
    return [...players].sort((a, b) => {
      const statA = parseFloat(a.stats[selectedCategory]) || 0;
      const statB = parseFloat(b.stats[selectedCategory]) || 0;
      return statB - statA;
    });
  };

  if (loading) {
    return (
      <div className="pt-20 px-4 min-h-screen bg-white flex items-center justify-center">
        <LoadingSpinner />
      </div>
    );
  }

  if (error) {
    return (
      <div className="pt-20 px-4 min-h-screen bg-white flex items-center justify-center">
        <motion.div
          className="card text-center border-red-500 bg-red-50"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
        >
          <h2 className="text-2xl font-bold mb-3 text-red-600">Error</h2>
          <p className="text-gray-600 mb-4">{error}</p>
          <button
            onClick={() => window.location.reload()}
            className="btn btn-primary"
          >
            Retry
          </button>
        </motion.div>
      </div>
    );
  }

  const sortedPlayers = getSortedPlayers();
  const currentCategory = categories.find((cat) => cat.key === selectedCategory);

  return (
    <div className="pt-20 min-h-screen bg-white">
      {/* Header */}
      <motion.div
        className="bg-gradient-to-r from-red-600 to-red-700 py-6 px-4 text-white border-b border-red-500"
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
      >
        <div className="max-w-6xl mx-auto">
          <h1 className="text-4xl font-bold mb-2">STATS</h1>
          <p className="text-red-100">Season Leaders • 2024-25</p>
        </div>
      </motion.div>

      <div className="max-w-6xl mx-auto px-4 py-8">
        {/* Filters */}
        <motion.div
          className="mb-8 bg-gray-50 rounded-lg p-4 border border-gray-200"
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.3 }}
        >
          <div className="flex flex-wrap gap-2">
            {categories.map((cat) => (
              <button
                key={cat.key}
                onClick={() => setSelectedCategory(cat.key)}
                className={`px-4 py-2 rounded-lg font-semibold transition-all ${
                  selectedCategory === cat.key
                    ? "bg-blue-600 text-white"
                    : "bg-gray-700 text-gray-300 hover:bg-gray-600"
                }`}
              >
                {cat.label}
              </button>
            ))}
          </div>
        </motion.div>

        {/* Tableau des leaders */}
        <motion.div
          className="bg-gray-800 rounded-lg overflow-hidden shadow-xl"
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.4 }}
        >
          {/* Header du tableau */}
          <div className="bg-gray-900 px-6 py-4 border-b border-gray-700">
            <h3 className="text-xl font-bold">{currentCategory.label}</h3>
            <p className="text-sm text-gray-400">Minimum 5 games played</p>
          </div>

          {/* Tableau */}
          <div className="overflow-x-auto">
            <table className="w-full">
              <thead>
                <tr className="bg-gray-900 text-gray-400 text-sm">
                  <th className="px-6 py-3 text-left">RANK</th>
                  <th className="px-6 py-3 text-left">PLAYER</th>
                  <th className="px-6 py-3 text-center">TEAM</th>
                  <th className="px-6 py-3 text-center">GP</th>
                  <th className="px-6 py-3 text-center">{currentCategory.abbr}</th>
                  <th className="px-6 py-3 text-center">ACTIONS</th>
                </tr>
              </thead>
              <tbody>
                {sortedPlayers.slice(0, 20).map((player, index) => (
                  <motion.tr
                    key={player.id}
                    className="border-b border-gray-700 hover:bg-gray-700/50 transition-colors"
                    initial={{ opacity: 0, x: -20 }}
                    animate={{ opacity: 1, x: 0 }}
                    transition={{ delay: 0.5 + index * 0.02 }}
                  >
                    <td className="px-6 py-4">
                      <div className="flex items-center gap-3">
                        <span
                          className={`text-2xl font-bold ${
                            index === 0
                              ? "text-yellow-400"
                              : index === 1
                              ? "text-gray-300"
                              : index === 2
                              ? "text-orange-400"
                              : "text-gray-400"
                          }`}
                        >
                          {index + 1}
                        </span>
                      </div>
                    </td>
                    <td className="px-6 py-4">
                      <div className="flex items-center gap-3">
                        <img
                          src={player.photo}
                          alt={player.name}
                          className="w-12 h-12 rounded-full object-cover border-2 border-gray-600"
                          onError={(e) => {
                            e.target.src = 'https://via.placeholder.com/48x48/374151/FFFFFF?text=NBA';
                          }}
                        />
                        <div>
                          <div className="font-bold text-white">{player.name}</div>
                          <div className="text-sm text-gray-400">{player.position}</div>
                        </div>
                      </div>
                    </td>
                    <td className="px-6 py-4 text-center">
                      <span className="text-blue-400 font-semibold">{player.team}</span>
                    </td>
                    <td className="px-6 py-4 text-center text-gray-300">
                      {player.stats.gamesPlayed}
                    </td>
                    <td className="px-6 py-4 text-center">
                      <span className="text-2xl font-bold text-white">
                        {player.stats[selectedCategory]}
                      </span>
                    </td>
                    <td className="px-6 py-4 text-center">
                      <Link
                        to={`/player/${player.id}`}
                        className="inline-block px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white text-sm font-semibold rounded-lg transition-colors"
                      >
                        View Profile
                      </Link>
                    </td>
                  </motion.tr>
                ))}
              </tbody>
            </table>
          </div>

          {/* Footer */}
          <div className="bg-gray-900 px-6 py-4 text-center text-sm text-gray-400">
            Showing top 20 players • Season 2024-25
          </div>
        </motion.div>

        {/* Info Box */}
        <motion.div
          className="mt-8 bg-blue-900/20 border border-blue-800 rounded-lg p-6"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.6 }}
        >
          <h3 className="text-xl font-bold mb-2 text-blue-400">About These Stats</h3>
          <p className="text-gray-300">
            These statistics are calculated from the last 10 games played by each player during the 2024-25 NBA season.
            Rankings are updated based on per-game averages across all statistical categories.
          </p>
        </motion.div>
      </div>
    </div>
  );
}
