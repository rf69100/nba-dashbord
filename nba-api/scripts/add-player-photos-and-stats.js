/**
 * Script pour ajouter les photos des joueurs et générer leurs statistiques
 */

const fs = require('fs');
const path = require('path');

// Mapping des noms de joueurs vers leurs IDs NBA (pour les photos)
const NBA_PLAYER_IDS = {
  // Lakers
  'LeBron James': '2544',
  'Anthony Davis': '203076',
  'Austin Reaves': '1630559',
  'D\'Angelo Russell': '1626156',
  'Rui Hachimura': '1629060',
  'Jarred Vanderbilt': '1629020',
  'Taurean Prince': '1627752',
  'Jaxson Hayes': '1629634',
  'Gabe Vincent': '1629216',
  'Max Christie': '1631119',
  'Cam Reddish': '1629629',

  // Warriors
  'Stephen Curry': '201939',
  'Klay Thompson': '202691',
  'Andrew Wiggins': '203952',
  'Draymond Green': '203110',
  'Jonathan Kuminga': '1630228',
  'Chris Paul': '101108',
  'Kevon Looney': '1626172',
  'Moses Moody': '1630541',
  'Brandin Podziemski': '1641705',
  'Gary Payton II': '1627780',
  'Trayce Jackson-Davis': '1641712',

  // Celtics
  'Jayson Tatum': '1628369',
  'Jaylen Brown': '1627759',
  'Jrue Holiday': '201950',
  'Derrick White': '1628401',
  'Kristaps Porzingis': '204001',
  'Al Horford': '201143',
  'Payton Pritchard': '1629619',
  'Sam Hauser': '1630573',
  'Luke Kornet': '1628436',

  // Bucks
  'Giannis Antetokounmpo': '203507',
  'Damian Lillard': '203081',
  'Khris Middleton': '203114',
  'Brook Lopez': '201572',
  'Bobby Portis': '1626171',
  'Malik Beasley': '1627736',

  // Nuggets
  'Nikola Jokic': '203999',
  'Jamal Murray': '1627750',
  'Michael Porter Jr.': '1629008',
  'Aaron Gordon': '203932',
  'Kentavious Caldwell-Pope': '203484',
  'Christian Braun': '1631104',

  // Mavericks
  'Luka Doncic': '1629029',
  'Kyrie Irving': '202681',
  'Dereck Lively II': '1641705',
  'Daniel Gafford': '1629655',

  // Thunder
  'Shai Gilgeous-Alexander': '1628983',
  'Chet Holmgren': '1641705',
  'Jalen Williams': '1631116',
  'Josh Giddey': '1630581',
  'Luguentz Dort': '1629652',

  // 76ers
  'Joel Embiid': '203954',
  'Tyrese Maxey': '1630178',
  'Tobias Harris': '202699',
  'Kelly Oubre Jr.': '1626162',

  // Suns
  'Kevin Durant': '201142',
  'Devin Booker': '1626164',
  'Bradley Beal': '203078',
  'Jusuf Nurkic': '203994',
  'Grayson Allen': '1628960',

  // Heat
  'Jimmy Butler': '202710',
  'Bam Adebayo': '1628389',
  'Tyler Herro': '1629639',

  // Cavaliers
  'Donovan Mitchell': '1628378',
  'Darius Garland': '1629636',
  'Jarrett Allen': '1628386',
  'Evan Mobley': '1630596',

  // Knicks
  'Jalen Brunson': '1628973',
  'Julius Randle': '203944',
  'OG Anunoby': '1628384',
  'Mitchell Robinson': '1629011',

  // Pelicans
  'Zion Williamson': '1629627',
  'Brandon Ingram': '1627742',
  'CJ McCollum': '203468',
  'Herbert Jones': '1630530',
  'Trey Murphy III': '1630554',

  // Grizzlies
  'Ja Morant': '1629630',
  'Desmond Bane': '1630217',
  'Jaren Jackson Jr.': '1628991',
  'Marcus Smart': '203935',

  // Magic
  'Paolo Banchero': '1631094',
  'Franz Wagner': '1630532',
  'Jalen Suggs': '1630591',
  'Wendell Carter Jr.': '1628976',

  // Spurs
  'Victor Wembanyama': '1641705',
  'Devin Vassell': '1630170',
  'Keldon Johnson': '1629640',
  'Jeremy Sochan': '1631102',

  // Hawks
  'Trae Young': '1629027',
  'Dejounte Murray': '1627749',
  'Clint Capela': '203991',
  'Jalen Johnson': '1630556',
  'De\'Andre Hunter': '1629631',
  'Bogdan Bogdanovic': '203992',

  // Pacers
  'Tyrese Haliburton': '1630169',
  'Myles Turner': '1626167',
  'Bennedict Mathurin': '1631096',
  'Bruce Brown': '1628971',
  'Obi Toppin': '1630167',

  // Rockets
  'Alperen Sengun': '1630578',
  'Jalen Green': '1630224',
  'Fred VanVleet': '1627832',
  'Jabari Smith Jr.': '1631095',
  'Dillon Brooks': '1628415',

  // Kings
  'De\'Aaron Fox': '1628368',
  'Domantas Sabonis': '1627734',
  'Keegan Murray': '1631097',
  'Harrison Barnes': '203084',
  'Malik Monk': '1628370',

  // Clippers
  'Kawhi Leonard': '202695',
  'Paul George': '202331',
  'James Harden': '201935',
  'Russell Westbrook': '201566',
  'Ivica Zubac': '1627826',
  'Norman Powell': '1626181',

  // Timberwolves
  'Anthony Edwards': '1630162',
  'Karl-Anthony Towns': '1626157',
  'Rudy Gobert': '203497',
  'Mike Conley': '201144',
  'Jaden McDaniels': '1630183',
  'Naz Reid': '1629675',

  // Nets
  'Mikal Bridges': '1628969',
  'Cam Thomas': '1630560',
  'Nic Claxton': '1629651',
  'Spencer Dinwiddie': '203915',

  // Bulls
  'Zach LaVine': '203897',
  'DeMar DeRozan': '201942',
  'Nikola Vucevic': '202696',
  'Coby White': '1629632',
  'Patrick Williams': '1630169',

  // Raptors
  'Scottie Barnes': '1630567',
  'Pascal Siakam': '1627783',
  'Jakob Poeltl': '1627751',
  'OG Anunoby': '1628384',

  // Hornets
  'LaMelo Ball': '1630163',
  'Miles Bridges': '1628970',
  'Mark Williams': '1631114',
  'Brandon Miller': '1641738',
  'Terry Rozier': '1626179',

  // Pistons
  'Cade Cunningham': '1630595',
  'Jaden Ivey': '1631093',
  'Jalen Duren': '1631105',
  'Bojan Bogdanovic': '202711',
  'Ausar Thompson': '1641739',

  // Wizards
  'Jordan Poole': '1629673',
  'Kyle Kuzma': '1628398',
  'Tyus Jones': '1626145',
  'Daniel Gafford': '1629655',

  // Trail Blazers
  'Anfernee Simons': '1629014',
  'Jerami Grant': '203924',
  'Scoot Henderson': '1641740',
  'Deandre Ayton': '1629028',
  'Shaedon Sharpe': '1631101',

  // Jazz
  'Lauri Markkanen': '1628374',
  'Jordan Clarkson': '203903',
  'Collin Sexton': '1629012',
  'Walker Kessler': '1631098',
  'John Collins': '1628381',
};

// Fonction pour générer des stats réalistes selon le poste et le niveau
function generatePlayerStats(playerName, position, isStarter = true) {
  const statsRanges = {
    star: {
      Guard: { points: [25, 32], rebounds: [4, 7], assists: [7, 11], steals: [1, 2], blocks: [0, 1], fg_pct: [45, 52], three_pct: [35, 42], ft_pct: [80, 92] },
      Forward: { points: [22, 30], rebounds: [7, 12], assists: [4, 8], steals: [1, 2], blocks: [1, 2], fg_pct: [48, 55], three_pct: [32, 40], ft_pct: [75, 88] },
      Center: { points: [20, 28], rebounds: [10, 15], assists: [3, 7], steals: [0, 1], blocks: [2, 3], fg_pct: [55, 65], three_pct: [20, 35], ft_pct: [70, 85] }
    },
    starter: {
      Guard: { points: [12, 20], rebounds: [3, 5], assists: [4, 7], steals: [0, 1], blocks: [0, 1], fg_pct: [42, 48], three_pct: [33, 38], ft_pct: [75, 85] },
      Forward: { points: [10, 18], rebounds: [5, 9], assists: [2, 5], steals: [0, 1], blocks: [0, 1], fg_pct: [45, 52], three_pct: [30, 38], ft_pct: [72, 82] },
      Center: { points: [9, 16], rebounds: [7, 12], assists: [1, 4], steals: [0, 1], blocks: [1, 2], fg_pct: [52, 62], three_pct: [15, 30], ft_pct: [65, 78] }
    },
    bench: {
      Guard: { points: [7, 15], rebounds: [2, 4], assists: [2, 5], steals: [0, 1], blocks: [0, 0], fg_pct: [40, 46], three_pct: [32, 37], ft_pct: [72, 82] },
      Forward: { points: [6, 13], rebounds: [3, 7], assists: [1, 3], steals: [0, 1], blocks: [0, 1], fg_pct: [43, 50], three_pct: [28, 36], ft_pct: [70, 80] },
      Center: { points: [5, 12], rebounds: [5, 10], assists: [0, 3], steals: [0, 1], blocks: [0, 2], fg_pct: [50, 60], three_pct: [10, 25], ft_pct: [60, 75] }
    }
  };

  // Déterminer le tier du joueur
  const starPlayers = ['LeBron James', 'Stephen Curry', 'Giannis Antetokounmpo', 'Nikola Jokic', 'Luka Doncic',
    'Joel Embiid', 'Kevin Durant', 'Jayson Tatum', 'Damian Lillard', 'Shai Gilgeous-Alexander', 'Anthony Edwards',
    'Devin Booker', 'Donovan Mitchell', 'Jimmy Butler', 'Kawhi Leonard', 'Anthony Davis'];

  const tier = starPlayers.includes(playerName) ? 'star' : (isStarter ? 'starter' : 'bench');

  // Normaliser le poste
  let posType = 'Forward';
  if (position.includes('Guard')) posType = 'Guard';
  else if (position.includes('Center')) posType = 'Center';

  const ranges = statsRanges[tier][posType];

  // Générer des stats aléatoires dans les ranges
  const stats = {};
  for (const [stat, [min, max]] of Object.entries(ranges)) {
    if (stat.includes('pct')) {
      stats[stat] = (Math.random() * (max - min) + min).toFixed(1);
    } else {
      stats[stat] = (Math.random() * (max - min) + min).toFixed(1);
    }
  }

  return stats;
}

// Générer le SQL
let sql = `-- ============================================
-- AJOUT DES PHOTOS ET STATS DES JOUEURS
-- ============================================

SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);

-- Mise à jour des photos des joueurs
`;

// Ajouter les URLs des photos
Object.entries(NBA_PLAYER_IDS).forEach(([playerName, nbaId]) => {
  const escapedName = playerName.replace(/'/g, "\\'");
  const photoUrl = `https://cdn.nba.com/headshots/nba/latest/1040x760/${nbaId}.png`;

  sql += `UPDATE players SET photo_url = '${photoUrl}' WHERE display_name = '${escapedName}';\n`;
});

sql += `\n-- Génération des statistiques des joueurs
`;

// Liste des joueurs avec leurs infos pour générer les stats
const playersToGenerateStats = [
  // On va générer des stats pour les principaux joueurs de chaque équipe
  // Format: { name, position, isStarter }
  { name: 'LeBron James', position: 'Forward', isStarter: true },
  { name: 'Anthony Davis', position: 'Forward', isStarter: true },
  { name: 'Austin Reaves', position: 'Guard', isStarter: true },
  { name: 'D\'Angelo Russell', position: 'Guard', isStarter: true },
  { name: 'Rui Hachimura', position: 'Forward', isStarter: false },

  { name: 'Stephen Curry', position: 'Guard', isStarter: true },
  { name: 'Klay Thompson', position: 'Guard', isStarter: true },
  { name: 'Andrew Wiggins', position: 'Forward', isStarter: true },
  { name: 'Draymond Green', position: 'Forward', isStarter: true },
  { name: 'Jonathan Kuminga', position: 'Forward', isStarter: false },

  { name: 'Jayson Tatum', position: 'Forward', isStarter: true },
  { name: 'Jaylen Brown', position: 'Guard', isStarter: true },
  { name: 'Jrue Holiday', position: 'Guard', isStarter: true },
  { name: 'Derrick White', position: 'Guard', isStarter: true },
  { name: 'Kristaps Porzingis', position: 'Center', isStarter: true },

  { name: 'Giannis Antetokounmpo', position: 'Forward', isStarter: true },
  { name: 'Damian Lillard', position: 'Guard', isStarter: true },
  { name: 'Khris Middleton', position: 'Forward', isStarter: true },
  { name: 'Brook Lopez', position: 'Center', isStarter: true },

  { name: 'Nikola Jokic', position: 'Center', isStarter: true },
  { name: 'Jamal Murray', position: 'Guard', isStarter: true },
  { name: 'Michael Porter Jr.', position: 'Forward', isStarter: true },
  { name: 'Aaron Gordon', position: 'Forward', isStarter: true },

  { name: 'Luka Doncic', position: 'Guard', isStarter: true },
  { name: 'Kyrie Irving', position: 'Guard', isStarter: true },

  { name: 'Shai Gilgeous-Alexander', position: 'Guard', isStarter: true },
  { name: 'Chet Holmgren', position: 'Center', isStarter: true },
  { name: 'Jalen Williams', position: 'Forward', isStarter: true },

  { name: 'Joel Embiid', position: 'Center', isStarter: true },
  { name: 'Tyrese Maxey', position: 'Guard', isStarter: true },

  { name: 'Kevin Durant', position: 'Forward', isStarter: true },
  { name: 'Devin Booker', position: 'Guard', isStarter: true },
  { name: 'Bradley Beal', position: 'Guard', isStarter: true },

  { name: 'Jimmy Butler', position: 'Forward', isStarter: true },
  { name: 'Bam Adebayo', position: 'Center', isStarter: true },
  { name: 'Tyler Herro', position: 'Guard', isStarter: true },

  { name: 'Donovan Mitchell', position: 'Guard', isStarter: true },
  { name: 'Darius Garland', position: 'Guard', isStarter: true },
  { name: 'Jarrett Allen', position: 'Center', isStarter: true },
  { name: 'Evan Mobley', position: 'Forward', isStarter: true },

  { name: 'Jalen Brunson', position: 'Guard', isStarter: true },
  { name: 'Julius Randle', position: 'Forward', isStarter: true },

  { name: 'Zion Williamson', position: 'Forward', isStarter: true },
  { name: 'Brandon Ingram', position: 'Forward', isStarter: true },
  { name: 'CJ McCollum', position: 'Guard', isStarter: true },

  { name: 'Ja Morant', position: 'Guard', isStarter: true },
  { name: 'Desmond Bane', position: 'Guard', isStarter: true },
  { name: 'Jaren Jackson Jr.', position: 'Forward', isStarter: true },

  { name: 'Paolo Banchero', position: 'Forward', isStarter: true },
  { name: 'Franz Wagner', position: 'Forward', isStarter: true },

  { name: 'Victor Wembanyama', position: 'Center', isStarter: true },

  { name: 'Trae Young', position: 'Guard', isStarter: true },
  { name: 'Dejounte Murray', position: 'Guard', isStarter: true },

  { name: 'Tyrese Haliburton', position: 'Guard', isStarter: true },
  { name: 'Myles Turner', position: 'Center', isStarter: true },

  { name: 'Alperen Sengun', position: 'Center', isStarter: true },
  { name: 'Jalen Green', position: 'Guard', isStarter: true },
  { name: 'Fred VanVleet', position: 'Guard', isStarter: true },

  { name: 'De\'Aaron Fox', position: 'Guard', isStarter: true },
  { name: 'Domantas Sabonis', position: 'Center', isStarter: true },
  { name: 'Keegan Murray', position: 'Forward', isStarter: true },

  { name: 'Kawhi Leonard', position: 'Forward', isStarter: true },
  { name: 'Paul George', position: 'Forward', isStarter: true },
  { name: 'James Harden', position: 'Guard', isStarter: true },

  { name: 'Anthony Edwards', position: 'Guard', isStarter: true },
  { name: 'Karl-Anthony Towns', position: 'Center', isStarter: true },
  { name: 'Rudy Gobert', position: 'Center', isStarter: true },

  { name: 'Mikal Bridges', position: 'Forward', isStarter: true },
  { name: 'Cam Thomas', position: 'Guard', isStarter: true },

  { name: 'Zach LaVine', position: 'Guard', isStarter: true },
  { name: 'DeMar DeRozan', position: 'Forward', isStarter: true },
  { name: 'Nikola Vucevic', position: 'Center', isStarter: true },

  { name: 'Scottie Barnes', position: 'Forward', isStarter: true },
  { name: 'Pascal Siakam', position: 'Forward', isStarter: true },

  { name: 'LaMelo Ball', position: 'Guard', isStarter: true },
  { name: 'Miles Bridges', position: 'Forward', isStarter: true },

  { name: 'Cade Cunningham', position: 'Guard', isStarter: true },
  { name: 'Jaden Ivey', position: 'Guard', isStarter: true },
];

playersToGenerateStats.forEach(player => {
  const stats = generatePlayerStats(player.name, player.position, player.isStarter);
  const escapedName = player.name.replace(/'/g, "\\'");

  sql += `
INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  ${stats.points}, ${stats.rebounds}, ${stats.assists}, ${stats.steals}, ${stats.blocks}, 2.5,
  ${(stats.points / 2.2).toFixed(1)}, ${(stats.points / 2.2 / (stats.fg_pct / 100)).toFixed(1)},
  ${(stats.points * 0.15).toFixed(1)}, ${(stats.points * 0.15 / (stats.three_pct / 100)).toFixed(1)},
  ${(stats.points * 0.20).toFixed(1)}, ${(stats.points * 0.20 / (stats.ft_pct / 100)).toFixed(1)}
FROM players p
WHERE p.display_name = '${escapedName}'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);
`;
});

sql += `\n-- ============================================
-- VÉRIFICATION
-- ============================================

SELECT '✅ Photos et statistiques ajoutées!' AS message;
SELECT COUNT(*) AS players_with_photos FROM players WHERE photo_url IS NOT NULL;
SELECT COUNT(*) AS players_with_stats FROM player_stats WHERE season_id = @season_id;
`;

// Sauvegarder
const outputPath = path.join(__dirname, '../database/add-photos-and-stats.sql');
fs.writeFileSync(outputPath, sql);

console.log('✅ Fichier SQL généré avec succès!');
console.log(`📁 ${outputPath}`);
console.log(`📸 ${Object.keys(NBA_PLAYER_IDS).length} photos de joueurs`);
console.log(`📊 ${playersToGenerateStats.length} joueurs avec stats`);
console.log('\n📋 Pour l\'utiliser:');
console.log('   mysql -u nba_user -p\'nba_password\' nba_database < database/add-photos-and-stats.sql');
