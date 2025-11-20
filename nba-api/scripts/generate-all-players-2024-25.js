/**
 * Script pour générer tous les joueurs NBA 2024-2025
 * Utilise les IDs d'équipes existants dans la base de données
 */

const fs = require('fs');
const path = require('path');

// Mapping des équipes NBA avec leurs IDs (IDs réels de la base de données)
const NBA_TEAMS = {
  'ATL': 16, 'BOS': 2, 'BKN': 6, 'CHA': 17, 'CHI': 11, 'CLE': 12,
  'DAL': 31, 'DEN': 21, 'DET': 13, 'GSW': 3, 'HOU': 32, 'IND': 14,
  'LAC': 26, 'LAL': 1, 'MEM': 33, 'MIA': 4, 'MIL': 5, 'MIN': 22,
  'NOP': 34, 'NYK': 7, 'OKC': 23, 'ORL': 18, 'PHI': 8, 'PHX': 27,
  'POR': 24, 'SAC': 28, 'SAS': 35, 'TOR': 9, 'UTA': 25, 'WAS': 19
};

// Rosters complets 2024-2025
const NBA_ROSTERS = {
  'ATL': [
    { firstName: 'Trae', lastName: 'Young', position: 'Guard', jersey: 11, height: 185, weight: 82 },
    { firstName: 'Dejounte', lastName: 'Murray', position: 'Guard', jersey: 5, height: 193, weight: 88 },
    { firstName: 'Clint', lastName: 'Capela', position: 'Center', jersey: 15, height: 208, weight: 109 },
    { firstName: 'Jalen', lastName: 'Johnson', position: 'Forward', jersey: 1, height: 206, weight: 100 },
    { firstName: 'De\'Andre', lastName: 'Hunter', position: 'Forward', jersey: 12, height: 203, weight: 102 },
    { firstName: 'Bogdan', lastName: 'Bogdanovic', position: 'Guard', jersey: 13, height: 198, weight: 102 },
    { firstName: 'Onyeka', lastName: 'Okongwu', position: 'Center', jersey: 17, height: 206, weight: 107 },
    { firstName: 'Saddiq', lastName: 'Bey', position: 'Forward', jersey: 41, height: 203, weight: 98 },
    { firstName: 'AJ', lastName: 'Griffin', position: 'Guard', jersey: 14, height: 198, weight: 100 },
    { firstName: 'Kobe', lastName: 'Bufkin', position: 'Guard', jersey: 26, height: 193, weight: 88 },
    { firstName: 'Vit', lastName: 'Krejci', position: 'Guard', jersey: 27, height: 201, weight: 88 },
    { firstName: 'Mouhamed', lastName: 'Gueye', position: 'Forward', jersey: 15, height: 208, weight: 100 },
  ],
  'BOS': [
    { firstName: 'Jayson', lastName: 'Tatum', position: 'Forward', jersey: 0, height: 208, weight: 95 },
    { firstName: 'Jaylen', lastName: 'Brown', position: 'Guard', jersey: 7, height: 198, weight: 101 },
    { firstName: 'Jrue', lastName: 'Holiday', position: 'Guard', jersey: 4, height: 193, weight: 93 },
    { firstName: 'Derrick', lastName: 'White', position: 'Guard', jersey: 9, height: 193, weight: 86 },
    { firstName: 'Kristaps', lastName: 'Porzingis', position: 'Center', jersey: 8, height: 221, weight: 109 },
    { firstName: 'Al', lastName: 'Horford', position: 'Center', jersey: 42, height: 208, weight: 109 },
    { firstName: 'Malcolm', lastName: 'Brogdon', position: 'Guard', jersey: 13, height: 196, weight: 103 },
    { firstName: 'Robert', lastName: 'Williams III', position: 'Center', jersey: 44, height: 206, weight: 109 },
    { firstName: 'Payton', lastName: 'Pritchard', position: 'Guard', jersey: 11, height: 185, weight: 88 },
    { firstName: 'Sam', lastName: 'Hauser', position: 'Forward', jersey: 30, height: 203, weight: 98 },
    { firstName: 'Luke', lastName: 'Kornet', position: 'Center', jersey: 40, height: 216, weight: 109 },
    { firstName: 'Dalano', lastName: 'Banton', position: 'Guard', jersey: 45, height: 201, weight: 93 },
  ],
  'BKN': [
    { firstName: 'Mikal', lastName: 'Bridges', position: 'Forward', jersey: 1, height: 201, weight: 95 },
    { firstName: 'Cam', lastName: 'Thomas', position: 'Guard', jersey: 24, height: 196, weight: 95 },
    { firstName: 'Nic', lastName: 'Claxton', position: 'Center', jersey: 33, height: 211, weight: 102 },
    { firstName: 'Spencer', lastName: 'Dinwiddie', position: 'Guard', jersey: 26, height: 198, weight: 98 },
    { firstName: 'Dorian', lastName: 'Finney-Smith', position: 'Forward', jersey: 28, height: 201, weight: 100 },
    { firstName: 'Cameron', lastName: 'Johnson', position: 'Forward', jersey: 2, height: 203, weight: 95 },
    { firstName: 'Ben', lastName: 'Simmons', position: 'Guard', jersey: 10, height: 208, weight: 104 },
    { firstName: 'Royce', lastName: 'O\'Neale', position: 'Forward', jersey: 0, height: 193, weight: 103 },
    { firstName: 'Dennis', lastName: 'Smith Jr.', position: 'Guard', jersey: 4, height: 191, weight: 88 },
    { firstName: 'Day\'Ron', lastName: 'Sharpe', position: 'Center', jersey: 20, height: 206, weight: 119 },
    { firstName: 'Lonnie', lastName: 'Walker IV', position: 'Guard', jersey: 12, height: 193, weight: 91 },
  ],
  'CHA': [
    { firstName: 'LaMelo', lastName: 'Ball', position: 'Guard', jersey: 1, height: 201, weight: 82 },
    { firstName: 'Miles', lastName: 'Bridges', position: 'Forward', jersey: 0, height: 201, weight: 102 },
    { firstName: 'Mark', lastName: 'Williams', position: 'Center', jersey: 5, height: 213, weight: 109 },
    { firstName: 'Brandon', lastName: 'Miller', position: 'Forward', jersey: 24, height: 206, weight: 91 },
    { firstName: 'Terry', lastName: 'Rozier', position: 'Guard', jersey: 3, height: 185, weight: 86 },
    { firstName: 'Gordon', lastName: 'Hayward', position: 'Forward', jersey: 20, height: 201, weight: 102 },
    { firstName: 'PJ', lastName: 'Washington', position: 'Forward', jersey: 25, height: 201, weight: 104 },
    { firstName: 'Nick', lastName: 'Richards', position: 'Center', jersey: 14, height: 213, weight: 111 },
    { firstName: 'JT', lastName: 'Thor', position: 'Forward', jersey: 21, height: 206, weight: 95 },
    { firstName: 'Bryce', lastName: 'McGowens', position: 'Guard', jersey: 8, height: 198, weight: 88 },
    { firstName: 'Nick', lastName: 'Smith Jr.', position: 'Guard', jersey: 3, height: 196, weight: 88 },
  ],
  'CHI': [
    { firstName: 'Zach', lastName: 'LaVine', position: 'Guard', jersey: 8, height: 196, weight: 91 },
    { firstName: 'DeMar', lastName: 'DeRozan', position: 'Forward', jersey: 11, height: 198, weight: 100 },
    { firstName: 'Nikola', lastName: 'Vucevic', position: 'Center', jersey: 9, height: 211, weight: 118 },
    { firstName: 'Coby', lastName: 'White', position: 'Guard', jersey: 0, height: 196, weight: 88 },
    { firstName: 'Patrick', lastName: 'Williams', position: 'Forward', jersey: 44, height: 201, weight: 98 },
    { firstName: 'Alex', lastName: 'Caruso', position: 'Guard', jersey: 6, height: 196, weight: 84 },
    { firstName: 'Ayo', lastName: 'Dosunmu', position: 'Guard', jersey: 12, height: 196, weight: 91 },
    { firstName: 'Andre', lastName: 'Drummond', position: 'Center', jersey: 3, height: 211, weight: 127 },
    { firstName: 'Torrey', lastName: 'Craig', position: 'Forward', jersey: 13, height: 201, weight: 100 },
    { firstName: 'Dalen', lastName: 'Terry', position: 'Guard', jersey: 25, height: 201, weight: 91 },
    { firstName: 'Julian', lastName: 'Phillips', position: 'Forward', jersey: 15, height: 203, weight: 88 },
  ],
  'CLE': [
    { firstName: 'Donovan', lastName: 'Mitchell', position: 'Guard', jersey: 45, height: 191, weight: 98 },
    { firstName: 'Darius', lastName: 'Garland', position: 'Guard', jersey: 10, height: 185, weight: 88 },
    { firstName: 'Jarrett', lastName: 'Allen', position: 'Center', jersey: 31, height: 211, weight: 109 },
    { firstName: 'Evan', lastName: 'Mobley', position: 'Forward', jersey: 4, height: 213, weight: 98 },
    { firstName: 'Caris', lastName: 'LeVert', position: 'Guard', jersey: 3, height: 198, weight: 93 },
    { firstName: 'Max', lastName: 'Strus', position: 'Guard', jersey: 1, height: 196, weight: 95 },
    { firstName: 'Isaac', lastName: 'Okoro', position: 'Forward', jersey: 35, height: 196, weight: 102 },
    { firstName: 'Dean', lastName: 'Wade', position: 'Forward', jersey: 32, height: 206, weight: 104 },
    { firstName: 'Georges', lastName: 'Niang', position: 'Forward', jersey: 20, height: 203, weight: 104 },
    { firstName: 'Craig', lastName: 'Porter Jr.', position: 'Guard', jersey: 9, height: 185, weight: 86 },
    { firstName: 'Sam', lastName: 'Merrill', position: 'Guard', jersey: 5, height: 196, weight: 93 },
  ],
  'DAL': [
    { firstName: 'Luka', lastName: 'Doncic', position: 'Guard', jersey: 77, height: 201, weight: 104 },
    { firstName: 'Kyrie', lastName: 'Irving', position: 'Guard', jersey: 2, height: 188, weight: 88 },
    { firstName: 'Dereck', lastName: 'Lively II', position: 'Center', jersey: 2, height: 216, weight: 104 },
    { firstName: 'Tim', lastName: 'Hardaway Jr.', position: 'Guard', jersey: 11, height: 196, weight: 93 },
    { firstName: 'Josh', lastName: 'Green', position: 'Guard', jersey: 8, height: 198, weight: 95 },
    { firstName: 'Maxi', lastName: 'Kleber', position: 'Forward', jersey: 42, height: 208, weight: 109 },
    { firstName: 'Derrick', lastName: 'Jones Jr.', position: 'Forward', jersey: 55, height: 198, weight: 95 },
    { firstName: 'Dwight', lastName: 'Powell', position: 'Center', jersey: 7, height: 208, weight: 109 },
    { firstName: 'Dante', lastName: 'Exum', position: 'Guard', jersey: 0, height: 198, weight: 86 },
    { firstName: 'Jaden', lastName: 'Hardy', position: 'Guard', jersey: 1, height: 193, weight: 88 },
    { firstName: 'Daniel', lastName: 'Gafford', position: 'Center', jersey: 21, height: 208, weight: 106 },
  ],
  'DEN': [
    { firstName: 'Nikola', lastName: 'Jokic', position: 'Center', jersey: 15, height: 211, weight: 129 },
    { firstName: 'Jamal', lastName: 'Murray', position: 'Guard', jersey: 27, height: 193, weight: 98 },
    { firstName: 'Michael', lastName: 'Porter Jr.', position: 'Forward', jersey: 1, height: 208, weight: 98 },
    { firstName: 'Aaron', lastName: 'Gordon', position: 'Forward', jersey: 50, height: 201, weight: 100 },
    { firstName: 'Kentavious', lastName: 'Caldwell-Pope', position: 'Guard', jersey: 5, height: 196, weight: 93 },
    { firstName: 'Christian', lastName: 'Braun', position: 'Guard', jersey: 0, height: 201, weight: 95 },
    { firstName: 'Reggie', lastName: 'Jackson', position: 'Guard', jersey: 7, height: 191, weight: 95 },
    { firstName: 'Peyton', lastName: 'Watson', position: 'Forward', jersey: 8, height: 203, weight: 93 },
    { firstName: 'Justin', lastName: 'Holiday', position: 'Guard', jersey: 9, height: 198, weight: 82 },
    { firstName: 'Zeke', lastName: 'Nnaji', position: 'Forward', jersey: 22, height: 206, weight: 109 },
    { firstName: 'DeAndre', lastName: 'Jordan', position: 'Center', jersey: 6, height: 211, weight: 120 },
  ],
  'DET': [
    { firstName: 'Cade', lastName: 'Cunningham', position: 'Guard', jersey: 2, height: 198, weight: 100 },
    { firstName: 'Jaden', lastName: 'Ivey', position: 'Guard', jersey: 23, height: 193, weight: 88 },
    { firstName: 'Jalen', lastName: 'Duren', position: 'Center', jersey: 0, height: 211, weight: 113 },
    { firstName: 'Bojan', lastName: 'Bogdanovic', position: 'Forward', jersey: 44, height: 203, weight: 102 },
    { firstName: 'Ausar', lastName: 'Thompson', position: 'Guard', jersey: 9, height: 201, weight: 95 },
    { firstName: 'Isaiah', lastName: 'Stewart', position: 'Center', jersey: 28, height: 206, weight: 111 },
    { firstName: 'Killian', lastName: 'Hayes', position: 'Guard', jersey: 7, height: 196, weight: 98 },
    { firstName: 'Marcus', lastName: 'Sasser', position: 'Guard', jersey: 25, height: 185, weight: 88 },
    { firstName: 'James', lastName: 'Wiseman', position: 'Center', jersey: 13, height: 216, weight: 109 },
    { firstName: 'Alec', lastName: 'Burks', position: 'Guard', jersey: 5, height: 198, weight: 93 },
  ],
  'GSW': [
    { firstName: 'Stephen', lastName: 'Curry', position: 'Guard', jersey: 30, height: 188, weight: 84 },
    { firstName: 'Klay', lastName: 'Thompson', position: 'Guard', jersey: 11, height: 198, weight: 100 },
    { firstName: 'Andrew', lastName: 'Wiggins', position: 'Forward', jersey: 22, height: 201, weight: 88 },
    { firstName: 'Draymond', lastName: 'Green', position: 'Forward', jersey: 23, height: 198, weight: 104 },
    { firstName: 'Jonathan', lastName: 'Kuminga', position: 'Forward', jersey: 0, height: 203, weight: 102 },
    { firstName: 'Chris', lastName: 'Paul', position: 'Guard', jersey: 3, height: 183, weight: 79 },
    { firstName: 'Kevon', lastName: 'Looney', position: 'Center', jersey: 5, height: 206, weight: 109 },
    { firstName: 'Moses', lastName: 'Moody', position: 'Guard', jersey: 4, height: 198, weight: 95 },
    { firstName: 'Brandin', lastName: 'Podziemski', position: 'Guard', jersey: 2, height: 196, weight: 93 },
    { firstName: 'Gary', lastName: 'Payton II', position: 'Guard', jersey: 0, height: 191, weight: 86 },
    { firstName: 'Trayce', lastName: 'Jackson-Davis', position: 'Center', jersey: 32, height: 206, weight: 111 },
  ],
  'HOU': [
    { firstName: 'Alperen', lastName: 'Sengun', position: 'Center', jersey: 28, height: 211, weight: 109 },
    { firstName: 'Jalen', lastName: 'Green', position: 'Guard', jersey: 0, height: 198, weight: 82 },
    { firstName: 'Fred', lastName: 'VanVleet', position: 'Guard', jersey: 5, height: 185, weight: 88 },
    { firstName: 'Jabari', lastName: 'Smith Jr.', position: 'Forward', jersey: 1, height: 208, weight: 104 },
    { firstName: 'Dillon', lastName: 'Brooks', position: 'Forward', jersey: 9, height: 198, weight: 102 },
    { firstName: 'Amen', lastName: 'Thompson', position: 'Guard', jersey: 1, height: 201, weight: 93 },
    { firstName: 'Tari', lastName: 'Eason', position: 'Forward', jersey: 17, height: 203, weight: 98 },
    { firstName: 'Jae\'Sean', lastName: 'Tate', position: 'Forward', jersey: 8, height: 193, weight: 104 },
    { firstName: 'Aaron', lastName: 'Holiday', position: 'Guard', jersey: 3, height: 183, weight: 84 },
    { firstName: 'Jeff', lastName: 'Green', position: 'Forward', jersey: 32, height: 206, weight: 106 },
  ],
  'IND': [
    { firstName: 'Tyrese', lastName: 'Haliburton', position: 'Guard', jersey: 0, height: 196, weight: 84 },
    { firstName: 'Myles', lastName: 'Turner', position: 'Center', jersey: 33, height: 211, weight: 113 },
    { firstName: 'Bennedict', lastName: 'Mathurin', position: 'Guard', jersey: 0, height: 198, weight: 95 },
    { firstName: 'Bruce', lastName: 'Brown', position: 'Guard', jersey: 11, height: 193, weight: 91 },
    { firstName: 'Obi', lastName: 'Toppin', position: 'Forward', jersey: 1, height: 206, weight: 100 },
    { firstName: 'T.J.', lastName: 'McConnell', position: 'Guard', jersey: 9, height: 185, weight: 91 },
    { firstName: 'Aaron', lastName: 'Nesmith', position: 'Forward', jersey: 23, height: 198, weight: 98 },
    { firstName: 'Jalen', lastName: 'Smith', position: 'Forward', jersey: 25, height: 208, weight: 102 },
    { firstName: 'Isaiah', lastName: 'Jackson', position: 'Center', jersey: 22, height: 208, weight: 93 },
    { firstName: 'Andrew', lastName: 'Nembhard', position: 'Guard', jersey: 2, height: 196, weight: 88 },
  ],
  'LAC': [
    { firstName: 'Kawhi', lastName: 'Leonard', position: 'Forward', jersey: 2, height: 201, weight: 104 },
    { firstName: 'Paul', lastName: 'George', position: 'Forward', jersey: 13, height: 203, weight: 100 },
    { firstName: 'James', lastName: 'Harden', position: 'Guard', jersey: 1, height: 196, weight: 100 },
    { firstName: 'Russell', lastName: 'Westbrook', position: 'Guard', jersey: 0, height: 191, weight: 91 },
    { firstName: 'Ivica', lastName: 'Zubac', position: 'Center', jersey: 40, height: 216, weight: 109 },
    { firstName: 'Norman', lastName: 'Powell', position: 'Guard', jersey: 24, height: 191, weight: 98 },
    { firstName: 'Terance', lastName: 'Mann', position: 'Guard', jersey: 14, height: 198, weight: 98 },
    { firstName: 'Bones', lastName: 'Hyland', position: 'Guard', jersey: 5, height: 191, weight: 79 },
    { firstName: 'Mason', lastName: 'Plumlee', position: 'Center', jersey: 24, height: 211, weight: 109 },
    { firstName: 'P.J.', lastName: 'Tucker', position: 'Forward', jersey: 17, height: 196, weight: 111 },
  ],
  'LAL': [
    { firstName: 'LeBron', lastName: 'James', position: 'Forward', jersey: 23, height: 206, weight: 113 },
    { firstName: 'Anthony', lastName: 'Davis', position: 'Forward', jersey: 3, height: 208, weight: 115 },
    { firstName: 'Austin', lastName: 'Reaves', position: 'Guard', jersey: 15, height: 196, weight: 88 },
    { firstName: 'D\'Angelo', lastName: 'Russell', position: 'Guard', jersey: 1, height: 196, weight: 88 },
    { firstName: 'Rui', lastName: 'Hachimura', position: 'Forward', jersey: 28, height: 203, weight: 104 },
    { firstName: 'Jarred', lastName: 'Vanderbilt', position: 'Forward', jersey: 2, height: 206, weight: 95 },
    { firstName: 'Taurean', lastName: 'Prince', position: 'Forward', jersey: 12, height: 201, weight: 100 },
    { firstName: 'Jaxson', lastName: 'Hayes', position: 'Center', jersey: 11, height: 211, weight: 100 },
    { firstName: 'Gabe', lastName: 'Vincent', position: 'Guard', jersey: 7, height: 191, weight: 91 },
    { firstName: 'Max', lastName: 'Christie', position: 'Guard', jersey: 10, height: 198, weight: 88 },
    { firstName: 'Cam', lastName: 'Reddish', position: 'Forward', jersey: 5, height: 203, weight: 95 },
  ],
  'MEM': [
    { firstName: 'Ja', lastName: 'Morant', position: 'Guard', jersey: 12, height: 191, weight: 79 },
    { firstName: 'Desmond', lastName: 'Bane', position: 'Guard', jersey: 22, height: 198, weight: 98 },
    { firstName: 'Jaren', lastName: 'Jackson Jr.', position: 'Forward', jersey: 13, height: 211, weight: 109 },
    { firstName: 'Marcus', lastName: 'Smart', position: 'Guard', jersey: 36, height: 193, weight: 100 },
    { firstName: 'Steven', lastName: 'Adams', position: 'Center', jersey: 4, height: 213, weight: 120 },
    { firstName: 'Luke', lastName: 'Kennard', position: 'Guard', jersey: 10, height: 196, weight: 93 },
    { firstName: 'Brandon', lastName: 'Clarke', position: 'Forward', jersey: 15, height: 203, weight: 98 },
    { firstName: 'Santi', lastName: 'Aldama', position: 'Forward', jersey: 7, height: 211, weight: 98 },
    { firstName: 'David', lastName: 'Roddy', position: 'Forward', jersey: 20, height: 198, weight: 116 },
    { firstName: 'GG', lastName: 'Jackson', position: 'Forward', jersey: 45, height: 206, weight: 98 },
  ],
  'MIA': [
    { firstName: 'Jimmy', lastName: 'Butler', position: 'Forward', jersey: 22, height: 201, weight: 104 },
    { firstName: 'Bam', lastName: 'Adebayo', position: 'Center', jersey: 13, height: 206, weight: 115 },
    { firstName: 'Tyler', lastName: 'Herro', position: 'Guard', jersey: 14, height: 196, weight: 88 },
    { firstName: 'Kyle', lastName: 'Lowry', position: 'Guard', jersey: 7, height: 183, weight: 89 },
    { firstName: 'Duncan', lastName: 'Robinson', position: 'Forward', jersey: 55, height: 201, weight: 98 },
    { firstName: 'Caleb', lastName: 'Martin', position: 'Forward', jersey: 16, height: 196, weight: 93 },
    { firstName: 'Josh', lastName: 'Richardson', position: 'Guard', jersey: 0, height: 198, weight: 91 },
    { firstName: 'Kevin', lastName: 'Love', position: 'Forward', jersey: 42, height: 203, weight: 113 },
    { firstName: 'Jaime', lastName: 'Jaquez Jr.', position: 'Forward', jersey: 11, height: 201, weight: 102 },
    { firstName: 'Nikola', lastName: 'Jovic', position: 'Forward', jersey: 5, height: 211, weight: 102 },
  ],
  'MIL': [
    { firstName: 'Giannis', lastName: 'Antetokounmpo', position: 'Forward', jersey: 34, height: 211, weight: 110 },
    { firstName: 'Damian', lastName: 'Lillard', position: 'Guard', jersey: 0, height: 188, weight: 88 },
    { firstName: 'Khris', lastName: 'Middleton', position: 'Forward', jersey: 22, height: 201, weight: 100 },
    { firstName: 'Brook', lastName: 'Lopez', position: 'Center', jersey: 11, height: 213, weight: 127 },
    { firstName: 'Bobby', lastName: 'Portis', position: 'Forward', jersey: 9, height: 208, weight: 111 },
    { firstName: 'Malik', lastName: 'Beasley', position: 'Guard', jersey: 5, height: 193, weight: 84 },
    { firstName: 'Pat', lastName: 'Connaughton', position: 'Guard', jersey: 24, height: 196, weight: 95 },
    { firstName: 'MarJon', lastName: 'Beauchamp', position: 'Forward', jersey: 0, height: 201, weight: 89 },
    { firstName: 'Andre', lastName: 'Jackson Jr.', position: 'Guard', jersey: 44, height: 198, weight: 93 },
    { firstName: 'AJ', lastName: 'Green', position: 'Guard', jersey: 20, height: 196, weight: 84 },
  ],
  'MIN': [
    { firstName: 'Anthony', lastName: 'Edwards', position: 'Guard', jersey: 5, height: 193, weight: 102 },
    { firstName: 'Karl-Anthony', lastName: 'Towns', position: 'Center', jersey: 32, height: 213, weight: 111 },
    { firstName: 'Rudy', lastName: 'Gobert', position: 'Center', jersey: 27, height: 216, weight: 117 },
    { firstName: 'Mike', lastName: 'Conley', position: 'Guard', jersey: 10, height: 185, weight: 79 },
    { firstName: 'Jaden', lastName: 'McDaniels', position: 'Forward', jersey: 3, height: 206, weight: 93 },
    { firstName: 'Naz', lastName: 'Reid', position: 'Center', jersey: 11, height: 206, weight: 120 },
    { firstName: 'Nickeil', lastName: 'Alexander-Walker', position: 'Guard', jersey: 9, height: 196, weight: 93 },
    { firstName: 'Kyle', lastName: 'Anderson', position: 'Forward', jersey: 1, height: 206, weight: 104 },
    { firstName: 'Jordan', lastName: 'McLaughlin', position: 'Guard', jersey: 6, height: 180, weight: 82 },
    { firstName: 'Shake', lastName: 'Milton', position: 'Guard', jersey: 18, height: 198, weight: 93 },
  ],
  'NOP': [
    { firstName: 'Zion', lastName: 'Williamson', position: 'Forward', jersey: 1, height: 201, weight: 129 },
    { firstName: 'Brandon', lastName: 'Ingram', position: 'Forward', jersey: 14, height: 206, weight: 88 },
    { firstName: 'CJ', lastName: 'McCollum', position: 'Guard', jersey: 3, height: 191, weight: 88 },
    { firstName: 'Herbert', lastName: 'Jones', position: 'Forward', jersey: 5, height: 203, weight: 93 },
    { firstName: 'Trey', lastName: 'Murphy III', position: 'Forward', jersey: 25, height: 206, weight: 95 },
    { firstName: 'Jonas', lastName: 'Valanciunas', position: 'Center', jersey: 17, height: 213, weight: 120 },
    { firstName: 'Dyson', lastName: 'Daniels', position: 'Guard', jersey: 11, height: 203, weight: 88 },
    { firstName: 'Larry', lastName: 'Nance Jr.', position: 'Forward', jersey: 22, height: 201, weight: 102 },
    { firstName: 'Jordan', lastName: 'Hawkins', position: 'Guard', jersey: 24, height: 196, weight: 84 },
    { firstName: 'Naji', lastName: 'Marshall', position: 'Forward', jersey: 8, height: 201, weight: 100 },
  ],
  'NYK': [
    { firstName: 'Jalen', lastName: 'Brunson', position: 'Guard', jersey: 11, height: 185, weight: 86 },
    { firstName: 'Julius', lastName: 'Randle', position: 'Forward', jersey: 30, height: 206, weight: 113 },
    { firstName: 'OG', lastName: 'Anunoby', position: 'Forward', jersey: 8, height: 201, weight: 104 },
    { firstName: 'Mitchell', lastName: 'Robinson', position: 'Center', jersey: 23, height: 213, weight: 109 },
    { firstName: 'Josh', lastName: 'Hart', position: 'Guard', jersey: 3, height: 196, weight: 98 },
    { firstName: 'Donte', lastName: 'DiVincenzo', position: 'Guard', jersey: 0, height: 193, weight: 93 },
    { firstName: 'Immanuel', lastName: 'Quickley', position: 'Guard', jersey: 5, height: 191, weight: 86 },
    { firstName: 'Isaiah', lastName: 'Hartenstein', position: 'Center', jersey: 55, height: 213, weight: 113 },
    { firstName: 'Quentin', lastName: 'Grimes', position: 'Guard', jersey: 6, height: 196, weight: 93 },
    { firstName: 'Miles', lastName: 'McBride', position: 'Guard', jersey: 2, height: 185, weight: 88 },
  ],
  'OKC': [
    { firstName: 'Shai', lastName: 'Gilgeous-Alexander', position: 'Guard', jersey: 2, height: 198, weight: 88 },
    { firstName: 'Chet', lastName: 'Holmgren', position: 'Center', jersey: 7, height: 216, weight: 88 },
    { firstName: 'Jalen', lastName: 'Williams', position: 'Forward', jersey: 8, height: 198, weight: 88 },
    { firstName: 'Josh', lastName: 'Giddey', position: 'Guard', jersey: 3, height: 203, weight: 98 },
    { firstName: 'Luguentz', lastName: 'Dort', position: 'Guard', jersey: 5, height: 193, weight: 98 },
    { firstName: 'Isaiah', lastName: 'Joe', position: 'Guard', jersey: 11, height: 193, weight: 75 },
    { firstName: 'Cason', lastName: 'Wallace', position: 'Guard', jersey: 22, height: 193, weight: 88 },
    { firstName: 'Jaylin', lastName: 'Williams', position: 'Center', jersey: 6, height: 208, weight: 109 },
    { firstName: 'Kenrich', lastName: 'Williams', position: 'Forward', jersey: 34, height: 198, weight: 93 },
    { firstName: 'Aaron', lastName: 'Wiggins', position: 'Guard', jersey: 21, height: 198, weight: 88 },
  ],
  'ORL': [
    { firstName: 'Paolo', lastName: 'Banchero', position: 'Forward', jersey: 5, height: 208, weight: 113 },
    { firstName: 'Franz', lastName: 'Wagner', position: 'Forward', jersey: 22, height: 208, weight: 100 },
    { firstName: 'Jalen', lastName: 'Suggs', position: 'Guard', jersey: 4, height: 193, weight: 93 },
    { firstName: 'Wendell', lastName: 'Carter Jr.', position: 'Center', jersey: 34, height: 208, weight: 122 },
    { firstName: 'Markelle', lastName: 'Fultz', position: 'Guard', jersey: 20, height: 193, weight: 93 },
    { firstName: 'Cole', lastName: 'Anthony', position: 'Guard', jersey: 50, height: 191, weight: 84 },
    { firstName: 'Gary', lastName: 'Harris', position: 'Guard', jersey: 14, height: 193, weight: 95 },
    { firstName: 'Jonathan', lastName: 'Isaac', position: 'Forward', jersey: 1, height: 211, weight: 106 },
    { firstName: 'Anthony', lastName: 'Black', position: 'Guard', jersey: 0, height: 201, weight: 91 },
    { firstName: 'Moritz', lastName: 'Wagner', position: 'Center', jersey: 21, height: 211, weight: 111 },
  ],
  'PHI': [
    { firstName: 'Joel', lastName: 'Embiid', position: 'Center', jersey: 21, height: 213, weight: 127 },
    { firstName: 'Tyrese', lastName: 'Maxey', position: 'Guard', jersey: 0, height: 188, weight: 91 },
    { firstName: 'Tobias', lastName: 'Harris', position: 'Forward', jersey: 12, height: 203, weight: 102 },
    { firstName: 'De\'Anthony', lastName: 'Melton', position: 'Guard', jersey: 8, height: 188, weight: 93 },
    { firstName: 'Kelly', lastName: 'Oubre Jr.', position: 'Forward', jersey: 9, height: 201, weight: 93 },
    { firstName: 'Nicolas', lastName: 'Batum', position: 'Forward', jersey: 33, height: 203, weight: 104 },
    { firstName: 'Robert', lastName: 'Covington', position: 'Forward', jersey: 23, height: 206, weight: 98 },
    { firstName: 'Paul', lastName: 'Reed', position: 'Center', jersey: 44, height: 206, weight: 100 },
    { firstName: 'Patrick', lastName: 'Beverley', position: 'Guard', jersey: 22, height: 185, weight: 82 },
    { firstName: 'KJ', lastName: 'Martin', position: 'Forward', jersey: 1, height: 201, weight: 98 },
  ],
  'PHX': [
    { firstName: 'Devin', lastName: 'Booker', position: 'Guard', jersey: 1, height: 196, weight: 93 },
    { firstName: 'Kevin', lastName: 'Durant', position: 'Forward', jersey: 35, height: 211, weight: 109 },
    { firstName: 'Bradley', lastName: 'Beal', position: 'Guard', jersey: 3, height: 193, weight: 95 },
    { firstName: 'Jusuf', lastName: 'Nurkic', position: 'Center', jersey: 20, height: 213, weight: 131 },
    { firstName: 'Grayson', lastName: 'Allen', position: 'Guard', jersey: 8, height: 193, weight: 88 },
    { firstName: 'Eric', lastName: 'Gordon', position: 'Guard', jersey: 23, height: 191, weight: 98 },
    { firstName: 'Drew', lastName: 'Eubanks', position: 'Center', jersey: 14, height: 208, weight: 111 },
    { firstName: 'Josh', lastName: 'Okogie', position: 'Guard', jersey: 2, height: 193, weight: 98 },
    { firstName: 'Keita', lastName: 'Bates-Diop', position: 'Forward', jersey: 31, height: 203, weight: 95 },
    { firstName: 'Bol', lastName: 'Bol', position: 'Center', jersey: 11, height: 221, weight: 100 },
  ],
  'POR': [
    { firstName: 'Anfernee', lastName: 'Simons', position: 'Guard', jersey: 1, height: 191, weight: 88 },
    { firstName: 'Jerami', lastName: 'Grant', position: 'Forward', jersey: 9, height: 203, weight: 95 },
    { firstName: 'Scoot', lastName: 'Henderson', position: 'Guard', jersey: 0, height: 188, weight: 88 },
    { firstName: 'Deandre', lastName: 'Ayton', position: 'Center', jersey: 2, height: 211, weight: 113 },
    { firstName: 'Shaedon', lastName: 'Sharpe', position: 'Guard', jersey: 17, height: 198, weight: 91 },
    { firstName: 'Malcolm', lastName: 'Brogdon', position: 'Guard', jersey: 11, height: 196, weight: 104 },
    { firstName: 'Matisse', lastName: 'Thybulle', position: 'Guard', jersey: 4, height: 196, weight: 91 },
    { firstName: 'Robert', lastName: 'Williams III', position: 'Center', jersey: 35, height: 206, weight: 109 },
    { firstName: 'Toumani', lastName: 'Camara', position: 'Forward', jersey: 33, height: 203, weight: 100 },
    { firstName: 'Jabari', lastName: 'Walker', position: 'Forward', jersey: 34, height: 206, weight: 93 },
  ],
  'SAC': [
    { firstName: 'De\'Aaron', lastName: 'Fox', position: 'Guard', jersey: 5, height: 191, weight: 83 },
    { firstName: 'Domantas', lastName: 'Sabonis', position: 'Center', jersey: 10, height: 211, weight: 109 },
    { firstName: 'Keegan', lastName: 'Murray', position: 'Forward', jersey: 13, height: 203, weight: 102 },
    { firstName: 'Kevin', lastName: 'Huerter', position: 'Guard', jersey: 9, height: 201, weight: 86 },
    { firstName: 'Harrison', lastName: 'Barnes', position: 'Forward', jersey: 40, height: 203, weight: 102 },
    { firstName: 'Malik', lastName: 'Monk', position: 'Guard', jersey: 0, height: 191, weight: 91 },
    { firstName: 'Trey', lastName: 'Lyles', position: 'Forward', jersey: 41, height: 206, weight: 106 },
    { firstName: 'Davion', lastName: 'Mitchell', position: 'Guard', jersey: 15, height: 185, weight: 93 },
    { firstName: 'Kessler', lastName: 'Edwards', position: 'Forward', jersey: 1, height: 203, weight: 91 },
    { firstName: 'Sasha', lastName: 'Vezenkov', position: 'Forward', jersey: 77, height: 206, weight: 102 },
  ],
  'SAS': [
    { firstName: 'Victor', lastName: 'Wembanyama', position: 'Center', jersey: 1, height: 224, weight: 95 },
    { firstName: 'Devin', lastName: 'Vassell', position: 'Guard', jersey: 24, height: 196, weight: 88 },
    { firstName: 'Keldon', lastName: 'Johnson', position: 'Forward', jersey: 3, height: 196, weight: 100 },
    { firstName: 'Jeremy', lastName: 'Sochan', position: 'Forward', jersey: 10, height: 206, weight: 104 },
    { firstName: 'Tre', lastName: 'Jones', position: 'Guard', jersey: 33, height: 185, weight: 84 },
    { firstName: 'Zach', lastName: 'Collins', position: 'Center', jersey: 23, height: 211, weight: 113 },
    { firstName: 'Malaki', lastName: 'Branham', position: 'Guard', jersey: 22, height: 193, weight: 88 },
    { firstName: 'Cedi', lastName: 'Osman', position: 'Forward', jersey: 16, height: 203, weight: 104 },
    { firstName: 'Doug', lastName: 'McDermott', position: 'Forward', jersey: 17, height: 203, weight: 102 },
    { firstName: 'Sandro', lastName: 'Mamukelashvili', position: 'Forward', jersey: 54, height: 211, weight: 109 },
  ],
  'TOR': [
    { firstName: 'Scottie', lastName: 'Barnes', position: 'Forward', jersey: 4, height: 203, weight: 102 },
    { firstName: 'Pascal', lastName: 'Siakam', position: 'Forward', jersey: 43, height: 206, weight: 104 },
    { firstName: 'OG', lastName: 'Anunoby', position: 'Forward', jersey: 3, height: 201, weight: 104 },
    { firstName: 'Jakob', lastName: 'Poeltl', position: 'Center', jersey: 19, height: 213, weight: 111 },
    { firstName: 'Dennis', lastName: 'Schroder', position: 'Guard', jersey: 17, height: 185, weight: 79 },
    { firstName: 'Gary', lastName: 'Trent Jr.', position: 'Guard', jersey: 33, height: 196, weight: 95 },
    { firstName: 'Precious', lastName: 'Achiuwa', position: 'Forward', jersey: 5, height: 203, weight: 104 },
    { firstName: 'Chris', lastName: 'Boucher', position: 'Forward', jersey: 25, height: 206, weight: 91 },
    { firstName: 'Gradey', lastName: 'Dick', position: 'Guard', jersey: 1, height: 203, weight: 93 },
    { firstName: 'Malachi', lastName: 'Flynn', position: 'Guard', jersey: 22, height: 185, weight: 79 },
  ],
  'UTA': [
    { firstName: 'Lauri', lastName: 'Markkanen', position: 'Forward', jersey: 23, height: 213, weight: 109 },
    { firstName: 'Jordan', lastName: 'Clarkson', position: 'Guard', jersey: 0, height: 196, weight: 88 },
    { firstName: 'Collin', lastName: 'Sexton', position: 'Guard', jersey: 2, height: 185, weight: 86 },
    { firstName: 'Walker', lastName: 'Kessler', position: 'Center', jersey: 24, height: 216, weight: 111 },
    { firstName: 'John', lastName: 'Collins', position: 'Forward', jersey: 20, height: 206, weight: 104 },
    { firstName: 'Keyonte', lastName: 'George', position: 'Guard', jersey: 3, height: 193, weight: 84 },
    { firstName: 'Ochai', lastName: 'Agbaji', position: 'Guard', jersey: 30, height: 196, weight: 98 },
    { firstName: 'Simone', lastName: 'Fontecchio', position: 'Forward', jersey: 16, height: 203, weight: 93 },
    { firstName: 'Talen', lastName: 'Horton-Tucker', position: 'Guard', jersey: 5, height: 193, weight: 106 },
    { firstName: 'Kelly', lastName: 'Olynyk', position: 'Center', jersey: 41, height: 213, weight: 109 },
  ],
  'WAS': [
    { firstName: 'Jordan', lastName: 'Poole', position: 'Guard', jersey: 13, height: 193, weight: 88 },
    { firstName: 'Kyle', lastName: 'Kuzma', position: 'Forward', jersey: 33, height: 206, weight: 100 },
    { firstName: 'Tyus', lastName: 'Jones', position: 'Guard', jersey: 5, height: 185, weight: 88 },
    { firstName: 'Daniel', lastName: 'Gafford', position: 'Center', jersey: 21, height: 208, weight: 106 },
    { firstName: 'Deni', lastName: 'Avdija', position: 'Forward', jersey: 9, height: 206, weight: 95 },
    { firstName: 'Corey', lastName: 'Kispert', position: 'Forward', jersey: 24, height: 201, weight: 102 },
    { firstName: 'Bilal', lastName: 'Coulibaly', position: 'Guard', jersey: 0, height: 201, weight: 88 },
    { firstName: 'Delon', lastName: 'Wright', position: 'Guard', jersey: 55, height: 196, weight: 84 },
    { firstName: 'Landry', lastName: 'Shamet', position: 'Guard', jersey: 20, height: 196, weight: 86 },
    { firstName: 'Eugene', lastName: 'Omoruyi', position: 'Forward', jersey: 2, height: 198, weight: 106 },
  ],
};

// Générer le SQL pour tous les joueurs
let sql = `-- ============================================
-- NBA JOUEURS 2024-2025 - ROSTERS COMPLETS
-- ============================================

SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);

`;

// Insérer tous les joueurs
Object.entries(NBA_ROSTERS).forEach(([teamAbbr, roster]) => {
  const teamId = NBA_TEAMS[teamAbbr];
  sql += `\n-- ${teamAbbr} Roster\n`;

  roster.forEach(player => {
    // Échapper les apostrophes
    const firstName = player.firstName.replace(/'/g, "\\'");
    const lastName = player.lastName.replace(/'/g, "\\'");
    const displayName = `${firstName} ${lastName}`;

    sql += `INSERT INTO players (first_name, last_name, display_name, position, height_cm, weight_kg, jersey_number, team_id, is_active)
VALUES ('${firstName}', '${lastName}', '${displayName}', '${player.position}', ${player.height}, ${player.weight}, ${player.jersey}, ${teamId}, true)
ON DUPLICATE KEY UPDATE team_id=VALUES(team_id), jersey_number=VALUES(jersey_number), is_active=VALUES(is_active);\n`;
  });
});

sql += `\n-- ============================================
-- VÉRIFICATION
-- ============================================

SELECT '✅ Tous les joueurs NBA 2024-2025 ont été ajoutés!' AS message;
SELECT COUNT(*) AS total_players FROM players WHERE is_active = true;
SELECT t.abbreviation, COUNT(p.id) AS player_count
FROM teams t
LEFT JOIN players p ON t.id = p.team_id AND p.is_active = true
GROUP BY t.id, t.abbreviation
ORDER BY t.abbreviation;
`;

// Sauvegarder le fichier
const outputPath = path.join(__dirname, '../database/populate-all-players-2024-25.sql');
fs.writeFileSync(outputPath, sql);

console.log('✅ Fichier SQL généré avec succès!');
console.log(`📁 ${outputPath}`);
console.log(`👥 ${Object.values(NBA_ROSTERS).reduce((sum, roster) => sum + roster.length, 0)} joueurs au total`);
console.log('\n📋 Pour l\'utiliser:');
console.log('   mysql -u nba_user -p\'nba_password\' nba_database < database/populate-all-players-2024-25.sql');
