import { motion } from 'framer-motion';
import { Link } from 'react-router-dom';

/**
 * Carte de sélection d'une catégorie de quiz
 */
export default function QuizCategoryCard({ category, index }) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ delay: index * 0.1 }}
    >
      <Link
        to={`/quiz/${category.id}`}
        className="block h-full"
      >
        <div className={`
          relative overflow-hidden rounded-xl shadow-lg h-full
          bg-gradient-to-br ${category.color}
          transform transition-all duration-300
          hover:scale-[1.02] hover:shadow-2xl
          cursor-pointer
        `}>
          {/* Pattern décoratif */}
          <div className="absolute inset-0 opacity-5">
            <div className="absolute inset-0" style={{
              backgroundImage: 'repeating-linear-gradient(45deg, white 0, white 1px, transparent 0, transparent 50%)',
              backgroundSize: '20px 20px'
            }} />
          </div>

          <div className="relative p-5">
            {/* Badge catégorie */}
            <div className="inline-flex items-center px-2.5 py-1 rounded bg-white/20 text-white text-xs font-semibold uppercase tracking-wide mb-3">
              {category.tag || 'Quiz'}
            </div>

            {/* Titre */}
            <h3 className="text-lg font-bold text-white mb-2">
              {category.name}
            </h3>

            {/* Description */}
            <p className="text-white/75 text-sm mb-4 line-clamp-2">
              {category.description}
            </p>

            {/* Footer */}
            <div className="flex items-center justify-between pt-3 border-t border-white/20">
              <span className="text-white/90 text-sm font-medium">
                {category.questionCount} questions
              </span>
              
              <span className="text-white text-sm font-semibold flex items-center gap-1 group-hover:gap-2 transition-all">
                Jouer
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                </svg>
              </span>
            </div>
          </div>
        </div>
      </Link>
    </motion.div>
  );
}
