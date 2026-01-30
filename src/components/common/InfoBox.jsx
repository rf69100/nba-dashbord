import { motion } from "framer-motion";

/**
 * Composant InfoBox réutilisable pour afficher des informations
 * @param {string} title - Titre de la box
 * @param {string} children - Contenu de la box
 * @param {string} variant - Variante de couleur: 'blue' | 'orange' | 'green' | 'purple' | 'gray'
 * @param {string} icon - Icône SVG à afficher (optionnel)
 */
export default function InfoBox({ 
  title, 
  children, 
  variant = 'blue',
  icon,
  className = ''
}) {
  const variants = {
    blue: {
      bg: 'from-blue-50 to-indigo-50',
      border: 'border-blue-600',
      iconBg: 'bg-blue-600',
    },
    orange: {
      bg: 'from-orange-50 to-amber-50',
      border: 'border-orange-500',
      iconBg: 'bg-orange-500',
    },
    green: {
      bg: 'from-green-50 to-emerald-50',
      border: 'border-green-600',
      iconBg: 'bg-green-600',
    },
    purple: {
      bg: 'from-purple-50 to-violet-50',
      border: 'border-purple-600',
      iconBg: 'bg-purple-600',
    },
    gray: {
      bg: 'from-gray-50 to-slate-50',
      border: 'border-gray-600',
      iconBg: 'bg-gray-600',
    },
  };

  const v = variants[variant] || variants.blue;

  // Icône par défaut (info)
  const defaultIcon = (
    <svg className="w-4 h-4 sm:w-5 sm:h-5 text-white" fill="currentColor" viewBox="0 0 20 20">
      <path fillRule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clipRule="evenodd" />
    </svg>
  );

  return (
    <motion.div
      className={`bg-gradient-to-br ${v.bg} rounded-lg sm:rounded-xl p-3 sm:p-4 shadow-md border-l-4 ${v.border} ${className}`}
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: 0.4 }}
    >
      <div className="flex items-start gap-2 sm:gap-3">
        <div className={`flex-shrink-0 w-8 h-8 sm:w-10 sm:h-10 rounded-full ${v.iconBg} flex items-center justify-center`}>
          {icon || defaultIcon}
        </div>
        <div className="min-w-0 flex-1">
          <h3 className="font-bold text-gray-800 mb-1 sm:mb-2 text-sm sm:text-base">{title}</h3>
          <div className="text-gray-700 text-xs sm:text-sm leading-relaxed">
            {children}
          </div>
        </div>
      </div>
    </motion.div>
  );
}
