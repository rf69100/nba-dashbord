import { motion } from "framer-motion";

/**
 * Composant pour la section d'information sur les statistiques
 */
export default function StatsInfoBox() {
  return (
    <motion.div
      className="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-lg sm:rounded-xl p-3 sm:p-4 shadow-md border-l-4 border-blue-600"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.6 }}
    >
      <div className="flex items-start gap-2 sm:gap-3">
        <span className="text-xl sm:text-2xl flex-shrink-0">ℹ️</span>
        <div className="min-w-0">
          <h3 className="font-bold text-gray-800 mb-1 sm:mb-2 text-sm sm:text-base">À propos</h3>
          <p className="text-gray-700 text-xs sm:text-sm leading-relaxed">
            Statistiques basées sur l&apos;ensemble de la saison NBA 2024-2025.
          </p>
        </div>
      </div>
    </motion.div>
  );
}
