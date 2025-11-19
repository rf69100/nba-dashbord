-- ============================================
-- NBA API - Schéma de base de données
-- ============================================

-- Table: teams
CREATE TABLE IF NOT EXISTS teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    abbreviation VARCHAR(3) NOT NULL UNIQUE,
    conference ENUM('East', 'West') NOT NULL,
    division VARCHAR(50) NOT NULL,
    founded_year INT,
    arena VARCHAR(100),
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_conference (conference),
    INDEX idx_division (division),
    INDEX idx_is_active (is_active)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: players
CREATE TABLE IF NOT EXISTS players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    display_name VARCHAR(200),
    position VARCHAR(20),
    height_cm INT,
    weight_kg INT,
    birth_date DATE,
    nationality VARCHAR(100),
    jersey_number INT,
    team_id INT,
    is_active BOOLEAN DEFAULT true,
    is_rookie BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE SET NULL,
    INDEX idx_team (team_id),
    INDEX idx_position (position),
    INDEX idx_is_active (is_active),
    INDEX idx_last_name (last_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: seasons
CREATE TABLE IF NOT EXISTS seasons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    year VARCHAR(10) NOT NULL UNIQUE COMMENT 'Format: 2023-24',
    start_date DATE,
    end_date DATE,
    is_current BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_year (year),
    INDEX idx_is_current (is_current)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: games
CREATE TABLE IF NOT EXISTS games (
    id INT AUTO_INCREMENT PRIMARY KEY,
    season_id INT NOT NULL,
    home_team_id INT NOT NULL,
    away_team_id INT NOT NULL,
    game_date DATETIME NOT NULL,
    home_score INT,
    away_score INT,
    status ENUM('scheduled', 'in_progress', 'finished', 'postponed') DEFAULT 'scheduled',
    venue VARCHAR(100),
    attendance INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (season_id) REFERENCES seasons(id),
    FOREIGN KEY (home_team_id) REFERENCES teams(id),
    FOREIGN KEY (away_team_id) REFERENCES teams(id),
    INDEX idx_season (season_id),
    INDEX idx_game_date (game_date),
    INDEX idx_status (status),
    INDEX idx_home_team (home_team_id),
    INDEX idx_away_team (away_team_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: player_stats
CREATE TABLE IF NOT EXISTS player_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT NOT NULL,
    season_id INT NOT NULL,
    game_id INT,
    games_played INT DEFAULT 0,
    minutes_played DECIMAL(10,2) DEFAULT 0,
    points DECIMAL(10,2) DEFAULT 0,
    rebounds DECIMAL(10,2) DEFAULT 0,
    assists DECIMAL(10,2) DEFAULT 0,
    steals DECIMAL(10,2) DEFAULT 0,
    blocks DECIMAL(10,2) DEFAULT 0,
    turnovers DECIMAL(10,2) DEFAULT 0,
    field_goals_made INT DEFAULT 0,
    field_goals_attempted INT DEFAULT 0,
    three_pointers_made INT DEFAULT 0,
    three_pointers_attempted INT DEFAULT 0,
    free_throws_made INT DEFAULT 0,
    free_throws_attempted INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES players(id) ON DELETE CASCADE,
    FOREIGN KEY (season_id) REFERENCES seasons(id) ON DELETE CASCADE,
    FOREIGN KEY (game_id) REFERENCES games(id) ON DELETE CASCADE,
    UNIQUE KEY unique_player_season_game (player_id, season_id, game_id),
    INDEX idx_player (player_id),
    INDEX idx_season (season_id),
    INDEX idx_game (game_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: team_stats
CREATE TABLE IF NOT EXISTS team_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team_id INT NOT NULL,
    season_id INT NOT NULL,
    games_played INT DEFAULT 0,
    wins INT DEFAULT 0,
    losses INT DEFAULT 0,
    points_per_game DECIMAL(10,2) DEFAULT 0,
    points_allowed_per_game DECIMAL(10,2) DEFAULT 0,
    rebounds_per_game DECIMAL(10,2) DEFAULT 0,
    assists_per_game DECIMAL(10,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE CASCADE,
    FOREIGN KEY (season_id) REFERENCES seasons(id) ON DELETE CASCADE,
    UNIQUE KEY unique_team_season (team_id, season_id),
    INDEX idx_team (team_id),
    INDEX idx_season (season_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Données d'exemple (seeds)
-- ============================================

-- Insertion de quelques équipes pour tester
INSERT INTO teams (name, city, abbreviation, conference, division, founded_year, arena) VALUES
('Lakers', 'Los Angeles', 'LAL', 'West', 'Pacific', 1947, 'Crypto.com Arena'),
('Celtics', 'Boston', 'BOS', 'East', 'Atlantic', 1946, 'TD Garden'),
('Warriors', 'Golden State', 'GSW', 'West', 'Pacific', 1946, 'Chase Center'),
('Heat', 'Miami', 'MIA', 'East', 'Southeast', 1988, 'FTX Arena'),
('Bucks', 'Milwaukee', 'MIL', 'East', 'Central', 1968, 'Fiserv Forum')
ON DUPLICATE KEY UPDATE name=name;

-- Insertion d'une saison pour tester
INSERT INTO seasons (year, start_date, end_date, is_current) VALUES
('2024-25', '2024-10-22', '2025-06-30', true)
ON DUPLICATE KEY UPDATE year=year;

SELECT '✅ Base de données initialisée avec succès!' AS message;
