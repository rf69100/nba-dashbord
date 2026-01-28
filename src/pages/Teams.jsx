import { motion } from "framer-motion";
import { Link } from "react-router-dom";
import { useState, useEffect } from "react";
import TeamLogo from "../components/TeamLogo";
import { getTeamsByDivision } from "../services/nbaApi";

/**
 * Page Teams - Affiche toutes les équipes NBA organisées par division
 */
export default function Teams() {
  const [conferences, setConferences] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTeams = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await getTeamsByDivision();
        setConferences(data);
      } catch (err) {
        console.error('Erreur lors du chargement des équipes:', err);
        setError(err.message || 'Impossible de charger les équipes');
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, []);

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1,
      },
    },
  };

  const divisionVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: {
      opacity: 1,
      y: 0,
      transition: { duration: 0.5 },
    },
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 flex items-center justify-center">
        <motion.div
          className="text-center"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
        >
          <div className="w-16 h-16 border-4 border-white border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-xl font-semibold text-white">Chargement des équipes...</p>
        </motion.div>
      </div>
    );
  }

  if (error || !conferences) {
    return (
      <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 flex items-center justify-center">
        <motion.div
          className="bg-white text-red-600 p-6 rounded-xl shadow-2xl max-w-md"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
        >
          <h2 className="text-2xl font-bold mb-3">Erreur</h2>
          <p className="mb-4">{error || 'Impossible de charger les équipes'}</p>
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
        {/* Titre de la page */}
        <motion.h1
          className="text-4xl sm:text-5xl font-extrabold text-white text-center mb-8 drop-shadow-lg"
          initial={{ y: -30, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ duration: 0.6 }}
        >
          🏀 Équipes NBA
        </motion.h1>

        {/* Contenu principal */}
        <motion.main
          variants={containerVariants}
          initial="hidden"
          animate="visible"
          className="w-full"
        >
            <div className="bg-white/95 backdrop-blur-sm rounded-2xl shadow-2xl p-6 sm:p-8">
              {/* Conférence Est */}
              <div className="mb-12">
                <h2 className="text-3xl font-bold text-gray-800 mb-6 pb-3 border-b-4 border-red-500">
                  Eastern Conference
                </h2>
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8">
                  {Object.entries(conferences.Eastern).map(([division, teams]) => (
                    <motion.div 
                      key={division} 
                      variants={divisionVariants}
                      className="bg-gradient-to-br from-orange-50 to-yellow-50 rounded-xl p-5 shadow-lg hover:shadow-xl transition-shadow"
                    >
                      <h3 className="text-xl font-bold text-red-600 mb-4 pb-2 border-b-2 border-orange-300">
                        {division}
                      </h3>
                      <div className="space-y-2">
                        {teams.map((team) => (
                          <Link
                            key={team.id}
                            to={`/team/${team.id}`}
                            className="flex items-center gap-3 p-3 rounded-lg bg-white hover:bg-orange-50 transition-all duration-200 hover:scale-105 hover:shadow-md group"
                          >
                            <div className="w-10 h-10 flex-shrink-0">
                              <TeamLogo teamId={team.id} teamName={team.name} />
                            </div>
                            <span className="text-gray-800 font-medium group-hover:text-red-600 transition">
                              {team.name}
                            </span>
                          </Link>
                        ))}
                      </div>
                    </motion.div>
                  ))}
                </div>
              </div>

              {/* Conférence Ouest */}
              <div>
                <h2 className="text-3xl font-bold text-gray-800 mb-6 pb-3 border-b-4 border-red-500">
                  Western Conference
                </h2>
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8">
                  {Object.entries(conferences.Western).map(([division, teams]) => (
                    <motion.div 
                      key={division} 
                      variants={divisionVariants}
                      className="bg-gradient-to-br from-orange-50 to-yellow-50 rounded-xl p-5 shadow-lg hover:shadow-xl transition-shadow"
                    >
                      <h3 className="text-xl font-bold text-red-600 mb-4 pb-2 border-b-2 border-orange-300">
                        {division}
                      </h3>
                      <div className="space-y-2">
                        {teams.map((team) => (
                          <Link
                            key={team.id}
                            to={`/team/${team.id}`}
                            className="flex items-center gap-3 p-3 rounded-lg bg-white hover:bg-orange-50 transition-all duration-200 hover:scale-105 hover:shadow-md group"
                          >
                            <div className="w-10 h-10 flex-shrink-0">
                              <TeamLogo teamId={team.id} teamName={team.name} />
                            </div>
                            <span className="text-gray-800 font-medium group-hover:text-red-600 transition">
                              {team.name}
                            </span>
                          </Link>
                        ))}
                      </div>
                    </motion.div>
                  ))}
                </div>
              </div>
            </div>
          </motion.main>
      </div>
    </div>
  );
}
