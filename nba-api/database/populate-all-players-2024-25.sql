-- ============================================
-- NBA JOUEURS 2024-2025 - ROSTERS COMPLETS
-- ============================================

SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);


-- ATL Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Trae', 'Young', 'Trae Young', 'Guard', 185, 82, 11, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dejounte', 'Murray', 'Dejounte Murray', 'Guard', 193, 88, 5, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Clint', 'Capela', 'Clint Capela', 'Center', 208, 109, 15, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jalen', 'Johnson', 'Jalen Johnson', 'Forward', 206, 100, 1, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('De\'Andre', 'Hunter', 'De\'Andre Hunter', 'Forward', 203, 102, 12, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bogdan', 'Bogdanovic', 'Bogdan Bogdanovic', 'Guard', 198, 102, 13, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Onyeka', 'Okongwu', 'Onyeka Okongwu', 'Center', 206, 107, 17, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Saddiq', 'Bey', 'Saddiq Bey', 'Forward', 203, 98, 41, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('AJ', 'Griffin', 'AJ Griffin', 'Guard', 198, 100, 14, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kobe', 'Bufkin', 'Kobe Bufkin', 'Guard', 193, 88, 26, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Vit', 'Krejci', 'Vit Krejci', 'Guard', 201, 88, 27, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Mouhamed', 'Gueye', 'Mouhamed Gueye', 'Forward', 208, 100, 15, 16, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- BOS Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jayson', 'Tatum', 'Jayson Tatum', 'Forward', 208, 95, 0, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaylen', 'Brown', 'Jaylen Brown', 'Guard', 198, 101, 7, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jrue', 'Holiday', 'Jrue Holiday', 'Guard', 193, 93, 4, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Derrick', 'White', 'Derrick White', 'Guard', 193, 86, 9, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kristaps', 'Porzingis', 'Kristaps Porzingis', 'Center', 221, 109, 8, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Al', 'Horford', 'Al Horford', 'Center', 208, 109, 42, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Malcolm', 'Brogdon', 'Malcolm Brogdon', 'Guard', 196, 103, 13, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Robert', 'Williams III', 'Robert Williams III', 'Center', 206, 109, 44, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Payton', 'Pritchard', 'Payton Pritchard', 'Guard', 185, 88, 11, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Sam', 'Hauser', 'Sam Hauser', 'Forward', 203, 98, 30, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Luke', 'Kornet', 'Luke Kornet', 'Center', 216, 109, 40, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dalano', 'Banton', 'Dalano Banton', 'Guard', 201, 93, 45, 2, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- BKN Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Mikal', 'Bridges', 'Mikal Bridges', 'Forward', 201, 95, 1, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Cam', 'Thomas', 'Cam Thomas', 'Guard', 196, 95, 24, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nic', 'Claxton', 'Nic Claxton', 'Center', 211, 102, 33, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Spencer', 'Dinwiddie', 'Spencer Dinwiddie', 'Guard', 198, 98, 26, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dorian', 'Finney-Smith', 'Dorian Finney-Smith', 'Forward', 201, 100, 28, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Cameron', 'Johnson', 'Cameron Johnson', 'Forward', 203, 95, 2, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Ben', 'Simmons', 'Ben Simmons', 'Guard', 208, 104, 10, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Royce', 'O\'Neale', 'Royce O\'Neale', 'Forward', 193, 103, 0, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dennis', 'Smith Jr.', 'Dennis Smith Jr.', 'Guard', 191, 88, 4, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Day\'Ron', 'Sharpe', 'Day\'Ron Sharpe', 'Center', 206, 119, 20, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Lonnie', 'Walker IV', 'Lonnie Walker IV', 'Guard', 193, 91, 12, 6, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- CHA Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('LaMelo', 'Ball', 'LaMelo Ball', 'Guard', 201, 82, 1, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Miles', 'Bridges', 'Miles Bridges', 'Forward', 201, 102, 0, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Mark', 'Williams', 'Mark Williams', 'Center', 213, 109, 5, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Brandon', 'Miller', 'Brandon Miller', 'Forward', 206, 91, 24, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Terry', 'Rozier', 'Terry Rozier', 'Guard', 185, 86, 3, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Gordon', 'Hayward', 'Gordon Hayward', 'Forward', 201, 102, 20, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('PJ', 'Washington', 'PJ Washington', 'Forward', 201, 104, 25, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nick', 'Richards', 'Nick Richards', 'Center', 213, 111, 14, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('JT', 'Thor', 'JT Thor', 'Forward', 206, 95, 21, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bryce', 'McGowens', 'Bryce McGowens', 'Guard', 198, 88, 8, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nick', 'Smith Jr.', 'Nick Smith Jr.', 'Guard', 196, 88, 3, 17, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- CHI Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Zach', 'LaVine', 'Zach LaVine', 'Guard', 196, 91, 8, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('DeMar', 'DeRozan', 'DeMar DeRozan', 'Forward', 198, 100, 11, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nikola', 'Vucevic', 'Nikola Vucevic', 'Center', 211, 118, 9, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Coby', 'White', 'Coby White', 'Guard', 196, 88, 0, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Patrick', 'Williams', 'Patrick Williams', 'Forward', 201, 98, 44, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Alex', 'Caruso', 'Alex Caruso', 'Guard', 196, 84, 6, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Ayo', 'Dosunmu', 'Ayo Dosunmu', 'Guard', 196, 91, 12, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Andre', 'Drummond', 'Andre Drummond', 'Center', 211, 127, 3, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Torrey', 'Craig', 'Torrey Craig', 'Forward', 201, 100, 13, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dalen', 'Terry', 'Dalen Terry', 'Guard', 201, 91, 25, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Julian', 'Phillips', 'Julian Phillips', 'Forward', 203, 88, 15, 11, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- CLE Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Donovan', 'Mitchell', 'Donovan Mitchell', 'Guard', 191, 98, 45, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Darius', 'Garland', 'Darius Garland', 'Guard', 185, 88, 10, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jarrett', 'Allen', 'Jarrett Allen', 'Center', 211, 109, 31, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Evan', 'Mobley', 'Evan Mobley', 'Forward', 213, 98, 4, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Caris', 'LeVert', 'Caris LeVert', 'Guard', 198, 93, 3, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Max', 'Strus', 'Max Strus', 'Guard', 196, 95, 1, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Isaac', 'Okoro', 'Isaac Okoro', 'Forward', 196, 102, 35, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dean', 'Wade', 'Dean Wade', 'Forward', 206, 104, 32, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Georges', 'Niang', 'Georges Niang', 'Forward', 203, 104, 20, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Craig', 'Porter Jr.', 'Craig Porter Jr.', 'Guard', 185, 86, 9, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Sam', 'Merrill', 'Sam Merrill', 'Guard', 196, 93, 5, 12, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- DAL Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Luka', 'Doncic', 'Luka Doncic', 'Guard', 201, 104, 77, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kyrie', 'Irving', 'Kyrie Irving', 'Guard', 188, 88, 2, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dereck', 'Lively II', 'Dereck Lively II', 'Center', 216, 104, 2, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tim', 'Hardaway Jr.', 'Tim Hardaway Jr.', 'Guard', 196, 93, 11, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Josh', 'Green', 'Josh Green', 'Guard', 198, 95, 8, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Maxi', 'Kleber', 'Maxi Kleber', 'Forward', 208, 109, 42, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Derrick', 'Jones Jr.', 'Derrick Jones Jr.', 'Forward', 198, 95, 55, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dwight', 'Powell', 'Dwight Powell', 'Center', 208, 109, 7, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dante', 'Exum', 'Dante Exum', 'Guard', 198, 86, 0, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaden', 'Hardy', 'Jaden Hardy', 'Guard', 193, 88, 1, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Daniel', 'Gafford', 'Daniel Gafford', 'Center', 208, 106, 21, 31, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- DEN Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nikola', 'Jokic', 'Nikola Jokic', 'Center', 211, 129, 15, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jamal', 'Murray', 'Jamal Murray', 'Guard', 193, 98, 27, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Michael', 'Porter Jr.', 'Michael Porter Jr.', 'Forward', 208, 98, 1, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Aaron', 'Gordon', 'Aaron Gordon', 'Forward', 201, 100, 50, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kentavious', 'Caldwell-Pope', 'Kentavious Caldwell-Pope', 'Guard', 196, 93, 5, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Christian', 'Braun', 'Christian Braun', 'Guard', 201, 95, 0, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Reggie', 'Jackson', 'Reggie Jackson', 'Guard', 191, 95, 7, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Peyton', 'Watson', 'Peyton Watson', 'Forward', 203, 93, 8, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Justin', 'Holiday', 'Justin Holiday', 'Guard', 198, 82, 9, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Zeke', 'Nnaji', 'Zeke Nnaji', 'Forward', 206, 109, 22, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('DeAndre', 'Jordan', 'DeAndre Jordan', 'Center', 211, 120, 6, 21, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- DET Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Cade', 'Cunningham', 'Cade Cunningham', 'Guard', 198, 100, 2, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaden', 'Ivey', 'Jaden Ivey', 'Guard', 193, 88, 23, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jalen', 'Duren', 'Jalen Duren', 'Center', 211, 113, 0, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bojan', 'Bogdanovic', 'Bojan Bogdanovic', 'Forward', 203, 102, 44, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Ausar', 'Thompson', 'Ausar Thompson', 'Guard', 201, 95, 9, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Isaiah', 'Stewart', 'Isaiah Stewart', 'Center', 206, 111, 28, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Killian', 'Hayes', 'Killian Hayes', 'Guard', 196, 98, 7, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Marcus', 'Sasser', 'Marcus Sasser', 'Guard', 185, 88, 25, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('James', 'Wiseman', 'James Wiseman', 'Center', 216, 109, 13, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Alec', 'Burks', 'Alec Burks', 'Guard', 198, 93, 5, 13, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- GSW Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Stephen', 'Curry', 'Stephen Curry', 'Guard', 188, 84, 30, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Klay', 'Thompson', 'Klay Thompson', 'Guard', 198, 100, 11, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Andrew', 'Wiggins', 'Andrew Wiggins', 'Forward', 201, 88, 22, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Draymond', 'Green', 'Draymond Green', 'Forward', 198, 104, 23, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jonathan', 'Kuminga', 'Jonathan Kuminga', 'Forward', 203, 102, 0, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Chris', 'Paul', 'Chris Paul', 'Guard', 183, 79, 3, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kevon', 'Looney', 'Kevon Looney', 'Center', 206, 109, 5, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Moses', 'Moody', 'Moses Moody', 'Guard', 198, 95, 4, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Brandin', 'Podziemski', 'Brandin Podziemski', 'Guard', 196, 93, 2, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Gary', 'Payton II', 'Gary Payton II', 'Guard', 191, 86, 0, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Trayce', 'Jackson-Davis', 'Trayce Jackson-Davis', 'Center', 206, 111, 32, 3, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- HOU Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Alperen', 'Sengun', 'Alperen Sengun', 'Center', 211, 109, 28, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jalen', 'Green', 'Jalen Green', 'Guard', 198, 82, 0, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Fred', 'VanVleet', 'Fred VanVleet', 'Guard', 185, 88, 5, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jabari', 'Smith Jr.', 'Jabari Smith Jr.', 'Forward', 208, 104, 1, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dillon', 'Brooks', 'Dillon Brooks', 'Forward', 198, 102, 9, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Amen', 'Thompson', 'Amen Thompson', 'Guard', 201, 93, 1, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tari', 'Eason', 'Tari Eason', 'Forward', 203, 98, 17, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jae\'Sean', 'Tate', 'Jae\'Sean Tate', 'Forward', 193, 104, 8, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Aaron', 'Holiday', 'Aaron Holiday', 'Guard', 183, 84, 3, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jeff', 'Green', 'Jeff Green', 'Forward', 206, 106, 32, 32, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- IND Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tyrese', 'Haliburton', 'Tyrese Haliburton', 'Guard', 196, 84, 0, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Myles', 'Turner', 'Myles Turner', 'Center', 211, 113, 33, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bennedict', 'Mathurin', 'Bennedict Mathurin', 'Guard', 198, 95, 0, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bruce', 'Brown', 'Bruce Brown', 'Guard', 193, 91, 11, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Obi', 'Toppin', 'Obi Toppin', 'Forward', 206, 100, 1, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('T.J.', 'McConnell', 'T.J. McConnell', 'Guard', 185, 91, 9, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Aaron', 'Nesmith', 'Aaron Nesmith', 'Forward', 198, 98, 23, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jalen', 'Smith', 'Jalen Smith', 'Forward', 208, 102, 25, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Isaiah', 'Jackson', 'Isaiah Jackson', 'Center', 208, 93, 22, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Andrew', 'Nembhard', 'Andrew Nembhard', 'Guard', 196, 88, 2, 14, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- LAC Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kawhi', 'Leonard', 'Kawhi Leonard', 'Forward', 201, 104, 2, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Paul', 'George', 'Paul George', 'Forward', 203, 100, 13, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('James', 'Harden', 'James Harden', 'Guard', 196, 100, 1, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Russell', 'Westbrook', 'Russell Westbrook', 'Guard', 191, 91, 0, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Ivica', 'Zubac', 'Ivica Zubac', 'Center', 216, 109, 40, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Norman', 'Powell', 'Norman Powell', 'Guard', 191, 98, 24, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Terance', 'Mann', 'Terance Mann', 'Guard', 198, 98, 14, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bones', 'Hyland', 'Bones Hyland', 'Guard', 191, 79, 5, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Mason', 'Plumlee', 'Mason Plumlee', 'Center', 211, 109, 24, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('P.J.', 'Tucker', 'P.J. Tucker', 'Forward', 196, 111, 17, 26, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- LAL Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('LeBron', 'James', 'LeBron James', 'Forward', 206, 113, 23, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Anthony', 'Davis', 'Anthony Davis', 'Forward', 208, 115, 3, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Austin', 'Reaves', 'Austin Reaves', 'Guard', 196, 88, 15, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('D\'Angelo', 'Russell', 'D\'Angelo Russell', 'Guard', 196, 88, 1, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Rui', 'Hachimura', 'Rui Hachimura', 'Forward', 203, 104, 28, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jarred', 'Vanderbilt', 'Jarred Vanderbilt', 'Forward', 206, 95, 2, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Taurean', 'Prince', 'Taurean Prince', 'Forward', 201, 100, 12, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaxson', 'Hayes', 'Jaxson Hayes', 'Center', 211, 100, 11, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Gabe', 'Vincent', 'Gabe Vincent', 'Guard', 191, 91, 7, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Max', 'Christie', 'Max Christie', 'Guard', 198, 88, 10, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Cam', 'Reddish', 'Cam Reddish', 'Forward', 203, 95, 5, 1, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- MEM Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Ja', 'Morant', 'Ja Morant', 'Guard', 191, 79, 12, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Desmond', 'Bane', 'Desmond Bane', 'Guard', 198, 98, 22, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaren', 'Jackson Jr.', 'Jaren Jackson Jr.', 'Forward', 211, 109, 13, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Marcus', 'Smart', 'Marcus Smart', 'Guard', 193, 100, 36, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Steven', 'Adams', 'Steven Adams', 'Center', 213, 120, 4, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Luke', 'Kennard', 'Luke Kennard', 'Guard', 196, 93, 10, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Brandon', 'Clarke', 'Brandon Clarke', 'Forward', 203, 98, 15, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Santi', 'Aldama', 'Santi Aldama', 'Forward', 211, 98, 7, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('David', 'Roddy', 'David Roddy', 'Forward', 198, 116, 20, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('GG', 'Jackson', 'GG Jackson', 'Forward', 206, 98, 45, 33, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- MIA Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jimmy', 'Butler', 'Jimmy Butler', 'Forward', 201, 104, 22, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bam', 'Adebayo', 'Bam Adebayo', 'Center', 206, 115, 13, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tyler', 'Herro', 'Tyler Herro', 'Guard', 196, 88, 14, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kyle', 'Lowry', 'Kyle Lowry', 'Guard', 183, 89, 7, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Duncan', 'Robinson', 'Duncan Robinson', 'Forward', 201, 98, 55, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Caleb', 'Martin', 'Caleb Martin', 'Forward', 196, 93, 16, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Josh', 'Richardson', 'Josh Richardson', 'Guard', 198, 91, 0, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kevin', 'Love', 'Kevin Love', 'Forward', 203, 113, 42, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaime', 'Jaquez Jr.', 'Jaime Jaquez Jr.', 'Forward', 201, 102, 11, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nikola', 'Jovic', 'Nikola Jovic', 'Forward', 211, 102, 5, 4, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- MIL Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Giannis', 'Antetokounmpo', 'Giannis Antetokounmpo', 'Forward', 211, 110, 34, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Damian', 'Lillard', 'Damian Lillard', 'Guard', 188, 88, 0, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Khris', 'Middleton', 'Khris Middleton', 'Forward', 201, 100, 22, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Brook', 'Lopez', 'Brook Lopez', 'Center', 213, 127, 11, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bobby', 'Portis', 'Bobby Portis', 'Forward', 208, 111, 9, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Malik', 'Beasley', 'Malik Beasley', 'Guard', 193, 84, 5, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Pat', 'Connaughton', 'Pat Connaughton', 'Guard', 196, 95, 24, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('MarJon', 'Beauchamp', 'MarJon Beauchamp', 'Forward', 201, 89, 0, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Andre', 'Jackson Jr.', 'Andre Jackson Jr.', 'Guard', 198, 93, 44, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('AJ', 'Green', 'AJ Green', 'Guard', 196, 84, 20, 5, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- MIN Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Anthony', 'Edwards', 'Anthony Edwards', 'Guard', 193, 102, 5, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Karl-Anthony', 'Towns', 'Karl-Anthony Towns', 'Center', 213, 111, 32, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Rudy', 'Gobert', 'Rudy Gobert', 'Center', 216, 117, 27, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Mike', 'Conley', 'Mike Conley', 'Guard', 185, 79, 10, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaden', 'McDaniels', 'Jaden McDaniels', 'Forward', 206, 93, 3, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Naz', 'Reid', 'Naz Reid', 'Center', 206, 120, 11, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nickeil', 'Alexander-Walker', 'Nickeil Alexander-Walker', 'Guard', 196, 93, 9, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kyle', 'Anderson', 'Kyle Anderson', 'Forward', 206, 104, 1, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jordan', 'McLaughlin', 'Jordan McLaughlin', 'Guard', 180, 82, 6, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Shake', 'Milton', 'Shake Milton', 'Guard', 198, 93, 18, 22, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- NOP Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Zion', 'Williamson', 'Zion Williamson', 'Forward', 201, 129, 1, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Brandon', 'Ingram', 'Brandon Ingram', 'Forward', 206, 88, 14, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('CJ', 'McCollum', 'CJ McCollum', 'Guard', 191, 88, 3, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Herbert', 'Jones', 'Herbert Jones', 'Forward', 203, 93, 5, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Trey', 'Murphy III', 'Trey Murphy III', 'Forward', 206, 95, 25, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jonas', 'Valanciunas', 'Jonas Valanciunas', 'Center', 213, 120, 17, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dyson', 'Daniels', 'Dyson Daniels', 'Guard', 203, 88, 11, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Larry', 'Nance Jr.', 'Larry Nance Jr.', 'Forward', 201, 102, 22, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jordan', 'Hawkins', 'Jordan Hawkins', 'Guard', 196, 84, 24, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Naji', 'Marshall', 'Naji Marshall', 'Forward', 201, 100, 8, 34, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- NYK Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jalen', 'Brunson', 'Jalen Brunson', 'Guard', 185, 86, 11, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Julius', 'Randle', 'Julius Randle', 'Forward', 206, 113, 30, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('OG', 'Anunoby', 'OG Anunoby', 'Forward', 201, 104, 8, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Mitchell', 'Robinson', 'Mitchell Robinson', 'Center', 213, 109, 23, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Josh', 'Hart', 'Josh Hart', 'Guard', 196, 98, 3, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Donte', 'DiVincenzo', 'Donte DiVincenzo', 'Guard', 193, 93, 0, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Immanuel', 'Quickley', 'Immanuel Quickley', 'Guard', 191, 86, 5, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Isaiah', 'Hartenstein', 'Isaiah Hartenstein', 'Center', 213, 113, 55, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Quentin', 'Grimes', 'Quentin Grimes', 'Guard', 196, 93, 6, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Miles', 'McBride', 'Miles McBride', 'Guard', 185, 88, 2, 7, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- OKC Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Shai', 'Gilgeous-Alexander', 'Shai Gilgeous-Alexander', 'Guard', 198, 88, 2, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Chet', 'Holmgren', 'Chet Holmgren', 'Center', 216, 88, 7, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jalen', 'Williams', 'Jalen Williams', 'Forward', 198, 88, 8, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Josh', 'Giddey', 'Josh Giddey', 'Guard', 203, 98, 3, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Luguentz', 'Dort', 'Luguentz Dort', 'Guard', 193, 98, 5, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Isaiah', 'Joe', 'Isaiah Joe', 'Guard', 193, 75, 11, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Cason', 'Wallace', 'Cason Wallace', 'Guard', 193, 88, 22, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jaylin', 'Williams', 'Jaylin Williams', 'Center', 208, 109, 6, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kenrich', 'Williams', 'Kenrich Williams', 'Forward', 198, 93, 34, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Aaron', 'Wiggins', 'Aaron Wiggins', 'Guard', 198, 88, 21, 23, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- ORL Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Paolo', 'Banchero', 'Paolo Banchero', 'Forward', 208, 113, 5, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Franz', 'Wagner', 'Franz Wagner', 'Forward', 208, 100, 22, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jalen', 'Suggs', 'Jalen Suggs', 'Guard', 193, 93, 4, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Wendell', 'Carter Jr.', 'Wendell Carter Jr.', 'Center', 208, 122, 34, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Markelle', 'Fultz', 'Markelle Fultz', 'Guard', 193, 93, 20, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Cole', 'Anthony', 'Cole Anthony', 'Guard', 191, 84, 50, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Gary', 'Harris', 'Gary Harris', 'Guard', 193, 95, 14, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jonathan', 'Isaac', 'Jonathan Isaac', 'Forward', 211, 106, 1, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Anthony', 'Black', 'Anthony Black', 'Guard', 201, 91, 0, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Moritz', 'Wagner', 'Moritz Wagner', 'Center', 211, 111, 21, 18, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- PHI Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Joel', 'Embiid', 'Joel Embiid', 'Center', 213, 127, 21, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tyrese', 'Maxey', 'Tyrese Maxey', 'Guard', 188, 91, 0, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tobias', 'Harris', 'Tobias Harris', 'Forward', 203, 102, 12, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('De\'Anthony', 'Melton', 'De\'Anthony Melton', 'Guard', 188, 93, 8, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kelly', 'Oubre Jr.', 'Kelly Oubre Jr.', 'Forward', 201, 93, 9, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Nicolas', 'Batum', 'Nicolas Batum', 'Forward', 203, 104, 33, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Robert', 'Covington', 'Robert Covington', 'Forward', 206, 98, 23, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Paul', 'Reed', 'Paul Reed', 'Center', 206, 100, 44, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Patrick', 'Beverley', 'Patrick Beverley', 'Guard', 185, 82, 22, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('KJ', 'Martin', 'KJ Martin', 'Forward', 201, 98, 1, 8, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- PHX Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Devin', 'Booker', 'Devin Booker', 'Guard', 196, 93, 1, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kevin', 'Durant', 'Kevin Durant', 'Forward', 211, 109, 35, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bradley', 'Beal', 'Bradley Beal', 'Guard', 193, 95, 3, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jusuf', 'Nurkic', 'Jusuf Nurkic', 'Center', 213, 131, 20, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Grayson', 'Allen', 'Grayson Allen', 'Guard', 193, 88, 8, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Eric', 'Gordon', 'Eric Gordon', 'Guard', 191, 98, 23, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Drew', 'Eubanks', 'Drew Eubanks', 'Center', 208, 111, 14, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Josh', 'Okogie', 'Josh Okogie', 'Guard', 193, 98, 2, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Keita', 'Bates-Diop', 'Keita Bates-Diop', 'Forward', 203, 95, 31, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bol', 'Bol', 'Bol Bol', 'Center', 221, 100, 11, 27, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- POR Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Anfernee', 'Simons', 'Anfernee Simons', 'Guard', 191, 88, 1, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jerami', 'Grant', 'Jerami Grant', 'Forward', 203, 95, 9, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Scoot', 'Henderson', 'Scoot Henderson', 'Guard', 188, 88, 0, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Deandre', 'Ayton', 'Deandre Ayton', 'Center', 211, 113, 2, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Shaedon', 'Sharpe', 'Shaedon Sharpe', 'Guard', 198, 91, 17, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Malcolm', 'Brogdon', 'Malcolm Brogdon', 'Guard', 196, 104, 11, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Matisse', 'Thybulle', 'Matisse Thybulle', 'Guard', 196, 91, 4, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Robert', 'Williams III', 'Robert Williams III', 'Center', 206, 109, 35, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Toumani', 'Camara', 'Toumani Camara', 'Forward', 203, 100, 33, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jabari', 'Walker', 'Jabari Walker', 'Forward', 206, 93, 34, 24, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- SAC Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('De\'Aaron', 'Fox', 'De\'Aaron Fox', 'Guard', 191, 83, 5, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Domantas', 'Sabonis', 'Domantas Sabonis', 'Center', 211, 109, 10, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Keegan', 'Murray', 'Keegan Murray', 'Forward', 203, 102, 13, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kevin', 'Huerter', 'Kevin Huerter', 'Guard', 201, 86, 9, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Harrison', 'Barnes', 'Harrison Barnes', 'Forward', 203, 102, 40, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Malik', 'Monk', 'Malik Monk', 'Guard', 191, 91, 0, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Trey', 'Lyles', 'Trey Lyles', 'Forward', 206, 106, 41, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Davion', 'Mitchell', 'Davion Mitchell', 'Guard', 185, 93, 15, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kessler', 'Edwards', 'Kessler Edwards', 'Forward', 203, 91, 1, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Sasha', 'Vezenkov', 'Sasha Vezenkov', 'Forward', 206, 102, 77, 28, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- SAS Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Victor', 'Wembanyama', 'Victor Wembanyama', 'Center', 224, 95, 1, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Devin', 'Vassell', 'Devin Vassell', 'Guard', 196, 88, 24, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Keldon', 'Johnson', 'Keldon Johnson', 'Forward', 196, 100, 3, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jeremy', 'Sochan', 'Jeremy Sochan', 'Forward', 206, 104, 10, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tre', 'Jones', 'Tre Jones', 'Guard', 185, 84, 33, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Zach', 'Collins', 'Zach Collins', 'Center', 211, 113, 23, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Malaki', 'Branham', 'Malaki Branham', 'Guard', 193, 88, 22, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Cedi', 'Osman', 'Cedi Osman', 'Forward', 203, 104, 16, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Doug', 'McDermott', 'Doug McDermott', 'Forward', 203, 102, 17, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Sandro', 'Mamukelashvili', 'Sandro Mamukelashvili', 'Forward', 211, 109, 54, 35, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- TOR Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Scottie', 'Barnes', 'Scottie Barnes', 'Forward', 203, 102, 4, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Pascal', 'Siakam', 'Pascal Siakam', 'Forward', 206, 104, 43, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('OG', 'Anunoby', 'OG Anunoby', 'Forward', 201, 104, 3, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jakob', 'Poeltl', 'Jakob Poeltl', 'Center', 213, 111, 19, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Dennis', 'Schroder', 'Dennis Schroder', 'Guard', 185, 79, 17, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Gary', 'Trent Jr.', 'Gary Trent Jr.', 'Guard', 196, 95, 33, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Precious', 'Achiuwa', 'Precious Achiuwa', 'Forward', 203, 104, 5, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Chris', 'Boucher', 'Chris Boucher', 'Forward', 206, 91, 25, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Gradey', 'Dick', 'Gradey Dick', 'Guard', 203, 93, 1, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Malachi', 'Flynn', 'Malachi Flynn', 'Guard', 185, 79, 22, 9, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- UTA Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Lauri', 'Markkanen', 'Lauri Markkanen', 'Forward', 213, 109, 23, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jordan', 'Clarkson', 'Jordan Clarkson', 'Guard', 196, 88, 0, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Collin', 'Sexton', 'Collin Sexton', 'Guard', 185, 86, 2, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Walker', 'Kessler', 'Walker Kessler', 'Center', 216, 111, 24, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('John', 'Collins', 'John Collins', 'Forward', 206, 104, 20, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Keyonte', 'George', 'Keyonte George', 'Guard', 193, 84, 3, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Ochai', 'Agbaji', 'Ochai Agbaji', 'Guard', 196, 98, 30, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Simone', 'Fontecchio', 'Simone Fontecchio', 'Forward', 203, 93, 16, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Talen', 'Horton-Tucker', 'Talen Horton-Tucker', 'Guard', 193, 106, 5, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kelly', 'Olynyk', 'Kelly Olynyk', 'Center', 213, 109, 41, 25, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- WAS Roster
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Jordan', 'Poole', 'Jordan Poole', 'Guard', 193, 88, 13, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Kyle', 'Kuzma', 'Kyle Kuzma', 'Forward', 206, 100, 33, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Tyus', 'Jones', 'Tyus Jones', 'Guard', 185, 88, 5, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Daniel', 'Gafford', 'Daniel Gafford', 'Center', 208, 106, 21, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Deni', 'Avdija', 'Deni Avdija', 'Forward', 206, 95, 9, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Corey', 'Kispert', 'Corey Kispert', 'Forward', 201, 102, 24, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Bilal', 'Coulibaly', 'Bilal Coulibaly', 'Guard', 201, 88, 0, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Delon', 'Wright', 'Delon Wright', 'Guard', 196, 84, 55, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Landry', 'Shamet', 'Landry Shamet', 'Guard', 196, 86, 20, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);
INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('Eugene', 'Omoruyi', 'Eugene Omoruyi', 'Forward', 198, 106, 2, 19, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);

-- ============================================
-- VÉRIFICATION
-- ============================================

SELECT '✅ Tous les joueurs NBA 2024-2025 ont été ajoutés!' AS message;
SELECT COUNT(*) AS total_players FROM players WHERE is_active = true;
SELECT t.abbreviation, COUNT(p.id) AS player_count
FROM teams t
LEFT JOIN players p ON t.id = p.team_id AND p.is_active = true
GROUP BY t.id, t.abbreviation
ORDER BY t.abbreviation;
