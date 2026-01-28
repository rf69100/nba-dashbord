import { motion } from "framer-motion";

/**
 * Composant de chargement pleine page avec message personnalisé
 * @param {Object} props
 * @param {string} props.message - Message à afficher pendant le chargement
 */
export default function PageLoader({ message = "Chargement..." }) {
  return (
    <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 flex items-center justify-center">
      <motion.div
        className="text-center"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
      >
        <div className="w-16 h-16 border-4 border-white border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
        <p className="text-xl font-semibold text-white">{message}</p>
      </motion.div>
    </div>
  );
}
