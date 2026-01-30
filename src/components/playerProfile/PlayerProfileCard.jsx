import { motion } from 'framer-motion';
import InfoRow from '../common/InfoRow';

/**
 * Carte des informations personnelles du joueur
 * Note: Affiche uniquement les données réellement disponibles
 */
export default function PlayerProfileCard({ player }) {
  // Formater la taille en mètres si disponible
  const formatHeight = () => {
    if (player.info?.height) return player.info.height;
    if (player.height_cm && player.height_cm !== 195) { // 195 est la valeur par défaut
      return `${Math.floor(player.height_cm / 100)}m${(player.height_cm % 100)
        .toString()
        .padStart(2, '0')}`;
    }
    return null;
  };

  // Formater le poids si disponible  
  const formatWeight = () => {
    if (player.info?.weight) return player.info.weight;
    if (player.weight_kg && player.weight_kg !== 95) { // 95 est la valeur par défaut
      return `${player.weight_kg} kg`;
    }
    return null;
  };

  // Vérifier si la date de naissance est réelle (pas "1990-01-01")
  const hasRealBirthDate = player.birth_date && player.birth_date !== '1990-01-01';

  // Calculer l'expérience si draft_year est disponible
  const formatExperience = () => {
    if (player.draft_year) {
      const currentYear = new Date().getFullYear();
      const years = currentYear - player.draft_year;
      if (years === 0) return 'Rookie';
      return `${years} Year${years > 1 ? 's' : ''}`;
    }
    return null;
  };

  const height = formatHeight();
  const weight = formatWeight();
  const experience = formatExperience();

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
        {height && <InfoRow label="HEIGHT" value={height} />}
        {weight && <InfoRow label="WEIGHT" value={weight} />}
        <InfoRow label="AGE" value={`${player.age || player.info?.age} years`} />
        {hasRealBirthDate && (
          <InfoRow
            label="BIRTHDATE"
            value={new Date(player.birth_date).toLocaleDateString('fr-FR', {
              year: 'numeric',
              month: 'long',
              day: 'numeric',
            })}
          />
        )}
        <InfoRow label="COUNTRY" value={player.nationality || 'USA'} />
        {experience && <InfoRow label="EXPERIENCE" value={experience} />}
        {player.draft_year && (
          <InfoRow label="DRAFT" value={`${player.draft_year}${player.draft_pick ? ` - Pick #${player.draft_pick}` : ''}`} />
        )}
      </div>
    </motion.div>
  );
}
