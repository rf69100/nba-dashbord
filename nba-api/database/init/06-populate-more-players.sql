-- ============================================
-- NBA API - Ajout de joueurs supplémentaires saison 2024-25
-- ============================================

-- BOSTON CELTICS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Derrick', 'White', 'Derrick White', 'Guard', 193, 86, '1994-07-02', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628401.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Derrick White');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jrue', 'Holiday', 'Jrue Holiday', 'Guard', 193, 93, '1990-06-12', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201950.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jrue Holiday');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kristaps', 'Porzingis', 'Kristaps Porzingis', 'Center', 221, 109, '1995-08-02', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/204001.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kristaps Porzingis');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Al', 'Horford', 'Al Horford', 'Center', 208, 109, '1986-06-03', (SELECT id FROM teams WHERE abbreviation = 'BOS'), 42, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201143.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Al Horford');

-- OKLAHOMA CITY THUNDER
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Williams', 'Jalen Williams', 'Forward', 198, 95, '2001-04-14', (SELECT id FROM teams WHERE abbreviation = 'OKC'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631105.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Williams');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Josh', 'Giddey', 'Josh Giddey', 'Guard', 203, 98, '2002-10-10', (SELECT id FROM teams WHERE abbreviation = 'OKC'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630581.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Josh Giddey');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Lu', 'Dort', 'Luguentz Dort', 'Guard', 193, 98, '1999-04-19', (SELECT id FROM teams WHERE abbreviation = 'OKC'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629652.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Luguentz Dort');

-- DENVER NUGGETS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jamal', 'Murray', 'Jamal Murray', 'Guard', 193, 98, '1997-02-23', (SELECT id FROM teams WHERE abbreviation = 'DEN'), 27, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627750.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jamal Murray');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Michael', 'Porter Jr.', 'Michael Porter Jr.', 'Forward', 208, 98, '1998-06-29', (SELECT id FROM teams WHERE abbreviation = 'DEN'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629008.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Michael Porter Jr.');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Aaron', 'Gordon', 'Aaron Gordon', 'Forward', 201, 100, '1995-09-16', (SELECT id FROM teams WHERE abbreviation = 'DEN'), 50, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203932.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Aaron Gordon');

-- MINNESOTA TIMBERWOLVES
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Rudy', 'Gobert', 'Rudy Gobert', 'Center', 216, 117, '1992-06-26', (SELECT id FROM teams WHERE abbreviation = 'MIN'), 27, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203497.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Rudy Gobert');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Mike', 'Conley', 'Mike Conley', 'Guard', 185, 79, '1987-10-11', (SELECT id FROM teams WHERE abbreviation = 'MIN'), 10, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201144.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Mike Conley');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Naz', 'Reid', 'Naz Reid', 'Center', 206, 120, '1999-08-26', (SELECT id FROM teams WHERE abbreviation = 'MIN'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629675.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Naz Reid');

-- LOS ANGELES CLIPPERS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Paul', 'George', 'Paul George', 'Forward', 203, 100, '1990-05-02', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 13, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202331.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Paul George');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'James', 'Harden', 'James Harden', 'Guard', 196, 100, '1989-08-26', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201935.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'James Harden');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Russell', 'Westbrook', 'Russell Westbrook', 'Guard', 191, 91, '1988-11-12', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201566.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Russell Westbrook');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Ivica', 'Zubac', 'Ivica Zubac', 'Center', 213, 109, '1997-03-18', (SELECT id FROM teams WHERE abbreviation = 'LAC'), 40, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627826.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Ivica Zubac');

-- DALLAS MAVERICKS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kyrie', 'Irving', 'Kyrie Irving', 'Guard', 188, 88, '1992-03-23', (SELECT id FROM teams WHERE abbreviation = 'DAL'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202681.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kyrie Irving');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Dereck', 'Lively II', 'Dereck Lively II', 'Center', 213, 103, '2004-02-27', (SELECT id FROM teams WHERE abbreviation = 'DAL'), 2, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641705.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Dereck Lively II');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tim', 'Hardaway Jr.', 'Tim Hardaway Jr.', 'Guard', 196, 93, '1992-03-16', (SELECT id FROM teams WHERE abbreviation = 'DAL'), 10, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203501.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tim Hardaway Jr.');

-- NEW YORK KNICKS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Brunson', 'Jalen Brunson', 'Guard', 185, 86, '1996-08-31', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628973.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Brunson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'OG', 'Anunoby', 'OG Anunoby', 'Forward', 201, 105, '1997-07-17', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628384.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'OG Anunoby');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Mitchell', 'Robinson', 'Mitchell Robinson', 'Center', 213, 109, '1998-04-01', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 23, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629011.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Mitchell Robinson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Josh', 'Hart', 'Josh Hart', 'Guard', 196, 98, '1995-03-06', (SELECT id FROM teams WHERE abbreviation = 'NYK'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628404.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Josh Hart');

-- NEW ORLEANS PELICANS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'CJ', 'McCollum', 'CJ McCollum', 'Guard', 191, 88, '1991-09-19', (SELECT id FROM teams WHERE abbreviation = 'NOP'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203468.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'CJ McCollum');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Herbert', 'Jones', 'Herbert Jones', 'Forward', 203, 93, '1998-10-06', (SELECT id FROM teams WHERE abbreviation = 'NOP'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630529.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Herbert Jones');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Trey', 'Murphy III', 'Trey Murphy III', 'Forward', 206, 93, '2000-06-18', (SELECT id FROM teams WHERE abbreviation = 'NOP'), 25, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630556.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Trey Murphy III');

-- PHOENIX SUNS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Bradley', 'Beal', 'Bradley Beal', 'Guard', 196, 95, '1993-06-28', (SELECT id FROM teams WHERE abbreviation = 'PHX'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203078.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Bradley Beal');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jusuf', 'Nurkic', 'Jusuf Nurkic', 'Center', 213, 127, '1994-08-23', (SELECT id FROM teams WHERE abbreviation = 'PHX'), 20, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203994.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jusuf Nurkic');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Grayson', 'Allen', 'Grayson Allen', 'Guard', 193, 88, '1995-10-08', (SELECT id FROM teams WHERE abbreviation = 'PHX'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628960.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Grayson Allen');

-- MILWAUKEE BUCKS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Damian', 'Lillard', 'Damian Lillard', 'Guard', 188, 88, '1990-07-15', (SELECT id FROM teams WHERE abbreviation = 'MIL'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203081.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Damian Lillard');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Khris', 'Middleton', 'Khris Middleton', 'Forward', 201, 100, '1991-08-12', (SELECT id FROM teams WHERE abbreviation = 'MIL'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203114.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Khris Middleton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Brook', 'Lopez', 'Brook Lopez', 'Center', 213, 127, '1988-04-01', (SELECT id FROM teams WHERE abbreviation = 'MIL'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/201572.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Brook Lopez');

-- CLEVELAND CAVALIERS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Darius', 'Garland', 'Darius Garland', 'Guard', 185, 84, '2000-01-26', (SELECT id FROM teams WHERE abbreviation = 'CLE'), 10, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629636.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Darius Garland');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jarrett', 'Allen', 'Jarrett Allen', 'Center', 211, 111, '1998-04-21', (SELECT id FROM teams WHERE abbreviation = 'CLE'), 31, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628386.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jarrett Allen');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Evan', 'Mobley', 'Evan Mobley', 'Forward', 213, 97, '2001-06-18', (SELECT id FROM teams WHERE abbreviation = 'CLE'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630596.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Evan Mobley');

-- INDIANA PACERS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tyrese', 'Haliburton', 'Tyrese Haliburton', 'Guard', 196, 84, '2000-02-29', (SELECT id FROM teams WHERE abbreviation = 'IND'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630169.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tyrese Haliburton');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Myles', 'Turner', 'Myles Turner', 'Center', 211, 113, '1996-03-24', (SELECT id FROM teams WHERE abbreviation = 'IND'), 33, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626167.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Myles Turner');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Bennedict', 'Mathurin', 'Bennedict Mathurin', 'Guard', 198, 93, '2002-06-19', (SELECT id FROM teams WHERE abbreviation = 'IND'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631095.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Bennedict Mathurin');

-- LOS ANGELES LAKERS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Austin', 'Reaves', 'Austin Reaves', 'Guard', 196, 88, '1998-05-29', (SELECT id FROM teams WHERE abbreviation = 'LAL'), 15, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630559.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Austin Reaves');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Rui', 'Hachimura', 'Rui Hachimura', 'Forward', 203, 104, '1998-02-08', (SELECT id FROM teams WHERE abbreviation = 'LAL'), 28, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629060.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Rui Hachimura');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT "D'Angelo", 'Russell', "D'Angelo Russell", 'Guard', 196, 88, '1996-02-23', (SELECT id FROM teams WHERE abbreviation = 'LAL'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626156.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = "D'Angelo Russell");

-- ORLANDO MAGIC
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Paolo', 'Banchero', 'Paolo Banchero', 'Forward', 208, 113, '2002-11-12', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631094.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Paolo Banchero');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Franz', 'Wagner', 'Franz Wagner', 'Forward', 206, 100, '2001-08-27', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630532.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Franz Wagner');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Suggs', 'Jalen Suggs', 'Guard', 193, 95, '2001-06-03', (SELECT id FROM teams WHERE abbreviation = 'ORL'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630591.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Suggs');

-- PHILADELPHIA 76ERS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tyrese', 'Maxey', 'Tyrese Maxey', 'Guard', 188, 91, '2000-11-04', (SELECT id FROM teams WHERE abbreviation = 'PHI'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630178.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tyrese Maxey');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tobias', 'Harris', 'Tobias Harris', 'Forward', 203, 107, '1992-07-15', (SELECT id FROM teams WHERE abbreviation = 'PHI'), 12, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202699.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tobias Harris');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kelly', 'Oubre Jr.', 'Kelly Oubre Jr.', 'Forward', 201, 93, '1995-12-09', (SELECT id FROM teams WHERE abbreviation = 'PHI'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626162.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kelly Oubre Jr.');

-- MIAMI HEAT
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jimmy', 'Butler', 'Jimmy Butler', 'Forward', 201, 104, '1989-09-14', (SELECT id FROM teams WHERE abbreviation = 'MIA'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202710.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jimmy Butler');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tyler', 'Herro', 'Tyler Herro', 'Guard', 196, 88, '2000-01-20', (SELECT id FROM teams WHERE abbreviation = 'MIA'), 14, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629639.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tyler Herro');

-- GOLDEN STATE WARRIORS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Klay', 'Thompson', 'Klay Thompson', 'Guard', 198, 100, '1990-02-08', (SELECT id FROM teams WHERE abbreviation = 'GSW'), 11, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202691.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Klay Thompson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Andrew', 'Wiggins', 'Andrew Wiggins', 'Forward', 201, 88, '1995-02-23', (SELECT id FROM teams WHERE abbreviation = 'GSW'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203952.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Andrew Wiggins');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jonathan', 'Kuminga', 'Jonathan Kuminga', 'Forward', 203, 95, '2002-10-06', (SELECT id FROM teams WHERE abbreviation = 'GSW'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630228.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jonathan Kuminga');

-- SACRAMENTO KINGS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT "De'Aaron", 'Fox', "De'Aaron Fox", 'Guard', 191, 84, '1997-12-20', (SELECT id FROM teams WHERE abbreviation = 'SAC'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628368.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = "De'Aaron Fox");

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Domantas', 'Sabonis', 'Domantas Sabonis', 'Center', 211, 109, '1996-05-03', (SELECT id FROM teams WHERE abbreviation = 'SAC'), 10, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627734.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Domantas Sabonis');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Keegan', 'Murray', 'Keegan Murray', 'Forward', 203, 102, '2000-08-19', (SELECT id FROM teams WHERE abbreviation = 'SAC'), 13, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631121.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Keegan Murray');

-- HOUSTON ROCKETS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Alperen', 'Sengun', 'Alperen Sengun', 'Center', 211, 109, '2002-07-25', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 28, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630578.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Alperen Sengun');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Green', 'Jalen Green', 'Guard', 198, 84, '2002-02-09', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630224.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Green');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Fred', 'VanVleet', 'Fred VanVleet', 'Guard', 185, 88, '1994-02-25', (SELECT id FROM teams WHERE abbreviation = 'HOU'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627832.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Fred VanVleet');

-- CHICAGO BULLS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Zach', 'LaVine', 'Zach LaVine', 'Guard', 196, 91, '1995-03-10', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 8, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203897.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Zach LaVine');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Nikola', 'Vucevic', 'Nikola Vucevic', 'Center', 211, 118, '1990-10-24', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/202696.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Nikola Vucevic');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Coby', 'White', 'Coby White', 'Guard', 196, 88, '2000-02-16', (SELECT id FROM teams WHERE abbreviation = 'CHI'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629632.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Coby White');

-- ATLANTA HAWKS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Dejounte', 'Murray', 'Dejounte Murray', 'Guard', 193, 82, '1996-09-19', (SELECT id FROM teams WHERE abbreviation = 'ATL'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627749.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Dejounte Murray');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Clint', 'Capela', 'Clint Capela', 'Center', 208, 109, '1994-05-18', (SELECT id FROM teams WHERE abbreviation = 'ATL'), 15, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203991.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Clint Capela');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Johnson', 'Jalen Johnson', 'Forward', 206, 100, '2002-12-18', (SELECT id FROM teams WHERE abbreviation = 'ATL'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630566.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Johnson');

-- BROOKLYN NETS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Mikal', 'Bridges', 'Mikal Bridges', 'Forward', 201, 95, '1996-08-30', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628969.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Mikal Bridges');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Cam', 'Thomas', 'Cam Thomas', 'Guard', 193, 95, '2001-10-13', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630560.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Cam Thomas');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Nic', 'Claxton', 'Nic Claxton', 'Center', 211, 98, '1999-04-17', (SELECT id FROM teams WHERE abbreviation = 'BKN'), 33, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629651.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Nic Claxton');

-- UTAH JAZZ
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Lauri', 'Markkanen', 'Lauri Markkanen', 'Forward', 213, 109, '1997-05-22', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 23, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628374.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Lauri Markkanen');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jordan', 'Clarkson', 'Jordan Clarkson', 'Guard', 193, 88, '1992-06-07', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203903.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jordan Clarkson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Collin', 'Sexton', 'Collin Sexton', 'Guard', 185, 86, '1999-01-04', (SELECT id FROM teams WHERE abbreviation = 'UTA'), 2, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629012.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Collin Sexton');

-- MEMPHIS GRIZZLIES
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Desmond', 'Bane', 'Desmond Bane', 'Guard', 196, 98, '1998-06-25', (SELECT id FROM teams WHERE abbreviation = 'MEM'), 22, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630217.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Desmond Bane');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jaren', 'Jackson Jr.', 'Jaren Jackson Jr.', 'Forward', 211, 109, '1999-09-15', (SELECT id FROM teams WHERE abbreviation = 'MEM'), 13, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628991.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jaren Jackson Jr.');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Marcus', 'Smart', 'Marcus Smart', 'Guard', 193, 100, '1994-03-06', (SELECT id FROM teams WHERE abbreviation = 'MEM'), 36, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203935.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Marcus Smart');

-- TORONTO RAPTORS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Scottie', 'Barnes', 'Scottie Barnes', 'Forward', 203, 102, '2001-08-01', (SELECT id FROM teams WHERE abbreviation = 'TOR'), 4, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630567.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Scottie Barnes');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'RJ', 'Barrett', 'RJ Barrett', 'Guard', 201, 98, '2000-06-14', (SELECT id FROM teams WHERE abbreviation = 'TOR'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629628.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'RJ Barrett');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jakob', 'Poeltl', 'Jakob Poeltl', 'Center', 213, 111, '1995-10-15', (SELECT id FROM teams WHERE abbreviation = 'TOR'), 19, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627751.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jakob Poeltl');

-- SAN ANTONIO SPURS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Devin', 'Vassell', 'Devin Vassell', 'Guard', 196, 91, '2000-08-23', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 24, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630170.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Devin Vassell');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Keldon', 'Johnson', 'Keldon Johnson', 'Forward', 196, 100, '1999-10-11', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629640.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Keldon Johnson');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jeremy', 'Sochan', 'Jeremy Sochan', 'Forward', 206, 104, '2003-05-20', (SELECT id FROM teams WHERE abbreviation = 'SAS'), 10, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631119.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jeremy Sochan');

-- CHARLOTTE HORNETS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'LaMelo', 'Ball', 'LaMelo Ball', 'Guard', 201, 82, '2001-08-22', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630163.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'LaMelo Ball');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Miles', 'Bridges', 'Miles Bridges', 'Forward', 201, 102, '1998-03-21', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628970.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Miles Bridges');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Mark', 'Williams', 'Mark Williams', 'Center', 213, 109, '2001-12-21', (SELECT id FROM teams WHERE abbreviation = 'CHA'), 5, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631120.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Mark Williams');

-- PORTLAND TRAIL BLAZERS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Anfernee', 'Simons', 'Anfernee Simons', 'Guard', 191, 88, '1999-06-08', (SELECT id FROM teams WHERE abbreviation = 'POR'), 1, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629014.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Anfernee Simons');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jerami', 'Grant', 'Jerami Grant', 'Forward', 203, 95, '1994-03-12', (SELECT id FROM teams WHERE abbreviation = 'POR'), 9, 'https://cdn.nba.com/headshots/nba/latest/1040x760/203924.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jerami Grant');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Scoot', 'Henderson', 'Scoot Henderson', 'Guard', 188, 88, '2004-02-03', (SELECT id FROM teams WHERE abbreviation = 'POR'), 00, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641712.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Scoot Henderson');

-- WASHINGTON WIZARDS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jordan', 'Poole', 'Jordan Poole', 'Guard', 193, 88, '1999-06-19', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 13, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629673.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jordan Poole');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Kyle', 'Kuzma', 'Kyle Kuzma', 'Forward', 206, 100, '1995-07-24', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 33, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628398.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Kyle Kuzma');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Tyus', 'Jones', 'Tyus Jones', 'Guard', 185, 88, '1996-05-10', (SELECT id FROM teams WHERE abbreviation = 'WAS'), 3, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626145.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Tyus Jones');

-- DETROIT PISTONS
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Cade', 'Cunningham', 'Cade Cunningham', 'Guard', 201, 100, '2001-09-25', (SELECT id FROM teams WHERE abbreviation = 'DET'), 2, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630595.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Cade Cunningham');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jaden', 'Ivey', 'Jaden Ivey', 'Guard', 193, 88, '2002-02-13', (SELECT id FROM teams WHERE abbreviation = 'DET'), 23, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631093.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jaden Ivey');

INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, birth_date, team_id, jersey_number, photo_url)
SELECT 'Jalen', 'Duren', 'Jalen Duren', 'Center', 211, 113, '2003-11-18', (SELECT id FROM teams WHERE abbreviation = 'DET'), 0, 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631222.png'
WHERE NOT EXISTS (SELECT 1 FROM players WHERE display_name = 'Jalen Duren');

-- Vérification
SELECT '✅ Joueurs supplémentaires ajoutés avec succès!' AS message;
SELECT COUNT(*) AS total_players FROM players;
