import { motion } from "framer-motion";

/**
 * Composant d'affichage d'erreur avec bouton de rechargement
 * @param {Object} props
 * @param {string} props.message - Message d'erreur à afficher
 * @param {Function} props.onRetry - Fonction appelée lors du clic sur Réessayer
 */
export default function ErrorMessage({ message = "Une erreur est survenue", onRetry }) {
  return (
    <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 flex items-center justify-center">
      <motion.div
        className="bg-white text-red-600 p-6 rounded-xl shadow-2xl max-w-md"
        initial={{ opacity: 0, scale: 0.9 }}
        animate={{ opacity: 1, scale: 1 }}
      >
        <h2 className="text-2xl font-bold mb-3">Erreur</h2>
        <p className="mb-4">{message}</p>
        {onRetry && (
          <button
            onClick={onRetry}
            className="mt-4 px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors"
          >
            Réessayer
          </button>
        )}
      </motion.div>
    </div>
  );
}
