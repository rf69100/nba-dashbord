import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import TeamRankingTable from "../components/TeamRankingTable";
import LoadingSpinner from "../components/LoadingSpinner";
import { getStandings } from "../services/nbaApi";

const CONFERENCES = [
  { label: "All Conferences", value: "All" },
  { label: "Eastern Conference", value: "East" },
  { label: "Western Conference", value: "West" },
];

export default function Teams() {
  const [conference, setConference] = useState("All");
  const [teams, setTeams] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTeams = async () => {
      try {
        setLoading(true);
        const filters = conference === "All" ? {} : { conference };
        const data = await getStandings(filters);
        
        const teamsWithRank = data.map((team, index) => ({
          ...team,
          rank: index + 1,
          percentage: team.win_percentage
        }));

        setTeams(teamsWithRank);
      } catch (err) {
        setError(err.message || 'Failed to load teams');
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, [conference]);

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
        <motion.div className="card text-center border-red-500 bg-red-50">
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

  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 0.6 }}
      className="pt-20 pb-16 px-4 min-h-screen bg-white"
    >
      <div className="max-w-6xl mx-auto">
        {/* Header */}
        <motion.div
          initial={{ y: -30, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ duration: 0.8 }}
          className="text-center mb-12"
        >
          <h1 className="text-5xl font-black nba-gradient-text mb-4">NBA STANDINGS</h1>
          <p className="text-gray-600 text-lg">Season 2025-2026 • Real-time Standings</p>
        </motion.div>

        {/* Conference Filters */}
        <motion.div
          initial={{ y: 20, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ delay: 0.2 }}
          className="flex justify-center gap-3 mb-12 flex-wrap"
        >
          {CONFERENCES.map((conf) => (
            <motion.button
              key={conf.value}
              onClick={() => setConference(conf.value)}
              whileHover={{ scale: 1.05 }}
              whileTap={{ scale: 0.95 }}
              className={`px-5 py-2 rounded-lg font-semibold transition-all text-sm ${
                conference === conf.value
                  ? "bg-red-600 text-white shadow-lg shadow-red-600/30"
                  : "bg-gray-100 text-gray-700 hover:bg-gray-200 border border-gray-300"
              }`}
            >
              {conf.label}
            </motion.button>
          ))}
        </motion.div>

        {/* Table */}
        <motion.div
          initial={{ y: 30, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ delay: 0.4 }}
        >
          <TeamRankingTable teams={teams} />
        </motion.div>
      </div>
    </motion.div>
  );
}