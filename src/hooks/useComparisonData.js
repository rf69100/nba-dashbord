import { useState, useEffect } from 'react';
import { getPlayers, getPlayerWithStats } from '../services/nbaApi';

/**
 * Hook personnalisé pour gérer les données de comparaison
 * Gère la sélection des joueurs et le chargement de leurs stats
 * @returns {Object} - { selectedPlayers, players, loading, error, togglePlayer }
 */
export default function useComparisonData() {
  const [selectedPlayers, setSelectedPlayers] = useState([]);
  const [players, setPlayers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Charger tous les joueurs au montage
  useEffect(() => {
    const fetchPlayers = async () => {
      try {
        setLoading(true);
        setError(null);
        const response = await getPlayers();
        
        // Transformer les données
        const transformedPlayers = response.players.map((player) => ({
          id: player.id,
          name: player.display_name,
          team: player.team_name,
          info: {
            age: player.age,
            height: `${Math.floor(player.height_cm / 100)}m${player.height_cm % 100}`,
            weight: `${player.weight_kg} kg`,
            position: player.position,
            photo: player.photo_url || '',
          },
          lastGames: [],
          apiId: player.id,
        }));

        setPlayers(transformedPlayers);
      } catch (err) {
        // eslint-disable-next-line no-console
        console.error('Erreur lors du chargement des joueurs:', err);
        setError(err.message || 'Impossible de charger les données');
      } finally {
        setLoading(false);
      }
    };

    fetchPlayers();
  }, []);

  /**
   * Ajoute ou retire un joueur de la sélection
   * Charge les stats si nécessaire
   * @param {Object} player - Joueur à basculer
   */
  const togglePlayer = async (player) => {
    // Vérifie si le joueur est déjà sélectionné
    if (selectedPlayers.find((p) => p.id === player.id)) {
      setSelectedPlayers(selectedPlayers.filter((p) => p.id !== player.id));
      return;
    }

    // Ajoute le joueur si moins de 2 sélectionnés
    if (selectedPlayers.length < 2) {
      // Charge les stats si nécessaire
      if (player.lastGames.length === 0) {
        try {
          const playerWithStats = await getPlayerWithStats(player.id);

          const updatedPlayer = {
            ...player,
            lastGames: playerWithStats.lastGames || [],
            info: playerWithStats.info || player.info,
          };

          // Mettre à jour la liste des joueurs pour le cache
          setPlayers((prevPlayers) =>
            prevPlayers.map((p) => (p.id === player.id ? updatedPlayer : p))
          );

          // Ajouter à la sélection
          setSelectedPlayers([...selectedPlayers, updatedPlayer]);
        } catch (err) {
        // eslint-disable-next-line no-console
          console.error('Erreur lors du chargement des stats du joueur:', err);
          // Ajouter sans stats en cas d'erreur
          setSelectedPlayers([...selectedPlayers, player]);
        }
      } else {
        // Joueur a déjà ses stats en cache
        setSelectedPlayers([...selectedPlayers, player]);
      }
    }
  };

  return { selectedPlayers, players, loading, error, togglePlayer };
}
