import { useState, useEffect } from "react";
import { getTeamsByDivision } from "../services/nbaApi";

/**
 * Hook personnalisé pour gérer les données des équipes NBA par division
 * @returns {Object} { conferences, loading, error }
 */
export function useTeamsData() {
  const [conferences, setConferences] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTeams = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await getTeamsByDivision();
        setConferences(data);
      } catch (err) {
        // eslint-disable-next-line no-console
        console.error("Erreur lors du chargement des équipes:", err);
        setError(err.message || "Impossible de charger les équipes");
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, []);

  return { conferences, loading, error };
}
