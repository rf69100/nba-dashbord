import { motion } from 'framer-motion';
import InfoRow from '../common/InfoRow';

/**
 * Carte d'informations générales de l'équipe
 */
export default function TeamInfoCard({ team }) {
  return (
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
  );
}
