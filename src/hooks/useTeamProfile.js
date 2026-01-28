import { useState, useEffect } from 'react';
import { getTeamWithStats } from '../services/nbaApi';

/**
 * Hook personnalisé pour gérer les données d'une équipe
 * @param {string} teamId - L'ID de l'équipe
 * @returns {Object} - { team, loading, error }
 */
export default function useTeamProfile(teamId) {
  const [team, setTeam] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTeamData = async () => {
      try {
        setLoading(true);
        setError(null);
        const teamData = await getTeamWithStats(teamId);
        setTeam(teamData);
      } catch (err) {
        console.error('Erreur lors du chargement de l\'équipe:', err);
        setError(err.message || 'Impossible de charger les données de l\'équipe');
      } finally {
        setLoading(false);
      }
    };

    if (teamId) {
      fetchTeamData();
    }
  }, [teamId]);

  return { team, loading, error };
}
