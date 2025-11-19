-- ============================================
-- NBA API - Population des joueurs et leurs statistiques
-- Migration depuis nbaData.js
-- ============================================

-- Récupération de l'ID de la saison courante
SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);

-- ============================================
-- INSERTION DES 26 JOUEURS
-- ============================================

-- Joueur 1: LeBron James (Lakers)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'LeBron', 'James', 'LeBron James', 'Forward', 206, 113, '1984-12-30',
       (SELECT id FROM teams WHERE abbreviation = 'LAL'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/2544.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 2: Stephen Curry (Warriors)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Stephen', 'Curry', 'Stephen Curry', 'Guard', 188, 84, '1988-03-14',
       (SELECT id FROM teams WHERE abbreviation = 'GSW'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/201939.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 3: Giannis Antetokounmpo (Bucks)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Giannis', 'Antetokounmpo', 'Giannis Antetokounmpo', 'Forward', 211, 110, '1994-12-06',
       (SELECT id FROM teams WHERE abbreviation = 'MIL'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/203507.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 4: Ryan Fonseca (Heat)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Ryan', 'Fonseca', 'Ryan Fonseca', 'Point Guard', 183, 66, '2005-01-01',
       (SELECT id FROM teams WHERE abbreviation = 'MIA'),
       ''
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 5: Kevin Durant (Suns)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Kevin', 'Durant', 'Kevin Durant', 'Forward', 208, 109, '1988-09-29',
       (SELECT id FROM teams WHERE abbreviation = 'PHX'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/201142.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 6: Luka Doncic (Mavericks)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Luka', 'Doncic', 'Luka Doncic', 'Guard/Forward', 201, 102, '1999-02-28',
       (SELECT id FROM teams WHERE abbreviation = 'DAL'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1629029.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 7: Nikola Jokic (Nuggets)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Nikola', 'Jokic', 'Nikola Jokic', 'Center', 211, 129, '1995-02-19',
       (SELECT id FROM teams WHERE abbreviation = 'DEN'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/203999.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 8: Joel Embiid (76ers)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Joel', 'Embiid', 'Joel Embiid', 'Center', 213, 127, '1994-03-16',
       (SELECT id FROM teams WHERE abbreviation = 'PHI'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/203954.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 9: Jayson Tatum (Celtics)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Jayson', 'Tatum', 'Jayson Tatum', 'Forward', 203, 97, '1998-03-03',
       (SELECT id FROM teams WHERE abbreviation = 'BOS'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1628369.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 10: Shai Gilgeous-Alexander (Thunder)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Shai', 'Gilgeous-Alexander', 'Shai Gilgeous-Alexander', 'Guard', 198, 88, '1998-07-12',
       (SELECT id FROM teams WHERE abbreviation = 'OKC'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1628983.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 11: Anthony Edwards (Timberwolves)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Anthony', 'Edwards', 'Anthony Edwards', 'Guard', 193, 97, '2001-08-05',
       (SELECT id FROM teams WHERE abbreviation = 'MIN'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1630162.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 12: Ja Morant (Grizzlies)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Ja', 'Morant', 'Ja Morant', 'Guard', 191, 79, '1999-08-10',
       (SELECT id FROM teams WHERE abbreviation = 'MEM'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1629630.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 13: Victor Wembanyama (Spurs)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Victor', 'Wembanyama', 'Victor Wembanyama', 'Forward/Center', 224, 95, '2004-01-04',
       (SELECT id FROM teams WHERE abbreviation = 'SAS'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1641705.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 14: Chet Holmgren (Thunder)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Chet', 'Holmgren', 'Chet Holmgren', 'Forward/Center', 208, 95, '2002-05-01',
       (SELECT id FROM teams WHERE abbreviation = 'OKC'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1631096.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 15: Bam Adebayo (Heat)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Bam', 'Adebayo', 'Bam Adebayo', 'Center', 206, 109, '1997-07-18',
       (SELECT id FROM teams WHERE abbreviation = 'MIA'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1628389.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 16: Donovan Mitchell (Cavaliers)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Donovan', 'Mitchell', 'Donovan Mitchell', 'Guard', 191, 84, '1996-09-07',
       (SELECT id FROM teams WHERE abbreviation = 'CLE'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1628378.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 17: Zion Williamson (Pelicans)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Zion', 'Williamson', 'Zion Williamson', 'Forward', 198, 129, '2000-07-06',
       (SELECT id FROM teams WHERE abbreviation = 'NOP'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1629627.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 18: Devin Booker (Suns)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Devin', 'Booker', 'Devin Booker', 'Guard', 196, 93, '1996-10-30',
       (SELECT id FROM teams WHERE abbreviation = 'PHX'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1626164.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 19: Kawhi Leonard (Clippers)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Kawhi', 'Leonard', 'Kawhi Leonard', 'Forward', 201, 104, '1991-06-29',
       (SELECT id FROM teams WHERE abbreviation = 'LAC'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/202695.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 20: Trae Young (Hawks)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Trae', 'Young', 'Trae Young', 'Guard', 185, 79, '1998-09-19',
       (SELECT id FROM teams WHERE abbreviation = 'ATL'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1629027.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 21: Chris Paul (Warriors)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Chris', 'Paul', 'Chris Paul', 'Guard', 183, 79, '1985-05-06',
       (SELECT id FROM teams WHERE abbreviation = 'GSW'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/101108.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 22: Karl-Anthony Towns (Timberwolves)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Karl-Anthony', 'Towns', 'Karl-Anthony Towns', 'Center/Forward', 211, 109, '1995-11-15',
       (SELECT id FROM teams WHERE abbreviation = 'MIN'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1626157.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 23: Brandon Ingram (Pelicans)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Brandon', 'Ingram', 'Brandon Ingram', 'Forward', 201, 100, '1997-09-02',
       (SELECT id FROM teams WHERE abbreviation = 'NOP'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1627742.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 24: Draymond Green (Warriors)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Draymond', 'Green', 'Draymond Green', 'Forward', 198, 104, '1990-03-04',
       (SELECT id FROM teams WHERE abbreviation = 'GSW'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/203110.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 25: Pascal Siakam (Raptors)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Pascal', 'Siakam', 'Pascal Siakam', 'Forward', 206, 109, '1994-04-02',
       (SELECT id FROM teams WHERE abbreviation = 'TOR'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/1627783.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

-- Joueur 26: Julius Randle (Knicks)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, photo_url)
SELECT 'Julius', 'Randle', 'Julius Randle', 'Forward', 201, 113, '1994-11-29',
       (SELECT id FROM teams WHERE abbreviation = 'NYK'),
       'https://cdn.nba.com/headshots/nba/latest/1040x760/203944.png'
ON DUPLICATE KEY UPDATE display_name=display_name;

SELECT '✅ 26 joueurs NBA insérés avec succès!' AS message;

-- Vérification
SELECT COUNT(*) AS total_players FROM players WHERE is_active = true;
