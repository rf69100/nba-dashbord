import { motion } from 'framer-motion';

/**
 * Barre de progression du quiz
 */
export default function QuizProgress({ progress, category }) {
  return (
    <div className="mb-6 bg-white rounded-xl shadow p-4">
      {/* En-tête avec compteur */}
      <div className="flex justify-between items-center mb-3">
        <div className="flex items-center gap-2">
          <span className={`inline-flex items-center px-2 py-0.5 rounded text-xs font-semibold uppercase tracking-wide bg-gradient-to-r ${category?.color || 'from-gray-500 to-gray-600'} text-white`}>
            {category?.tag || 'Quiz'}
          </span>
          <span className="text-sm font-medium text-gray-700">
            {category?.name}
          </span>
        </div>
        <div className="text-sm font-bold text-gray-800">
          {progress.current} / {progress.total}
        </div>
      </div>

      {/* Barre de progression */}
      <div className="h-2 bg-gray-200 rounded-full overflow-hidden">
        <motion.div
          className={`h-full bg-gradient-to-r ${category?.color || 'from-blue-500 to-blue-600'} rounded-full`}
          initial={{ width: 0 }}
          animate={{ width: `${progress.percentage}%` }}
          transition={{ duration: 0.5, ease: 'easeOut' }}
        />
      </div>

      {/* Score en temps réel */}
      <div className="flex justify-between items-center mt-2 text-xs">
        <span className="text-green-600 font-medium flex items-center gap-1">
          <svg className="w-3.5 h-3.5" fill="currentColor" viewBox="0 0 20 20">
            <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd" />
          </svg>
          {progress.correctAnswers} correctes
        </span>
        <span className="text-red-500 font-medium flex items-center gap-1">
          <svg className="w-3.5 h-3.5" fill="currentColor" viewBox="0 0 20 20">
            <path fillRule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clipRule="evenodd" />
          </svg>
          {progress.incorrectAnswers} incorrectes
        </span>
      </div>
    </div>
  );
}
