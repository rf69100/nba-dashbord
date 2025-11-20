/**
 * Service API pour communiquer avec l'API balldontlie
 * Documentation: https://docs.balldontlie.io/
 */

const API_BASE_URL = 'https://api.balldontlie.io/v1';
const API_KEY = process.env.REACT_APP_BALLDONTLIE_API_KEY;

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
 */
const fetchFromAPI = async (endpoint, options = {}) => {
  try {
    const url = `${API_BASE_URL}${endpoint}`;

    const defaultOptions = {
      headers: {
        'Authorization': API_KEY,
        'Content-Type': 'application/json',
        ...options.headers,
      },
    };

    const response = await fetch(url, { ...defaultOptions, ...options });

    // Gérer les erreurs de rate limit (429)
    if (response.status === 429) {
      const text = await response.text();
      throw new ApiError(
        'Limite de requêtes API atteinte. Veuillez patienter quelques minutes avant de réessayer. L\'API balldontlie gratuite a des limites strictes.',
        response.status,
        { message: text }
      );
    }

    const data = await response.json();

    if (!response.ok) {
      throw new ApiError(
        data.message || 'Une erreur est survenue',
        response.status,
        data
      );
    }

    return data;
  } catch (error) {
    if (error instanceof ApiError) {
      throw error;
    }

    console.error('Erreur de connexion à l\'API balldontlie:', error);
    throw new ApiError(
      'Impossible de se connecter à l\'API balldontlie.',
      0,
      null
    );
  }
};

/**
 * ========================================
 * TEAMS (Équipes)
 * ========================================
 */

/**
 * Récupérer toutes les équipes
 */
export const getTeams = async () => {
  const response = await fetchFromAPI('/teams');
  return response.data || [];
};

/**
 * Récupérer une équipe spécifique
 */
export const getTeam = async (teamId) => {
  const response = await fetchFromAPI(`/teams/${teamId}`);
  return response;
};

/**
 * ========================================
 * PLAYERS (Joueurs)
 * ========================================
 */

/**
 * Récupérer tous les joueurs avec pagination
 * @param {object} filters - { cursor, per_page, search, team_ids[], player_ids[] }
 */
export const getPlayers = async (filters = {}) => {
  const queryParams = new URLSearchParams();

  if (filters.cursor) queryParams.append('cursor', filters.cursor);
  if (filters.per_page) queryParams.append('per_page', filters.per_page);
  if (filters.search) queryParams.append('search', filters.search);

  if (filters.team_ids && filters.team_ids.length > 0) {
    filters.team_ids.forEach(id => queryParams.append('team_ids[]', id));
  }

  if (filters.player_ids && filters.player_ids.length > 0) {
    filters.player_ids.forEach(id => queryParams.append('player_ids[]', id));
  }

  const endpoint = `/players${queryParams.toString() ? '?' + queryParams.toString() : ''}`;
  const response = await fetchFromAPI(endpoint);

  return {
    players: response.data || [],
    meta: response.meta || {}
  };
};

/**
 * Récupérer un joueur spécifique
 */
export const getPlayer = async (playerId) => {
  const response = await fetchFromAPI(`/players/${playerId}`);
  return response;
};

/**
 * Récupérer les joueurs actifs (pour une saison)
 * @param {object} filters - { season }
 */
export const getActivePlayers = async (filters = {}) => {
  const queryParams = new URLSearchParams();

  if (filters.season) {
    queryParams.append('season', filters.season);
  }

  const endpoint = `/players/active${queryParams.toString() ? '?' + queryParams.toString() : ''}`;
  const response = await fetchFromAPI(endpoint);

  return {
    players: response.data || [],
    meta: response.meta || {}
  };
};

/**
 * ========================================
 * STATS (Statistiques)
 * ========================================
 */

/**
 * Récupérer les statistiques
 * @param {object} filters - { cursor, per_page, seasons[], dates[], player_ids[], game_ids[], start_date, end_date }
 */
export const getStats = async (filters = {}) => {
  const queryParams = new URLSearchParams();

  if (filters.cursor) queryParams.append('cursor', filters.cursor);
  if (filters.per_page) queryParams.append('per_page', filters.per_page);
  if (filters.start_date) queryParams.append('start_date', filters.start_date);
  if (filters.end_date) queryParams.append('end_date', filters.end_date);

  if (filters.seasons && filters.seasons.length > 0) {
    filters.seasons.forEach(s => queryParams.append('seasons[]', s));
  }

  if (filters.dates && filters.dates.length > 0) {
    filters.dates.forEach(d => queryParams.append('dates[]', d));
  }

  if (filters.player_ids && filters.player_ids.length > 0) {
    filters.player_ids.forEach(id => queryParams.append('player_ids[]', id));
  }

  if (filters.game_ids && filters.game_ids.length > 0) {
    filters.game_ids.forEach(id => queryParams.append('game_ids[]', id));
  }

  const endpoint = `/stats${queryParams.toString() ? '?' + queryParams.toString() : ''}`;
  const response = await fetchFromAPI(endpoint);

  return {
    stats: response.data || [],
    meta: response.meta || {}
  };
};

/**
 * ========================================
 * SEASON AVERAGES (Moyennes de saison)
 * ========================================
 */

/**
 * Récupérer les moyennes de saison pour un ou plusieurs joueurs
 * @param {object} filters - { season, player_ids[] }
 */
export const getSeasonAverages = async (filters = {}) => {
  const queryParams = new URLSearchParams();

  if (filters.season) {
    queryParams.append('season', filters.season);
  }

  if (filters.player_ids && filters.player_ids.length > 0) {
    filters.player_ids.forEach(id => queryParams.append('player_ids[]', id));
  }

  const endpoint = `/season_averages${queryParams.toString() ? '?' + queryParams.toString() : ''}`;
  const response = await fetchFromAPI(endpoint);

  return {
    averages: response.data || [],
    meta: response.meta || {}
  };
};

/**
 * ========================================
 * GAMES (Matchs)
 * ========================================
 */

/**
 * Récupérer les matchs
 * @param {object} filters - { cursor, per_page, seasons[], dates[], team_ids[], start_date, end_date }
 */
export const getGames = async (filters = {}) => {
  const queryParams = new URLSearchParams();

  if (filters.cursor) queryParams.append('cursor', filters.cursor);
  if (filters.per_page) queryParams.append('per_page', filters.per_page);
  if (filters.start_date) queryParams.append('start_date', filters.start_date);
  if (filters.end_date) queryParams.append('end_date', filters.end_date);

  if (filters.seasons && filters.seasons.length > 0) {
    filters.seasons.forEach(s => queryParams.append('seasons[]', s));
  }

  if (filters.dates && filters.dates.length > 0) {
    filters.dates.forEach(d => queryParams.append('dates[]', d));
  }

  if (filters.team_ids && filters.team_ids.length > 0) {
    filters.team_ids.forEach(id => queryParams.append('team_ids[]', id));
  }

  const endpoint = `/games${queryParams.toString() ? '?' + queryParams.toString() : ''}`;
  const response = await fetchFromAPI(endpoint);

  return {
    games: response.data || [],
    meta: response.meta || {}
  };
};

/**
 * Récupérer un match spécifique
 */
export const getGame = async (gameId) => {
  const response = await fetchFromAPI(`/games/${gameId}`);
  return response;
};

/**
 * ========================================
 * STANDINGS (Classements)
 * ========================================
 */

/**
 * Récupérer les classements
 * @param {object} filters - { season, conference }
 */
export const getStandings = async (filters = {}) => {
  const queryParams = new URLSearchParams();

  if (filters.season) {
    queryParams.append('season', filters.season);
  }

  if (filters.conference) {
    queryParams.append('conference', filters.conference);
  }

  const endpoint = `/standings${queryParams.toString() ? '?' + queryParams.toString() : ''}`;
  const response = await fetchFromAPI(endpoint);

  return {
    standings: response.data || [],
    meta: response.meta || {}
  };
};

/**
 * ========================================
 * HELPER FUNCTIONS (Fonctions d'aide)
 * ========================================
 */

/**
 * Récupérer les statistiques récentes d'un joueur (derniers matchs)
 */
export const getPlayerRecentStats = async (playerId, limit = 10) => {
  const currentDate = new Date();
  const startDate = new Date();
  startDate.setMonth(currentDate.getMonth() - 2); // 2 mois en arrière

  const filters = {
    player_ids: [playerId],
    start_date: startDate.toISOString().split('T')[0],
    end_date: currentDate.toISOString().split('T')[0],
    per_page: limit
  };

  return await getStats(filters);
};

/**
 * Récupérer les moyennes actuelles de la saison pour un joueur
 */
export const getPlayerCurrentSeasonAverage = async (playerId) => {
  const currentYear = new Date().getFullYear();
  const season = new Date().getMonth() >= 9 ? currentYear : currentYear - 1;

  const filters = {
    season: season,
    player_ids: [playerId]
  };

  const result = await getSeasonAverages(filters);
  return result.averages[0] || null;
};

/**
 * Récupérer tous les joueurs (gérer la pagination automatiquement)
 */
export const getAllPlayers = async (maxPages = 10) => {
  let allPlayers = [];
  let cursor = null;
  let page = 0;

  while (page < maxPages) {
    const result = await getPlayers({ cursor, per_page: 100 });
    allPlayers = [...allPlayers, ...result.players];

    if (!result.meta.next_cursor) {
      break;
    }

    cursor = result.meta.next_cursor;
    page++;

    // Petite pause pour ne pas surcharger l'API
    await new Promise(resolve => setTimeout(resolve, 500));
  }

  return allPlayers;
};

/**
 * ========================================
 * EXPORT
 * ========================================
 */
const balldontlieApi = {
  // Teams
  getTeams,
  getTeam,

  // Players
  getPlayers,
  getPlayer,
  getActivePlayers,
  getAllPlayers,

  // Stats
  getStats,
  getPlayerRecentStats,

  // Season Averages
  getSeasonAverages,
  getPlayerCurrentSeasonAverage,

  // Games
  getGames,
  getGame,

  // Standings
  getStandings,
};

export default balldontlieApi;
