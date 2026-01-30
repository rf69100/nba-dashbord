import { useState, useCallback, useMemo } from 'react';
import { getQuestionsByCategory, getCategoryById } from '../data/quizData';

/**
 * Hook personnalisé pour gérer la logique du quiz
 * Inspiré de useStatsData et usePlayersData
 * 
 * @param {string} categoryId - ID de la catégorie de quiz
 * @returns {Object} État et fonctions du quiz
 */
export function useQuiz(categoryId) {
  // État du quiz
  const [currentIndex, setCurrentIndex] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState(null);
  const [isAnswered, setIsAnswered] = useState(false);
  const [score, setScore] = useState(0);
  const [answers, setAnswers] = useState([]);
  const [quizCompleted, setQuizCompleted] = useState(false);

  // Charger les questions et la catégorie (mémoïsé)
  const questions = useMemo(() => {
    if (!categoryId) return [];
    return getQuestionsByCategory(categoryId, true, 15);
  }, [categoryId]);

  const category = useMemo(() => {
    if (!categoryId) return null;
    return getCategoryById(categoryId);
  }, [categoryId]);

  // Question actuelle
  const currentQuestion = useMemo(() => {
    return questions[currentIndex] || null;
  }, [questions, currentIndex]);

  // Statistiques de progression
  const progress = useMemo(() => {
    const total = questions.length || 1;
    return {
      current: currentIndex + 1,
      total: total,
      percentage: ((currentIndex) / total) * 100,
      correctAnswers: score,
      incorrectAnswers: answers.filter(a => !a.isCorrect).length,
    };
  }, [currentIndex, questions.length, score, answers]);

  /**
   * Sélectionner et valider une réponse
   */
  const selectAnswer = useCallback((answer) => {
    if (isAnswered || !currentQuestion) return;

    setSelectedAnswer(answer);
    setIsAnswered(true);

    // La bonne réponse est l'index dans options, on compare avec le texte
    const correctAnswerText = currentQuestion.options[currentQuestion.correctAnswer];
    const isCorrect = answer === correctAnswerText;
    
    if (isCorrect) {
      setScore(prev => prev + 1);
    }

    // Enregistrer la réponse
    setAnswers(prev => [...prev, {
      questionIndex: currentIndex,
      question: currentQuestion.question,
      selectedAnswer: answer,
      correctAnswer: correctAnswerText,
      isCorrect,
    }]);
  }, [isAnswered, currentQuestion, currentIndex]);

  /**
   * Passer à la question suivante
   */
  const nextQuestion = useCallback(() => {
    if (currentIndex < questions.length - 1) {
      setCurrentIndex(prev => prev + 1);
      setSelectedAnswer(null);
      setIsAnswered(false);
    } else {
      setQuizCompleted(true);
    }
  }, [currentIndex, questions.length]);

  /**
   * Réinitialiser le quiz
   */
  const resetQuiz = useCallback(() => {
    setCurrentIndex(0);
    setSelectedAnswer(null);
    setIsAnswered(false);
    setScore(0);
    setAnswers([]);
    setQuizCompleted(false);
  }, []);

  /**
   * Calculer le résultat final
   */
  const finalResult = useMemo(() => {
    if (!quizCompleted || questions.length === 0) return null;

    const total = questions.length;
    const percentage = Math.round((score / total) * 100);
    
    let grade = 'F';
    let message = 'Il est temps de réviser !';

    if (percentage === 100) {
      grade = 'S';
      message = 'Incroyable ! Tu es un vrai expert NBA !';
    } else if (percentage >= 80) {
      grade = 'A';
      message = 'Très impressionnant ! Tu connais bien la NBA.';
    } else if (percentage >= 60) {
      grade = 'B';
      message = 'Bon travail ! Continue à suivre la NBA.';
    } else if (percentage >= 40) {
      grade = 'C';
      message = 'Pas mal, mais il y a de la marge pour progresser.';
    } else if (percentage >= 20) {
      grade = 'D';
      message = 'Continue à regarder des matchs !';
    }

    return {
      score,
      total,
      percentage,
      grade,
      message,
    };
  }, [quizCompleted, score, questions.length]);

  return {
    // Données
    questions,
    category,
    currentQuestion,
    
    // État
    currentIndex,
    selectedAnswer,
    isAnswered,
    score,
    quizCompleted,
    progress,
    finalResult,
    answers,
    
    // Actions
    selectAnswer,
    nextQuestion,
    resetQuiz,
  };
}

export default useQuiz;
