/**
 * Script pour générer les statistiques des 10 derniers matchs
 * pour TOUS les joueurs depuis la base de données
 */

const mysql = require('mysql2/promise');
const fs = require('fs');
const path = require('path');
require('dotenv').config();

// Fonction pour générer des stats réalistes basées sur le poste et le niveau du joueur
function generateRealisticStats(playerName, position, tier = 'starter') {
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

// Mapping des joueurs stars/allstars (les autres seront "starter" ou "role")
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
  'Nikola Vucevic': 'allstar',
  'CJ McCollum': 'allstar',
  'Kristaps Porzingis': 'allstar',
  'Deandre Ayton': 'allstar',
  'D\'Angelo Russell': 'allstar',
  'Julius Randle': 'allstar',
  'Jaren Jackson Jr.': 'allstar',
  'Scottie Barnes': 'allstar',
  'Franz Wagner': 'allstar',
  'Jalen Green': 'allstar',
  'Desmond Bane': 'allstar',
  'Anfernee Simons': 'allstar',
};

async function generateStatsForAllPlayers() {
  let connection;

  try {
    // Connexion à la base de données
    connection = await mysql.createConnection({
      host: process.env.DB_HOST,
      port: process.env.DB_PORT,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME
    });

    console.log('✅ Connexion à la base de données réussie');

    // Récupérer tous les joueurs
    const [players] = await connection.execute(
      'SELECT id, display_name, position FROM players ORDER BY id'
    );

    console.log(`📊 ${players.length} joueurs trouvés dans la base de données`);

    // Vérifier quels joueurs ont déjà des stats
    const [existingStats] = await connection.execute(
      'SELECT DISTINCT player_id FROM player_stats'
    );
    const playersWithStats = new Set(existingStats.map(row => row.player_id));

    // Générer le SQL
    let sql = `-- ============================================
-- NBA API - Statistiques des joueurs (générées automatiquement)
-- 10 derniers matchs pour ${players.length} joueurs
-- ============================================

`;

    let newStatsCount = 0;
    let skippedCount = 0;

    for (const player of players) {
      // Skip si le joueur a déjà des stats
      if (playersWithStats.has(player.id)) {
        skippedCount++;
        continue;
      }

      // Déterminer le tier du joueur
      let tier = 'role'; // Par défaut
      if (playerTiers[player.display_name]) {
        tier = playerTiers[player.display_name];
      } else {
        // Heuristique simple: premiers joueurs de chaque équipe = starters
        tier = 'starter';
      }

      const stats = generateRealisticStats(player.display_name, player.position, tier);

      sql += `-- ${player.display_name} (${player.position}) - Tier: ${tier}\n`;

      for (const game of stats) {
        sql += `INSERT INTO player_stats (player_id, season_id, points, rebounds, assists, steals, blocks, field_goals_made, field_goals_attempted, three_pointers_made, three_pointers_attempted, free_throws_made, free_throws_attempted)
VALUES (${player.id}, 1, ${game.PTS}, ${game.REB}, ${game.AST}, ${game.STL}, ${game.BLK}, ${game.FG}, ${game.FGA}, ${game['3P']}, ${game['3PA']}, ${game.FT}, ${game.FTA});\n`;
        newStatsCount++;
      }
      sql += '\n';
    }

    sql += `-- ============================================
-- Vérification
-- ============================================
SELECT
    '✅ Statistiques générées avec succès!' AS message,
    COUNT(*) as total_stats,
    COUNT(DISTINCT player_id) as total_players
FROM player_stats;
`;

    // Écrire le fichier
    const outputPath = path.join(__dirname, '../database/init/09-populate-new-player-stats.sql');
    fs.writeFileSync(outputPath, sql, 'utf8');

    console.log(`✅ Fichier SQL généré: ${outputPath}`);
    console.log(`📊 ${players.length - skippedCount} nouveaux joueurs × 10 matchs = ${newStatsCount} nouvelles statistiques`);
    console.log(`⏭️  ${skippedCount} joueurs avec stats existantes (ignorés)`);

    await connection.end();
  } catch (error) {
    console.error('❌ Erreur:', error);
    if (connection) await connection.end();
    process.exit(1);
  }
}

// Exécuter le script
generateStatsForAllPlayers();
