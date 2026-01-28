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
  const [filterTeam, setFilterTeam] = useState("");
  const [filterPosition, setFilterPosition] = useState("");
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [openTeamDropdown, setOpenTeamDropdown] = useState(false);

  // Positions disponibles
  const POSITIONS = ["Center", "Forward", "Guard"];

  // Extraire les équipes uniques
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

  const uniqueTeams = [...new Set(players.map(p => p.team_name))].sort();

  const normalizedSearch = searchTerm.trim().toLowerCase();
  const filteredPlayers = players.filter((player) => {
    // Filtre par recherche
    if (normalizedSearch) {
      const name = player.display_name?.toLowerCase() || "";
      const team = player.team_name?.toLowerCase() || "";
      const position = player.position?.toLowerCase() || "";
      const matchSearch = (
        name.includes(normalizedSearch) ||
        team.includes(normalizedSearch) ||
        position.includes(normalizedSearch)
      );
      if (!matchSearch) return false;
    }

    // Filtre par équipe
    if (filterTeam && player.team_name !== filterTeam) {
      return false;
    }

    // Filtre par position
    if (filterPosition) {
      // Vérifier si le poste du joueur contient la position filtrée
      const playerPositionLower = player.position?.toLowerCase() || "";
      const filterPositionLower = filterPosition.toLowerCase();
      if (!playerPositionLower.includes(filterPositionLower)) {
        return false;
      }
    }

    return true;
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

          {/* Filtre par équipe */}
          <div className="mb-6 relative">
            <label className="block text-xs font-semibold text-gray-700 mb-2">
              Filtrer par équipe
            </label>
            <div className="relative">
              <button
                onClick={() => setOpenTeamDropdown(!openTeamDropdown)}
                className="w-full rounded-lg border border-gray-300 px-3 py-1.5 text-sm text-gray-900 focus:outline-none focus:ring-2 focus:ring-red-400 bg-white text-left flex justify-between items-center"
              >
                <span>{filterTeam || "Toutes les équipes"}</span>
                <span className={`transition-transform ${openTeamDropdown ? "rotate-180" : ""}`}>
                  ▼
                </span>
              </button>
              
              {openTeamDropdown && (
                <div className="absolute top-full left-0 right-0 mt-1 bg-white border border-gray-300 rounded-lg shadow-lg z-50 max-h-56 overflow-y-auto">
                  <div
                    className="px-3 py-1.5 text-sm text-gray-900 hover:bg-red-50 cursor-pointer"
                    onClick={() => {
                      setFilterTeam("");
                      setOpenTeamDropdown(false);
                    }}
                  >
                    Toutes les équipes
                  </div>
                  {uniqueTeams.map((team) => (
                    <div
                      key={team}
                      className="px-3 py-1.5 text-sm text-gray-900 hover:bg-red-50 cursor-pointer"
                      onClick={() => {
                        setFilterTeam(team);
                        setOpenTeamDropdown(false);
                      }}
                    >
                      {team}
                    </div>
                  ))}
                </div>
              )}
            </div>
          </div>

          {/* Filtre par position */}
          <div className="mb-6">
            <label className="block text-xs font-semibold text-gray-700 mb-2">
              Filtrer par poste
            </label>
            <div className="flex gap-2">
              <button
                onClick={() => setFilterPosition("")}
                className={`px-4 py-1.5 rounded-lg text-sm font-semibold transition-all ${
                  filterPosition === ""
                    ? "bg-red-600 text-white"
                    : "bg-gray-200 text-gray-900 hover:bg-gray-300"
                }`}
              >
                Tous
              </button>
              {POSITIONS.map((position) => (
                <button
                  key={position}
                  onClick={() => setFilterPosition(position)}
                  className={`px-4 py-1.5 rounded-lg text-sm font-semibold transition-all ${
                    filterPosition === position
                      ? "bg-red-600 text-white"
                      : "bg-gray-200 text-gray-900 hover:bg-gray-300"
                  }`}
                >
                  {position}
                </button>
              ))}
            </div>
          </div>

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
