import { motion } from 'framer-motion';
import TeamLogo from '../teams/TeamLogo';

/**
 * Header de la page de profil d'équipe
 * Affiche le logo, le nom et les stats principales (Wins, Losses, Win%)
 */
export default function TeamHeader({ team }) {
  return (
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
  );
}
