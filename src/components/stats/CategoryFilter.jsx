import { motion } from "framer-motion";

/**
 * Composant pour filtrer les statistiques par catégorie
 * @param {Array} categories - Liste des catégories disponibles
 * @param {string} selectedCategory - Catégorie actuellement sélectionnée
 * @param {Function} onSelectCategory - Callback quand une catégorie est sélectionnée
 */
export default function CategoryFilter({ categories, selectedCategory, onSelectCategory }) {
  const buttonVariants = {
    hover: { scale: 1.05 },
    tap: { scale: 0.95 },
  };

  return (
    <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-2 sm:gap-3">
      {categories.map((cat, index) => (
        <motion.button
          key={cat.key}
          onClick={() => onSelectCategory(cat.key)}
          variants={buttonVariants}
          whileHover="hover"
          whileTap="tap"
          initial={{ opacity: 0, y: 10 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: index * 0.05 }}
          className={`px-2 sm:px-3 py-2 rounded-lg font-bold text-xs sm:text-sm transition-all duration-200 ${
            selectedCategory === cat.key
              ? "bg-blue-600 text-white shadow-lg shadow-blue-500/50"
              : "bg-gray-100 text-gray-800 hover:bg-gray-200 shadow-md"
          }`}
        >
          {cat.label}
        </motion.button>
      ))}
    </div>
  );
}
