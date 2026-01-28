import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { Link } from "react-router-dom";
import { getPlayers } from "../services/nbaApi";
import SearchBar from "../components/SearchBar";

/**
 * Page joueurs - Recherche et accès aux profils
 */
export default function Player() {
  const [players, setPlayers] = useState([]);
  const [searchTerm, setSearchTerm] = useState("");
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchPlayers = async () => {
      try {
        setLoading(true);
        setError(null);
        const response = await getPlayers();
        setPlayers(response.players || []);
      } catch (err) {
        console.error("Erreur lors du chargement des joueurs:", err);
        setError(err.message || "Impossible de charger les joueurs");
      } finally {
        setLoading(false);
      }
    };

    fetchPlayers();
  }, []);

  const normalizedSearch = searchTerm.trim().toLowerCase();
  const filteredPlayers = players.filter((player) => {
    if (!normalizedSearch) return true;
    const name = player.display_name?.toLowerCase() || "";
    const team = player.team_name?.toLowerCase() || "";
    const position = player.position?.toLowerCase() || "";
    return (
      name.includes(normalizedSearch) ||
      team.includes(normalizedSearch) ||
      position.includes(normalizedSearch)
    );
  });

  if (loading) {
    return (
      <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 flex items-center justify-center">
        <motion.div
          className="text-center"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
        >
          <div className="w-16 h-16 border-4 border-white border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-xl font-semibold text-white">Chargement des joueurs...</p>
        </motion.div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 flex items-center justify-center">
        <motion.div
          className="bg-white text-red-600 p-6 rounded-xl shadow-2xl max-w-md"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
        >
          <h2 className="text-2xl font-bold mb-3">Erreur</h2>
          <p className="mb-4">{error || "Impossible de charger les joueurs"}</p>
          <button
            onClick={() => window.location.reload()}
            className="mt-4 px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors"
          >
            Réessayer
          </button>
        </motion.div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 pb-8">
      <div className="max-w-7xl mx-auto">
        <motion.h1
          className="text-4xl sm:text-5xl font-extrabold text-white text-center mb-8 drop-shadow-lg"
          initial={{ y: -30, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ duration: 0.6 }}
        >
          🏀 Joueurs NBA
        </motion.h1>

        <div className="bg-white/95 backdrop-blur-sm rounded-2xl shadow-2xl p-6 sm:p-8">
          <SearchBar
            value={searchTerm}
            onChange={setSearchTerm}
            placeholder="Nom, équipe ou position..."
            label="Rechercher un joueur"
          />

          {filteredPlayers.length === 0 ? (
            <div className="text-center py-12 text-gray-600">
              Aucun joueur trouvé pour cette recherche.
            </div>
          ) : (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
              {filteredPlayers.map((player) => (
                <Link
                  key={player.id}
                  to={`/player/${player.id}`}
                  className="flex items-center gap-4 p-4 rounded-xl bg-gradient-to-br from-orange-50 to-yellow-50 shadow-lg hover:shadow-xl transition-all duration-200 hover:scale-[1.02]"
                >
                  <img
                    src={player.photo_url || player.info?.photo}
                    alt={player.display_name}
                    className="w-16 h-16 rounded-full object-cover border-2 border-white shadow"
                    onError={(e) => {
                      const name = (player.display_name || player.name || "NBA").replace(" ", "+");
                      e.target.src = `https://ui-avatars.com/api/?name=${name}&size=64&background=F97316&color=fff&bold=true`;
                    }}
                  />
                  <div className="flex-1">
                    <div className="font-bold text-gray-900">
                      {player.display_name}
                    </div>
                    <div className="text-sm text-gray-600">
                      {player.team_name} • {player.position}
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
