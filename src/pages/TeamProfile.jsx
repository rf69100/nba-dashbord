import { useState, useEffect } from "react";
import { useParams, Link } from "react-router-dom";
import { motion } from "framer-motion";
import { getTeamWithStats } from "../services/nbaApi";
import TeamLogo from "../components/TeamLogo";

/**
 * Page de profil détaillé d'une équipe NBA
 * Affiche toutes les informations et statistiques de l'équipe
 */
export default function TeamProfile() {
  const { id } = useParams();
  const [team, setTeam] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTeamData = async () => {
      try {
        setLoading(true);
        setError(null);
        const teamData = await getTeamWithStats(id);
        setTeam(teamData);
      } catch (err) {
        console.error('Erreur lors du chargement de l\'équipe:', err);
        setError(err.message || 'Impossible de charger les données de l\'équipe');
      } finally {
        setLoading(false);
      }
    };

    fetchTeamData();
  }, [id]);

  if (loading) {
    return (
      <div className="pt-24 px-4 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 flex items-center justify-center">
        <motion.div
          className="text-center"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
        >
          <div className="w-16 h-16 border-4 border-white border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-xl font-semibold text-white">Chargement de l'équipe...</p>
        </motion.div>
      </div>
    );
  }

  if (error || !team) {
    return (
      <div className="pt-24 px-4 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 flex items-center justify-center">
        <motion.div
          className="bg-white text-red-600 p-6 rounded-xl shadow-2xl max-w-md"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
        >
          <h2 className="text-2xl font-bold mb-3">Erreur</h2>
          <p className="mb-4">{error || 'Équipe introuvable'}</p>
          <Link
            to="/teams"
            className="inline-block mt-4 px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors"
          >
            Retour aux équipes
          </Link>
        </motion.div>
      </div>
    );
  }

  return (
    <div className="pt-16 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300">
      {/* Header avec logo et infos principales */}
      <motion.div
        className="relative bg-gradient-to-r from-red-700 to-orange-600 text-white py-12 px-4"
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
      >
        <div className="container mx-auto max-w-6xl">
          <div className="flex flex-col md:flex-row items-center md:items-start gap-8">
            {/* Logo de l'équipe */}
            <div className="relative bg-white rounded-2xl p-8 shadow-2xl">
              <TeamLogo 
                teamId={team.id} 
                teamName={team.full_name} 
                className="w-48 h-48 object-contain"
              />
            </div>

            {/* Informations principales */}
            <div className="flex-1 text-center md:text-left">
              <div className="text-sm font-semibold mb-2">
                {team.conference} Conference | {team.division} Division
              </div>
              <h1 className="text-5xl md:text-6xl font-bold mb-4">
                {team.full_name}
              </h1>
              <div className="text-xl opacity-90 mb-6">
                {team.city}
              </div>

              {/* Stats principales (Wins, Losses, Win%) */}
              <div className="flex justify-center md:justify-start gap-8 mt-6">
                <div className="text-center">
                  <div className="text-4xl font-bold">{team.wins || 0}</div>
                  <div className="text-sm opacity-80">WINS</div>
                </div>
                <div className="text-center">
                  <div className="text-4xl font-bold">{team.losses || 0}</div>
                  <div className="text-sm opacity-80">LOSSES</div>
                </div>
                <div className="text-center">
                  <div className="text-4xl font-bold">
                    {team.win_percentage ? `${(team.win_percentage * 100).toFixed(1)}%` : '—'}
                  </div>
                  <div className="text-sm opacity-80">WIN %</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </motion.div>

      {/* Informations détaillées */}
      <div className="container mx-auto max-w-6xl px-4 py-8">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Colonne 1: Informations générales */}
          <motion.div
            className="bg-white/95 backdrop-blur-sm rounded-xl shadow-lg p-6"
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.2 }}
          >
            <h2 className="text-2xl font-bold text-red-700 mb-6 border-b-2 border-red-200 pb-2">
              Team Info
            </h2>
            <div className="space-y-4">
              <InfoRow label="ABBREVIATION" value={team.abbreviation} />
              <InfoRow label="CONFERENCE" value={team.conference} />
              <InfoRow label="DIVISION" value={team.division} />
              <InfoRow label="CITY" value={team.city} />
              <InfoRow label="NAME" value={team.name} />
            </div>
          </motion.div>

          {/* Colonne 2: Statistiques offensives */}
          <motion.div
            className="bg-white/95 backdrop-blur-sm rounded-xl shadow-lg p-6"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.3 }}
          >
            <h2 className="text-2xl font-bold text-red-700 mb-6 border-b-2 border-red-200 pb-2">
              Offensive Stats
            </h2>
            <div className="space-y-3">
              <StatRow label="Points Per Game" value={team.stats?.ppg || '—'} />
              <StatRow label="Field Goals Made" value={team.stats?.fgm || '—'} />
              <StatRow label="Field Goals Attempted" value={team.stats?.fga || '—'} />
              <StatRow label="FG Percentage" value={team.stats?.fg_pct ? `${(team.stats.fg_pct * 100).toFixed(1)}%` : '—'} />
              <StatRow label="3-Pointers Made" value={team.stats?.tpm || '—'} />
              <StatRow label="3-Pointers Attempted" value={team.stats?.tpa || '—'} />
              <StatRow label="3P Percentage" value={team.stats?.tp_pct ? `${(team.stats.tp_pct * 100).toFixed(1)}%` : '—'} />
              <StatRow label="Free Throws Made" value={team.stats?.ftm || '—'} />
              <StatRow label="Free Throws Attempted" value={team.stats?.fta || '—'} />
              <StatRow label="FT Percentage" value={team.stats?.ft_pct ? `${(team.stats.ft_pct * 100).toFixed(1)}%` : '—'} />
            </div>
          </motion.div>

          {/* Colonne 3: Statistiques défensives et autres */}
          <motion.div
            className="bg-white/95 backdrop-blur-sm rounded-xl shadow-lg p-6"
            initial={{ opacity: 0, x: 20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.4 }}
          >
            <h2 className="text-2xl font-bold text-red-700 mb-6 border-b-2 border-red-200 pb-2">
              Other Stats
            </h2>
            <div className="space-y-3">
              <StatRow label="Rebounds Per Game" value={team.stats?.rpg || '—'} />
              <StatRow label="Assists Per Game" value={team.stats?.apg || '—'} />
              <StatRow label="Steals Per Game" value={team.stats?.spg || '—'} />
              <StatRow label="Blocks Per Game" value={team.stats?.bpg || '—'} />
              <StatRow label="Turnovers Per Game" value={team.stats?.tpg || '—'} />
            </div>

            {/* Season info */}
            <div className="mt-8 p-4 bg-orange-50 rounded-lg">
              <div className="text-sm text-orange-700 font-semibold mb-2">SEASON</div>
              <div className="text-lg font-bold text-orange-900">2024-25 Regular Season</div>
              <div className="text-sm text-gray-600 mt-2">
                Record: {team.wins || 0}-{team.losses || 0}
              </div>
            </div>
          </motion.div>
        </div>

        {/* Section roster (si disponible) */}
        {team.roster && team.roster.length > 0 && (
          <motion.div
            className="bg-white/95 backdrop-blur-sm rounded-xl shadow-lg p-6 mt-6"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.5 }}
          >
            <h2 className="text-2xl font-bold text-red-700 mb-6 border-b-2 border-red-200 pb-2">
              Team Roster
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
              {team.roster.map((player, index) => (
                <Link
                  key={index}
                  to={`/player/${player.id}`}
                  className="flex items-center gap-3 p-4 rounded-lg bg-gradient-to-br from-orange-50 to-yellow-50 hover:from-orange-100 hover:to-yellow-100 transition-all duration-200 hover:scale-105 hover:shadow-md group"
                >
                  <div className="flex-shrink-0">
                    <div className="w-12 h-12 bg-red-600 text-white rounded-full flex items-center justify-center font-bold text-lg">
                      #{player.jersey_number || '—'}
                    </div>
                  </div>
                  <div className="flex-1 min-w-0">
                    <div className="font-bold text-gray-900 truncate group-hover:text-red-600 transition">
                      {player.name}
                    </div>
                    <div className="text-sm text-gray-600">{player.position}</div>
                  </div>
                </Link>
              ))}
            </div>
          </motion.div>
        )}

        {/* Derniers matchs (si disponible) */}
        {team.lastGames && team.lastGames.length > 0 && (
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
                  {team.lastGames.map((game, index) => (
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
        )}

        {/* Bouton retour */}
        <div className="mt-8 text-center">
          <Link
            to="/teams"
            className="inline-block px-8 py-3 bg-red-600 text-white font-semibold rounded-lg shadow-lg hover:bg-red-700 transition-all duration-300 hover:scale-105"
          >
            ← Retour aux équipes
          </Link>
        </div>
      </div>
    </div>
  );
}

// Composant pour afficher une ligne d'information
function InfoRow({ label, value }) {
  return (
    <div className="flex justify-between items-center py-2 border-b border-gray-100">
      <span className="text-sm font-semibold text-gray-600">{label}</span>
      <span className="text-base font-bold text-gray-900">{value}</span>
    </div>
  );
}

// Composant pour afficher une statistique
function StatRow({ label, value }) {
  return (
    <div className="flex justify-between items-center py-2">
      <span className="text-sm text-gray-600">{label}</span>
      <span className="text-lg font-bold text-red-700">{value}</span>
    </div>
  );
}
