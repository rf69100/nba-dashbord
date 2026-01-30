import { useState, useEffect } from "react";
import { getPlayers, getPlayerWithStats } from "../services/nbaApi";
import { preparePlayerStats } from "../utils/stats/calculateStats";

/**
 * Hook personnalisé pour gérer le chargement et la préparation des données de stats
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

        // Charger les stats de tous les joueurs
        const allPlayers = response.players.slice(0, 30);
        const playersWithStats = await Promise.all(
          allPlayers.map(async (player) => {
            try {
              const playerData = await getPlayerWithStats(player.id);
              if (playerData && playerData.lastGames) {
                return preparePlayerStats(playerData, playerData.lastGames);
              }
              return null;
            } catch {
              return null;
            }
          })
        );

        setPlayers(playersWithStats.filter((p) => p !== null));
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
