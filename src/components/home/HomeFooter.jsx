import { motion } from 'framer-motion';

/**
 * Footer de la page d'accueil
 */
export default function HomeFooter() {
  return (
    <motion.div
      className="px-4 sm:px-6 lg:px-8 py-8 text-center border-t border-white/20"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ delay: 1.5, duration: 0.8 }}
    >
      <p className="text-white/80 text-sm sm:text-base mb-2">
        NBA Dashboard - Saison 2025-2026
      </p>
      <p className="text-white/70 text-xs sm:text-sm">
        Statistiques mises à jour en temps réel pour vivre l'expérience du vrai
        terrain !
      </p>
    </motion.div>
  );
}
