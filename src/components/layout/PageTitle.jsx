import { motion } from "framer-motion";

/**
 * Titre de page avec animation
 * @param {Object} props
 * @param {string} props.children - Texte du titre
 * @param {string} props.className - Classes CSS additionnelles
 */
export default function PageTitle({ children, className = "" }) {
  return (
    <motion.h1
      className={`text-4xl sm:text-5xl font-extrabold text-white text-center mb-8 drop-shadow-lg ${className}`}
      initial={{ y: -30, opacity: 0 }}
      animate={{ y: 0, opacity: 1 }}
      transition={{ duration: 0.6 }}
    >
      {children}
    </motion.h1>
  );
}
