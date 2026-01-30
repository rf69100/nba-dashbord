// Importation des modules nécessaires
import React, { useState } from "react"; // React et hooks d'état
import { motion } from "framer-motion"; // Pour les animations
import { useStandingsData } from "../hooks/useStandingsData"; // Hook personnalisé
import ConferenceFilter from "../components/standings/ConferenceFilter"; // Filtre de conférence
import StandingsCard from "../components/standings/StandingsCard"; // Carte mobile
import TeamStandingsTable from "../components/teams/TeamStandingsTable"; // Tableau de classement
import PageContainer from "../components/layout/PageContainer";
import PageLoader from "../components/layout/PageLoader";
import ErrorMessage from "../components/layout/ErrorMessage";
import PageTitle from "../components/layout/PageTitle";

const Standings = () => {
  // État pour gérer la conférence sélectionnée
  const [conference, setConference] = useState("All");
  
  // Hook personnalisé pour charger les données
  const { teams, loading, error } = useStandingsData(conference);

  // Conférences disponibles
  const conferences = ["All", "East", "West"];

  // Affichage pendant le chargement
  if (loading) {
    return <PageLoader message="Chargement des équipes..." />;
  }

  // Affichage en cas d'erreur
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
      <PageTitle>Classement des équipes</PageTitle>

      {/* Filtres de conférences */}
      <ConferenceFilter
        conferences={conferences}
        selectedConference={conference}
        onSelectConference={setConference}
      />

      {/* Tableau avec conteneur responsive */}
      <motion.div
        className="w-full max-w-4xl bg-white text-gray-900 rounded-xl sm:rounded-2xl shadow-2xl p-3 sm:p-6 overflow-x-auto"
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.8 }}
      >
        {/* Version mobile - Cartes */}
        <div className="block sm:hidden">
          {teams.map((team, index) => (
            <StandingsCard key={team.id} team={team} index={index} />
          ))}
        </div>

        {/* Version desktop - tableau complet */}
        <div className="hidden sm:block">
          <TeamStandingsTable teams={teams} />
        </div>
      </motion.div>

      {/* Légende */}
      <motion.p
        className="mt-6 text-white/80 italic text-center max-w-md text-sm sm:text-base"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 1, duration: 1 }}
      >
        Classement basé sur la saison NBA 2024-2025.
      </motion.p>
    </PageContainer>
  );
};

export default Standings;
