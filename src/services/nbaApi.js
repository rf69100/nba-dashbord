/**
 * Service API pour communiquer avec le backend NBA API
 *
 * Ce service remplace progressivement nbaData.js en appelant
 * l'API REST au lieu d'utiliser des données statiques.
 */

// Configuration de l'URL de base de l'API
const API_BASE_URL = process.env.REACT_APP_API_URL || 'http://localhost:3001/api/v1';

/**
 * Classe de gestion des erreurs API
 */
class ApiError extends Error {
  constructor(message, status, data) {
    super(message);
    this.name = 'ApiError';
    this.status = status;
    this.data = data;
  }
}

/**
 * Fonction utilitaire pour gérer les appels fetch
 * @param {string} endpoint - L'endpoint à appeler (ex: '/teams/standings')
 * @param {object} options - Options fetch (method, headers, body...)
 * @returns {Promise} - Promesse contenant les données ou une erreur
 */
const fetchFromAPI = async (endpoint, options = {}) => {
  try {
    const url = `${API_BASE_URL}${endpoint}`;

    const defaultOptions = {
      headers: {
        'Content-Type': 'application/json',
        ...options.headers,
      },
    };

    const response = await fetch(url, { ...defaultOptions, ...options });

    // Récupérer le corps de la réponse
    const data = await response.json();

    // Si la réponse n'est pas OK, lever une erreur
    if (!response.ok) {
      throw new ApiError(
        data.message || 'Une erreur est survenue',
        response.status,
        data
      );
    }

    return data;
  } catch (error) {
    // Si c'est déjà une ApiError, la relancer
    if (error instanceof ApiError) {
      throw error;
    }

    // Si c'est une erreur réseau ou autre
    console.error('Erreur de connexion à l\'API:', error);
    throw new ApiError(
      'Impossible de se connecter à l\'API. Vérifiez que le serveur est lancé.',
      0,
      null
    );
  }
};

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
  const queryParams = new URLSearchParams();

  if (filters.conference) {
    queryParams.append('conference', filters.conference);
  }

  const endpoint = `/teams/standings${queryParams.toString() ? '?' + queryParams.toString() : ''}`;

  const response = await fetchFromAPI(endpoint);
  return response.data;
};

/**
 * Récupérer toutes les équipes (sans statistiques)
 * @param {object} filters - Filtres optionnels { conference, division, page, limit }
 * @returns {Promise<object>} - { teams: Array, pagination: Object }
 */
export const getTeams = async (filters = {}) => {
  const queryParams = new URLSearchParams();

  if (filters.conference) queryParams.append('conference', filters.conference);
  if (filters.division) queryParams.append('division', filters.division);
  if (filters.page) queryParams.append('page', filters.page);
  if (filters.limit) queryParams.append('limit', filters.limit);

  const endpoint = `/teams${queryParams.toString() ? '?' + queryParams.toString() : ''}`;

  const response = await fetchFromAPI(endpoint);
  return {
    teams: response.data,
    pagination: response.pagination
  };
};

/**
 * Récupérer une équipe spécifique avec ses statistiques
 * @param {number} teamId - ID de l'équipe
 * @returns {Promise<object>} - Équipe avec statistiques
 */
export const getTeamWithStats = async (teamId) => {
  const response = await fetchFromAPI(`/teams/${teamId}/stats`);
  return response.data;
};

/**
 * Récupérer une équipe spécifique (sans statistiques)
 * @param {number} teamId - ID de l'équipe
 * @returns {Promise<object>} - Équipe
 */
export const getTeam = async (teamId) => {
  const response = await fetchFromAPI(`/teams/${teamId}`);
  return response.data;
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
  const queryParams = new URLSearchParams();

  if (filters.team_id) queryParams.append('team_id', filters.team_id);
  if (filters.position) queryParams.append('position', filters.position);
  if (filters.page) queryParams.append('page', filters.page);
  if (filters.limit) queryParams.append('limit', filters.limit);

  const endpoint = `/players${queryParams.toString() ? '?' + queryParams.toString() : ''}`;

  const response = await fetchFromAPI(endpoint);
  return {
    players: response.data,
    pagination: response.pagination
  };
};

/**
 * Récupérer un joueur spécifique avec ses statistiques
 * @param {number} playerId - ID du joueur
 * @returns {Promise<object>} - Joueur avec statistiques (inclut lastGames)
 */
export const getPlayerWithStats = async (playerId) => {
  const response = await fetchFromAPI(`/players/${playerId}/stats`);
  return response.data;
};

/**
 * Récupérer un joueur spécifique (sans statistiques)
 * @param {number} playerId - ID du joueur
 * @returns {Promise<object>} - Joueur
 */
export const getPlayer = async (playerId) => {
  const response = await fetchFromAPI(`/players/${playerId}`);
  return response.data;
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
