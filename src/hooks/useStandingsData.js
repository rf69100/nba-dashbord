import { useState, useEffect } from "react";
import { getStandings } from "../services/nbaApi";

/**
 * Hook personnalisé pour gérer les données de classement NBA
 * @param {string} conference - Conférence sélectionnée ("All", "East", "West")
 * @returns {Object} { teams, loading, error }
 */
export function useStandingsData(conference) {
  const [teams, setTeams] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTeams = async () => {
      try {
        setLoading(true);
        setError(null);

        // Appel à l'API avec filtre de conférence (si différent de "All")
        const filters = conference === "All" ? {} : { conference };
        const data = await getStandings(filters);

        // L'API retourne déjà les données triées par wins (DESC)
        // On ajoute juste le rang et on formate le pourcentage
        const teamsWithRank = data.map((team, index) => ({
          ...team,
          rank: index + 1,
          percentage: team.win_percentage, // L'API calcule déjà le pourcentage
        }));

        setTeams(teamsWithRank);
      } catch (err) {
        // eslint-disable-next-line no-console
        console.error("Erreur lors du chargement des équipes:", err);
        setError(err.message || "Impossible de charger les données");
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, [conference]); // Recharger quand la conférence change

  return { teams, loading, error };
}
