import { useState, useEffect } from "react";
import { useParams, Link } from "react-router-dom";
import { motion } from "framer-motion";
import { getPlayerWithStats, getTeams } from "../services/nbaApi";

/**
 * Page de profil détaillé d'un joueur NBA
 * Affiche toutes les informations et statistiques du joueur
 */
export default function PlayerProfile() {
  const { id } = useParams();
  const [player, setPlayer] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [teamId, setTeamId] = useState(null);

  useEffect(() => {
    const fetchPlayerData = async () => {
      try {
        setLoading(true);
        setError(null);
        const playerData = await getPlayerWithStats(id);
        setPlayer(playerData);
        
        // Trouver l'ID de l'équipe du joueur
        const allTeamsData = await getTeams();
        const teamsList = Array.isArray(allTeamsData) ? allTeamsData : allTeamsData?.teams || [];
        const team = teamsList.find(t => t.name === playerData.team_name || t.full_name === playerData.team_name);
        if (team) {
          setTeamId(team.id);
        }
      } catch (err) {
        console.error('Erreur lors du chargement du joueur:', err);
        setError(err.message || 'Impossible de charger les données du joueur');
      } finally {
        setLoading(false);
      }
    };

    fetchPlayerData();
  }, [id]);

  // Calculer les moyennes des statistiques
  const calculateAverage = (stat) => {
    if (!player || !player.lastGames || player.lastGames.length === 0) return 0;
    const sum = player.lastGames.reduce((acc, game) => acc + game[stat], 0);
    return (sum / player.lastGames.length).toFixed(1);
  };

  // Calculer les pourcentages
  const calculatePercentage = (made, attempted) => {
    if (!player || !player.lastGames || player.lastGames.length === 0) return 0;
    const totalMade = player.lastGames.reduce((acc, game) => acc + game[made], 0);
    const totalAttempted = player.lastGames.reduce((acc, game) => acc + game[attempted], 0);
    if (totalAttempted === 0) return 0;
    return ((totalMade / totalAttempted) * 100).toFixed(1);
  };

  // Calculer l'expérience (années depuis birth_date)
  const calculateExperience = (birthDate) => {
    if (!birthDate) return 'N/A';
    const birth = new Date(birthDate);
    const today = new Date();
    const age = today.getFullYear() - birth.getFullYear();
    // Estimation simple: experience ≈ age - 19 (âge moyen draft)
    const experience = Math.max(0, age - 19);
    return experience === 0 ? 'Rookie' : `${experience} Year${experience > 1 ? 's' : ''}`;
  };

  if (loading) {
    return (
      <div className="pt-24 px-4 min-h-screen bg-gradient-to-b from-blue-900 via-blue-700 to-blue-500 flex items-center justify-center">
        <motion.div
          className="text-center"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
        >
          <div className="w-16 h-16 border-4 border-white border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-xl font-semibold text-white">Chargement du profil...</p>
        </motion.div>
      </div>
    );
  }

  if (error || !player) {
    return (
      <div className="pt-24 px-4 min-h-screen bg-gradient-to-b from-blue-900 via-blue-700 to-blue-500 flex items-center justify-center">
        <motion.div
          className="bg-white text-red-600 p-6 rounded-xl shadow-2xl max-w-md"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
        >
          <h2 className="text-2xl font-bold mb-3">Erreur</h2>
          <p className="mb-4">{error || 'Joueur introuvable'}</p>
          <Link
            to="/player"
            className="inline-block mt-4 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
          >
            Retour aux joueurs
          </Link>
        </motion.div>
      </div>
    );
  }

  return (
    <div className="pt-16 min-h-screen bg-gradient-to-b from-blue-900 via-blue-700 to-blue-500">
      {/* Header avec photo et infos principales */}
      <motion.div
        className="relative bg-gradient-to-r from-blue-800 to-blue-600 text-white py-12 px-4"
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
      >
        <div className="container mx-auto max-w-6xl">
          <div className="flex flex-col md:flex-row items-center md:items-start gap-8">
            {/* Photo du joueur */}
            <div className="relative">
              <img
                src={player.photo_url || player.info?.photo}
                alt={player.display_name}
                className="w-64 h-64 object-cover rounded-lg border-4 border-white shadow-2xl"
                onError={(e) => {
                  const name = (player.display_name || player.name).replace(' ', '+');
                  e.target.src = `https://ui-avatars.com/api/?name=${name}&size=256&background=3B82F6&color=fff&bold=true`;
                }}
              />
              {player.team_logo_url && teamId && (
                <Link 
                  to={`/team/${teamId}`}
                  className="absolute -bottom-4 -right-4"
                >
                  <img
                    src={`${process.env.PUBLIC_URL}${player.team_logo_url}`}
                    alt={player.team_name}
                    className="w-20 h-20 bg-white rounded-full p-2 shadow-xl hover:scale-110 transition-transform cursor-pointer"
                    onError={(e) => { e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`; }}
                  />
                </Link>
              )}
            </div>

            {/* Informations principales */}
            <div className="flex-1 text-center md:text-left">
              <div className="text-sm font-semibold mb-2">
                {player.team_name} | #{player.jersey_number || '—'} | {player.position}
              </div>
              <h1 className="text-5xl md:text-6xl font-bold mb-4">
                {player.display_name}
              </h1>

              {/* Stats principales (PPG, RPG, APG) */}
              <div className="flex justify-center md:justify-start gap-8 mt-6">
                <div className="text-center">
                  <div className="text-4xl font-bold">{calculateAverage('PTS')}</div>
                  <div className="text-sm opacity-80">PPG</div>
                </div>
                <div className="text-center">
                  <div className="text-4xl font-bold">{calculateAverage('REB')}</div>
                  <div className="text-sm opacity-80">RPG</div>
                </div>
                <div className="text-center">
                  <div className="text-4xl font-bold">{calculateAverage('AST')}</div>
                  <div className="text-sm opacity-80">APG</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </motion.div>

      {/* Informations détaillées */}
      <div className="container mx-auto max-w-6xl px-4 py-8">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Colonne 1: Informations personnelles */}
          <motion.div
            className="bg-white rounded-xl shadow-lg p-6"
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.2 }}
          >
            <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
              Profil
            </h2>
            <div className="space-y-4">
              <InfoRow label="HEIGHT" value={player.info?.height || `${Math.floor(player.height_cm / 100)}m${(player.height_cm % 100).toString().padStart(2, '0')}`} />
              <InfoRow label="WEIGHT" value={player.info?.weight || `${player.weight_kg} kg`} />
              <InfoRow label="AGE" value={`${player.age || player.info?.age} years`} />
              <InfoRow label="BIRTHDATE" value={new Date(player.birth_date).toLocaleDateString('fr-FR', { year: 'numeric', month: 'long', day: 'numeric' })} />
              <InfoRow label="COUNTRY" value={player.nationality || 'USA'} />
              <InfoRow label="EXPERIENCE" value={calculateExperience(player.birth_date)} />
            </div>
          </motion.div>

          {/* Colonne 2: Statistiques par match */}
          <motion.div
            className="bg-white rounded-xl shadow-lg p-6"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.3 }}
          >
            <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
              Per Game Stats
            </h2>
            <div className="space-y-3">
              <StatRow label="Points" value={calculateAverage('PTS')} />
              <StatRow label="Rebounds" value={calculateAverage('REB')} />
              <StatRow label="Assists" value={calculateAverage('AST')} />
              <StatRow label="Steals" value={calculateAverage('STL')} />
              <StatRow label="Blocks" value={calculateAverage('BLK')} />
              <StatRow label="FG Made" value={calculateAverage('FG')} />
              <StatRow label="FG Attempted" value={calculateAverage('FGA')} />
              <StatRow label="3PT Made" value={calculateAverage('3P')} />
              <StatRow label="3PT Attempted" value={calculateAverage('3PA')} />
              <StatRow label="FT Made" value={calculateAverage('FT')} />
              <StatRow label="FT Attempted" value={calculateAverage('FTA')} />
            </div>
          </motion.div>

          {/* Colonne 3: Pourcentages */}
          <motion.div
            className="bg-white rounded-xl shadow-lg p-6"
            initial={{ opacity: 0, x: 20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.4 }}
          >
            <h2 className="text-2xl font-bold text-blue-900 mb-6 border-b-2 border-blue-200 pb-2">
              Shooting %
            </h2>
            <div className="space-y-6">
              <PercentageBar
                label="Field Goal %"
                percentage={calculatePercentage('FG', 'FGA')}
                color="blue"
              />
              <PercentageBar
                label="3-Point %"
                percentage={calculatePercentage('3P', '3PA')}
                color="green"
              />
              <PercentageBar
                label="Free Throw %"
                percentage={calculatePercentage('FT', 'FTA')}
                color="purple"
              />
            </div>

            {/* Season info */}
            <div className="mt-8 p-4 bg-blue-50 rounded-lg">
              <div className="text-sm text-blue-700 font-semibold mb-2">SEASON TYPE</div>
              <div className="text-lg font-bold text-blue-900">Regular Season 2024-25</div>
              <div className="text-sm text-gray-600 mt-2">
                Based on last {player.lastGames?.length || 10} games
              </div>
            </div>
          </motion.div>
        </div>

        {/* Derniers matchs */}
        {player.lastGames && player.lastGames.length > 0 && (
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
                    <th className="p-3 text-center">PTS</th>
                    <th className="p-3 text-center">REB</th>
                    <th className="p-3 text-center">AST</th>
                    <th className="p-3 text-center">STL</th>
                    <th className="p-3 text-center">BLK</th>
                    <th className="p-3 text-center">FG</th>
                    <th className="p-3 text-center">3P</th>
                    <th className="p-3 text-center">FT</th>
                  </tr>
                </thead>
                <tbody>
                  {player.lastGames.map((game, index) => (
                    <tr key={index} className="border-b hover:bg-gray-50">
                      <td className="p-3 font-semibold text-gray-700">#{index + 1}</td>
                      <td className="p-3 text-center font-bold text-blue-900">{game.PTS}</td>
                      <td className="p-3 text-center">{game.REB}</td>
                      <td className="p-3 text-center">{game.AST}</td>
                      <td className="p-3 text-center">{game.STL}</td>
                      <td className="p-3 text-center">{game.BLK}</td>
                      <td className="p-3 text-center text-sm">{game.FG}/{game.FGA}</td>
                      <td className="p-3 text-center text-sm">{game['3P']}/{game['3PA']}</td>
                      <td className="p-3 text-center text-sm">{game.FT}/{game.FTA}</td>
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
            to="/player"
            className="inline-block px-8 py-3 bg-blue-600 text-white font-semibold rounded-lg shadow-lg hover:bg-blue-700 transition-all duration-300 hover:scale-105"
          >
            ← Back to Players
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
      <span className="text-lg font-bold text-blue-900">{value}</span>
    </div>
  );
}

// Composant pour afficher une barre de pourcentage
function PercentageBar({ label, percentage, color }) {
  const colorClasses = {
    blue: 'bg-blue-500',
    green: 'bg-green-500',
    purple: 'bg-purple-500',
  };

  return (
    <div>
      <div className="flex justify-between items-center mb-2">
        <span className="text-sm font-semibold text-gray-700">{label}</span>
        <span className="text-xl font-bold text-gray-900">{percentage}%</span>
      </div>
      <div className="w-full bg-gray-200 rounded-full h-3">
        <div
          className={`${colorClasses[color]} h-3 rounded-full transition-all duration-500`}
          style={{ width: `${Math.min(100, percentage)}%` }}
        ></div>
      </div>
    </div>
  );
}
