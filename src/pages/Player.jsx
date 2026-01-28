import { useState } from "react";
import usePlayersData from "../hooks/usePlayersData";
import SearchBar from "../components/players/SearchBar";
import TeamFilter from "../components/players/TeamFilter";
import PositionFilter from "../components/players/PositionFilter";
import PlayerCardItem from "../components/players/PlayerCardItem";
import PageContainer from "../components/layout/PageContainer";
import PageLoader from "../components/layout/PageLoader";
import ErrorMessage from "../components/layout/ErrorMessage";
import PageTitle from "../components/layout/PageTitle";
import { applyAllFilters } from "../utils/players/filterPlayers";

/**
 * Page joueurs - Recherche et accès aux profils
 */
export default function Player() {
  const { players, uniqueTeams, loading, error } = usePlayersData();
  const [searchTerm, setSearchTerm] = useState("");
  const [filterTeam, setFilterTeam] = useState("");
  const [filterPosition, setFilterPosition] = useState("");
  const [openTeamDropdown, setOpenTeamDropdown] = useState(false);

  const filteredPlayers = applyAllFilters(
    players,
    searchTerm,
    filterTeam,
    filterPosition
  );

  if (loading) {
    return <PageLoader message="Chargement des joueurs..." />;
  }

  if (error) {
    return (
      <ErrorMessage
        message={error || "Impossible de charger les joueurs"}
        onRetry={() => window.location.reload()}
      />
    );
  }

  return (
    <PageContainer>
      <div className="max-w-7xl mx-auto">
        <PageTitle>Joueurs NBA</PageTitle>

        <div className="bg-white/95 backdrop-blur-sm rounded-2xl shadow-2xl p-6 sm:p-8">
          <SearchBar
            value={searchTerm}
            onChange={setSearchTerm}
            placeholder="Nom, équipe ou position..."
            label="Rechercher un joueur"
          />

          <TeamFilter
            teams={uniqueTeams}
            selectedTeam={filterTeam}
            onSelectTeam={setFilterTeam}
            isOpen={openTeamDropdown}
            onToggle={() => setOpenTeamDropdown(!openTeamDropdown)}
          />

          <PositionFilter
            selectedPosition={filterPosition}
            onSelectPosition={setFilterPosition}
          />

          {filteredPlayers.length === 0 ? (
            <div className="text-center py-12 text-gray-600">
              Aucun joueur trouvé pour cette recherche.
            </div>
          ) : (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
              {filteredPlayers.map((player) => (
                <PlayerCardItem key={player.id} player={player} />
              ))}
            </div>
          )}
        </div>
      </div>
    </PageContainer>
  );
}
