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
 * Récupérer toutes les équipes organisées par conférence et division
 * @returns {Promise<object>} - Équipes organisées { Eastern: {...}, Western: {...} }
 */
export const getTeamsByDivision = async () => {
  await new Promise(resolve => setTimeout(resolve, 100));

  const allTeams = teams;

  // Organiser les équipes par conférence et division
  const organized = {
    Eastern: {
      Atlantic: allTeams.filter(t => t.conference === "East" && t.division === "Atlantic"),
      Central: allTeams.filter(t => t.conference === "East" && t.division === "Central"),
      Southeast: allTeams.filter(t => t.conference === "East" && t.division === "Southeast"),
    },
    Western: {
      Northwest: allTeams.filter(t => t.conference === "West" && t.division === "Northwest"),
      Pacific: allTeams.filter(t => t.conference === "West" && t.division === "Pacific"),
      Southwest: allTeams.filter(t => t.conference === "West" && t.division === "Southwest"),
    },
  };

  return organized;
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

  // Enrichir les données de l'équipe avec des informations supplémentaires
  const enrichedTeam = {
    ...team,
    full_name: team.name,
    abbreviation: getTeamAbbreviation(team.name),
    city: getTeamCity(team.name),
    division: getTeamDivision(team.name),
    // Statistiques simulées (à remplacer par de vraies données si disponibles)
    stats: {
      ppg: (112 + Math.random() * 10).toFixed(1),
      rpg: (42 + Math.random() * 5).toFixed(1),
      apg: (25 + Math.random() * 5).toFixed(1),
      spg: (7 + Math.random() * 2).toFixed(1),
      bpg: (5 + Math.random() * 2).toFixed(1),
      tpg: (14 + Math.random() * 3).toFixed(1),
      fgm: (40 + Math.random() * 5).toFixed(1),
      fga: (88 + Math.random() * 5).toFixed(1),
      fg_pct: (0.45 + Math.random() * 0.05).toFixed(3),
      tpm: (12 + Math.random() * 3).toFixed(1),
      tpa: (35 + Math.random() * 5).toFixed(1),
      tp_pct: (0.35 + Math.random() * 0.05).toFixed(3),
      ftm: (18 + Math.random() * 4).toFixed(1),
      fta: (23 + Math.random() * 4).toFixed(1),
      ft_pct: (0.75 + Math.random() * 0.10).toFixed(3),
    },
    // Roster des joueurs de l'équipe
    roster: players.filter(p => p.team === team.name).map(p => ({
      id: p.id,
      name: p.display_name || p.name,
      jersey_number: p.jersey_number,
      position: p.position,
      photo_url: p.photo_url
    })),
  };

  return enrichedTeam;
};

// Fonctions utilitaires pour extraire les informations des équipes
function getTeamAbbreviation(teamName) {
  const abbreviations = {
    "Boston Celtics": "BOS",
    "Brooklyn Nets": "BKN",
    "New York Knicks": "NYK",
    "Philadelphia 76ers": "PHI",
    "Toronto Raptors": "TOR",
    "Chicago Bulls": "CHI",
    "Cleveland Cavaliers": "CLE",
    "Detroit Pistons": "DET",
    "Indiana Pacers": "IND",
    "Milwaukee Bucks": "MIL",
    "Atlanta Hawks": "ATL",
    "Charlotte Hornets": "CHA",
    "Miami Heat": "MIA",
    "Orlando Magic": "ORL",
    "Washington Wizards": "WAS",
    "Denver Nuggets": "DEN",
    "Minnesota Timberwolves": "MIN",
    "Oklahoma City Thunder": "OKC",
    "Portland Trail Blazers": "POR",
    "Utah Jazz": "UTA",
    "Golden State Warriors": "GSW",
    "Los Angeles Clippers": "LAC",
    "Los Angeles Lakers": "LAL",
    "Phoenix Suns": "PHX",
    "Sacramento Kings": "SAC",
    "Dallas Mavericks": "DAL",
    "Houston Rockets": "HOU",
    "Memphis Grizzlies": "MEM",
    "New Orleans Pelicans": "NOP",
    "San Antonio Spurs": "SAS",
  };
  return abbreviations[teamName] || "NBA";
}

function getTeamCity(teamName) {
  return teamName.split(' ').slice(0, -1).join(' ');
}

function getTeamDivision(teamName) {
  const divisions = {
    "Boston Celtics": "Atlantic",
    "Brooklyn Nets": "Atlantic",
    "New York Knicks": "Atlantic",
    "Philadelphia 76ers": "Atlantic",
    "Toronto Raptors": "Atlantic",
    "Chicago Bulls": "Central",
    "Cleveland Cavaliers": "Central",
    "Detroit Pistons": "Central",
    "Indiana Pacers": "Central",
    "Milwaukee Bucks": "Central",
    "Atlanta Hawks": "Southeast",
    "Charlotte Hornets": "Southeast",
    "Miami Heat": "Southeast",
    "Orlando Magic": "Southeast",
    "Washington Wizards": "Southeast",
    "Denver Nuggets": "Northwest",
    "Minnesota Timberwolves": "Northwest",
    "Oklahoma City Thunder": "Northwest",
    "Portland Trail Blazers": "Northwest",
    "Utah Jazz": "Northwest",
    "Golden State Warriors": "Pacific",
    "Los Angeles Clippers": "Pacific",
    "Los Angeles Lakers": "Pacific",
    "Phoenix Suns": "Pacific",
    "Sacramento Kings": "Pacific",
    "Dallas Mavericks": "Southwest",
    "Houston Rockets": "Southwest",
    "Memphis Grizzlies": "Southwest",
    "New Orleans Pelicans": "Southwest",
    "San Antonio Spurs": "Southwest",
  };
  return divisions[teamName] || "Division";
}

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
  // eslint-disable-next-line no-unused-vars
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
