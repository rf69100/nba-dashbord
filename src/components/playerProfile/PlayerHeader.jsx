import { motion } from 'framer-motion';
import { Link } from 'react-router-dom';

/**
 * Header du profil joueur avec photo et stats principales
 */
export default function PlayerHeader({ player, teamId }) {
  const calculateAverage = (stat) => {
    if (!player || !player.lastGames || player.lastGames.length === 0) return 0;
    const sum = player.lastGames.reduce((acc, game) => acc + game[stat], 0);
    return (sum / player.lastGames.length).toFixed(1);
  };

  return (
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
            <div className="w-64 h-64 overflow-hidden rounded-lg border-4 border-white shadow-2xl">
              <img
                src={player.photo_url || player.info?.photo}
                alt={player.display_name}
                className="w-full h-full object-cover"
                style={{ 
                  imageRendering: 'auto',
                  WebkitBackfaceVisibility: 'hidden',
                  backfaceVisibility: 'hidden'
                }}
                loading="lazy"
                onError={(e) => {
                  const name = (player.display_name || player.name).replace(' ', '+');
                  e.target.src = `https://ui-avatars.com/api/?name=${name}&size=512&background=3B82F6&color=fff&bold=true`;
                }}
              />
            </div>
            {player.team_logo_url && teamId && (
              <Link to={`/team/${teamId}`} className="absolute -bottom-4 -right-4">
                <img
                  src={player.team_logo_url}
                  alt={player.team_name}
                  className="w-20 h-20 bg-white rounded-full p-1 shadow-xl hover:scale-110 transition-transform cursor-pointer"
                  onError={(e) => {
                    e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`;
                  }}
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
  );
}
