// Importation des hooks et composants nécessaires
import { motion } from "framer-motion"; // Pour les animations
import useComparisonMode from "../hooks/useComparisonMode"; // Hook pour le mode (équipes/joueurs)
import useComparisonData from "../hooks/useComparisonData"; // Hook pour la comparaison de joueurs
import useTeamsComparison from "../hooks/useTeamsComparison"; // Hook pour la comparaison d'équipes
import PageContainer from "../components/layout/PageContainer";
import PageLoader from "../components/layout/PageLoader";
import ErrorMessage from "../components/layout/ErrorMessage";
import PageTitle from "../components/layout/PageTitle";
import ComparisonModeSelector from "../components/comparison/ComparisonModeSelector";
import PlayersComparison from "../components/comparison/PlayersComparison";
import TeamsComparison from "../components/comparison/TeamsComparison";

/**
 * Page principale pour comparer les joueurs ou équipes NBA.
 * Permet de sélectionner le mode de comparaison puis les éléments à comparer.
 */
export default function Comparison() {
  const { mode, setMode } = useComparisonMode();
  const { selectedPlayers, players, loading: playersLoading, error: playersError, togglePlayer } =
    useComparisonData();
  const { selectedTeams, teams, loading: teamsLoading, error: teamsError, toggleTeam } =
    useTeamsComparison();

  const loading = mode === 'players' ? playersLoading : teamsLoading;
  const error = mode === 'players' ? playersError : teamsError;

  // Rendu principal de la page
  return (
    <PageContainer>
      <PageTitle>Comparer</PageTitle>

      {/* Selector du mode de comparaison */}
      <ComparisonModeSelector mode={mode} onModeChange={setMode} />

      {/* Description selon le mode */}
      <motion.p
        className="text-sm sm:text-lg md:text-xl mb-10 max-w-3xl mx-auto drop-shadow-md text-center text-white"
        initial={{ y: 20, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ delay: 0.5, duration: 1 }}
      >
        {mode === 'players'
          ? 'Compare les statistiques des joueurs et leurs performances sur la saison NBA 2025-2026.'
          : 'Compare les statistiques et performances des équipes NBA de la saison 2025-2026.'}
      </motion.p>

      {/* Affichage pendant le chargement */}
      {loading ? (
        <PageLoader message={mode === 'players' ? 'Chargement des joueurs...' : 'Chargement des équipes...'} />
      ) : error ? (
        <ErrorMessage message={error} onRetry={() => window.location.reload()} />
      ) : (
        <div className="w-full max-w-5xl">
          {mode === 'players' ? (
            <PlayersComparison
              selectedPlayers={selectedPlayers}
              players={players}
              loading={playersLoading}
              onTogglePlayer={togglePlayer}
            />
          ) : (
            <TeamsComparison
              selectedTeams={selectedTeams}
              teams={teams}
              loading={teamsLoading}
              onToggleTeam={toggleTeam}
            />
          )}
        </div>
      )}

      {/* Informations supplémentaires */}
      <motion.p
        className="mt-10 text-center text-white/80 italic max-w-md drop-shadow-md"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.8, duration: 1 }}
      >
        Données basées sur la saison NBA 2025-2026. Sélectionne {mode === 'players' ? 'un ou deux joueurs' : '1 ou 2 équipes'} pour comparer leurs performances.
      </motion.p>
    </PageContainer>
  );
}
