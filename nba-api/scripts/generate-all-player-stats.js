/**
 * Script pour générer les statistiques des 10 derniers matchs
 * pour tous les joueurs de la base de données
 */

const fs = require('fs');
const path = require('path');

// Fonction pour générer des stats réalistes basées sur le poste et le niveau du joueur
function generateRealisticStats(playerName, position, tier = 'star') {
  const games = [];

  // Définir les ranges de stats selon le poste et le tier
  const statRanges = {
    star: {
      Guard: { PTS: [22, 32], REB: [3, 7], AST: [6, 11], STL: [1, 2], BLK: [0, 1], FG: [8, 14], FGA: [16, 24], '3P': [2, 5], '3PA': [6, 12], FT: [4, 8], FTA: [5, 10] },
      Forward: { PTS: [20, 30], REB: [7, 12], AST: [4, 8], STL: [1, 2], BLK: [0, 2], FG: [8, 13], FGA: [15, 22], '3P': [1, 4], '3PA': [4, 9], FT: [4, 7], FTA: [5, 9] },
      Center: { PTS: [18, 28], REB: [10, 15], AST: [2, 6], STL: [0, 1], BLK: [1, 3], FG: [7, 12], FGA: [12, 18], '3P': [0, 2], '3PA': [0, 4], FT: [4, 8], FTA: [5, 10] }
    },
    allstar: {
      Guard: { PTS: [18, 26], REB: [3, 6], AST: [5, 9], STL: [1, 2], BLK: [0, 1], FG: [7, 11], FGA: [14, 20], '3P': [2, 4], '3PA': [5, 10], FT: [3, 6], FTA: [4, 7] },
      Forward: { PTS: [16, 24], REB: [6, 10], AST: [3, 6], STL: [1, 2], BLK: [0, 1], FG: [6, 10], FGA: [13, 18], '3P': [1, 3], '3PA': [3, 7], FT: [3, 6], FTA: [4, 7] },
      Center: { PTS: [14, 22], REB: [8, 13], AST: [2, 5], STL: [0, 1], BLK: [1, 2], FG: [6, 10], FGA: [10, 16], '3P': [0, 1], '3PA': [0, 3], FT: [3, 6], FTA: [4, 8] }
    },
    starter: {
      Guard: { PTS: [12, 20], REB: [2, 5], AST: [3, 7], STL: [0, 2], BLK: [0, 1], FG: [5, 9], FGA: [11, 17], '3P': [1, 3], '3PA': [4, 8], FT: [2, 5], FTA: [3, 6] },
      Forward: { PTS: [10, 18], REB: [4, 8], AST: [2, 5], STL: [0, 1], BLK: [0, 1], FG: [4, 8], FGA: [9, 15], '3P': [1, 3], '3PA': [2, 6], FT: [2, 4], FTA: [3, 5] },
      Center: { PTS: [8, 16], REB: [6, 11], AST: [1, 4], STL: [0, 1], BLK: [1, 2], FG: [4, 7], FGA: [7, 13], '3P': [0, 1], '3PA': [0, 2], FT: [2, 5], FTA: [3, 6] }
    },
    role: {
      Guard: { PTS: [8, 15], REB: [2, 4], AST: [2, 5], STL: [0, 1], BLK: [0, 1], FG: [3, 6], FGA: [8, 14], '3P': [1, 3], '3PA': [3, 7], FT: [1, 3], FTA: [2, 4] },
      Forward: { PTS: [6, 13], REB: [3, 6], AST: [1, 3], STL: [0, 1], BLK: [0, 1], FG: [3, 6], FGA: [7, 12], '3P': [0, 2], '3PA': [1, 5], FT: [1, 3], FTA: [2, 4] },
      Center: { PTS: [5, 12], REB: [4, 9], AST: [1, 3], STL: [0, 1], BLK: [0, 2], FG: [2, 5], FGA: [5, 10], '3P': [0, 1], '3PA': [0, 2], FT: [1, 3], FTA: [2, 5] }
    }
  };

  // Normaliser le poste
  let posType = 'Forward';
  if (position.includes('Guard')) posType = 'Guard';
  else if (position.includes('Center')) posType = 'Center';

  const ranges = statRanges[tier][posType];

  // Générer 10 matchs
  for (let i = 0; i < 10; i++) {
    const game = {};
    for (const [stat, [min, max]] of Object.entries(ranges)) {
      // Variation aléatoire dans la range
      const value = Math.floor(Math.random() * (max - min + 1)) + min;
      game[stat] = value;
    }
    games.push(game);
  }

  return games;
}

// Mapping des joueurs avec leur tier (niveau)
const playerTiers = {
  // Superstars / MVP tier
  'LeBron James': 'star',
  'Stephen Curry': 'star',
  'Giannis Antetokounmpo': 'star',
  'Luka Doncic': 'star',
  'Nikola Jokic': 'star',
  'Joel Embiid': 'star',
  'Kevin Durant': 'star',
  'Damian Lillard': 'star',
  'Jayson Tatum': 'star',
  'Shai Gilgeous-Alexander': 'star',
  'Anthony Edwards': 'star',
  'Devin Booker': 'star',

  // All-Stars
  'Tyrese Haliburton': 'allstar',
  'Donovan Mitchell': 'allstar',
  'Trae Young': 'allstar',
  'Jimmy Butler': 'allstar',
  'Bam Adebayo': 'allstar',
  'Jalen Brunson': 'allstar',
  'Tyrese Maxey': 'allstar',
  'Paolo Banchero': 'allstar',
  'De\'Aaron Fox': 'allstar',
  'LaMelo Ball': 'allstar',
  'Ja Morant': 'allstar',
  'Zion Williamson': 'allstar',
  'Victor Wembanyama': 'allstar',
  'Chet Holmgren': 'allstar',
  'Kyrie Irving': 'allstar',
  'Paul George': 'allstar',
  'Kawhi Leonard': 'allstar',
  'James Harden': 'allstar',
  'Bradley Beal': 'allstar',
  'Domantas Sabonis': 'allstar',
  'Lauri Markkanen': 'allstar',

  // Starters solides
  'Tyler Herro': 'starter',
  'Jrue Holiday': 'starter',
  'Derrick White': 'starter',
  'Kristaps Porzingis': 'starter',
  'Jamal Murray': 'starter',
  'Michael Porter Jr.': 'starter',
  'Aaron Gordon': 'starter',
  'Rudy Gobert': 'starter',
  'Karl-Anthony Towns': 'starter',
  'OG Anunoby': 'starter',
  'Julius Randle': 'starter',
  'Brandon Ingram': 'starter',
  'Pascal Siakam': 'starter',
  'Desmond Bane': 'starter',
  'Jaren Jackson Jr.': 'starter',
  'Franz Wagner': 'starter',
  'Scottie Barnes': 'starter',
  'Cade Cunningham': 'starter',
  'Alperen Sengun': 'starter',
  'Jalen Green': 'starter',
  'Keegan Murray': 'starter',
  'Jalen Williams': 'starter',
  'Mikal Bridges': 'starter',
  'Darius Garland': 'starter',
  'Jarrett Allen': 'starter',
  'Evan Mobley': 'starter',
};

// Fonction pour obtenir le tier d'un joueur (par défaut: role player)
function getPlayerTier(playerName) {
  return playerTiers[playerName] || 'role';
}

// Liste complète des joueurs avec leurs infos
const allPlayers = [
  // Joueurs déjà existants (26)
  { id: 1, name: "LeBron James", position: "Forward" },
  { id: 2, name: "Stephen Curry", position: "Guard" },
  { id: 3, name: "Giannis Antetokounmpo", position: "Forward" },
  { id: 4, name: "Ryan Fonseca", position: "Guard" },
  { id: 5, name: "Kevin Durant", position: "Forward" },
  { id: 6, name: "Luka Doncic", position: "Guard/Forward" },
  { id: 7, name: "Nikola Jokic", position: "Center" },
  { id: 8, name: "Joel Embiid", position: "Center" },
  { id: 9, name: "Jayson Tatum", position: "Forward" },
  { id: 10, name: "Shai Gilgeous-Alexander", position: "Guard" },
  { id: 11, name: "Anthony Edwards", position: "Guard" },
  { id: 12, name: "Ja Morant", position: "Guard" },
  { id: 13, name: "Victor Wembanyama", position: "Center" },
  { id: 14, name: "Chet Holmgren", position: "Center" },
  { id: 15, name: "Bam Adebayo", position: "Center" },
  { id: 16, name: "Donovan Mitchell", position: "Guard" },
  { id: 17, name: "Zion Williamson", position: "Forward" },
  { id: 18, name: "Devin Booker", position: "Guard" },
  { id: 19, name: "Kawhi Leonard", position: "Forward" },
  { id: 20, name: "Trae Young", position: "Guard" },
  { id: 21, name: "Chris Paul", position: "Guard" },
  { id: 22, name: "Karl-Anthony Towns", position: "Center" },
  { id: 23, name: "Brandon Ingram", position: "Forward" },
  { id: 24, name: "Draymond Green", position: "Forward" },
  { id: 25, name: "Pascal Siakam", position: "Forward" },
  { id: 26, name: "Julius Randle", position: "Forward" },

  // Nouveaux joueurs (92 joueurs supplémentaires)
  { id: 27, name: "Derrick White", position: "Guard" },
  { id: 28, name: "Jrue Holiday", position: "Guard" },
  { id: 29, name: "Kristaps Porzingis", position: "Center" },
  { id: 30, name: "Al Horford", position: "Center" },
  { id: 31, name: "Jalen Williams", position: "Forward" },
  { id: 32, name: "Josh Giddey", position: "Guard" },
  { id: 33, name: "Luguentz Dort", position: "Guard" },
  { id: 34, name: "Jamal Murray", position: "Guard" },
  { id: 35, name: "Michael Porter Jr.", position: "Forward" },
  { id: 36, name: "Aaron Gordon", position: "Forward" },
  { id: 37, name: "Rudy Gobert", position: "Center" },
  { id: 38, name: "Mike Conley", position: "Guard" },
  { id: 39, name: "Naz Reid", position: "Center" },
  { id: 40, name: "Paul George", position: "Forward" },
  { id: 41, name: "James Harden", position: "Guard" },
  { id: 42, name: "Russell Westbrook", position: "Guard" },
  { id: 43, name: "Ivica Zubac", position: "Center" },
  { id: 44, name: "Kyrie Irving", position: "Guard" },
  { id: 45, name: "Dereck Lively II", position: "Center" },
  { id: 46, name: "Tim Hardaway Jr.", position: "Guard" },
  { id: 47, name: "Jalen Brunson", position: "Guard" },
  { id: 48, name: "OG Anunoby", position: "Forward" },
  { id: 49, name: "Mitchell Robinson", position: "Center" },
  { id: 50, name: "Josh Hart", position: "Guard" },
  { id: 51, name: "CJ McCollum", position: "Guard" },
  { id: 52, name: "Herbert Jones", position: "Forward" },
  { id: 53, name: "Trey Murphy III", position: "Forward" },
  { id: 54, name: "Bradley Beal", position: "Guard" },
  { id: 55, name: "Jusuf Nurkic", position: "Center" },
  { id: 56, name: "Grayson Allen", position: "Guard" },
  { id: 57, name: "Damian Lillard", position: "Guard" },
  { id: 58, name: "Khris Middleton", position: "Forward" },
  { id: 59, name: "Brook Lopez", position: "Center" },
  { id: 60, name: "Darius Garland", position: "Guard" },
  { id: 61, name: "Jarrett Allen", position: "Center" },
  { id: 62, name: "Evan Mobley", position: "Forward" },
  { id: 63, name: "Tyrese Haliburton", position: "Guard" },
  { id: 64, name: "Myles Turner", position: "Center" },
  { id: 65, name: "Bennedict Mathurin", position: "Guard" },
  { id: 66, name: "Austin Reaves", position: "Guard" },
  { id: 67, name: "Rui Hachimura", position: "Forward" },
  { id: 68, name: "D'Angelo Russell", position: "Guard" },
  { id: 69, name: "Paolo Banchero", position: "Forward" },
  { id: 70, name: "Franz Wagner", position: "Forward" },
  { id: 71, name: "Jalen Suggs", position: "Guard" },
  { id: 72, name: "Tyrese Maxey", position: "Guard" },
  { id: 73, name: "Tobias Harris", position: "Forward" },
  { id: 74, name: "Kelly Oubre Jr.", position: "Forward" },
  { id: 75, name: "Jimmy Butler", position: "Forward" },
  { id: 76, name: "Tyler Herro", position: "Guard" },
  { id: 77, name: "Klay Thompson", position: "Guard" },
  { id: 78, name: "Andrew Wiggins", position: "Forward" },
  { id: 79, name: "Jonathan Kuminga", position: "Forward" },
  { id: 80, name: "De'Aaron Fox", position: "Guard" },
  { id: 81, name: "Domantas Sabonis", position: "Center" },
  { id: 82, name: "Keegan Murray", position: "Forward" },
  { id: 83, name: "Alperen Sengun", position: "Center" },
  { id: 84, name: "Jalen Green", position: "Guard" },
  { id: 85, name: "Fred VanVleet", position: "Guard" },
  { id: 86, name: "Zach LaVine", position: "Guard" },
  { id: 87, name: "Nikola Vucevic", position: "Center" },
  { id: 88, name: "Coby White", position: "Guard" },
  { id: 89, name: "Dejounte Murray", position: "Guard" },
  { id: 90, name: "Clint Capela", position: "Center" },
  { id: 91, name: "Jalen Johnson", position: "Forward" },
  { id: 92, name: "Mikal Bridges", position: "Forward" },
  { id: 93, name: "Cam Thomas", position: "Guard" },
  { id: 94, name: "Nic Claxton", position: "Center" },
  { id: 95, name: "Lauri Markkanen", position: "Forward" },
  { id: 96, name: "Jordan Clarkson", position: "Guard" },
  { id: 97, name: "Collin Sexton", position: "Guard" },
  { id: 98, name: "Desmond Bane", position: "Guard" },
  { id: 99, name: "Jaren Jackson Jr.", position: "Forward" },
  { id: 100, name: "Marcus Smart", position: "Guard" },
  { id: 101, name: "Scottie Barnes", position: "Forward" },
  { id: 102, name: "RJ Barrett", position: "Guard" },
  { id: 103, name: "Jakob Poeltl", position: "Center" },
  { id: 104, name: "Devin Vassell", position: "Guard" },
  { id: 105, name: "Keldon Johnson", position: "Forward" },
  { id: 106, name: "Jeremy Sochan", position: "Forward" },
  { id: 107, name: "LaMelo Ball", position: "Guard" },
  { id: 108, name: "Miles Bridges", position: "Forward" },
  { id: 109, name: "Mark Williams", position: "Center" },
  { id: 110, name: "Anfernee Simons", position: "Guard" },
  { id: 111, name: "Jerami Grant", position: "Forward" },
  { id: 112, name: "Scoot Henderson", position: "Guard" },
  { id: 113, name: "Jordan Poole", position: "Guard" },
  { id: 114, name: "Kyle Kuzma", position: "Forward" },
  { id: 115, name: "Tyus Jones", position: "Guard" },
  { id: 116, name: "Cade Cunningham", position: "Guard" },
  { id: 117, name: "Jaden Ivey", position: "Guard" },
  { id: 118, name: "Jalen Duren", position: "Center" },
];

// Générer le SQL
let sql = `-- ============================================
-- NBA API - Statistiques des joueurs (10 derniers matchs)
-- Généré automatiquement
-- ============================================

SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);

`;

// Pour chaque joueur, générer les stats et les insérer
allPlayers.forEach(player => {
  const tier = getPlayerTier(player.name);
  const games = generateRealisticStats(player.name, player.position, tier);

  sql += `\n-- Statistiques pour ${player.name} (${tier})\n`;

  games.forEach((game, index) => {
    sql += `INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  ${player.id},
  @season_id,
  NULL,
  1,
  ${game.PTS}, ${game.REB}, ${game.AST}, ${game.STL}, ${game.BLK},
  ${game.FG}, ${game.FGA},
  ${game['3P']}, ${game['3PA']},
  ${game.FT}, ${game.FTA}
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = ${player.id}
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= ${index + 1}
);

`;
  });
});

sql += `\n-- Vérification
SELECT '✅ Statistiques de tous les joueurs créées!' AS message;
SELECT COUNT(DISTINCT player_id) AS joueurs_avec_stats, COUNT(*) AS total_matchs FROM player_stats;
`;

// Écrire le fichier SQL
const outputPath = path.join(__dirname, '../database/init/07-populate-all-player-stats.sql');
fs.writeFileSync(outputPath, sql);

console.log(`✅ Fichier SQL généré: ${outputPath}`);
console.log(`📊 ${allPlayers.length} joueurs × 10 matchs = ${allPlayers.length * 10} statistiques de matchs`);
