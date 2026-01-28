import { useParams, Link } from "react-router-dom";
import usePlayerProfile from "../hooks/usePlayerProfile";
import PageLoader from "../components/layout/PageLoader";
import ErrorMessage from "../components/layout/ErrorMessage";
import PlayerHeader from "../components/playerProfile/PlayerHeader";
import PlayerProfileCard from "../components/playerProfile/PlayerProfileCard";
import PlayerStatsCard from "../components/playerProfile/PlayerStatsCard";
import PlayerShootingStats from "../components/playerProfile/PlayerShootingStats";
import PlayerRecentGames from "../components/playerProfile/PlayerRecentGames";

/**
 * Page de profil détaillé d'un joueur NBA
 * Affiche toutes les informations et statistiques du joueur
 */
export default function PlayerProfile() {
  const { id } = useParams();
  const { player, teamId, loading, error } = usePlayerProfile(id);

  if (loading) {
    return <PageLoader message="Chargement du profil..." />;
  }

  if (error || !player) {
    return (
      <ErrorMessage
        message={error || 'Joueur introuvable'}
        onRetry={() => window.location.reload()}
      />
    );
  }

  return (
    <div className="pt-16 min-h-screen bg-gradient-to-b from-blue-900 via-blue-700 to-blue-500">
      <PlayerHeader player={player} teamId={teamId} />

      {/* Informations détaillées */}
      <div className="container mx-auto max-w-6xl px-4 py-8">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          <PlayerProfileCard player={player} />
          <PlayerStatsCard player={player} />
          <PlayerShootingStats player={player} />
        </div>

        <PlayerRecentGames player={player} />

        {/* Bouton retour */}
        <div className="mt-8 text-center">
          <Link
            to="/player"
            className="inline-block px-8 py-3 bg-blue-600 text-white font-semibold rounded-lg shadow-lg hover:bg-blue-700 transition-all duration-300 hover:scale-105"
          >
            ← Retour aux joueurs
          </Link>
        </div>
      </div>
    </div>
  );
}
