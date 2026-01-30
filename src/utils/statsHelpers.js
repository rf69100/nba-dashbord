/**
 * Préparation et tri des stats pour la page Stats
 * 
 * Usage:
 *   import { preparePlayerSeasonStats, sortPlayersByCategory } from '../utils/statsHelpers';
 */

// ─────────────────────────────────────────────────────────────
// FONCTIONS INTERNES (non exportées)
// ─────────────────────────────────────────────────────────────

function avg(games, key) {
  if (!games?.length) return '0.0';
  const sum = games.reduce((acc, g) => acc + (g[key] || 0), 0);
  return (sum / games.length).toFixed(1);
}

function pct(games, made, attempted) {
  if (!games?.length) return '0.0';
  const m = games.reduce((acc, g) => acc + (g[made] || 0), 0);
  const a = games.reduce((acc, g) => acc + (g[attempted] || 0), 0);
  return a === 0 ? '0.0' : ((m / a) * 100).toFixed(1);
}

// ─────────────────────────────────────────────────────────────
// FONCTIONS EXPORTÉES
// ─────────────────────────────────────────────────────────────

/**
 * Transforme un joueur avec ses season_stats en objet formaté pour l'affichage
 * Utilise les TOTAUX de saison divisés par GP pour les moyennes
 * @param {Object} player - Données brutes du joueur avec season_stats
 * @returns {Object|null} Joueur avec stats calculées (moyennes par match)
 */
export function preparePlayerSeasonStats(player) {
  const stats = player.season_stats;
  if (!stats || !stats.GP || stats.GP === 0) return null;

  const gp = stats.GP;

  return {
    id: player.id,
    name: player.display_name || player.name,
    team: player.team_abbreviation,
    position: player.position,
    photo: player.photo_url,
    stats: {
      // Moyennes par match (totaux / GP)
      points: (stats.PTS / gp).toFixed(1),
      rebounds: (stats.TRB / gp).toFixed(1),
      assists: (stats.AST / gp).toFixed(1),
      steals: (stats.STL / gp).toFixed(1),
      blocks: (stats.BLK / gp).toFixed(1),
      // Pourcentages (déjà stockés comme décimaux 0.xxx, convertir en %)
      fieldGoalPct: (stats['FG%'] * 100).toFixed(1),
      threePointPct: (stats['3P%'] * 100).toFixed(1),
      freeThrowPct: (stats['FT%'] * 100).toFixed(1),
      // Nombre de matchs joués
      gamesPlayed: gp,
    },
  };
}

/**
 * Transforme un joueur brut en objet formaté pour l'affichage stats (basé sur lastGames)
 * @deprecated Utiliser preparePlayerSeasonStats pour les stats de saison
 * @param {Object} player - Données brutes du joueur
 * @param {Array} games - Derniers matchs (player.lastGames)
 * @returns {Object|null} Joueur avec stats calculées
 */
export function preparePlayerStats(player, games) {
  if (!games?.length) return null;

  return {
    id: player.id,
    name: player.display_name || player.name,
    team: player.team_abbreviation,
    position: player.position,
    photo: player.photo_url || player.info?.photo,
    stats: {
      points: avg(games, 'PTS'),
      rebounds: avg(games, 'REB'),
      assists: avg(games, 'AST'),
      steals: avg(games, 'STL'),
      blocks: avg(games, 'BLK'),
      fieldGoalPct: pct(games, 'FG', 'FGA'),
      threePointPct: pct(games, '3P', '3PA'),
      freeThrowPct: pct(games, 'FT', 'FTA'),
      gamesPlayed: games.length,
    },
  };
}

/**
 * Trie les joueurs par une catégorie de stats (décroissant)
 * @param {Array} players - Liste de joueurs avec stats{}
 * @param {string} category - Clé de stats (points, rebounds, assists...)
 * @returns {Array} Joueurs triés
 */
export function sortPlayersByCategory(players, category) {
  return [...players].sort((a, b) => {
    const statA = parseFloat(a.stats?.[category]) || 0;
    const statB = parseFloat(b.stats?.[category]) || 0;
    return statB - statA;
  });
}
