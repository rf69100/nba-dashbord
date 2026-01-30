import { motion } from 'framer-motion';

/**
 * Affiche une question de quiz avec ses options de réponse
 */
export default function QuizQuestion({ 
  question, 
  selectedAnswer, 
  isAnswered, 
  onSelectAnswer 
}) {
  if (!question) return null;

  // La bonne réponse est le texte de l'option à l'index correctAnswer
  const correctAnswerText = question.options[question.correctAnswer];

  const getDifficultyStyle = (difficulty) => {
    switch (difficulty) {
      case 'easy':
        return 'bg-green-100 text-green-700 border-green-300';
      case 'medium':
        return 'bg-yellow-100 text-yellow-700 border-yellow-300';
      case 'hard':
        return 'bg-red-100 text-red-700 border-red-300';
      default:
        return 'bg-gray-100 text-gray-700 border-gray-300';
    }
  };

  const getDifficultyLabel = (difficulty) => {
    switch (difficulty) {
      case 'easy': return 'Facile';
      case 'medium': return 'Moyen';
      case 'hard': return 'Difficile';
      default: return difficulty;
    }
  };

  const getOptionStyle = (option) => {
    if (!isAnswered) {
      return selectedAnswer === option
        ? 'border-blue-500 bg-blue-50 text-blue-700'
        : 'border-gray-200 hover:border-blue-300 hover:bg-blue-50/50';
    }

    // Une fois répondu - comparer avec le texte de la bonne réponse
    if (option === correctAnswerText) {
      return 'border-green-500 bg-green-50 text-green-700';
    }
    if (option === selectedAnswer && option !== correctAnswerText) {
      return 'border-red-500 bg-red-50 text-red-700';
    }
    return 'border-gray-200 bg-gray-50 text-gray-400';
  };

  const getOptionIcon = (option) => {
    if (!isAnswered) return null;
    
    if (option === correctAnswerText) {
      return (
        <svg className="w-5 h-5 text-green-500" fill="currentColor" viewBox="0 0 20 20">
          <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd" />
        </svg>
      );
    }
    if (option === selectedAnswer && option !== correctAnswerText) {
      return (
        <svg className="w-5 h-5 text-red-500" fill="currentColor" viewBox="0 0 20 20">
          <path fillRule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clipRule="evenodd" />
        </svg>
      );
    }
    return null;
  };

  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, y: -20 }}
      transition={{ duration: 0.3 }}
      className="bg-white rounded-xl shadow-lg p-6"
    >
      {/* Badge de difficulté */}
      <div className="flex justify-end mb-4">
        <span className={`px-3 py-1 text-xs font-semibold rounded-full border ${getDifficultyStyle(question.difficulty)}`}>
          {getDifficultyLabel(question.difficulty)}
        </span>
      </div>

      {/* Question */}
      <h2 className="text-xl font-bold text-gray-800 mb-6 leading-relaxed">
        {question.question}
      </h2>

      {/* Options de réponse */}
      <div className="space-y-3">
        {question.options.map((option, index) => (
          <motion.button
            key={index}
            onClick={() => !isAnswered && onSelectAnswer(option)}
            disabled={isAnswered}
            className={`w-full p-4 rounded-lg border-2 text-left font-medium transition-all duration-200 flex items-center justify-between ${getOptionStyle(option)}`}
            whileHover={!isAnswered ? { scale: 1.02 } : {}}
            whileTap={!isAnswered ? { scale: 0.98 } : {}}
          >
            <div className="flex items-center gap-3">
              <span className="w-8 h-8 flex items-center justify-center bg-gray-100 rounded-full text-sm font-bold text-gray-500">
                {String.fromCharCode(65 + index)}
              </span>
              <span>{option}</span>
            </div>
            {getOptionIcon(option)}
          </motion.button>
        ))}
      </div>

      {/* Explication après réponse */}
      {isAnswered && question.explanation && (
        <motion.div
          initial={{ opacity: 0, height: 0 }}
          animate={{ opacity: 1, height: 'auto' }}
          className="mt-6 p-4 bg-blue-50 border border-blue-200 rounded-lg"
        >
          <p className="text-sm text-blue-800">
            <span className="font-bold">Le saviez-vous ? </span>
            {question.explanation}
          </p>
        </motion.div>
      )}
    </motion.div>
  );
}
