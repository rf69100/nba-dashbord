import { motion } from 'framer-motion';
import { Link } from 'react-router-dom';

/**
 * Section affichant le roster complet de l'équipe
 */
export default function TeamRoster({ roster }) {
  if (!roster || roster.length === 0) {
    return null;
  }

  return (
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
        {roster.map((player, index) => (
          <Link
            key={index}
            to={`/player/${player.id}`}
            className="flex items-center gap-3 p-4 rounded-lg bg-gradient-to-br from-orange-50 to-yellow-50 hover:from-orange-100 hover:to-yellow-100 transition-all duration-200 hover:scale-105 hover:shadow-md group"
          >
            <div className="flex-shrink-0">
              <img
                src={player.photo_url || player.photo}
                alt={player.name}
                className="w-12 h-12 rounded-full object-cover border-2 border-red-300 shadow-md"
                onError={(e) => {
                  const name = player.name.replace(' ', '+');
                  e.target.src = `https://ui-avatars.com/api/?name=${name}&size=48&background=dc2626&color=fff&bold=true`;
                }}
              />
            </div>
            <div className="flex-1 min-w-0">
              <div className="font-bold text-gray-900 truncate group-hover:text-red-600 transition">
                {player.name}
              </div>
              <div className="text-sm text-gray-600">
                {player.position} {player.jersey_number ? `• #${player.jersey_number}` : ''}
              </div>
            </div>
          </Link>
        ))}
      </div>
    </motion.div>
  );
}
