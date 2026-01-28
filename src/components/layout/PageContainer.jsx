import { motion } from "framer-motion";

/**
 * Conteneur de page avec gradient NBA et animations
 * @param {Object} props
 * @param {React.ReactNode} props.children - Contenu de la page
 * @param {string} props.className - Classes CSS additionnelles
 */
export default function PageContainer({ children, className = "" }) {
  return (
    <motion.div
      className={`min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 pt-24 px-4 pb-12 flex flex-col items-center ${className}`}
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 0.6 }}
    >
      {children}
    </motion.div>
  );
}
