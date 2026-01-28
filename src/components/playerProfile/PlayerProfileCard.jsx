import { motion } from 'framer-motion';
import InfoRow from '../common/InfoRow';
import { calculateExperience } from '../../utils/players/playerStats';

/**
 * Carte des informations personnelles du joueur
 */
export default function PlayerProfileCard({ player }) {
  return (
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
        <InfoRow
          label="HEIGHT"
          value={
            player.info?.height ||
            `${Math.floor(player.height_cm / 100)}m${(player.height_cm % 100)
              .toString()
              .padStart(2, '0')}`
          }
        />
        <InfoRow label="WEIGHT" value={player.info?.weight || `${player.weight_kg} kg`} />
        <InfoRow label="AGE" value={`${player.age || player.info?.age} years`} />
        <InfoRow
          label="BIRTHDATE"
          value={new Date(player.birth_date).toLocaleDateString('fr-FR', {
            year: 'numeric',
            month: 'long',
            day: 'numeric',
          })}
        />
        <InfoRow label="COUNTRY" value={player.nationality || 'USA'} />
        <InfoRow label="EXPERIENCE" value={calculateExperience(player.birth_date)} />
      </div>
    </motion.div>
  );
}
