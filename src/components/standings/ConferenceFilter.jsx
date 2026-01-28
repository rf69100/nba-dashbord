import { motion } from "framer-motion";

/**
 * Composant pour filtrer par conférence (All, East, West)
 * @param {Array} conferences - Liste des conférences disponibles
 * @param {string} selectedConference - Conférence actuellement sélectionnée
 * @param {Function} onSelectConference - Callback quand une conférence est sélectionnée
 */
export default function ConferenceFilter({ conferences, selectedConference, onSelectConference }) {
  const getLabel = (conf) => {
    if (conf === "All") return "Toutes";
    if (conf === "East") return "Est";
    if (conf === "West") return "Ouest";
    return conf;
  };

  return (
    <div className="flex flex-wrap justify-center gap-3 sm:gap-4 mb-6 sm:mb-10">
      {conferences.map((conf) => (
        <motion.button
          key={conf}
          onClick={() => onSelectConference(conf)}
          whileHover={{ scale: 1.05 }}
          whileTap={{ scale: 0.95 }}
          className={`px-4 py-2 text-sm sm:text-base sm:px-5 rounded-full font-bold shadow-lg transition-colors ${
            selectedConference === conf
              ? "bg-blue-600 text-white"
              : "bg-white text-gray-900 hover:bg-gray-200"
          }`}
        >
          {getLabel(conf)}
        </motion.button>
      ))}
    </div>
  );
}
