// Importation des hooks et composants nécessaires
import { useState, useEffect } from "react"; // Hooks React pour gérer l'état local et les effets
import { motion } from "framer-motion"; // Pour les animations
import PlayerStatsChart from "../components/PlayerStatsChart"; // Composant graphique des stats
import { getPlayers, getPlayerWithStats } from "../services/nbaApi"; // Service API pour récupérer les joueurs

/**
 * Page principale pour comparer les joueurs NBA.
 * Permet de sélectionner jusqu'à 2 joueurs et d'afficher leurs statistiques comparées.
 */
export default function Comparison() {
  // États pour gérer les joueurs sélectionnés, tous les joueurs, le chargement et les erreurs
  const [selectedPlayers, setSelectedPlayers] = useState([]);
  const [players, setPlayers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Charger les joueurs depuis l'API au montage du composant
  useEffect(() => {
    const fetchPlayers = async () => {
      try {
        setLoading(true);
        setError(null);

        // Récupérer tous les joueurs (liste basique sans stats)
        const response = await getPlayers();

        // Transformer les données de l'API pour correspondre au format attendu par les composants
        const transformedPlayers = response.players.map(player => ({
          id: player.id,
          name: player.display_name,
          team: player.team_name,
          // Ces données seront chargées dynamiquement quand on sélectionne un joueur
          info: {
            age: player.age,
            height: `${Math.floor(player.height_cm / 100)}m${player.height_cm % 100}`,
            weight: `${player.weight_kg} kg`,
            position: player.position,
            photo: player.photo_url || ''
          },
          // Placeholder pour lastGames - sera chargé à la sélection
          lastGames: [],
          // Stocker l'ID pour charger les stats plus tard
          apiId: player.id
        }));

        setPlayers(transformedPlayers);
      } catch (err) {
        console.error('Erreur lors du chargement des joueurs:', err);
        setError(err.message || 'Impossible de charger les données');
      } finally {
        setLoading(false);
      }
    };

    fetchPlayers();
  }, []);

  /**
   * Ajoute ou retire un joueur de la sélection.
   * Si le joueur est déjà sélectionné, il est retiré.
   * Sinon, il est ajouté (max 2 joueurs) et ses stats sont chargées.
   * @param {Object} player - Joueur à ajouter ou retirer
   */
  const togglePlayer = async (player) => {
    // Vérifie si le joueur est déjà sélectionné
    if (selectedPlayers.find((p) => p.id === player.id)) {
      setSelectedPlayers(selectedPlayers.filter((p) => p.id !== player.id));
      return;
    }

    // Ajoute le joueur si moins de 2 sélectionnés
    if (selectedPlayers.length < 2) {
      // Si le joueur n'a pas encore de stats (lastGames vide), les charger
      if (player.lastGames.length === 0) {
        try {
          const playerWithStats = await getPlayerWithStats(player.id);

          // Mettre à jour le joueur avec les stats dans la liste complète
          const updatedPlayer = {
            ...player,
            lastGames: playerWithStats.lastGames || [],
            info: playerWithStats.info || player.info
          };

          // Mettre à jour la liste des joueurs pour garder les stats en cache
          setPlayers(prevPlayers =>
            prevPlayers.map(p => p.id === player.id ? updatedPlayer : p)
          );

          // Ajouter le joueur avec stats à la sélection
          setSelectedPlayers([...selectedPlayers, updatedPlayer]);
        } catch (err) {
          console.error('Erreur lors du chargement des stats du joueur:', err);
          // En cas d'erreur, ajouter quand même le joueur (sans stats)
          setSelectedPlayers([...selectedPlayers, player]);
        }
      } else {
        // Le joueur a déjà ses stats en cache
        setSelectedPlayers([...selectedPlayers, player]);
      }
    }
  };

  // Affichage pendant le chargement
  if (loading) {
    return (
      <div className="pt-24 px-4 sm:px-5 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center justify-center">
        <motion.div
          className="text-center"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 0.5 }}
        >
          <div className="w-16 h-16 border-4 border-white border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-xl font-semibold">Chargement des joueurs...</p>
        </motion.div>
      </div>
    );
  }

  // Affichage en cas d'erreur
  if (error) {
    return (
      <div className="pt-24 px-4 sm:px-5 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center justify-center">
        <motion.div
          className="bg-white text-red-600 p-6 rounded-xl shadow-2xl max-w-md"
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ duration: 0.5 }}
        >
          <h2 className="text-2xl font-bold mb-3">Erreur</h2>
          <p className="mb-4">{error}</p>
          <p className="text-sm text-gray-600">Assurez-vous que l'API est lancée sur http://localhost:3001</p>
          <button
            onClick={() => window.location.reload()}
            className="mt-4 px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors"
          >
            Réessayer
          </button>
        </motion.div>
      </div>
    );
  }

  // Rendu principal de la page
  return (
    <motion.div
      className="pt-24 px-5 pb-10 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 1 }}
    >
      {/* Titre animé de la page */}
      <motion.h1
        className="text-4xl sm:text-5xl md:text-6xl font-extrabold mb-8 drop-shadow-lg text-center"
        initial={{ y: -30, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 1 }}
      >
        Comparer les joueurs 🏀
      </motion.h1>

      {/* Description de la fonctionnalité */}
      <motion.p
        className="text-sm sm:text-lg md:text-xl mb-10 max-w-3xl mx-auto drop-shadow-md text-center"
        initial={{ y: 20, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ delay: 0.5, duration: 1 }}
      >
        Compare les statistiques des joueurs et leurs performances sur la saison NBA 2025-2026. Sélectionne un ou deux joueurs ci-dessous.
      </motion.p>

      {/* Composant graphique pour la comparaison des joueurs */}
      <div className="w-full max-w-5xl">
        <PlayerStatsChart
          selectedPlayers={selectedPlayers}
          togglePlayer={togglePlayer}
          allPlayers={players} // prop renommée pour cohérence
        />
      </div>

      {/* Informations sur la saison affichées en bas */}
      <motion.p
        className="mt-10 text-center text-white/80 italic max-w-md drop-shadow-md"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.8, duration: 1 }}
      >
        Données basées sur la saison NBA 2025-2026. Sélectionne un ou deux joueurs pour comparer leurs performances.
      </motion.p>
    </motion.div>
  );
}
