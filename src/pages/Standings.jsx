// Importation des modules nécessaires
import React, { useState, useEffect } from "react"; // React et hooks d'état et d'effet
import { Link } from "react-router-dom";
import { motion } from "framer-motion"; // Pour les animations
import TeamStandingsTable from "../components/TeamStandingsTable"; // Tableau de classement
import { getStandings } from "../services/nbaApi"; // Service API pour récupérer les standings

const Standings = () => {
  // États pour gérer la conférence sélectionnée, les données, le chargement et les erreurs
  const [conference, setConference] = useState("All");
  const [teams, setTeams] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Charger les données depuis l'API au montage du composant et quand la conférence change
  useEffect(() => {
    const fetchTeams = async () => {
      try {
        setLoading(true);
        setError(null);

        // Appel à l'API avec filtre de conférence (si différent de "All")
        const filters = conference === "All" ? {} : { conference };
        const data = await getStandings(filters);

        // L'API retourne déjà les données triées par wins (DESC)
        // On ajoute juste le rang
        const teamsWithRank = data.map((team, index) => ({
          ...team,
          rank: index + 1,
          percentage: team.win_percentage // L'API calcule déjà le pourcentage
        }));

        setTeams(teamsWithRank);
      } catch (err) {
        console.error('Erreur lors du chargement des équipes:', err);
        setError(err.message || 'Impossible de charger les données');
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, [conference]); // Recharger quand la conférence change

  // Affichage pendant le chargement
  if (loading) {
    return (
      <div className="pt-24 px-4 sm:px-5 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center justify-center">
        <motion.div
          className="text-center"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 0.5 }}
        >
          <div className="w-16 h-16 border-4 border-white border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-xl font-semibold">Chargement des équipes...</p>
        </motion.div>
      </div>
    );
  }

  // Affichage en cas d'erreur
  if (error) {
    return (
      <div className="pt-24 px-4 sm:px-5 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center justify-center">
        <motion.div
          className="bg-white text-red-600 p-6 rounded-xl shadow-2xl max-w-md"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ duration: 0.5 }}
        >
          <h2 className="text-2xl font-bold mb-3">Erreur</h2>
          <p className="mb-4">{error}</p>
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

  const filteredTeams = teams;

  return (
    <div className="pt-24 px-4 sm:px-5 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center">
      
      {/* Titre animé */}
      <motion.h1
        className="text-3xl sm:text-4xl md:text-5xl font-extrabold mb-6 sm:mb-8 drop-shadow-lg text-center"
        initial={{ y: -30, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 1 }}
      >
        Classement des équipes 🏀
      </motion.h1>

      {/* Boutons de filtre */}
      <div className="flex flex-wrap justify-center gap-3 sm:gap-4 mb-6 sm:mb-10">
        {["All", "East", "West"].map(conf => (
          <motion.button
            key={conf}
            onClick={() => setConference(conf)}
            whileHover={{ scale: 1.05 }}
            whileTap={{ scale: 0.95 }}
            className={`px-4 py-2 text-sm sm:text-base sm:px-5 rounded-full font-bold shadow-lg transition-colors ${
              conference === conf
                ? "bg-blue-600 text-white"
                : "bg-white text-gray-900 hover:bg-gray-200"
            }`}
          >
            {conf === "All" ? "Toutes" : conf === "East" ? "Est" : "Ouest"}
          </motion.button>
        ))}
      </div>

      {/* Tableau avec conteneur responsive */}
      <motion.div
        className="w-full max-w-4xl bg-white text-gray-900 rounded-xl sm:rounded-2xl shadow-2xl p-3 sm:p-6 overflow-x-auto"
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.8 }}
      >
        {/* Version mobile simplifiée */}
        <div className="block sm:hidden">
          {filteredTeams.map((team, index) => (
            <Link
              key={team.id}
              to={`/team/${team.id}`}
              className="block"
              aria-label={`Voir le profil de ${team.name}`}
            >
              <motion.div
                whileHover={{ scale: 1.02 }}
                className={`mb-3 p-4 rounded-xl border border-gray-200 cursor-pointer transition-colors ${
                  index % 2 === 0 ? "bg-white" : "bg-gray-50"
                }`}
              >
                {/* Informations principales de l'équipe */}
                <div className="flex items-center space-x-3">
                  <span className="text-lg font-bold text-gray-700">#{team.rank}</span>
                  <img
                    src={`${process.env.PUBLIC_URL}${team.logo_url}`}
                    alt={team.name}
                    className="w-10 h-10 object-contain"
                    onError={(e) => {
                      e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`;
                    }}
                  />
                  <span className="font-bold text-gray-900 text-sm">{team.name}</span>
                </div>
                {/* Statistiques de l'équipe */}
                <div className="flex justify-between items-center mt-2">
                  <div className="text-center">
                    <div className="text-xs text-gray-600">Victoires</div>
                    <div className="font-semibold text-green-600">{team.wins}</div>
                  </div>
                  <div className="text-center">
                    <div className="text-xs text-gray-600">Défaites</div>
                    <div className="font-semibold text-red-600">{team.losses}</div>
                  </div>
                  <div className="text-center">
                    <div className="text-xs text-gray-600">%</div>
                    <div className="font-semibold text-blue-600">{team.percentage}%</div>
                  </div>
                </div>
              </motion.div>
            </Link>
          ))}
        </div>

        {/* Version desktop - tableau complet */}
        <div className="hidden sm:block">
          <TeamStandingsTable teams={filteredTeams} />
        </div>
      </motion.div>

      {/* Légende */}
      <motion.p
        className="mt-6 text-white/80 italic text-center max-w-md text-sm sm:text-base"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 1, duration: 1 }}
      >
        Classement basé sur la saison NBA 2025-2026.
      </motion.p>
    </div>
  );
};

export default Standings;
