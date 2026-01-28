/**
 * Utilitaires pour filtrer les joueurs
 */

export function filterPlayersBySearch(players, searchTerm) {
  const normalizedSearch = searchTerm.trim().toLowerCase();
  if (!normalizedSearch) return players;

  return players.filter((player) => {
    const name = player.display_name?.toLowerCase() || '';
    const team = player.team_name?.toLowerCase() || '';
    const position = player.position?.toLowerCase() || '';
    return (
      name.includes(normalizedSearch) ||
      team.includes(normalizedSearch) ||
      position.includes(normalizedSearch)
    );
  });
}

export function filterPlayersByTeam(players, filterTeam) {
  if (!filterTeam) return players;
  return players.filter((player) => player.team_name === filterTeam);
}

export function filterPlayersByPosition(players, filterPosition) {
  if (!filterPosition) return players;
  
  return players.filter((player) => {
    const playerPositionLower = player.position?.toLowerCase() || '';
    const filterPositionLower = filterPosition.toLowerCase();
    return playerPositionLower.includes(filterPositionLower);
  });
}

export function applyAllFilters(
  players,
  searchTerm,
  filterTeam,
  filterPosition
) {
  let result = players;
  result = filterPlayersBySearch(result, searchTerm);
  result = filterPlayersByTeam(result, filterTeam);
  result = filterPlayersByPosition(result, filterPosition);
  return result;
}
