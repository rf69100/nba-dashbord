import { useState, useEffect } from "react";
import { getPlayers } from "../services/nbaApi";
import { preparePlayerSeasonStats } from "../utils/statsHelpers";

/**
 * Hook personnalisé pour gérer le chargement et la préparation des données de stats
 * Utilise les stats de SAISON (totaux divisés par GP) et non les stats de matchs
 * @returns {Object} État contenant players, loading, error
 */
export const useStatsData = () => {
  const [players, setPlayers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchStats = async () => {
      try {
        setLoading(true);
        setError(null);

        const response = await getPlayers();

        // Utiliser les season_stats (totaux de saison) pour calculer les moyennes
        const playersWithStats = response.players
          .filter(player => player.season_stats && player.season_stats.GP > 0)
          .map(player => preparePlayerSeasonStats(player))
          .filter(p => p !== null);

        setPlayers(playersWithStats);
      } catch (err) {
        // eslint-disable-next-line no-console
        console.error("Erreur lors du chargement des stats:", err);
        setError(err.message || "Impossible de charger les données");
      } finally {
        setLoading(false);
      }
    };

    fetchStats();
  }, []);

  return { players, loading, error };
};
