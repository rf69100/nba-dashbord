import { motion } from "framer-motion";
import { useTeamsData } from "../hooks/useTeamsData";
import ConferenceSection from "../components/teams/ConferenceSection";
import PageContainer from "../components/layout/PageContainer";
import PageLoader from "../components/layout/PageLoader";
import ErrorMessage from "../components/layout/ErrorMessage";
import PageTitle from "../components/layout/PageTitle";

/**
 * Page Teams - Affiche toutes les équipes NBA organisées par division
 */
export default function Teams() {
  // Hook personnalisé pour charger les données
  const { conferences, loading, error } = useTeamsData();

  // Variants pour les animations Framer Motion
  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1,
      },
    },
  };

  const divisionVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: {
      opacity: 1,
      y: 0,
      transition: { duration: 0.5 },
    },
  };

  if (loading) {
    return <PageLoader message="Chargement des équipes..." />;
  }

  if (error || !conferences) {
    return (
      <ErrorMessage
        message={error || "Impossible de charger les équipes"}
        onRetry={() => window.location.reload()}
      />
    );
  }

  return (
    <PageContainer>
      <div className="max-w-7xl mx-auto">
        <PageTitle>Équipes NBA</PageTitle>

        {/* Contenu principal */}
        <motion.main
          variants={containerVariants}
          initial="hidden"
          animate="visible"
          className="w-full"
        >
          <div className="bg-white/95 backdrop-blur-sm rounded-2xl shadow-2xl p-6 sm:p-8">
            {/* Conférence Est */}
            <ConferenceSection
              title="Eastern Conference"
              divisions={conferences.Eastern}
              divisionVariants={divisionVariants}
            />

            {/* Conférence Ouest */}
            <ConferenceSection
              title="Western Conference"
              divisions={conferences.Western}
              divisionVariants={divisionVariants}
            />
          </div>
        </motion.main>
      </div>
    </PageContainer>
  );
}
