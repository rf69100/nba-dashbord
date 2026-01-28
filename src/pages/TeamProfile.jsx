import { useParams, Link } from "react-router-dom";
import useTeamProfile from "../hooks/useTeamProfile";
import PageLoader from "../components/layout/PageLoader";
import ErrorMessage from "../components/layout/ErrorMessage";
import TeamHeader from "../components/teamProfile/TeamHeader";
import TeamInfoCard from "../components/teamProfile/TeamInfoCard";
import TeamOffensiveStats from "../components/teamProfile/TeamOffensiveStats";
import TeamOtherStats from "../components/teamProfile/TeamOtherStats";
import TeamRoster from "../components/teamProfile/TeamRoster";
import TeamRecentGames from "../components/teamProfile/TeamRecentGames";

/**
 * Page de profil détaillé d'une équipe NBA
 * Affiche toutes les informations et statistiques de l'équipe
 */
export default function TeamProfile() {
  const { id } = useParams();
  const { team, loading, error } = useTeamProfile(id);

  if (loading) {
    return <PageLoader message="Chargement de l'équipe..." />;
  }

  if (error || !team) {
    return (
      <ErrorMessage
        message={error || 'Équipe introuvable'}
        onRetry={() => window.location.reload()}
      />
    );
  }

  return (
    <div className="pt-16 min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300">
      <TeamHeader team={team} />

      {/* Informations détaillées */}
      <div className="container mx-auto max-w-6xl px-4 py-8">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          <TeamInfoCard team={team} />
          <TeamOffensiveStats stats={team.stats} />
          <TeamOtherStats team={team} />
        </div>

        <TeamRoster roster={team.roster} />
        <TeamRecentGames lastGames={team.lastGames} />

        {/* Bouton retour */}
        <div className="mt-8 text-center">
          <Link
            to="/teams"
            className="inline-block px-8 py-3 bg-red-600 text-white font-semibold rounded-lg shadow-lg hover:bg-red-700 transition-all duration-300 hover:scale-105"
          >
            ← Retour aux équipes
          </Link>
        </div>
      </div>
    </div>
  );
}
