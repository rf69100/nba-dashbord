import { useParams, Link } from 'react-router-dom';
import { motion, AnimatePresence } from 'framer-motion';
import PageContainer from '../components/layout/PageContainer';
import QuizProgress from '../components/quiz/QuizProgress';
import QuizQuestion from '../components/quiz/QuizQuestion';
import QuizResult from '../components/quiz/QuizResult';
import { useQuiz } from '../hooks/useQuiz';

/**
 * Page de jeu du quiz
 * Gère le déroulement d'un quiz pour une catégorie donnée
 */
export default function QuizGame() {
  const { categoryId } = useParams();
  
  // Utilisation du hook - tout est géré dedans
  const {
    questions,
    category,
    currentQuestion,
    currentIndex,
    selectedAnswer,
    isAnswered,
    quizCompleted,
    progress,
    finalResult,
    answers,
    selectAnswer,
    nextQuestion,
    resetQuiz
  } = useQuiz(categoryId);

  // Catégorie invalide ou pas de questions
  if (!category || questions.length === 0) {
    return (
      <PageContainer>
        <div className="max-w-md mx-auto text-center py-20 bg-white rounded-2xl shadow-xl">
          <div className="w-20 h-20 mx-auto mb-4 rounded-full bg-gray-100 flex items-center justify-center">
            <svg className="w-10 h-10 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
          </div>
          <h2 className="text-2xl font-bold text-gray-800 mb-2">
            Quiz non trouvé
          </h2>
          <p className="text-gray-600 mb-6">
            Cette catégorie de quiz n&apos;existe pas.
          </p>
          <Link
            to="/quiz"
            className="inline-flex items-center gap-2 px-6 py-3 bg-blue-600 text-white rounded-xl font-bold hover:bg-blue-700 transition-colors"
          >
            Retour aux quiz
          </Link>
        </div>
      </PageContainer>
    );
  }

  // Quiz terminé - Afficher les résultats
  if (quizCompleted && finalResult) {
    return (
      <PageContainer>
        <QuizResult
          result={finalResult}
          category={category}
          answers={answers}
          questions={questions}
          onRestart={resetQuiz}
        />
      </PageContainer>
    );
  }

  return (
    <PageContainer>
      {/* Conteneur principal - même style que les autres pages */}
      <motion.div
        className="w-full max-w-3xl mx-auto"
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
      >
        {/* Bouton retour */}
        <Link
          to="/quiz"
          className="inline-flex items-center gap-2 text-white/80 hover:text-white transition-colors mb-6"
        >
          <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
          </svg>
          <span className="font-medium">Quitter le quiz</span>
        </Link>

        {/* Progression */}
        <QuizProgress progress={progress} category={category} />

        {/* Question actuelle */}
        <AnimatePresence mode="wait">
          {currentQuestion && (
            <QuizQuestion
              key={currentIndex}
              question={currentQuestion}
              selectedAnswer={selectedAnswer}
              isAnswered={isAnswered}
              onSelectAnswer={selectAnswer}
            />
          )}
        </AnimatePresence>

        {/* Bouton suivant */}
        {isAnswered && (
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            className="mt-6 text-center"
          >
            <motion.button
              onClick={nextQuestion}
              className={`px-8 py-4 text-white rounded-xl font-bold text-lg shadow-lg hover:shadow-xl transition-all bg-gradient-to-r ${category.color}`}
              whileHover={{ scale: 1.02 }}
              whileTap={{ scale: 0.98 }}
            >
              {currentIndex === questions.length - 1 
                ? 'Voir mes résultats' 
                : 'Question suivante'}
            </motion.button>
          </motion.div>
        )}

        {/* Indicateur */}
        {!isAnswered && (
          <motion.p
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.5 }}
            className="text-center mt-6 text-white/70 text-sm"
          >
            Sélectionne une réponse pour continuer
          </motion.p>
        )}
      </motion.div>
    </PageContainer>
  );
}
