/**
 * Adaptateur pour transformer les données de l'API balldontlie
 * vers le format utilisé par l'application
 */

/**
 * Transformer un joueur balldontlie vers le format de l'application
 */
export const adaptPlayer = (balldontliePlayer) => {
  if (!balldontliePlayer) return null;

  return {
    id: balldontliePlayer.id,
    display_name: `${balldontliePlayer.first_name} ${balldontliePlayer.last_name}`,
    first_name: balldontliePlayer.first_name,
    last_name: balldontliePlayer.last_name,
    team_name: balldontliePlayer.team?.full_name || 'Free Agent',
    team_abbreviation: balldontliePlayer.team?.abbreviation || 'FA',
    team_id: balldontliePlayer.team?.id || null,
    position: balldontliePlayer.position || 'N/A',
    height: balldontliePlayer.height || 'N/A',
    weight: balldontliePlayer.weight || 'N/A',
    jersey_number: balldontliePlayer.jersey_number || 'N/A',
    college: balldontliePlayer.college || 'N/A',
    country: balldontliePlayer.country || 'USA',
    draft_year: balldontliePlayer.draft_year || null,
    draft_round: balldontliePlayer.draft_round || null,
    draft_number: balldontliePlayer.draft_number || null,
    // Ces champs ne sont pas fournis par balldontlie, on les laisse vides
    photo_url: null,
    age: null,
    height_cm: null,
    weight_kg: null,
    birth_date: null,
    // Les stats seront ajoutées séparément
    lastGames: []
  };
};

/**
 * Transformer des statistiques balldontlie vers le format lastGames
 */
export const adaptStats = (balldontlieStats) => {
  if (!balldontlieStats || !Array.isArray(balldontlieStats)) {
    return [];
  }

  return balldontlieStats.map(stat => ({
    game_id: stat.game?.id || null,
    game_date: stat.game?.date || null,
    PTS: stat.pts || 0,
    REB: stat.reb || 0,
    AST: stat.ast || 0,
    STL: stat.stl || 0,
    BLK: stat.blk || 0,
    FG: stat.fgm || 0,
    FGA: stat.fga || 0,
    "3P": stat.fg3m || 0,
    "3PA": stat.fg3a || 0,
    FT: stat.ftm || 0,
    FTA: stat.fta || 0,
    TO: stat.turnover || 0,
    PF: stat.pf || 0,
    MIN: stat.min || '0',
    OREB: stat.oreb || 0,
    DREB: stat.dreb || 0,
    // Calculs de pourcentages
    FG_PCT: stat.fga > 0 ? ((stat.fgm / stat.fga) * 100).toFixed(1) : '0.0',
    FG3_PCT: stat.fg3a > 0 ? ((stat.fg3m / stat.fg3a) * 100).toFixed(1) : '0.0',
    FT_PCT: stat.fta > 0 ? ((stat.ftm / stat.fta) * 100).toFixed(1) : '0.0',
  }));
};

/**
 * Transformer les moyennes de saison balldontlie
 */
export const adaptSeasonAverages = (balldontlieAverage) => {
  if (!balldontlieAverage) return null;

  return {
    season: balldontlieAverage.season,
    games_played: balldontlieAverage.games_played || 0,
    PTS: balldontlieAverage.pts || 0,
    REB: balldontlieAverage.reb || 0,
    AST: balldontlieAverage.ast || 0,
    STL: balldontlieAverage.stl || 0,
    BLK: balldontlieAverage.blk || 0,
    FG: balldontlieAverage.fgm || 0,
    FGA: balldontlieAverage.fga || 0,
    "3P": balldontlieAverage.fg3m || 0,
    "3PA": balldontlieAverage.fg3a || 0,
    FT: balldontlieAverage.ftm || 0,
    FTA: balldontlieAverage.fta || 0,
    TO: balldontlieAverage.turnover || 0,
    PF: balldontlieAverage.pf || 0,
    MIN: balldontlieAverage.min || 0,
    OREB: balldontlieAverage.oreb || 0,
    DREB: balldontlieAverage.dreb || 0,
    FG_PCT: balldontlieAverage.fg_pct || 0,
    FG3_PCT: balldontlieAverage.fg3_pct || 0,
    FT_PCT: balldontlieAverage.ft_pct || 0,
  };
};

/**
 * Transformer une équipe balldontlie vers le format de l'application
 */
export const adaptTeam = (balldontlieTeam, standings = null) => {
  if (!balldontlieTeam) return null;

  const team = {
    id: balldontlieTeam.id,
    name: balldontlieTeam.full_name,
    abbreviation: balldontlieTeam.abbreviation,
    city: balldontlieTeam.city,
    conference: balldontlieTeam.conference,
    division: balldontlieTeam.division,
    // Logo sera géré par TeamLogo component
    logo_url: null,
  };

  // Si on a les standings, ajouter les stats
  if (standings) {
    team.wins = standings.wins || 0;
    team.losses = standings.losses || 0;
    team.win_percentage = standings.win_percentage || 0;
    team.home_record = standings.home_record || '0-0';
    team.road_record = standings.road_record || '0-0';
  }

  return team;
};

/**
 * Transformer les classements (standings)
 */
export const adaptStandings = (balldontlieStandings) => {
  if (!balldontlieStandings || !Array.isArray(balldontlieStandings)) {
    return [];
  }

  return balldontlieStandings.map(standing => ({
    id: standing.team_id,
    team_id: standing.team_id,
    name: standing.team?.full_name || 'Unknown',
    abbreviation: standing.team?.abbreviation || 'N/A',
    conference: standing.conference,
    division: standing.team?.division || 'N/A',
    wins: standing.wins || 0,
    losses: standing.losses || 0,
    win_percentage: standing.win_pct ? (standing.win_pct * 100).toFixed(1) : '0.0',
    home_record: standing.home_record || '0-0',
    road_record: standing.road_record || '0-0',
    conference_rank: standing.conference_rank || null,
    division_rank: standing.division_rank || null,
    logo_url: null,
  }));
};

/**
 * Calculer les moyennes depuis lastGames (pour compatibilité)
 */
export const calculateAveragesFromGames = (games) => {
  if (!games || games.length === 0) {
    return {
      PTS: 0,
      REB: 0,
      AST: 0,
      STL: 0,
      BLK: 0,
      FG_PCT: 0,
      FG3_PCT: 0,
      FT_PCT: 0,
    };
  }

  const totals = games.reduce((acc, game) => {
    acc.PTS += game.PTS || 0;
    acc.REB += game.REB || 0;
    acc.AST += game.AST || 0;
    acc.STL += game.STL || 0;
    acc.BLK += game.BLK || 0;
    acc.FG += game.FG || 0;
    acc.FGA += game.FGA || 0;
    acc['3P'] += game['3P'] || 0;
    acc['3PA'] += game['3PA'] || 0;
    acc.FT += game.FT || 0;
    acc.FTA += game.FTA || 0;
    return acc;
  }, {
    PTS: 0, REB: 0, AST: 0, STL: 0, BLK: 0,
    FG: 0, FGA: 0, '3P': 0, '3PA': 0, FT: 0, FTA: 0
  });

  const gamesCount = games.length;

  return {
    PTS: (totals.PTS / gamesCount).toFixed(1),
    REB: (totals.REB / gamesCount).toFixed(1),
    AST: (totals.AST / gamesCount).toFixed(1),
    STL: (totals.STL / gamesCount).toFixed(1),
    BLK: (totals.BLK / gamesCount).toFixed(1),
    FG_PCT: totals.FGA > 0 ? ((totals.FG / totals.FGA) * 100).toFixed(1) : '0.0',
    FG3_PCT: totals['3PA'] > 0 ? ((totals['3P'] / totals['3PA']) * 100).toFixed(1) : '0.0',
    FT_PCT: totals.FTA > 0 ? ((totals.FT / totals.FTA) * 100).toFixed(1) : '0.0',
  };
};

/**
 * Transformer un match balldontlie
 */
export const adaptGame = (balldontlieGame) => {
  if (!balldontlieGame) return null;

  return {
    id: balldontlieGame.id,
    date: balldontlieGame.date,
    season: balldontlieGame.season,
    status: balldontlieGame.status,
    home_team: adaptTeam(balldontlieGame.home_team),
    visitor_team: adaptTeam(balldontlieGame.visitor_team),
    home_team_score: balldontlieGame.home_team_score || 0,
    visitor_team_score: balldontlieGame.visitor_team_score || 0,
    period: balldontlieGame.period || 0,
    time: balldontlieGame.time || '',
    postseason: balldontlieGame.postseason || false,
  };
};

const dataAdapter = {
  adaptPlayer,
  adaptStats,
  adaptSeasonAverages,
  adaptTeam,
  adaptStandings,
  adaptGame,
  calculateAveragesFromGames,
};

export default dataAdapter;
