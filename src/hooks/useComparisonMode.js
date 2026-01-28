import { useState } from 'react';

/**
 * Hook pour gérer le mode de comparaison (équipes ou joueurs)
 * @returns {Object} - { mode, setMode }
 */
export default function useComparisonMode() {
  const [mode, setMode] = useState('players'); // 'players' ou 'teams'

  return { mode, setMode };
}
