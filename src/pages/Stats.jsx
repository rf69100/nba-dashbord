import { useState, useMemo } from "react";
import { motion } from "framer-motion";
import { useStatsData } from "../hooks/useStatsData";
import { sortPlayersByCategory } from "../utils/stats/calculateStats";
import CategoryFilter from "../components/stats/CategoryFilter";
import StatsTable from "../components/stats/StatsTable";
import StatsInfoBox from "../components/stats/StatsInfoBox";
import PageContainer from "../components/layout/PageContainer";
import PageLoader from "../components/layout/PageLoader";
import ErrorMessage from "../components/layout/ErrorMessage";
import PageTitle from "../components/layout/PageTitle";

/**
 * Page des statistiques NBA - Leaders de la ligue
 * Affiche les meilleurs joueurs dans différentes catégories
 */
export default function Stats() {
  const [selectedCategory, setSelectedCategory] = useState("points");
  const { players, loading, error } = useStatsData();

  // Catégories de statistiques disponibles
  const categories = [
    { key: "points", label: "POINTS", abbr: "PTS" },
    { key: "rebounds", label: "REBOUNDS", abbr: "REB" },
    { key: "assists", label: "ASSISTS", abbr: "AST" },
    { key: "steals", label: "STEALS", abbr: "STL" },
    { key: "blocks", label: "BLOCKS", abbr: "BLK" },
    { key: "fieldGoalPct", label: "FG%", abbr: "FG%" },
    { key: "threePointPct", label: "3P%", abbr: "3P%" },
    { key: "freeThrowPct", label: "FT%", abbr: "FT%" },
  ];

  // Optimisation : useMemo pour éviter les re-calculs inutiles
  const sortedPlayers = useMemo(
    () => sortPlayersByCategory(players, selectedCategory),
    [players, selectedCategory]
  );

  const currentCategory = categories.find((cat) => cat.key === selectedCategory);

  if (loading) {
    return <PageLoader message="Chargement des statistiques..." />;
  }

  if (error) {
    return (
      <ErrorMessage
        message={error}
        onRetry={() => window.location.reload()}
      />
    );
  }

  return (
    <PageContainer>
      <div className="max-w-7xl mx-auto px-3 sm:px-4">
        <PageTitle>Statistiques</PageTitle>

        <motion.div
          className="bg-white/95 backdrop-blur-sm rounded-xl sm:rounded-2xl shadow-xl p-4 sm:p-6 md:p-8"
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5 }}
        >
          {/* Section Header */}
          <motion.div
            className="mb-6 sm:mb-8"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.2 }}
          >
            <h2 className="text-2xl sm:text-3xl font-bold text-gray-800 mb-1 sm:mb-2 pb-2 sm:pb-3 border-b-4 border-blue-600">
              LEADERS DE LA LIGUE
            </h2>
            <p className="text-gray-600 font-medium text-xs sm:text-sm">
              Top 20 joueurs • Saison 2024-25
            </p>
          </motion.div>

          {/* Filtres de catégories */}
          <motion.div
            initial={{ opacity: 0, y: 10 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.3 }}
            className="mb-6 sm:mb-8"
          >
            <p className="text-gray-700 text-xs sm:text-sm font-semibold mb-3">
              Statistique :
            </p>
            <CategoryFilter
              categories={categories}
              selectedCategory={selectedCategory}
              onSelectCategory={setSelectedCategory}
            />
          </motion.div>

          {/* Tableau des leaders */}
          <motion.div
            initial={{ opacity: 0, y: 10 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.4 }}
          >
            <StatsTable
              players={sortedPlayers}
              currentCategory={currentCategory}
              statKey={selectedCategory}
            />
          </motion.div>

          {/* Info Box */}
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.6 }}
            className="mt-8"
          >
            <StatsInfoBox />
          </motion.div>

          {/* Footer */}
          <motion.p
            className="mt-6 sm:mt-8 text-gray-500 italic text-center text-xs sm:text-sm"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.7, duration: 1 }}
          >
            Statistiques basées sur les 10 derniers matchs
          </motion.p>
        </motion.div>
      </div>
    </PageContainer>
  );
}
