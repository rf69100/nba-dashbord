/**
 * Service API local pour le dashboard NBA
 * Utilise les données statiques de nbaData.js au lieu d'appels API externes
 */

import { teams, players, getTeamsWithStats } from './nbaData';

/**
 * ========================================
 * ENDPOINTS TEAMS (Équipes)
 * ========================================
 */

/**
 * Récupérer le classement (standings) des équipes
 * @param {object} filters - Filtres optionnels { conference: 'East' ou 'West' }
 * @returns {Promise<Array>} - Tableau des équipes avec leurs statistiques
 */
export const getStandings = async (filters = {}) => {
  // Simuler un délai réseau minime pour UX
  await new Promise(resolve => setTimeout(resolve, 100));

  let teamsData = getTeamsWithStats();

  // Filtrer par conférence si spécifié
  if (filters.conference) {
    teamsData = teamsData.filter(team => team.conference === filters.conference);
  }

  // Trier par nombre de victoires (décroissant)
  teamsData.sort((a, b) => b.wins - a.wins);

  return teamsData;
};

/**
 * Récupérer toutes les équipes (sans statistiques)
 * @param {object} filters - Filtres optionnels { conference, division, page, limit }
 * @returns {Promise<object>} - { teams: Array, pagination: Object }
 */
export const getTeams = async (filters = {}) => {
  await new Promise(resolve => setTimeout(resolve, 100));

  let teamsData = [...teams];

  // Filtrer par conférence si spécifié
  if (filters.conference) {
    teamsData = teamsData.filter(team => team.conference === filters.conference);
  }

  // Pagination
  const page = filters.page || 1;
  const limit = filters.limit || teamsData.length;
  const startIndex = (page - 1) * limit;
  const paginatedTeams = teamsData.slice(startIndex, startIndex + limit);

  return {
    teams: paginatedTeams,
    pagination: {
      total: teamsData.length,
      page,
      limit,
      totalPages: Math.ceil(teamsData.length / limit)
    }
  };
};

/**
 * Récupérer une équipe spécifique avec ses statistiques
 * @param {number} teamId - ID de l'équipe
 * @returns {Promise<object>} - Équipe avec statistiques
 */
export const getTeamWithStats = async (teamId) => {
  await new Promise(resolve => setTimeout(resolve, 100));

  const teamsWithStats = getTeamsWithStats();
  const team = teamsWithStats.find(t => t.id === parseInt(teamId));

  if (!team) {
    throw new Error('Équipe non trouvée');
  }

  return team;
};

/**
 * Récupérer une équipe spécifique (sans statistiques)
 * @param {number} teamId - ID de l'équipe
 * @returns {Promise<object>} - Équipe
 */
export const getTeam = async (teamId) => {
  await new Promise(resolve => setTimeout(resolve, 100));

  const team = teams.find(t => t.id === parseInt(teamId));

  if (!team) {
    throw new Error('Équipe non trouvée');
  }

  return team;
};

/**
 * ========================================
 * ENDPOINTS PLAYERS (Joueurs)
 * ========================================
 */

/**
 * Récupérer tous les joueurs
 * @param {object} filters - Filtres optionnels { team_id, position, page, limit }
 * @returns {Promise<object>} - { players: Array, pagination: Object }
 */
export const getPlayers = async (filters = {}) => {
  await new Promise(resolve => setTimeout(resolve, 100));

  let playersData = [...players];

  // Filtrer par équipe si spécifié
  if (filters.team_id) {
    const team = teams.find(t => t.id === parseInt(filters.team_id));
    if (team) {
      playersData = playersData.filter(p => p.team_name === team.name);
    }
  }

  // Filtrer par position si spécifié
  if (filters.position) {
    playersData = playersData.filter(p =>
      p.position.toLowerCase().includes(filters.position.toLowerCase())
    );
  }

  // Pagination
  const page = filters.page || 1;
  const limit = filters.limit || playersData.length;
  const startIndex = (page - 1) * limit;
  const paginatedPlayers = playersData.slice(startIndex, startIndex + limit);

  return {
    players: paginatedPlayers,
    pagination: {
      total: playersData.length,
      page,
      limit,
      totalPages: Math.ceil(playersData.length / limit)
    }
  };
};

/**
 * Récupérer un joueur spécifique avec ses statistiques
 * @param {number} playerId - ID du joueur
 * @returns {Promise<object>} - Joueur avec statistiques (inclut lastGames)
 */
export const getPlayerWithStats = async (playerId) => {
  await new Promise(resolve => setTimeout(resolve, 100));

  const player = players.find(p => p.id === parseInt(playerId));

  if (!player) {
    throw new Error('Joueur non trouvé');
  }

  return player;
};

/**
 * Récupérer un joueur spécifique (sans statistiques détaillées)
 * @param {number} playerId - ID du joueur
 * @returns {Promise<object>} - Joueur
 */
export const getPlayer = async (playerId) => {
  await new Promise(resolve => setTimeout(resolve, 100));

  const player = players.find(p => p.id === parseInt(playerId));

  if (!player) {
    throw new Error('Joueur non trouvé');
  }

  // Retourner sans les lastGames pour une version allégée
  const { lastGames, ...playerWithoutGames } = player;
  return playerWithoutGames;
};

/**
 * ========================================
 * EXPORT PAR DÉFAUT
 * ========================================
 */
const nbaApi = {
  // Teams
  getStandings,
  getTeams,
  getTeam,
  getTeamWithStats,

  // Players
  getPlayers,
  getPlayer,
  getPlayerWithStats,
};

export default nbaApi;
