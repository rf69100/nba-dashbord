import { useState, useEffect } from 'react';
import { getPlayers } from '../services/nbaApi';

/**
 * Hook personnalisé pour gérer les données des joueurs
 * @returns {Object} - { players, uniqueTeams, loading, error }
 */
export default function usePlayersData() {
  const [players, setPlayers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchPlayers = async () => {
      try {
        setLoading(true);
        setError(null);
        const response = await getPlayers();
        setPlayers(response.players || []);
      } catch (err) {
        console.error('Erreur lors du chargement des joueurs:', err);
        setError(err.message || 'Impossible de charger les joueurs');
      } finally {
        setLoading(false);
      }
    };

    fetchPlayers();
  }, []);

  const uniqueTeams = [...new Set(players.map(p => p.team_name))].sort();

  return { players, uniqueTeams, loading, error };
}
