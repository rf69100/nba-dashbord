/**
 * Utilitaires pour le formatage des données de classement NBA
 */

/**
 * Ajoute les rangs aux équipes selon leur nombre de victoires
 * @param {Array} teams - Liste des équipes
 * @returns {Array} - Liste des équipes avec rangs
 */
export function addRankToTeams(teams) {
  return teams.map((team, index) => ({
    ...team,
    rank: index + 1,
  }));
}

/**
 * Formate le pourcentage de victoires
 * @param {number} winPercentage - Pourcentage de victoires (0-1 ou 0-100)
 * @returns {string} - Pourcentage formaté (ex: "75.5%")
 */
export function formatWinPercentage(winPercentage) {
  if (winPercentage === null || winPercentage === undefined) return "—";
  
  // Si le pourcentage est entre 0 et 1, le convertir en 0-100
  const percentage = winPercentage <= 1 ? winPercentage * 100 : winPercentage;
  
  return `${percentage.toFixed(1)}%`;
}

/**
 * Obtient la couleur du rang selon la position
 * @param {number} rank - Position dans le classement
 * @returns {string} - Classe CSS pour la couleur
 */
export function getRankColor(rank) {
  if (rank <= 3) return "text-yellow-600"; // Top 3
  if (rank <= 6) return "text-green-600"; // Playoffs
  if (rank <= 10) return "text-blue-600"; // Play-in
  return "text-gray-600"; // Autres
}

/**
 * Filtre les équipes par conférence
 * @param {Array} teams - Liste de toutes les équipes
 * @param {string} conference - Conférence à filtrer ("All", "East", "West")
 * @returns {Array} - Liste des équipes filtrées
 */
export function filterTeamsByConference(teams, conference) {
  if (conference === "All") return teams;
  return teams.filter((team) => team.conference === conference);
}
