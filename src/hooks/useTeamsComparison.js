import { useState, useEffect } from 'react';
import { getTeams, getTeamWithStats } from '../services/nbaApi';

/**
 * Hook personnalisé pour gérer la comparaison d'équipes
 * @returns {Object} - { selectedTeams, teams, loading, error, toggleTeam }
 */
export default function useTeamsComparison() {
  const [selectedTeams, setSelectedTeams] = useState([]);
  const [teams, setTeams] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Charger toutes les équipes au montage
  useEffect(() => {
    const fetchTeams = async () => {
      try {
        setLoading(true);
        setError(null);
        const response = await getTeams();

        // Transformer les données
        const transformedTeams = (Array.isArray(response) ? response : response?.teams || []).map(
          (team) => ({
            id: team.id,
            name: team.name,
            full_name: team.full_name,
            abbreviation: team.abbreviation,
            conference: team.conference,
            division: team.division,
            logo_url: team.logo_url,
            stats: {},
          })
        );

        setTeams(transformedTeams);
      } catch (err) {
        // eslint-disable-next-line no-console
        console.error('Erreur lors du chargement des équipes:', err);
        setError(err.message || 'Impossible de charger les équipes');
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, []);

  /**
   * Ajoute ou retire une équipe de la sélection
   * Charge les stats si nécessaire
   * @param {Object} team - Équipe à basculer
   */
  const toggleTeam = async (team) => {
    // Vérifie si l'équipe est déjà sélectionnée
    if (selectedTeams.find((t) => t.id === team.id)) {
      setSelectedTeams(selectedTeams.filter((t) => t.id !== team.id));
      return;
    }

    // Ajoute l'équipe si moins de 2 sélectionnées
    if (selectedTeams.length < 2) {
      // Charge les stats si nécessaire
      if (!team.stats || Object.keys(team.stats).length === 0) {
        try {
          const teamWithStats = await getTeamWithStats(team.id);

          const updatedTeam = {
            ...team,
            stats: teamWithStats.stats || {},
            wins: teamWithStats.wins,
            losses: teamWithStats.losses,
            win_percentage: teamWithStats.win_percentage,
          };

          // Mettre à jour la liste pour le cache
          setTeams((prevTeams) =>
            prevTeams.map((t) => (t.id === team.id ? updatedTeam : t))
          );

          // Ajouter à la sélection
          setSelectedTeams([...selectedTeams, updatedTeam]);
        } catch (err) {
        // eslint-disable-next-line no-console
          console.error('Erreur lors du chargement des stats de l\'équipe:', err);
          // Ajouter sans stats en cas d'erreur
          setSelectedTeams([...selectedTeams, team]);
        }
      } else {
        // Équipe a déjà ses stats en cache
        setSelectedTeams([...selectedTeams, team]);
      }
    }
  };

  return { selectedTeams, teams, loading, error, toggleTeam };
}
