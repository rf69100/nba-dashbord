-- ============================================
-- NBA API - Ajout de joueurs supplémentaires (5-8 par équipe)
-- Rosters étendus pour la saison 2024-2025
-- ============================================

-- EASTERN CONFERENCE

-- ======================
-- ATLANTIC DIVISION
-- ======================

-- BOSTON CELTICS (BOS) - Ajouter 4 joueurs de plus
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Al', 'Horford', 'Al Horford', 'Center', 208, 109, '1986-06-03', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 42, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201143.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Al Horford');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Robert', 'Williams III', 'Robert Williams III', 'Center', 206, 108, '1997-10-17', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 44, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629057.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Robert Williams III');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Malcolm', 'Brogdon', 'Malcolm Brogdon', 'Guard', 196, 104, '1992-12-13', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 13, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627763.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Malcolm Brogdon');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Sam', 'Hauser', 'Sam Hauser', 'Forward', 201, 98, '1997-12-08', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 30, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630573.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Sam Hauser');

-- BROOKLYN NETS (BKN) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Nic', 'Claxton', 'Nic Claxton', 'Center', 211, 98, '1999-04-17', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 33, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629651.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Nic Claxton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Day''Ron', 'Sharpe', 'Day''Ron Sharpe', 'Center', 211, 118, '2001-11-06', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 20, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630549.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Day''Ron Sharpe');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Royce', 'O''Neale', 'Royce O''Neale', 'Forward', 193, 103, '1993-06-05', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626220.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Royce O''Neale');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Dorian', 'Finney-Smith', 'Dorian Finney-Smith', 'Forward', 201, 100, '1993-05-04', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 28, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627827.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Dorian Finney-Smith');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Seth', 'Curry', 'Seth Curry', 'Guard', 188, 84, '1990-08-23', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 30, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203552.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Seth Curry');

-- NEW YORK KNICKS (NYK) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Mitchell', 'Robinson', 'Mitchell Robinson', 'Center', 213, 109, '1998-04-01', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 23, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629011.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Mitchell Robinson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Quentin', 'Grimes', 'Quentin Grimes', 'Guard', 196, 95, '2000-05-08', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 6, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630230.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Quentin Grimes');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Isaiah', 'Hartenstein', 'Isaiah Hartenstein', 'Center', 211, 113, '1998-05-05', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 55, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628392.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Isaiah Hartenstein');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Immanuel', 'Quickley', 'Immanuel Quickley', 'Guard', 191, 86, '1999-06-17', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630193.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Immanuel Quickley');

-- PHILADELPHIA 76ERS (PHI) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'De''Anthony', 'Melton', 'De''Anthony Melton', 'Guard', 188, 91, '1998-05-28', (SELECT id FROM teams WHERE abbreviation = 'PHI'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629001.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'De''Anthony Melton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Paul', 'Reed', 'Paul Reed', 'Forward-Center', 206, 95, '1999-06-14', (SELECT id FROM teams WHERE abbreviation = 'PHI'), 44, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630194.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Paul Reed');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Shake', 'Milton', 'Shake Milton', 'Guard', 198, 93, '1996-09-26', (SELECT id FROM teams WHERE abbreviation = 'PHI'), 18, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629003.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Shake Milton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Furkan', 'Korkmaz', 'Furkan Korkmaz', 'Guard-Forward', 201, 95, '1997-07-24', (SELECT id FROM teams WHERE abbreviation = 'PHI'), 30, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627788.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Furkan Korkmaz');

-- TORONTO RAPTORS (TOR) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Gary', 'Trent Jr.', 'Gary Trent Jr.', 'Guard', 196, 95, '1999-01-18', (SELECT id FROM teams WHERE abbreviation = 'TOR'), 33, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629018.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Gary Trent Jr.');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Chris', 'Boucher', 'Chris Boucher', 'Forward-Center', 206, 91, '1993-01-11', (SELECT id FROM teams WHERE abbreviation = 'TOR'), 25, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628449.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Chris Boucher');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Precious', 'Achiuwa', 'Precious Achiuwa', 'Forward', 203, 104, '1999-09-19', (SELECT id FROM teams WHERE abbreviation = 'TOR'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630173.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Precious Achiuwa');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Malachi', 'Flynn', 'Malachi Flynn', 'Guard', 185, 79, '1998-05-09', (SELECT id FROM teams WHERE abbreviation = 'TOR'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630201.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Malachi Flynn');

-- ======================
-- CENTRAL DIVISION
-- ======================

-- CHICAGO BULLS (CHI) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Nikola', 'Vucevic', 'Nikola Vucevic', 'Center', 211, 118, '1990-10-24', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202696.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Nikola Vucevic');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Coby', 'White', 'Coby White', 'Guard', 196, 88, '2000-02-16', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629632.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Coby White');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Patrick', 'Williams', 'Patrick Williams', 'Forward', 201, 98, '2001-08-26', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 44, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630171.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Patrick Williams');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Ayo', 'Dosunmu', 'Ayo Dosunmu', 'Guard', 196, 91, '2000-01-17', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 12, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630245.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Ayo Dosunmu');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Andre', 'Drummond', 'Andre Drummond', 'Center', 211, 127, '1993-08-10', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203083.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Andre Drummond');

-- CLEVELAND CAVALIERS (CLE) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Caris', 'LeVert', 'Caris LeVert', 'Guard-Forward', 198, 93, '1994-08-25', (SELECT id FROM teams WHERE abbreviation = 'CLE'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627747.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Caris LeVert');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Isaac', 'Okoro', 'Isaac Okoro', 'Forward', 196, 102, '2001-01-26', (SELECT id FROM teams WHERE abbreviation = 'CLE'), 35, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630168.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Isaac Okoro');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Ricky', 'Rubio', 'Ricky Rubio', 'Guard', 193, 86, '1990-10-21', (SELECT id FROM teams WHERE abbreviation = 'CLE'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201937.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Ricky Rubio');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Dean', 'Wade', 'Dean Wade', 'Forward', 206, 102, '1996-11-20', (SELECT id FROM teams WHERE abbreviation = 'CLE'), 32, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629731.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Dean Wade');

-- DETROIT PISTONS (DET) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jaden', 'Ivey', 'Jaden Ivey', 'Guard', 193, 88, '2002-02-13', (SELECT id FROM teams WHERE abbreviation = 'DET'), 23, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631093.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jaden Ivey');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Killian', 'Hayes', 'Killian Hayes', 'Guard', 196, 98, '2001-07-27', (SELECT id FROM teams WHERE abbreviation = 'DET'), 7, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630165.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Killian Hayes');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Isaiah', 'Stewart', 'Isaiah Stewart', 'Center', 206, 113, '2001-05-22', (SELECT id FROM teams WHERE abbreviation = 'DET'), 28, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630194.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Isaiah Stewart');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Duren', 'Jalen Duren', 'Center', 211, 113, '2003-11-18', (SELECT id FROM teams WHERE abbreviation = 'DET'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631105.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Duren');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Marvin', 'Bagley III', 'Marvin Bagley III', 'Forward', 211, 108, '1999-03-14', (SELECT id FROM teams WHERE abbreviation = 'DET'), 35, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628963.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Marvin Bagley III');

-- INDIANA PACERS (IND) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Bennedict', 'Mathurin', 'Bennedict Mathurin', 'Guard', 198, 91, '2002-06-19', (SELECT id FROM teams WHERE abbreviation = 'IND'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631096.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Bennedict Mathurin');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'T.J.', 'McConnell', 'T.J. McConnell', 'Guard', 185, 91, '1992-03-25', (SELECT id FROM teams WHERE abbreviation = 'IND'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/204456.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'T.J. McConnell');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Smith', 'Jalen Smith', 'Forward-Center', 208, 102, '2000-03-16', (SELECT id FROM teams WHERE abbreviation = 'IND'), 25, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630188.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Smith');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Daniel', 'Theis', 'Daniel Theis', 'Center', 206, 111, '1992-04-04', (SELECT id FROM teams WHERE abbreviation = 'IND'), 27, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628464.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Daniel Theis');

-- MILWAUKEE BUCKS (MIL) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Brook', 'Lopez', 'Brook Lopez', 'Center', 213, 127, '1988-04-01', (SELECT id FROM teams WHERE abbreviation = 'MIL'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201572.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Brook Lopez');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Bobby', 'Portis', 'Bobby Portis', 'Forward', 208, 111, '1995-02-10', (SELECT id FROM teams WHERE abbreviation = 'MIL'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626171.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Bobby Portis');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Pat', 'Connaughton', 'Pat Connaughton', 'Guard-Forward', 196, 95, '1993-01-06', (SELECT id FROM teams WHERE abbreviation = 'MIL'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626192.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Pat Connaughton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Grayson', 'Allen', 'Grayson Allen', 'Guard', 193, 88, '1995-10-08', (SELECT id FROM teams WHERE abbreviation = 'MIL'), 12, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628960.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Grayson Allen');

-- ======================
-- SOUTHEAST DIVISION
-- ======================

-- ATLANTA HAWKS (ATL) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Clint', 'Capela', 'Clint Capela', 'Center', 208, 109, '1994-05-18', (SELECT id FROM teams WHERE abbreviation = 'ATL'), 15, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203991.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Clint Capela');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Bogdan', 'Bogdanovic', 'Bogdan Bogdanovic', 'Guard-Forward', 198, 102, '1992-08-18', (SELECT id FROM teams WHERE abbreviation = 'ATL'), 13, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203992.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Bogdan Bogdanovic');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Onyeka', 'Okongwu', 'Onyeka Okongwu', 'Center', 206, 107, '2000-12-11', (SELECT id FROM teams WHERE abbreviation = 'ATL'), 17, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630168.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Onyeka Okongwu');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'AJ', 'Griffin', 'AJ Griffin', 'Guard-Forward', 198, 100, '2003-08-25', (SELECT id FROM teams WHERE abbreviation = 'ATL'), 14, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631120.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'AJ Griffin');

-- CHARLOTTE HORNETS (CHA) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Gordon', 'Hayward', 'Gordon Hayward', 'Forward', 201, 102, '1990-03-23', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 20, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202330.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Gordon Hayward');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'P.J.', 'Washington', 'P.J. Washington', 'Forward', 201, 104, '1998-08-23', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 25, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629023.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'P.J. Washington');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Mark', 'Williams', 'Mark Williams', 'Center', 213, 109, '2001-12-16', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631114.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Mark Williams');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Nick', 'Richards', 'Nick Richards', 'Center', 213, 111, '1997-11-06', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630245.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Nick Richards');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Dennis', 'Smith Jr.', 'Dennis Smith Jr.', 'Guard', 191, 91, '1997-11-25', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628372.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Dennis Smith Jr.');

-- MIAMI HEAT (MIA) - Ajouter 3 joueurs (déjà 5)
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kyle', 'Lowry', 'Kyle Lowry', 'Guard', 183, 89, '1986-03-25', (SELECT id FROM teams WHERE abbreviation = 'MIA'), 7, 'https://cdn.nba.com/headshots/nba/latest/1040x760/200768.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kyle Lowry');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Caleb', 'Martin', 'Caleb Martin', 'Forward', 196, 93, '1995-09-28', (SELECT id FROM teams WHERE abbreviation = 'MIA'), 16, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628997.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Caleb Martin');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Max', 'Strus', 'Max Strus', 'Guard-Forward', 196, 95, '1996-03-28', (SELECT id FROM teams WHERE abbreviation = 'MIA'), 31, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629622.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Max Strus');

-- ORLANDO MAGIC (ORL) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Cole', 'Anthony', 'Cole Anthony', 'Guard', 191, 84, '2000-05-15', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 50, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630175.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Cole Anthony');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Wendell', 'Carter Jr.', 'Wendell Carter Jr.', 'Center', 208, 122, '1999-04-16', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 34, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628976.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Wendell Carter Jr.');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Markelle', 'Fultz', 'Markelle Fultz', 'Guard', 193, 91, '1998-05-29', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 20, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628365.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Markelle Fultz');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jonathan', 'Isaac', 'Jonathan Isaac', 'Forward', 208, 105, '1997-10-03', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628371.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jonathan Isaac');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Moritz', 'Wagner', 'Moritz Wagner', 'Center', 211, 111, '1997-04-26', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 21, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629021.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Moritz Wagner');

-- WASHINGTON WIZARDS (WAS) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kristaps', 'Porzingis', 'Kristaps Porzingis', 'Forward-Center', 221, 109, '1995-08-02', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 6, 'https://cdn.nba.com/headshots/nba/latest/1040x760/204001.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kristaps Porzingis');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tyus', 'Jones', 'Tyus Jones', 'Guard', 185, 88, '1996-05-10', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626145.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tyus Jones');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Corey', 'Kispert', 'Corey Kispert', 'Forward', 201, 100, '1999-03-03', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630556.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Corey Kispert');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Daniel', 'Gafford', 'Daniel Gafford', 'Center', 208, 111, '1998-10-01', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 21, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629655.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Daniel Gafford');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Deni', 'Avdija', 'Deni Avdija', 'Forward', 206, 95, '2001-01-03', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630166.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Deni Avdija');

-- WESTERN CONFERENCE

-- ======================
-- NORTHWEST DIVISION
-- ======================

-- DENVER NUGGETS (DEN) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Aaron', 'Gordon', 'Aaron Gordon', 'Forward', 201, 100, '1995-09-16', (SELECT id FROM teams WHERE abbreviation = 'DEN'), 50, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203932.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Aaron Gordon');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kentavious', 'Caldwell-Pope', 'Kentavious Caldwell-Pope', 'Guard', 196, 93, '1993-02-18', (SELECT id FROM teams WHERE abbreviation = 'DEN'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203484.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kentavious Caldwell-Pope');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Christian', 'Braun', 'Christian Braun', 'Guard', 201, 95, '2001-04-17', (SELECT id FROM teams WHERE abbreviation = 'DEN'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631104.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Christian Braun');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Bruce', 'Brown', 'Bruce Brown', 'Guard-Forward', 193, 91, '1996-08-15', (SELECT id FROM teams WHERE abbreviation = 'DEN'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628971.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Bruce Brown');

-- MINNESOTA TIMBERWOLVES (MIN) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jaden', 'McDaniels', 'Jaden McDaniels', 'Forward', 206, 93, '2000-09-29', (SELECT id FROM teams WHERE abbreviation = 'MIN'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630183.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jaden McDaniels');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Naz', 'Reid', 'Naz Reid', 'Center', 206, 120, '1999-08-26', (SELECT id FROM teams WHERE abbreviation = 'MIN'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629675.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Naz Reid');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kyle', 'Anderson', 'Kyle Anderson', 'Forward', 206, 104, '1993-09-20', (SELECT id FROM teams WHERE abbreviation = 'MIN'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203937.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kyle Anderson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Nickeil', 'Alexander-Walker', 'Nickeil Alexander-Walker', 'Guard', 196, 93, '1998-09-02', (SELECT id FROM teams WHERE abbreviation = 'MIN'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629638.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Nickeil Alexander-Walker');

-- OKLAHOMA CITY THUNDER (OKC) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Chet', 'Holmgren', 'Chet Holmgren', 'Center', 216, 88, '2002-05-01', (SELECT id FROM teams WHERE abbreviation = 'OKC'), 7, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631096.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Chet Holmgren');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Josh', 'Giddey', 'Josh Giddey', 'Guard-Forward', 203, 95, '2002-10-10', (SELECT id FROM teams WHERE abbreviation = 'OKC'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630581.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Josh Giddey');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Lu', 'Dort', 'Lu Dort', 'Guard', 191, 98, '1999-04-19', (SELECT id FROM teams WHERE abbreviation = 'OKC'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629652.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Lu Dort');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Williams', 'Jalen Williams', 'Forward', 198, 95, '2001-04-14', (SELECT id FROM teams WHERE abbreviation = 'OKC'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631114.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Williams');

-- PORTLAND TRAIL BLAZERS (POR) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Anfernee', 'Simons', 'Anfernee Simons', 'Guard', 191, 88, '1999-06-08', (SELECT id FROM teams WHERE abbreviation = 'POR'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629014.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Anfernee Simons');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jusuf', 'Nurkic', 'Jusuf Nurkic', 'Center', 211, 127, '1994-08-23', (SELECT id FROM teams WHERE abbreviation = 'POR'), 27, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203994.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jusuf Nurkic');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Shaedon', 'Sharpe', 'Shaedon Sharpe', 'Guard', 198, 91, '2003-05-30', (SELECT id FROM teams WHERE abbreviation = 'POR'), 17, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631111.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Shaedon Sharpe');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jabari', 'Walker', 'Jabari Walker', 'Forward', 206, 98, '2002-07-30', (SELECT id FROM teams WHERE abbreviation = 'POR'), 34, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631131.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jabari Walker');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Nassir', 'Little', 'Nassir Little', 'Forward', 198, 100, '2000-02-11', (SELECT id FROM teams WHERE abbreviation = 'POR'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629642.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Nassir Little');

-- UTAH JAZZ (UTA) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Walker', 'Kessler', 'Walker Kessler', 'Center', 216, 111, '2001-07-26', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631117.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Walker Kessler');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Collin', 'Sexton', 'Collin Sexton', 'Guard', 185, 86, '1999-01-04', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 2, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629012.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Collin Sexton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jordan', 'Clarkson', 'Jordan Clarkson', 'Guard', 193, 88, '1992-06-07', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203903.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jordan Clarkson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Talen', 'Horton-Tucker', 'Talen Horton-Tucker', 'Guard-Forward', 193, 106, '2000-11-25', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629659.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Talen Horton-Tucker');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Simone', 'Fontecchio', 'Simone Fontecchio', 'Forward', 203, 93, '1995-12-11', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 16, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630217.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Simone Fontecchio');

-- ======================
-- PACIFIC DIVISION
-- ======================

-- GOLDEN STATE WARRIORS (GSW) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jordan', 'Poole', 'Jordan Poole', 'Guard', 193, 88, '1999-06-19', (SELECT id FROM teams WHERE abbreviation = 'GSW'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629673.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jordan Poole');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jonathan', 'Kuminga', 'Jonathan Kuminga', 'Forward', 203, 100, '2002-10-06', (SELECT id FROM teams WHERE abbreviation = 'GSW'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630228.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jonathan Kuminga');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Moses', 'Moody', 'Moses Moody', 'Guard-Forward', 198, 93, '2002-05-31', (SELECT id FROM teams WHERE abbreviation = 'GSW'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630541.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Moses Moody');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Gary', 'Payton II', 'Gary Payton II', 'Guard', 191, 86, '1992-12-01', (SELECT id FROM teams WHERE abbreviation = 'GSW'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627780.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Gary Payton II');

-- LOS ANGELES CLIPPERS (LAC) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Norman', 'Powell', 'Norman Powell', 'Guard', 193, 98, '1993-05-25', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626181.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Norman Powell');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Terance', 'Mann', 'Terance Mann', 'Guard-Forward', 196, 97, '1996-10-18', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 14, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629611.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Terance Mann');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Bones', 'Hyland', 'Bones Hyland', 'Guard', 191, 79, '2000-09-14', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630538.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Bones Hyland');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Mason', 'Plumlee', 'Mason Plumlee', 'Center', 211, 109, '1990-03-05', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203486.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Mason Plumlee');

-- LOS ANGELES LAKERS (LAL) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'D''Angelo', 'Russell', 'D''Angelo Russell', 'Guard', 196, 88, '1996-02-23', (SELECT id FROM teams WHERE abbreviation = 'LAL'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626156.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'D''Angelo Russell');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Austin', 'Reaves', 'Austin Reaves', 'Guard', 196, 88, '1998-05-29', (SELECT id FROM teams WHERE abbreviation = 'LAL'), 15, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630559.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Austin Reaves');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Rui', 'Hachimura', 'Rui Hachimura', 'Forward', 203, 104, '1998-02-08', (SELECT id FROM teams WHERE abbreviation = 'LAL'), 28, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629060.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Rui Hachimura');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jarred', 'Vanderbilt', 'Jarred Vanderbilt', 'Forward', 206, 95, '1999-04-03', (SELECT id FROM teams WHERE abbreviation = 'LAL'), 2, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629020.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jarred Vanderbilt');

-- PHOENIX SUNS (PHX) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Deandre', 'Ayton', 'Deandre Ayton', 'Center', 211, 113, '1998-07-23', (SELECT id FROM teams WHERE abbreviation = 'PHX'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629028.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Deandre Ayton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Cameron', 'Johnson', 'Cameron Johnson', 'Forward', 203, 95, '1996-03-03', (SELECT id FROM teams WHERE abbreviation = 'PHX'), 23, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629661.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Cameron Johnson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Torrey', 'Craig', 'Torrey Craig', 'Forward', 201, 95, '1990-12-19', (SELECT id FROM teams WHERE abbreviation = 'PHX'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628470.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Torrey Craig');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Landry', 'Shamet', 'Landry Shamet', 'Guard', 196, 86, '1997-03-13', (SELECT id FROM teams WHERE abbreviation = 'PHX'), 14, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629013.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Landry Shamet');

-- SACRAMENTO KINGS (SAC) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Harrison', 'Barnes', 'Harrison Barnes', 'Forward', 203, 102, '1992-05-30', (SELECT id FROM teams WHERE abbreviation = 'SAC'), 40, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203084.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Harrison Barnes');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Davion', 'Mitchell', 'Davion Mitchell', 'Guard', 185, 93, '1998-09-05', (SELECT id FROM teams WHERE abbreviation = 'SAC'), 15, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630236.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Davion Mitchell');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Trey', 'Lyles', 'Trey Lyles', 'Forward', 208, 106, '1995-11-05', (SELECT id FROM teams WHERE abbreviation = 'SAC'), 41, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626168.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Trey Lyles');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Richaun', 'Holmes', 'Richaun Holmes', 'Center', 208, 109, '1993-10-15', (SELECT id FROM teams WHERE abbreviation = 'SAC'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626158.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Richaun Holmes');

-- ======================
-- SOUTHWEST DIVISION
-- ======================

-- DALLAS MAVERICKS (DAL) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Christian', 'Wood', 'Christian Wood', 'Forward-Center', 208, 98, '1995-09-27', (SELECT id FROM teams WHERE abbreviation = 'DAL'), 35, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626174.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Christian Wood');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Maxi', 'Kleber', 'Maxi Kleber', 'Forward', 208, 99, '1992-01-29', (SELECT id FROM teams WHERE abbreviation = 'DAL'), 42, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628467.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Maxi Kleber');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Josh', 'Green', 'Josh Green', 'Guard-Forward', 196, 93, '2000-11-16', (SELECT id FROM teams WHERE abbreviation = 'DAL'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630182.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Josh Green');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jaden', 'Hardy', 'Jaden Hardy', 'Guard', 193, 88, '2002-07-05', (SELECT id FROM teams WHERE abbreviation = 'DAL'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631100.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jaden Hardy');

-- HOUSTON ROCKETS (HOU) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jabari', 'Smith Jr.', 'Jabari Smith Jr.', 'Forward', 208, 100, '2003-05-13', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631095.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jabari Smith Jr.');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Green', 'Jalen Green', 'Guard', 198, 84, '2002-02-09', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630224.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Green');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kevin', 'Porter Jr.', 'Kevin Porter Jr.', 'Guard', 193, 96, '2000-05-04', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629645.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kevin Porter Jr.');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tari', 'Eason', 'Tari Eason', 'Forward', 203, 98, '2001-05-10', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 17, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631107.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tari Eason');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Usman', 'Garuba', 'Usman Garuba', 'Forward', 203, 104, '2002-03-09', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 16, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630586.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Usman Garuba');

-- MEMPHIS GRIZZLIES (MEM) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Desmond', 'Bane', 'Desmond Bane', 'Guard', 198, 98, '1998-06-25', (SELECT id FROM teams WHERE abbreviation = 'MEM'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630217.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Desmond Bane');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Brandon', 'Clarke', 'Brandon Clarke', 'Forward', 203, 97, '1996-09-19', (SELECT id FROM teams WHERE abbreviation = 'MEM'), 15, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629634.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Brandon Clarke');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Ziaire', 'Williams', 'Ziaire Williams', 'Forward', 203, 86, '2001-09-12', (SELECT id FROM teams WHERE abbreviation = 'MEM'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630533.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Ziaire Williams');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'David', 'Roddy', 'David Roddy', 'Forward', 196, 115, '2001-04-06', (SELECT id FROM teams WHERE abbreviation = 'MEM'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631119.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'David Roddy');

-- NEW ORLEANS PELICANS (NOP) - Ajouter 4 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'CJ', 'McCollum', 'CJ McCollum', 'Guard', 191, 86, '1991-09-19', (SELECT id FROM teams WHERE abbreviation = 'NOP'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203468.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'CJ McCollum');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jonas', 'Valanciunas', 'Jonas Valanciunas', 'Center', 211, 120, '1992-05-06', (SELECT id FROM teams WHERE abbreviation = 'NOP'), 17, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202685.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jonas Valanciunas');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Herb', 'Jones', 'Herb Jones', 'Forward', 203, 93, '1998-10-06', (SELECT id FROM teams WHERE abbreviation = 'NOP'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630535.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Herb Jones');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Dyson', 'Daniels', 'Dyson Daniels', 'Guard', 203, 91, '2003-03-17', (SELECT id FROM teams WHERE abbreviation = 'NOP'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631106.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Dyson Daniels');

-- SAN ANTONIO SPURS (SAS) - Ajouter 5 joueurs
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Victor', 'Wembanyama', 'Victor Wembanyama', 'Center', 224, 95, '2004-01-04', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641705.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Victor Wembanyama');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Keldon', 'Johnson', 'Keldon Johnson', 'Forward', 196, 100, '1999-10-11', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629640.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Keldon Johnson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Devin', 'Vassell', 'Devin Vassell', 'Guard-Forward', 196, 91, '2000-08-23', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630170.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Devin Vassell');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jeremy', 'Sochan', 'Jeremy Sochan', 'Forward', 206, 104, '2003-05-20', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 10, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631102.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jeremy Sochan');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tre', 'Jones', 'Tre Jones', 'Guard', 185, 84, '2000-01-08', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 33, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630200.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tre Jones');

-- ============================================
-- Vérification du nombre total de joueurs
-- ============================================

SELECT
    '✅ Joueurs supplémentaires ajoutés avec succès!' AS message,
    COUNT(*) as total_players
FROM players;

SELECT
    t.name as team_name,
    t.abbreviation,
    COUNT(p.id) as player_count
FROM teams t
LEFT JOIN players p ON t.id = p.team_id
GROUP BY t.id, t.name, t.abbreviation
ORDER BY player_count DESC, t.name;
