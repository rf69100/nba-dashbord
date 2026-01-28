import { useState, useEffect } from 'react';
import { getPlayerWithStats, getTeams } from '../services/nbaApi';

/**
 * Hook personnalisé pour gérer les données d'un joueur
 * @param {string} playerId - L'ID du joueur
 * @returns {Object} - { player, teamId, loading, error }
 */
export default function usePlayerProfile(playerId) {
  const [player, setPlayer] = useState(null);
  const [teamId, setTeamId] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchPlayerData = async () => {
      try {
        setLoading(true);
        setError(null);
        const playerData = await getPlayerWithStats(playerId);
        setPlayer(playerData);

        // Trouver l'ID de l'équipe du joueur
        const allTeamsData = await getTeams();
        const teamsList = Array.isArray(allTeamsData)
          ? allTeamsData
          : allTeamsData?.teams || [];
        const team = teamsList.find(
          (t) => t.name === playerData.team_name || t.full_name === playerData.team_name
        );
        if (team) {
          setTeamId(team.id);
        }
      } catch (err) {
        console.error('Erreur lors du chargement du joueur:', err);
        setError(err.message || 'Impossible de charger les données du joueur');
      } finally {
        setLoading(false);
      }
    };

    if (playerId) {
      fetchPlayerData();
    }
  }, [playerId]);

  return { player, teamId, loading, error };
}
