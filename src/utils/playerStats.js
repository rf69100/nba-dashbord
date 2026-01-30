/**
 * Calculs de statistiques joueur
 * 
 * Usage:
 *   import { calculateAverage, calculatePercentage, calculateExperience } from '../utils/playerStats';
 */

/**
 * Calcule la moyenne d'une stat sur les derniers matchs du joueur
 * @param {Object} player - Joueur avec lastGames[]
 * @param {string} stat - Clé de la stat (PTS, REB, AST...)
 * @returns {string} Moyenne avec 1 décimale
 */
export function calculateAverage(player, stat) {
  const games = player?.lastGames;
  if (!games?.length) return '0.0';
  
  const sum = games.reduce((acc, g) => acc + (g[stat] || 0), 0);
  return (sum / games.length).toFixed(1);
}

/**
 * Calcule un pourcentage de réussite (tirs, LF...)
 * @param {Object} player - Joueur avec lastGames[]
 * @param {string} made - Clé des tirs réussis (FG, 3P, FT...)
 * @param {string} attempted - Clé des tirs tentés (FGA, 3PA, FTA...)
 * @returns {string} Pourcentage avec 1 décimale
 */
export function calculatePercentage(player, made, attempted) {
  const games = player?.lastGames;
  if (!games?.length) return '0.0';
  
  const totalMade = games.reduce((acc, g) => acc + (g[made] || 0), 0);
  const totalAttempted = games.reduce((acc, g) => acc + (g[attempted] || 0), 0);
  
  if (totalAttempted === 0) return '0.0';
  return ((totalMade / totalAttempted) * 100).toFixed(1);
}

/**
 * Estime l'expérience NBA à partir de la date de naissance
 * @param {string} birthDate - Date de naissance (ISO)
 * @returns {string} "Rookie" ou "X Year(s)"
 */
export function calculateExperience(birthDate) {
  if (!birthDate) return 'N/A';
  
  const age = new Date().getFullYear() - new Date(birthDate).getFullYear();
  const years = Math.max(0, age - 19); // Âge moyen draft = 19 ans
  
  if (years === 0) return 'Rookie';
  return `${years} Year${years > 1 ? 's' : ''}`;
}
