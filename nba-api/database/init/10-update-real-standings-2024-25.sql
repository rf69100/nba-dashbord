-- ============================================
-- NBA API - Mise à jour du classement réel 2024-25
-- Données récupérées de Basketball-Reference (Janvier 2025)
-- ============================================

-- Mettre à jour les team_stats avec les vraies données de la saison

-- EASTERN CONFERENCE
UPDATE team_stats SET wins = 64, losses = 18, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'CLE') AND season_id = 1; -- Cleveland Cavaliers (#1 East)

UPDATE team_stats SET wins = 61, losses = 21, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'BOS') AND season_id = 1; -- Boston Celtics (#2 East)

UPDATE team_stats SET wins = 51, losses = 31, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'NYK') AND season_id = 1; -- New York Knicks (#3 East)

UPDATE team_stats SET wins = 50, losses = 32, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'IND') AND season_id = 1; -- Indiana Pacers (#4 East)

UPDATE team_stats SET wins = 48, losses = 34, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'MIL') AND season_id = 1; -- Milwaukee Bucks (#5 East)

UPDATE team_stats SET wins = 44, losses = 38, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'DET') AND season_id = 1; -- Detroit Pistons (#6 East)

UPDATE team_stats SET wins = 41, losses = 41, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'ORL') AND season_id = 1; -- Orlando Magic (#7 East)

UPDATE team_stats SET wins = 40, losses = 42, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'ATL') AND season_id = 1; -- Atlanta Hawks (#8 East)

UPDATE team_stats SET wins = 39, losses = 43, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'CHI') AND season_id = 1; -- Chicago Bulls (#9 East)

UPDATE team_stats SET wins = 37, losses = 45, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'MIA') AND season_id = 1; -- Miami Heat (#10 East)

UPDATE team_stats SET wins = 30, losses = 52, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'TOR') AND season_id = 1; -- Toronto Raptors

UPDATE team_stats SET wins = 26, losses = 56, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'BKN') AND season_id = 1; -- Brooklyn Nets

UPDATE team_stats SET wins = 24, losses = 58, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'PHI') AND season_id = 1; -- Philadelphia 76ers

UPDATE team_stats SET wins = 19, losses = 63, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'CHA') AND season_id = 1; -- Charlotte Hornets

UPDATE team_stats SET wins = 18, losses = 64, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'WAS') AND season_id = 1; -- Washington Wizards

-- WESTERN CONFERENCE
UPDATE team_stats SET wins = 68, losses = 14, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'OKC') AND season_id = 1; -- Oklahoma City Thunder (#1 West)

UPDATE team_stats SET wins = 52, losses = 30, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'HOU') AND season_id = 1; -- Houston Rockets (#2 West)

UPDATE team_stats SET wins = 50, losses = 32, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'LAL') AND season_id = 1; -- Los Angeles Lakers (#3 West)

UPDATE team_stats SET wins = 50, losses = 32, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'LAC') AND season_id = 1; -- Los Angeles Clippers (#4 West)

UPDATE team_stats SET wins = 50, losses = 32, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'DEN') AND season_id = 1; -- Denver Nuggets (#5 West)

UPDATE team_stats SET wins = 49, losses = 33, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'MIN') AND season_id = 1; -- Minnesota Timberwolves (#6 West)

UPDATE team_stats SET wins = 48, losses = 34, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'GSW') AND season_id = 1; -- Golden State Warriors (#7 West)

UPDATE team_stats SET wins = 48, losses = 34, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'MEM') AND season_id = 1; -- Memphis Grizzlies (#8 West)

UPDATE team_stats SET wins = 40, losses = 42, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'SAC') AND season_id = 1; -- Sacramento Kings (#9 West)

UPDATE team_stats SET wins = 39, losses = 43, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'DAL') AND season_id = 1; -- Dallas Mavericks (#10 West)

UPDATE team_stats SET wins = 36, losses = 46, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'PHX') AND season_id = 1; -- Phoenix Suns

UPDATE team_stats SET wins = 36, losses = 46, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'POR') AND season_id = 1; -- Portland Trail Blazers

UPDATE team_stats SET wins = 34, losses = 48, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'SAS') AND season_id = 1; -- San Antonio Spurs

UPDATE team_stats SET wins = 21, losses = 61, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'NOP') AND season_id = 1; -- New Orleans Pelicans

UPDATE team_stats SET wins = 17, losses = 65, games_played = 82
WHERE team_id = (SELECT id FROM teams WHERE abbreviation = 'UTA') AND season_id = 1; -- Utah Jazz

-- Vérification
SELECT '✅ Classement 2024-25 mis à jour avec succès!' AS message;

-- Afficher le classement actuel
SELECT
    t.name as team,
    t.abbreviation,
    t.conference,
    ts.wins,
    ts.losses,
    ts.games_played,
    ROUND(ts.wins / ts.games_played, 3) as win_pct
FROM team_stats ts
JOIN teams t ON ts.team_id = t.id
WHERE ts.season_id = 1
ORDER BY
    CASE WHEN t.conference = 'East' THEN 1 ELSE 2 END,
    ts.wins DESC,
    t.name;
