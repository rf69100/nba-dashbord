import { useState, useEffect } from 'react';
import { getPlayers, getTeams } from '../services/nbaApi';

/**
 * Hook personnalisé pour charger les statistiques de la page d'accueil
 * @returns {Object} - { stats, loading, error }
 */
export default function useHomeStats() {
  const [stats, setStats] = useState({ players: 0, teams: 0 });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const loadStats = async () => {
      try {
        setLoading(true);
        setError(null);
        const playersData = await getPlayers();
        const teamsData = await getTeams();
        setStats({
          players: playersData.players?.length || 0,
          teams: teamsData.teams?.length || 0,
        });
      } catch (err) {
        // eslint-disable-next-line no-console
        console.error('Erreur lors du chargement des stats:', err);
        setError(err.message || 'Erreur lors du chargement');
      } finally {
        setLoading(false);
      }
    };
    loadStats();
  }, []);

  return { stats, loading, error };
}
