/**
 * SERVICE NBA - Accès aux données
 * ================================
 * 
 * Point d'entrée unique pour récupérer les données NBA.
 * Toutes les fonctions sont async pour permettre une future migration vers une vraie API.
 * 
 * Usage:
 *   import { getPlayers, getTeams } from '../services/nbaApi';
 */

import { teams, players, getTeamsWithStats, getPlayersWithUrls } from './nbaData';

// Délai simulé pour une meilleure UX (évite le flash de chargement)
const DELAY = 100;
const wait = () => new Promise(r => setTimeout(r, DELAY));

// ─────────────────────────────────────────────────────────────
// ÉQUIPES
// ─────────────────────────────────────────────────────────────

/**
 * Récupère le classement des équipes
 */
export async function getStandings(filters = {}) {
  await wait();
  
  let data = getTeamsWithStats();
  
  if (filters.conference) {
    data = data.filter(t => t.conference === filters.conference);
  }
  
  return data.sort((a, b) => b.wins - a.wins);
}

/**
 * Récupère toutes les équipes avec pagination optionnelle
 */
export async function getTeams(filters = {}) {
  await wait();
  
  let data = getTeamsWithStats(); // Utilise getTeamsWithStats pour avoir les logos avec PUBLIC_URL
  
  if (filters.conference) {
    data = data.filter(t => t.conference === filters.conference);
  }
  
  // Pagination simple
  const page = filters.page || 1;
  const limit = filters.limit || data.length;
  const start = (page - 1) * limit;
  
  return {
    teams: data.slice(start, start + limit),
    pagination: {
      total: data.length,
      page,
      limit,
      totalPages: Math.ceil(data.length / limit)
    }
  };
}

/**
 * Récupère les équipes organisées par conférence et division
 */
export async function getTeamsByDivision() {
  await wait();
  
  const teamsData = getTeamsWithStats();
  
  return {
    Eastern: {
      Atlantic: teamsData.filter(t => t.conference === "East" && t.division === "Atlantic"),
      Central: teamsData.filter(t => t.conference === "East" && t.division === "Central"),
      Southeast: teamsData.filter(t => t.conference === "East" && t.division === "Southeast"),
    },
    Western: {
      Northwest: teamsData.filter(t => t.conference === "West" && t.division === "Northwest"),
      Pacific: teamsData.filter(t => t.conference === "West" && t.division === "Pacific"),
      Southwest: teamsData.filter(t => t.conference === "West" && t.division === "Southwest"),
    },
  };
}

/**
 * Récupère les équipes par conférence
 */
export async function getTeamsByConference(conference) {
  await wait();
  return getTeamsWithStats().filter(t => t.conference === conference);
}

/**
 * Récupère une équipe par ID
 */
export async function getTeam(teamId) {
  await wait();
  const team = getTeamsWithStats().find(t => t.id === parseInt(teamId));
  if (!team) throw new Error('Équipe non trouvée');
  return team;
}

// Alias pour compatibilité
export const getTeamById = getTeam;

/**
 * Récupère une équipe par ID avec ses stats et roster
 */
export async function getTeamWithStats(teamId) {
  await wait();
  
  const team = getTeamsWithStats().find(t => t.id === parseInt(teamId));
  if (!team) throw new Error('Équipe non trouvée');
  
  // Récupérer les joueurs de l'équipe
  const roster = getPlayersWithUrls()
    .filter(p => p.team_name === team.name)
    .map(p => ({
      id: p.id,
      name: p.display_name || p.name,
      jersey_number: p.jersey_number,
      position: p.position,
      photo_url: p.photo_url
    }));
  
  return {
    ...team,
    full_name: team.name,
    abbreviation: getAbbreviation(team.name),
    city: team.name.split(' ').slice(0, -1).join(' '),
    roster,
    stats: {
      ppg: (112 + Math.random() * 10).toFixed(1),
      rpg: (42 + Math.random() * 5).toFixed(1),
      apg: (25 + Math.random() * 5).toFixed(1),
      fg_pct: (0.45 + Math.random() * 0.05).toFixed(3),
    }
  };
}

// ─────────────────────────────────────────────────────────────
// JOUEURS
// ─────────────────────────────────────────────────────────────

/**
 * Récupère tous les joueurs avec filtres et pagination
 */
export async function getPlayers(filters = {}) {
  await wait();
  
  let data = getPlayersWithUrls();
  
  // Filtre par équipe
  if (filters.team_id) {
    const team = teams.find(t => t.id === parseInt(filters.team_id));
    if (team) {
      data = data.filter(p => p.team_name === team.name);
    }
  }
  
  // Filtre par position
  if (filters.position) {
    data = data.filter(p => 
      p.position.toLowerCase().includes(filters.position.toLowerCase())
    );
  }
  
  // Filtre par recherche
  if (filters.search) {
    const q = filters.search.toLowerCase();
    data = data.filter(p => 
      p.name.toLowerCase().includes(q) ||
      (p.display_name && p.display_name.toLowerCase().includes(q))
    );
  }
  
  // Pagination
  const page = filters.page || 1;
  const limit = filters.limit || data.length;
  const start = (page - 1) * limit;
  
  return {
    players: data.slice(start, start + limit),
    pagination: {
      total: data.length,
      page,
      limit,
      totalPages: Math.ceil(data.length / limit)
    }
  };
}

/**
 * Récupère un joueur par ID (version complète avec lastGames)
 */
export async function getPlayerWithStats(playerId) {
  await wait();
  
  const allPlayers = getPlayersWithUrls();
  const player = allPlayers.find(p => p.id === parseInt(playerId));
  if (!player) throw new Error('Joueur non trouvé');
  
  return player;
}

/**
 * Récupère un joueur par ID (version allégée sans lastGames)
 */
export async function getPlayer(playerId) {
  await wait();
  
  const allPlayers = getPlayersWithUrls();
  const player = allPlayers.find(p => p.id === parseInt(playerId));
  if (!player) throw new Error('Joueur non trouvé');
  
  // eslint-disable-next-line no-unused-vars
  const { lastGames, ...rest } = player;
  return rest;
}

// Alias pour compatibilité
export const getPlayerById = getPlayer;

/**
 * Récupère les joueurs d'une équipe
 */
export async function getPlayersByTeam(teamId) {
  await wait();
  
  const team = teams.find(t => t.id === parseInt(teamId));
  if (!team) return [];
  
  return getPlayersWithUrls().filter(p => p.team_name === team.name);
}

/**
 * Recherche de joueurs par nom
 */
export async function searchPlayers(query) {
  await wait();
  
  if (!query) return [];
  const q = query.toLowerCase();
  
  return getPlayersWithUrls().filter(p => 
    p.name.toLowerCase().includes(q) ||
    (p.display_name && p.display_name.toLowerCase().includes(q))
  );
}

/**
 * Recherche d'équipes par nom
 */
export async function searchTeams(query) {
  await wait();
  
  if (!query) return [];
  const q = query.toLowerCase();
  
  return teams.filter(t => t.name.toLowerCase().includes(q));
}

// ─────────────────────────────────────────────────────────────
// UTILITAIRES
// ─────────────────────────────────────────────────────────────

const ABBREVIATIONS = {
  "Boston Celtics": "BOS", "Brooklyn Nets": "BKN", "New York Knicks": "NYK",
  "Philadelphia 76ers": "PHI", "Toronto Raptors": "TOR", "Chicago Bulls": "CHI",
  "Cleveland Cavaliers": "CLE", "Detroit Pistons": "DET", "Indiana Pacers": "IND",
  "Milwaukee Bucks": "MIL", "Atlanta Hawks": "ATL", "Charlotte Hornets": "CHA",
  "Miami Heat": "MIA", "Orlando Magic": "ORL", "Washington Wizards": "WAS",
  "Denver Nuggets": "DEN", "Minnesota Timberwolves": "MIN", "Oklahoma City Thunder": "OKC",
  "Portland Trail Blazers": "POR", "Utah Jazz": "UTA", "Golden State Warriors": "GSW",
  "Los Angeles Clippers": "LAC", "Los Angeles Lakers": "LAL", "Phoenix Suns": "PHX",
  "Sacramento Kings": "SAC", "Dallas Mavericks": "DAL", "Houston Rockets": "HOU",
  "Memphis Grizzlies": "MEM", "New Orleans Pelicans": "NOP", "San Antonio Spurs": "SAS",
};

function getAbbreviation(teamName) {
  return ABBREVIATIONS[teamName] || "NBA";
}

// ─────────────────────────────────────────────────────────────
// EXPORT PAR DÉFAUT (pour compatibilité)
// ─────────────────────────────────────────────────────────────

const nbaApi = {
  getStandings,
  getTeams,
  getTeam,
  getTeamById,
  getTeamWithStats,
  getTeamsByDivision,
  getTeamsByConference,
  getPlayers,
  getPlayer,
  getPlayerById,
  getPlayerWithStats,
  getPlayersByTeam,
  searchPlayers,
  searchTeams,
};

export default nbaApi;

// Re-export des données brutes pour accès direct si besoin
export { teams, players, getTeamsWithStats };
