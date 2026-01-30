import { motion } from 'framer-motion';
import { Link } from 'react-router-dom';

/**
 * Affiche les résultats finaux du quiz
 */
export default function QuizResult({ result, category, answers, questions, onRestart }) {
  const getGradeColor = (grade) => {
    switch (grade) {
      case 'S': return 'from-amber-400 to-yellow-500';
      case 'A': return 'from-emerald-400 to-green-500';
      case 'B': return 'from-blue-400 to-blue-500';
      case 'C': return 'from-violet-400 to-purple-500';
      case 'D': return 'from-orange-400 to-orange-500';
      default: return 'from-red-400 to-red-500';
    }
  };

  const getGradeTextColor = (grade) => {
    switch (grade) {
      case 'S': return 'text-amber-600';
      case 'A': return 'text-emerald-600';
      case 'B': return 'text-blue-600';
      case 'C': return 'text-violet-600';
      case 'D': return 'text-orange-600';
      default: return 'text-red-600';
    }
  };

  return (
    <motion.div
      initial={{ opacity: 0, scale: 0.9 }}
      animate={{ opacity: 1, scale: 1 }}
      transition={{ duration: 0.5 }}
      className="max-w-2xl mx-auto"
    >
      {/* Carte de résultat principal */}
      <div className="bg-white rounded-2xl shadow-xl overflow-hidden">
        {/* En-tête avec grade */}
        <div className={`bg-gradient-to-r ${getGradeColor(result.grade)} p-8 text-center text-white`}>
          <motion.div
            initial={{ scale: 0 }}
            animate={{ scale: 1 }}
            transition={{ delay: 0.3, type: 'spring', stiffness: 200 }}
            className="w-24 h-24 mx-auto mb-4 rounded-full bg-white/20 flex items-center justify-center"
          >
            <span className="text-5xl font-black">{result.grade}</span>
          </motion.div>
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.5 }}
          >
            <div className="text-3xl font-bold mb-2">
              Grade {result.grade}
            </div>
            <div className="text-lg opacity-90">
              {result.message}
            </div>
          </motion.div>
        </div>

        {/* Statistiques */}
        <div className="p-6">
          <div className="grid grid-cols-3 gap-4 mb-6">
            <div className="text-center p-4 bg-gray-50 rounded-xl">
              <div className="text-3xl font-black text-gray-800">
                {result.score}/{result.total}
              </div>
              <div className="text-sm text-gray-500 font-medium">Score</div>
            </div>
            <div className="text-center p-4 bg-green-50 rounded-xl">
              <div className="text-3xl font-black text-green-600">
                {result.percentage}%
              </div>
              <div className="text-sm text-gray-500 font-medium">Réussite</div>
            </div>
            <div className="text-center p-4 rounded-xl" style={{ background: 'linear-gradient(135deg, #f5f5f5 0%, #e8e8e8 100%)' }}>
              <div className={`text-2xl font-black bg-gradient-to-r ${category?.color || 'from-gray-500 to-gray-600'} bg-clip-text text-transparent`}>
                {category?.tag || 'Quiz'}
              </div>
              <div className="text-sm text-gray-500 font-medium">{category?.name}</div>
            </div>
          </div>

          {/* Récapitulatif des réponses */}
          <div className="mb-6">
            <h3 className="text-lg font-bold text-gray-800 mb-3">Récapitulatif</h3>
            <div className="max-h-64 overflow-y-auto space-y-2 pr-2">
              {answers.map((answer, index) => {
                const question = questions[index];
                const correctAnswerText = question?.options[question?.correctAnswer] || answer.correctAnswer;
                
                return (
                  <motion.div
                    key={index}
                    initial={{ opacity: 0, x: -20 }}
                    animate={{ opacity: 1, x: 0 }}
                    transition={{ delay: 0.05 * index }}
                    className={`p-3 rounded-lg border ${
                      answer.isCorrect 
                        ? 'bg-green-50 border-green-200' 
                        : 'bg-red-50 border-red-200'
                    }`}
                  >
                    <div className="flex items-start gap-3">
                      <span className={`flex-shrink-0 w-5 h-5 rounded-full flex items-center justify-center ${answer.isCorrect ? 'bg-green-500' : 'bg-red-500'}`}>
                        {answer.isCorrect ? (
                          <svg className="w-3 h-3 text-white" fill="currentColor" viewBox="0 0 20 20">
                            <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd" />
                          </svg>
                        ) : (
                          <svg className="w-3 h-3 text-white" fill="currentColor" viewBox="0 0 20 20">
                            <path fillRule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clipRule="evenodd" />
                          </svg>
                        )}
                      </span>
                      <div className="flex-1 min-w-0">
                        <p className="text-sm font-medium text-gray-700 line-clamp-2">
                          {index + 1}. {answer.question}
                        </p>
                        {!answer.isCorrect && (
                          <p className="text-xs text-green-600 mt-1">
                            Réponse : {correctAnswerText}
                          </p>
                        )}
                      </div>
                    </div>
                  </motion.div>
                );
              })}
            </div>
          </div>

          {/* Boutons d'action */}
          <div className="flex flex-col sm:flex-row gap-3">
            <motion.button
              onClick={onRestart}
              className={`flex-1 py-3 px-6 rounded-xl font-bold text-white bg-gradient-to-r ${getGradeColor(result.grade)} hover:opacity-90 transition-opacity`}
              whileHover={{ scale: 1.02 }}
              whileTap={{ scale: 0.98 }}
            >
              Recommencer
            </motion.button>
            <Link
              to="/quiz"
              className="flex-1 py-3 px-6 rounded-xl font-bold text-center border-2 border-gray-300 text-gray-700 hover:bg-gray-50 transition-colors"
            >
              Autres quiz
            </Link>
          </div>
        </div>
      </div>

      {/* Message d'encouragement */}
      <motion.p
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 1 }}
        className={`text-center mt-6 text-lg font-medium ${getGradeTextColor(result.grade)}`}
      >
        {result.percentage === 100 
          ? "Score parfait ! Tu es un vrai expert NBA !" 
          : result.percentage >= 70 
            ? "Continue comme ça, tu maîtrises bien le sujet !" 
            : "La pratique mène à la perfection !"}
      </motion.p>
    </motion.div>
  );
}
