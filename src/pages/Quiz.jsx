import { motion } from 'framer-motion';
import PageContainer from '../components/layout/PageContainer';
import PageTitle from '../components/layout/PageTitle';
import QuizCategoryCard from '../components/quiz/QuizCategoryCard';
import InfoBox from '../components/common/InfoBox';
import { quizCategories } from '../data/quizData';

/**
 * Page principale du Quiz NBA
 * Affiche toutes les catégories de quiz disponibles
 */
export default function Quiz() {
  return (
    <PageContainer>
      <PageTitle>Quiz NBA</PageTitle>

      {/* Conteneur principal */}
      <motion.div
        className="w-full max-w-5xl bg-white/95 backdrop-blur-sm rounded-xl sm:rounded-2xl shadow-xl p-4 sm:p-6 md:p-8"
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
      >
        {/* Section Header */}
        <motion.div
          className="mb-6 sm:mb-8"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.2 }}
        >
          <h2 className="text-2xl sm:text-3xl font-bold text-gray-800 mb-1 sm:mb-2 pb-2 sm:pb-3 border-b-4 border-orange-500">
            TESTE TES CONNAISSANCES
          </h2>
          <p className="text-gray-600 font-medium text-xs sm:text-sm">
            6 catégories • 90 questions • 3 niveaux de difficulté
          </p>
        </motion.div>

        {/* Grille des catégories */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6 mb-6">
          {quizCategories.map((category, index) => (
            <QuizCategoryCard 
              key={category.id} 
              category={category} 
              index={index}
            />
          ))}
        </div>

        {/* Info Box - Comment ça marche */}
        <InfoBox 
          title="Comment ça marche ?" 
          variant="orange"
          icon={
            <svg className="w-4 h-4 sm:w-5 sm:h-5 text-white" fill="currentColor" viewBox="0 0 20 20">
              <path fillRule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clipRule="evenodd" />
            </svg>
          }
        >
          <p>
            Chaque quiz contient <strong>15 questions</strong> avec 3 niveaux de difficulté 
            (facile, moyen, difficile). Réponds aux questions et obtiens un grade de F à S. 
            Score parfait = Grade S !
          </p>
        </InfoBox>
      </motion.div>
    </PageContainer>
  );
}
