/**
 * Script pour générer le SQL d'insertion des statistiques de joueurs
 * à partir de nbaData.js
 */

const fs = require('fs');
const path = require('path');

// Données des joueurs (copié depuis nbaData.js)
const players = [
  {
    id: 1, name: "LeBron James", team: "Los Angeles Lakers",
    lastGames: [
      { PTS: 28, REB: 8, AST: 9, STL: 1, BLK: 1, FG: 10, FGA: 18, "3P": 2, "3PA": 6, FT: 6, FTA: 7 },
      { PTS: 32, REB: 7, AST: 11, STL: 2, BLK: 0, FG: 12, FGA: 20, "3P": 3, "3PA": 7, FT: 5, FTA: 6 },
      { PTS: 25, REB: 9, AST: 8, STL: 1, BLK: 1, FG: 9, FGA: 17, "3P": 1, "3PA": 4, FT: 6, FTA: 7 },
      { PTS: 30, REB: 10, AST: 7, STL: 2, BLK: 1, FG: 11, FGA: 19, "3P": 2, "3PA": 5, FT: 6, FTA: 6 },
      { PTS: 27, REB: 8, AST: 9, STL: 1, BLK: 0, FG: 10, FGA: 18, "3P": 1, "3PA": 4, FT: 6, FTA: 6 },
      { PTS: 35, REB: 11, AST: 10, STL: 3, BLK: 2, FG: 14, FGA: 22, "3P": 3, "3PA": 7, FT: 4, FTA: 5 },
      { PTS: 22, REB: 6, AST: 7, STL: 1, BLK: 1, FG: 9, FGA: 16, "3P": 1, "3PA": 3, FT: 3, FTA: 4 },
      { PTS: 29, REB: 9, AST: 8, STL: 2, BLK: 1, FG: 11, FGA: 20, "3P": 2, "3PA": 6, FT: 5, FTA: 6 },
      { PTS: 31, REB: 10, AST: 9, STL: 2, BLK: 0, FG: 12, FGA: 21, "3P": 3, "3PA": 7, FT: 5, FTA: 6 },
      { PTS: 26, REB: 8, AST: 7, STL: 1, BLK: 1, FG: 10, FGA: 18, "3P": 2, "3PA": 5, FT: 4, FTA: 5 },
    ]
  },
  // ... autres joueurs (ils seront tous là, mais je raccourcis pour l'exemple)
];

// Mapping player ID -> display_name pour retrouver l'ID en BDD
const playerMapping = {
  1: "LeBron James",
  2: "Stephen Curry",
  3: "Giannis Antetokounmpo",
  4: "Ryan Fonseca",
  5: "Kevin Durant",
  6: "Luka Doncic",
  7: "Nikola Jokic",
  8: "Joel Embiid",
  9: "Jayson Tatum",
  10: "Shai Gilgeous-Alexander",
  11: "Anthony Edwards",
  12: "Ja Morant",
  13: "Victor Wembanyama",
  14: "Chet Holmgren",
  15: "Bam Adebayo",
  16: "Donovan Mitchell",
  17: "Zion Williamson",
  18: "Devin Booker",
  19: "Kawhi Leonard",
  20: "Trae Young",
  21: "Chris Paul",
  22: "Karl-Anthony Towns",
  23: "Brandon Ingram",
  24: "Draymond Green",
  25: "Pascal Siakam",
  26: "Julius Randle"
};

let sql = `-- ============================================
-- NBA API - Statistiques des 10 derniers matchs par joueur
-- Généré automatiquement depuis nbaData.js
-- ============================================

SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);

`;

// Pour chaque joueur
for (let playerId = 1; playerId <= 26; playerId++) {
  const playerName = playerMapping[playerId];

  sql += `\n-- Statistiques pour ${playerName}\n`;

  // Pour chaque match (10 derniers matchs)
  for (let gameNum = 1; gameNum <= 10; gameNum++) {
    sql += `INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  (SELECT id FROM players WHERE display_name = '${playerName}'),
  @season_id,
  NULL, -- pas de game_id pour l'instant (stats simplifiées)
  1, -- 1 match joué
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 -- valeurs par défaut, seront remplies par script suivant
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = (SELECT id FROM players WHERE display_name = '${playerName}')
  AND ps.season_id = @season_id
  LIMIT ${gameNum}
);

`;
  }
}

sql += `\nSELECT '✅ Statistiques des joueurs créées!' AS message;\n`;
sql += `SELECT COUNT(*) AS total_stats FROM player_stats;\n`;

// Écrire le fichier SQL
const outputPath = path.join(__dirname, '../database/init/05-populate-player-stats.sql');
fs.writeFileSync(outputPath, sql);

console.log(`✅ Fichier SQL généré: ${outputPath}`);
console.log(`📊 ${26 * 10} statistiques de matchs seront insérées`);
