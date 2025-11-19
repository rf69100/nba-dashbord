-- ============================================
-- NBA API - Population complète des équipes
-- Données de la saison 2024-2025
-- ============================================

-- ============================================
-- 1. INSERTION DES 30 ÉQUIPES NBA
-- ============================================

-- EASTERN CONFERENCE

-- Atlantic Division
INSERT INTO teams (name, city, abbreviation, conference, division, founded_year, arena) VALUES
('Celtics', 'Boston', 'BOS', 'East', 'Atlantic', 1946, 'TD Garden'),
('Nets', 'Brooklyn', 'BKN', 'East', 'Atlantic', 1967, 'Barclays Center'),
('Knicks', 'New York', 'NYK', 'East', 'Atlantic', 1946, 'Madison Square Garden'),
('76ers', 'Philadelphia', 'PHI', 'East', 'Atlantic', 1946, 'Wells Fargo Center'),
('Raptors', 'Toronto', 'TOR', 'East', 'Atlantic', 1995, 'Scotiabank Arena')
ON DUPLICATE KEY UPDATE
    name=VALUES(name),
    city=VALUES(city),
    conference=VALUES(conference),
    division=VALUES(division),
    founded_year=VALUES(founded_year),
    arena=VALUES(arena);

-- Central Division
INSERT INTO teams (name, city, abbreviation, conference, division, founded_year, arena) VALUES
('Bulls', 'Chicago', 'CHI', 'East', 'Central', 1966, 'United Center'),
('Cavaliers', 'Cleveland', 'CLE', 'East', 'Central', 1970, 'Rocket Mortgage FieldHouse'),
('Pistons', 'Detroit', 'DET', 'East', 'Central', 1941, 'Little Caesars Arena'),
('Pacers', 'Indiana', 'IND', 'East', 'Central', 1967, 'Gainbridge Fieldhouse'),
('Bucks', 'Milwaukee', 'MIL', 'East', 'Central', 1968, 'Fiserv Forum')
ON DUPLICATE KEY UPDATE
    name=VALUES(name),
    city=VALUES(city),
    conference=VALUES(conference),
    division=VALUES(division),
    founded_year=VALUES(founded_year),
    arena=VALUES(arena);

-- Southeast Division
INSERT INTO teams (name, city, abbreviation, conference, division, founded_year, arena) VALUES
('Hawks', 'Atlanta', 'ATL', 'East', 'Southeast', 1946, 'State Farm Arena'),
('Hornets', 'Charlotte', 'CHA', 'East', 'Southeast', 1988, 'Spectrum Center'),
('Heat', 'Miami', 'MIA', 'East', 'Southeast', 1988, 'Kaseya Center'),
('Magic', 'Orlando', 'ORL', 'East', 'Southeast', 1989, 'Amway Center'),
('Wizards', 'Washington', 'WAS', 'East', 'Southeast', 1961, 'Capital One Arena')
ON DUPLICATE KEY UPDATE
    name=VALUES(name),
    city=VALUES(city),
    conference=VALUES(conference),
    division=VALUES(division),
    founded_year=VALUES(founded_year),
    arena=VALUES(arena);

-- WESTERN CONFERENCE

-- Northwest Division
INSERT INTO teams (name, city, abbreviation, conference, division, founded_year, arena) VALUES
('Nuggets', 'Denver', 'DEN', 'West', 'Northwest', 1967, 'Ball Arena'),
('Timberwolves', 'Minnesota', 'MIN', 'West', 'Northwest', 1989, 'Target Center'),
('Thunder', 'Oklahoma City', 'OKC', 'West', 'Northwest', 1967, 'Paycom Center'),
('Trail Blazers', 'Portland', 'POR', 'West', 'Northwest', 1970, 'Moda Center'),
('Jazz', 'Utah', 'UTA', 'West', 'Northwest', 1974, 'Delta Center')
ON DUPLICATE KEY UPDATE
    name=VALUES(name),
    city=VALUES(city),
    conference=VALUES(conference),
    division=VALUES(division),
    founded_year=VALUES(founded_year),
    arena=VALUES(arena);

-- Pacific Division
INSERT INTO teams (name, city, abbreviation, conference, division, founded_year, arena) VALUES
('Warriors', 'Golden State', 'GSW', 'West', 'Pacific', 1946, 'Chase Center'),
('Clippers', 'Los Angeles', 'LAC', 'West', 'Pacific', 1970, 'Crypto.com Arena'),
('Lakers', 'Los Angeles', 'LAL', 'West', 'Pacific', 1947, 'Crypto.com Arena'),
('Suns', 'Phoenix', 'PHX', 'West', 'Pacific', 1968, 'Footprint Center'),
('Kings', 'Sacramento', 'SAC', 'West', 'Pacific', 1923, 'Golden 1 Center')
ON DUPLICATE KEY UPDATE
    name=VALUES(name),
    city=VALUES(city),
    conference=VALUES(conference),
    division=VALUES(division),
    founded_year=VALUES(founded_year),
    arena=VALUES(arena);

-- Southwest Division
INSERT INTO teams (name, city, abbreviation, conference, division, founded_year, arena) VALUES
('Mavericks', 'Dallas', 'DAL', 'West', 'Southwest', 1980, 'American Airlines Center'),
('Rockets', 'Houston', 'HOU', 'West', 'Southwest', 1967, 'Toyota Center'),
('Grizzlies', 'Memphis', 'MEM', 'West', 'Southwest', 1995, 'FedExForum'),
('Pelicans', 'New Orleans', 'NOP', 'West', 'Southwest', 1988, 'Smoothie King Center'),
('Spurs', 'San Antonio', 'SAS', 'West', 'Southwest', 1967, 'Frost Bank Center')
ON DUPLICATE KEY UPDATE
    name=VALUES(name),
    city=VALUES(city),
    conference=VALUES(conference),
    division=VALUES(division),
    founded_year=VALUES(founded_year),
    arena=VALUES(arena);

-- ============================================
-- 2. INSERTION DES STATISTIQUES SAISON 2024-25
-- ============================================

-- Récupération de l'ID de la saison courante
SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);

-- EASTERN CONFERENCE TEAMS

-- Boston Celtics (64-18)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 64, 18 FROM teams WHERE abbreviation = 'BOS'
ON DUPLICATE KEY UPDATE wins=64, losses=18, games_played=82;

-- New York Knicks (50-32)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 50, 32 FROM teams WHERE abbreviation = 'NYK'
ON DUPLICATE KEY UPDATE wins=50, losses=32, games_played=82;

-- Milwaukee Bucks (49-33)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 49, 33 FROM teams WHERE abbreviation = 'MIL'
ON DUPLICATE KEY UPDATE wins=49, losses=33, games_played=82;

-- Cleveland Cavaliers (48-34)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 48, 34 FROM teams WHERE abbreviation = 'CLE'
ON DUPLICATE KEY UPDATE wins=48, losses=34, games_played=82;

-- Orlando Magic (47-35)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 47, 35 FROM teams WHERE abbreviation = 'ORL'
ON DUPLICATE KEY UPDATE wins=47, losses=35, games_played=82;

-- Indiana Pacers (47-35)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 47, 35 FROM teams WHERE abbreviation = 'IND'
ON DUPLICATE KEY UPDATE wins=47, losses=35, games_played=82;

-- Philadelphia 76ers (47-35)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 47, 35 FROM teams WHERE abbreviation = 'PHI'
ON DUPLICATE KEY UPDATE wins=47, losses=35, games_played=82;

-- Miami Heat (46-36)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 46, 36 FROM teams WHERE abbreviation = 'MIA'
ON DUPLICATE KEY UPDATE wins=46, losses=36, games_played=82;

-- Chicago Bulls (39-43)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 39, 43 FROM teams WHERE abbreviation = 'CHI'
ON DUPLICATE KEY UPDATE wins=39, losses=43, games_played=82;

-- Atlanta Hawks (36-46)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 36, 46 FROM teams WHERE abbreviation = 'ATL'
ON DUPLICATE KEY UPDATE wins=36, losses=46, games_played=82;

-- Brooklyn Nets (32-50)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 32, 50 FROM teams WHERE abbreviation = 'BKN'
ON DUPLICATE KEY UPDATE wins=32, losses=50, games_played=82;

-- Toronto Raptors (25-57)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 25, 57 FROM teams WHERE abbreviation = 'TOR'
ON DUPLICATE KEY UPDATE wins=25, losses=57, games_played=82;

-- Charlotte Hornets (21-61)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 21, 61 FROM teams WHERE abbreviation = 'CHA'
ON DUPLICATE KEY UPDATE wins=21, losses=61, games_played=82;

-- Detroit Pistons (14-68)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 14, 68 FROM teams WHERE abbreviation = 'DET'
ON DUPLICATE KEY UPDATE wins=14, losses=68, games_played=82;

-- Washington Wizards (15-67)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 15, 67 FROM teams WHERE abbreviation = 'WAS'
ON DUPLICATE KEY UPDATE wins=15, losses=67, games_played=82;

-- WESTERN CONFERENCE TEAMS

-- Oklahoma City Thunder (57-25)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 57, 25 FROM teams WHERE abbreviation = 'OKC'
ON DUPLICATE KEY UPDATE wins=57, losses=25, games_played=82;

-- Denver Nuggets (57-25)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 57, 25 FROM teams WHERE abbreviation = 'DEN'
ON DUPLICATE KEY UPDATE wins=57, losses=25, games_played=82;

-- Minnesota Timberwolves (56-26)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 56, 26 FROM teams WHERE abbreviation = 'MIN'
ON DUPLICATE KEY UPDATE wins=56, losses=26, games_played=82;

-- Los Angeles Clippers (51-31)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 51, 31 FROM teams WHERE abbreviation = 'LAC'
ON DUPLICATE KEY UPDATE wins=51, losses=31, games_played=82;

-- Dallas Mavericks (50-32)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 50, 32 FROM teams WHERE abbreviation = 'DAL'
ON DUPLICATE KEY UPDATE wins=50, losses=32, games_played=82;

-- Phoenix Suns (49-33)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 49, 33 FROM teams WHERE abbreviation = 'PHX'
ON DUPLICATE KEY UPDATE wins=49, losses=33, games_played=82;

-- New Orleans Pelicans (49-33)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 49, 33 FROM teams WHERE abbreviation = 'NOP'
ON DUPLICATE KEY UPDATE wins=49, losses=33, games_played=82;

-- Los Angeles Lakers (47-35)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 47, 35 FROM teams WHERE abbreviation = 'LAL'
ON DUPLICATE KEY UPDATE wins=47, losses=35, games_played=82;

-- Sacramento Kings (46-36)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 46, 36 FROM teams WHERE abbreviation = 'SAC'
ON DUPLICATE KEY UPDATE wins=46, losses=36, games_played=82;

-- Golden State Warriors (46-36)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 46, 36 FROM teams WHERE abbreviation = 'GSW'
ON DUPLICATE KEY UPDATE wins=46, losses=36, games_played=82;

-- Houston Rockets (41-41)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 41, 41 FROM teams WHERE abbreviation = 'HOU'
ON DUPLICATE KEY UPDATE wins=41, losses=41, games_played=82;

-- Utah Jazz (31-51)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 31, 51 FROM teams WHERE abbreviation = 'UTA'
ON DUPLICATE KEY UPDATE wins=31, losses=51, games_played=82;

-- Memphis Grizzlies (27-55)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 27, 55 FROM teams WHERE abbreviation = 'MEM'
ON DUPLICATE KEY UPDATE wins=27, losses=55, games_played=82;

-- Portland Trail Blazers (21-61)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 21, 61 FROM teams WHERE abbreviation = 'POR'
ON DUPLICATE KEY UPDATE wins=21, losses=61, games_played=82;

-- San Antonio Spurs (22-60)
INSERT INTO team_stats (team_id, season_id, games_played, wins, losses)
SELECT id, @season_id, 82, 22, 60 FROM teams WHERE abbreviation = 'SAS'
ON DUPLICATE KEY UPDATE wins=22, losses=60, games_played=82;

-- ============================================
-- 3. VÉRIFICATION
-- ============================================

SELECT '✅ 30 équipes NBA insérées avec succès!' AS message;
SELECT '✅ Statistiques saison 2024-25 ajoutées!' AS message;

-- Vérification du nombre d'équipes
SELECT
    CONCAT('📊 Total équipes: ', COUNT(*)) AS statistiques
FROM teams
WHERE is_active = true;

-- Vérification du nombre de team_stats
SELECT
    CONCAT('📊 Total team_stats: ', COUNT(*)) AS statistiques
FROM team_stats;
