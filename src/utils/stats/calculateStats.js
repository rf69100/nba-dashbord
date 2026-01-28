/**
 * Utilitaires pour calculer les statistiques des joueurs
 */

/**
 * Calcule la moyenne d'une statistique sur les derniers matchs
 * @param {Array} games - Liste des matchs
 * @param {string} statKey - Clé de la statistique (ex: "PTS", "REB")
 * @returns {number} Moyenne de la statistique
 */
export const calculateAverageStat = (games, statKey) => {
  if (!games || games.length === 0) return 0;
  const total = games.reduce((sum, g) => sum + (g[statKey] || 0), 0);
  return (total / games.length).toFixed(1);
};

/**
 * Calcule un pourcentage basé sur deux statistiques
 * @param {Array} games - Liste des matchs
 * @param {string} madeKey - Clé pour les tentatives réussies
 * @param {string} attemptedKey - Clé pour le total des tentatives
 * @returns {number} Pourcentage
 */
export const calculatePercentage = (games, madeKey, attemptedKey) => {
  if (!games || games.length === 0) return 0;
  const totalMade = games.reduce((sum, g) => sum + (g[madeKey] || 0), 0);
  const totalAttempted = games.reduce((sum, g) => sum + (g[attemptedKey] || 0), 0);
  if (totalAttempted === 0) return 0;
  return ((totalMade / totalAttempted) * 100).toFixed(1);
};

/**
 * Prépare les stats d'un joueur pour l'affichage
 * @param {Object} playerData - Données du joueur
 * @param {Array} games - Derniers matchs du joueur
 * @returns {Object} Objet avec les stats formatées
 */
export const preparePlayerStats = (playerData, games) => {
  if (!games || games.length === 0) return null;

  const gamesCount = games.length;

  return {
    id: playerData.id,
    name: playerData.display_name || playerData.name,
    team: playerData.team_abbreviation,
    position: playerData.position,
    photo: playerData.photo_url || playerData.info?.photo,
    stats: {
      points: calculateAverageStat(games, "PTS"),
      rebounds: calculateAverageStat(games, "REB"),
      assists: calculateAverageStat(games, "AST"),
      steals: calculateAverageStat(games, "STL"),
      blocks: calculateAverageStat(games, "BLK"),
      fieldGoalPct: calculatePercentage(games, "FG", "FGA"),
      threePointPct: calculatePercentage(games, "3P", "3PA"),
      freeThrowPct: calculatePercentage(games, "FT", "FTA"),
      gamesPlayed: gamesCount,
    },
  };
};

/**
 * Trie les joueurs selon une catégorie de stats
 * @param {Array} players - Liste des joueurs
 * @param {string} category - Catégorie à trier
 * @returns {Array} Joueurs triés
 */
export const sortPlayersByCategory = (players, category) => {
  return [...players].sort((a, b) => {
    const statA = parseFloat(a.stats[category]) || 0;
    const statB = parseFloat(b.stats[category]) || 0;
    return statB - statA;
  });
};
