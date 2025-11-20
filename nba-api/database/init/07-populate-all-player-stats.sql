-- ============================================
-- NBA API - Statistiques des joueurs (10 derniers matchs)
-- Généré automatiquement
-- ============================================

SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);


-- Statistiques pour LeBron James (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  24, 10, 7, 2, 1,
  8, 18,
  3, 4,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  29, 11, 5, 1, 2,
  13, 20,
  4, 8,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  28, 10, 8, 2, 0,
  10, 19,
  2, 8,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  20, 12, 5, 1, 1,
  8, 21,
  1, 8,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  29, 11, 8, 1, 2,
  9, 22,
  1, 7,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  24, 8, 5, 2, 1,
  12, 19,
  1, 8,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  27, 7, 6, 1, 1,
  8, 17,
  1, 8,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  29, 9, 6, 1, 1,
  8, 17,
  1, 9,
  7, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  24, 8, 5, 1, 0,
  11, 18,
  1, 5,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  1,
  @season_id,
  NULL,
  1,
  23, 12, 6, 2, 0,
  13, 16,
  4, 7,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 1
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Stephen Curry (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  22, 4, 7, 2, 0,
  11, 20,
  4, 12,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  28, 7, 11, 1, 0,
  9, 20,
  2, 10,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  24, 4, 10, 1, 1,
  8, 24,
  4, 6,
  7, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  32, 4, 7, 1, 0,
  11, 18,
  4, 8,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  24, 4, 10, 2, 1,
  11, 19,
  3, 10,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  24, 5, 8, 2, 1,
  11, 18,
  4, 12,
  8, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  23, 7, 9, 1, 0,
  14, 23,
  2, 8,
  4, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  22, 4, 6, 2, 0,
  8, 22,
  3, 11,
  7, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  29, 5, 10, 1, 0,
  14, 17,
  2, 8,
  5, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  2,
  @season_id,
  NULL,
  1,
  22, 7, 9, 1, 1,
  11, 19,
  4, 7,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 2
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Giannis Antetokounmpo (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  20, 9, 7, 2, 1,
  9, 22,
  3, 4,
  6, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  27, 9, 4, 1, 0,
  10, 17,
  4, 6,
  7, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  30, 12, 8, 2, 1,
  10, 20,
  3, 5,
  6, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  23, 7, 6, 1, 0,
  10, 20,
  1, 5,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  26, 12, 6, 2, 0,
  9, 22,
  1, 5,
  4, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  20, 10, 5, 1, 1,
  13, 16,
  1, 7,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  25, 11, 4, 1, 2,
  12, 17,
  2, 8,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  21, 7, 8, 2, 0,
  9, 17,
  3, 8,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  29, 11, 5, 1, 0,
  10, 17,
  1, 6,
  6, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  3,
  @season_id,
  NULL,
  1,
  22, 8, 5, 1, 2,
  8, 17,
  2, 7,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 3
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Ryan Fonseca (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  13, 2, 3, 0, 0,
  6, 11,
  1, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  15, 4, 5, 1, 0,
  3, 13,
  2, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  13, 2, 4, 1, 1,
  6, 9,
  1, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  12, 4, 2, 0, 0,
  3, 13,
  3, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  10, 2, 2, 0, 1,
  6, 14,
  1, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  13, 2, 5, 0, 1,
  6, 9,
  3, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  13, 2, 3, 1, 1,
  3, 10,
  2, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  12, 2, 3, 1, 0,
  6, 13,
  2, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  10, 3, 3, 0, 0,
  5, 9,
  3, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  4,
  @season_id,
  NULL,
  1,
  15, 3, 4, 0, 1,
  4, 13,
  3, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 4
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Kevin Durant (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  30, 8, 6, 2, 1,
  10, 21,
  3, 8,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  29, 8, 4, 1, 0,
  13, 22,
  2, 5,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  23, 11, 6, 1, 0,
  10, 16,
  1, 6,
  7, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  25, 9, 7, 1, 0,
  11, 18,
  1, 8,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  21, 11, 7, 1, 2,
  13, 17,
  4, 8,
  6, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  27, 8, 8, 1, 2,
  13, 22,
  4, 8,
  7, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  23, 12, 6, 1, 0,
  11, 15,
  4, 5,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  30, 7, 6, 2, 1,
  10, 18,
  3, 4,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  23, 9, 6, 1, 1,
  10, 19,
  1, 4,
  7, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  5,
  @season_id,
  NULL,
  1,
  28, 10, 6, 2, 1,
  12, 15,
  4, 8,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 5
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Luka Doncic (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  28, 7, 10, 2, 1,
  9, 18,
  4, 11,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  25, 3, 6, 2, 0,
  12, 24,
  5, 9,
  5, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  31, 6, 6, 1, 0,
  14, 22,
  2, 10,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  30, 6, 6, 2, 0,
  10, 16,
  4, 12,
  4, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  29, 6, 10, 2, 0,
  13, 16,
  2, 12,
  5, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  29, 4, 7, 1, 1,
  10, 19,
  2, 8,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  27, 4, 6, 1, 0,
  8, 23,
  2, 7,
  8, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  31, 3, 9, 2, 0,
  13, 17,
  3, 6,
  7, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  23, 4, 9, 1, 1,
  10, 18,
  4, 9,
  7, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  6,
  @season_id,
  NULL,
  1,
  24, 5, 9, 2, 1,
  14, 22,
  2, 10,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 6
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Nikola Jokic (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  19, 15, 4, 1, 2,
  8, 15,
  1, 3,
  6, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  28, 15, 4, 1, 1,
  9, 15,
  0, 2,
  8, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  20, 15, 2, 1, 2,
  9, 14,
  0, 2,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  23, 13, 5, 0, 2,
  9, 14,
  1, 2,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  18, 12, 5, 0, 2,
  12, 18,
  0, 2,
  8, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  22, 15, 6, 1, 2,
  9, 14,
  1, 3,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  26, 13, 2, 1, 3,
  9, 17,
  0, 1,
  7, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  27, 11, 3, 1, 2,
  9, 16,
  1, 4,
  7, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  22, 15, 4, 1, 1,
  8, 18,
  2, 3,
  8, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  7,
  @season_id,
  NULL,
  1,
  24, 13, 4, 1, 3,
  10, 15,
  1, 4,
  7, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 7
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Joel Embiid (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  27, 13, 4, 1, 2,
  12, 14,
  1, 3,
  8, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  19, 14, 2, 1, 3,
  11, 17,
  0, 2,
  8, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  23, 13, 2, 0, 1,
  9, 14,
  2, 1,
  7, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  25, 10, 3, 1, 2,
  7, 13,
  2, 3,
  4, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  20, 10, 5, 0, 3,
  7, 17,
  2, 4,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  27, 13, 2, 1, 1,
  7, 15,
  0, 0,
  6, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  22, 12, 6, 1, 3,
  12, 16,
  2, 1,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  23, 15, 4, 1, 3,
  10, 12,
  2, 3,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  18, 15, 5, 1, 2,
  9, 13,
  1, 1,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  8,
  @season_id,
  NULL,
  1,
  18, 12, 5, 0, 1,
  11, 13,
  1, 4,
  8, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 8
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jayson Tatum (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  24, 10, 7, 1, 0,
  11, 22,
  4, 5,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  21, 12, 6, 2, 1,
  8, 15,
  3, 8,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  26, 9, 4, 1, 2,
  12, 21,
  1, 8,
  7, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  21, 7, 4, 1, 2,
  8, 21,
  4, 4,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  23, 8, 7, 2, 0,
  11, 21,
  3, 6,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  21, 11, 8, 1, 1,
  9, 17,
  3, 6,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  24, 7, 4, 1, 1,
  12, 22,
  3, 7,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  27, 12, 8, 1, 1,
  10, 21,
  3, 4,
  5, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  28, 10, 7, 1, 0,
  10, 19,
  3, 7,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  9,
  @season_id,
  NULL,
  1,
  27, 12, 7, 1, 2,
  10, 18,
  3, 5,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 9
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Shai Gilgeous-Alexander (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  23, 6, 7, 2, 1,
  12, 24,
  2, 11,
  6, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  31, 3, 8, 2, 0,
  10, 18,
  3, 11,
  4, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  27, 5, 10, 2, 0,
  8, 24,
  4, 8,
  4, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  30, 4, 6, 1, 0,
  9, 22,
  4, 10,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  31, 7, 10, 1, 0,
  11, 20,
  4, 6,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  32, 3, 7, 2, 0,
  14, 21,
  4, 7,
  5, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  22, 7, 7, 1, 0,
  13, 21,
  3, 10,
  7, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  31, 4, 9, 1, 1,
  9, 16,
  2, 11,
  5, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  30, 7, 10, 1, 0,
  13, 22,
  2, 6,
  4, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  10,
  @season_id,
  NULL,
  1,
  31, 5, 6, 2, 1,
  12, 16,
  4, 6,
  5, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 10
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Anthony Edwards (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  31, 4, 8, 1, 0,
  11, 20,
  3, 11,
  5, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  27, 5, 11, 2, 0,
  12, 19,
  5, 7,
  8, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  29, 3, 10, 2, 0,
  13, 22,
  3, 10,
  8, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  22, 3, 11, 2, 0,
  12, 18,
  2, 10,
  6, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  28, 5, 9, 1, 0,
  11, 18,
  4, 9,
  6, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  22, 3, 10, 2, 0,
  8, 18,
  3, 10,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  32, 4, 9, 1, 1,
  14, 21,
  4, 7,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  27, 6, 8, 1, 0,
  13, 20,
  5, 8,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  23, 7, 10, 1, 0,
  13, 24,
  5, 8,
  4, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  11,
  @season_id,
  NULL,
  1,
  25, 5, 8, 1, 1,
  12, 22,
  4, 7,
  7, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 11
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Ja Morant (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  25, 5, 8, 1, 1,
  8, 20,
  2, 8,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  25, 5, 9, 2, 0,
  11, 15,
  3, 9,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  20, 6, 5, 1, 0,
  7, 17,
  3, 5,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  20, 5, 9, 2, 0,
  7, 20,
  2, 5,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  25, 3, 5, 1, 1,
  10, 16,
  4, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  25, 4, 6, 2, 1,
  9, 20,
  3, 8,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  23, 4, 7, 1, 0,
  8, 20,
  3, 9,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  19, 6, 9, 2, 1,
  9, 16,
  4, 10,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  24, 6, 7, 1, 1,
  8, 15,
  2, 8,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  12,
  @season_id,
  NULL,
  1,
  26, 5, 8, 2, 0,
  11, 18,
  2, 10,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 12
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Victor Wembanyama (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  15, 8, 3, 1, 2,
  6, 15,
  1, 0,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  14, 13, 5, 1, 2,
  9, 12,
  1, 1,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  22, 13, 2, 1, 2,
  10, 15,
  0, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  16, 13, 4, 1, 2,
  8, 14,
  1, 0,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  16, 13, 5, 1, 1,
  10, 14,
  0, 1,
  6, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  15, 10, 4, 0, 1,
  10, 16,
  1, 0,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  14, 9, 5, 0, 1,
  6, 14,
  0, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  16, 8, 5, 0, 2,
  6, 11,
  1, 2,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  18, 10, 5, 0, 2,
  7, 16,
  1, 0,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  13,
  @season_id,
  NULL,
  1,
  15, 9, 2, 0, 2,
  10, 11,
  1, 3,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 13
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Chet Holmgren (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  19, 11, 4, 0, 1,
  10, 13,
  1, 0,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  19, 13, 5, 0, 2,
  6, 16,
  1, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  14, 11, 2, 0, 1,
  6, 16,
  1, 0,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  15, 13, 5, 1, 1,
  6, 13,
  0, 2,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  20, 11, 3, 1, 1,
  7, 16,
  1, 0,
  3, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  22, 9, 4, 1, 1,
  7, 10,
  1, 1,
  3, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  17, 12, 5, 1, 1,
  9, 16,
  1, 0,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  15, 10, 3, 1, 2,
  7, 16,
  0, 1,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  21, 12, 3, 0, 1,
  8, 11,
  1, 3,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  14,
  @season_id,
  NULL,
  1,
  18, 10, 3, 1, 1,
  7, 10,
  1, 2,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 14
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Bam Adebayo (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  21, 11, 3, 0, 1,
  6, 13,
  0, 0,
  6, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  15, 10, 3, 0, 2,
  10, 10,
  0, 3,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  17, 9, 2, 1, 2,
  9, 11,
  1, 2,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  15, 11, 5, 1, 2,
  7, 10,
  1, 2,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  17, 8, 4, 1, 1,
  9, 15,
  1, 2,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  17, 9, 5, 0, 2,
  8, 15,
  1, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  14, 8, 3, 1, 2,
  8, 16,
  1, 0,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  15, 13, 4, 1, 1,
  7, 14,
  1, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  16, 8, 3, 0, 2,
  10, 12,
  1, 1,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  15,
  @season_id,
  NULL,
  1,
  18, 11, 5, 0, 1,
  10, 14,
  1, 2,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 15
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Donovan Mitchell (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  25, 3, 7, 1, 0,
  7, 14,
  3, 10,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  19, 4, 9, 2, 1,
  11, 15,
  2, 10,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  26, 5, 7, 1, 0,
  10, 18,
  2, 5,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  25, 4, 8, 2, 1,
  11, 14,
  2, 6,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  21, 3, 8, 1, 0,
  10, 17,
  4, 8,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  19, 4, 6, 1, 1,
  11, 16,
  4, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  22, 6, 7, 1, 1,
  11, 14,
  3, 10,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  18, 3, 8, 1, 0,
  7, 14,
  4, 6,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  26, 4, 6, 2, 1,
  10, 17,
  2, 8,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  16,
  @season_id,
  NULL,
  1,
  25, 3, 8, 1, 1,
  8, 18,
  3, 8,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 16
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Zion Williamson (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  23, 7, 3, 1, 0,
  7, 15,
  3, 3,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  22, 10, 4, 1, 1,
  7, 17,
  2, 5,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  18, 9, 5, 1, 1,
  7, 14,
  1, 7,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  16, 8, 5, 2, 0,
  8, 15,
  2, 7,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  18, 9, 5, 2, 0,
  10, 14,
  2, 4,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  22, 9, 6, 1, 0,
  8, 15,
  3, 3,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  22, 9, 4, 1, 1,
  8, 14,
  1, 4,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  21, 7, 5, 2, 1,
  10, 13,
  2, 7,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  19, 9, 5, 1, 1,
  10, 13,
  2, 7,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  17,
  @season_id,
  NULL,
  1,
  23, 9, 5, 2, 0,
  10, 13,
  3, 6,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 17
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Devin Booker (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  32, 5, 7, 2, 1,
  11, 16,
  5, 12,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  29, 5, 7, 2, 1,
  8, 18,
  4, 7,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  26, 6, 6, 2, 0,
  11, 19,
  4, 6,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  31, 3, 9, 2, 0,
  10, 17,
  4, 6,
  8, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  28, 4, 7, 1, 0,
  11, 19,
  4, 12,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  32, 6, 6, 2, 1,
  8, 20,
  2, 7,
  7, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  26, 6, 10, 1, 0,
  12, 22,
  4, 11,
  7, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  25, 7, 8, 2, 0,
  8, 17,
  3, 7,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  31, 4, 10, 1, 1,
  10, 17,
  2, 7,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  18,
  @season_id,
  NULL,
  1,
  27, 5, 6, 2, 1,
  10, 17,
  5, 10,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 18
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Kawhi Leonard (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  22, 7, 3, 2, 1,
  6, 16,
  3, 4,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  16, 8, 4, 1, 0,
  9, 16,
  1, 5,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  17, 8, 4, 1, 1,
  8, 17,
  1, 3,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  23, 10, 6, 1, 1,
  6, 17,
  3, 6,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  16, 9, 3, 2, 0,
  10, 16,
  2, 5,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  17, 6, 6, 2, 0,
  10, 14,
  3, 3,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  23, 10, 5, 1, 0,
  10, 16,
  1, 7,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  18, 6, 5, 1, 0,
  10, 14,
  1, 7,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  19, 9, 4, 2, 0,
  6, 15,
  1, 4,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  19,
  @season_id,
  NULL,
  1,
  23, 6, 6, 1, 1,
  7, 15,
  2, 5,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 19
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Trae Young (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  18, 5, 9, 2, 0,
  9, 17,
  3, 10,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  25, 5, 6, 1, 1,
  11, 19,
  4, 9,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  26, 6, 5, 2, 0,
  8, 15,
  4, 8,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  19, 5, 5, 2, 0,
  8, 17,
  2, 7,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  21, 6, 5, 1, 0,
  10, 16,
  3, 10,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  25, 6, 8, 1, 0,
  7, 19,
  4, 5,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  23, 5, 9, 1, 0,
  7, 17,
  3, 6,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  26, 3, 5, 1, 1,
  7, 17,
  2, 9,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  26, 4, 5, 2, 0,
  8, 14,
  3, 9,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  20,
  @season_id,
  NULL,
  1,
  20, 3, 5, 1, 0,
  8, 18,
  3, 5,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 20
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Chris Paul (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  11, 4, 2, 0, 1,
  4, 13,
  2, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  9, 2, 4, 0, 0,
  6, 12,
  1, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  12, 4, 3, 1, 0,
  3, 11,
  1, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  15, 4, 4, 0, 0,
  3, 12,
  1, 3,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  13, 4, 3, 1, 0,
  5, 8,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  12, 3, 5, 1, 0,
  3, 12,
  1, 3,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  14, 3, 3, 1, 0,
  5, 12,
  1, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  10, 2, 3, 0, 1,
  6, 11,
  2, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  10, 3, 3, 1, 0,
  6, 8,
  3, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  21,
  @season_id,
  NULL,
  1,
  9, 3, 5, 0, 0,
  5, 8,
  2, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 21
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Karl-Anthony Towns (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  9, 7, 1, 1, 1,
  6, 7,
  0, 0,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  12, 11, 3, 0, 2,
  4, 10,
  1, 0,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  10, 11, 3, 0, 1,
  6, 8,
  0, 1,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  14, 8, 1, 1, 1,
  6, 8,
  1, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  14, 11, 4, 0, 2,
  5, 7,
  0, 2,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  11, 11, 4, 0, 2,
  5, 7,
  1, 1,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  8, 7, 4, 0, 1,
  4, 11,
  1, 0,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  9, 9, 4, 0, 2,
  7, 9,
  1, 1,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  12, 6, 3, 0, 1,
  5, 7,
  1, 2,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  22,
  @season_id,
  NULL,
  1,
  14, 11, 2, 1, 1,
  5, 13,
  0, 2,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 22
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Brandon Ingram (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  10, 7, 2, 0, 1,
  8, 15,
  2, 6,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  14, 7, 3, 0, 1,
  8, 13,
  1, 6,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  15, 8, 4, 1, 0,
  6, 12,
  2, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  13, 5, 3, 0, 1,
  7, 11,
  2, 6,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  12, 4, 4, 1, 1,
  7, 10,
  2, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  14, 7, 2, 1, 0,
  8, 14,
  1, 2,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  15, 5, 3, 1, 1,
  4, 14,
  2, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  14, 4, 5, 1, 1,
  6, 10,
  2, 5,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  15, 7, 5, 0, 0,
  4, 12,
  1, 2,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  23,
  @season_id,
  NULL,
  1,
  15, 7, 5, 1, 0,
  8, 10,
  1, 2,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 23
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Draymond Green (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  11, 3, 3, 0, 0,
  3, 9,
  2, 1,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  12, 6, 1, 1, 1,
  6, 9,
  2, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  8, 5, 1, 0, 0,
  6, 9,
  2, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  9, 6, 3, 1, 1,
  5, 10,
  2, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  8, 5, 2, 1, 1,
  6, 7,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  9, 4, 1, 0, 1,
  3, 10,
  0, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  6, 4, 1, 0, 1,
  4, 7,
  2, 2,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  12, 5, 1, 1, 0,
  3, 7,
  1, 1,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  8, 5, 1, 0, 0,
  5, 12,
  2, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  24,
  @season_id,
  NULL,
  1,
  7, 5, 3, 1, 0,
  6, 10,
  2, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 24
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Pascal Siakam (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  18, 7, 2, 1, 0,
  6, 15,
  2, 5,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  11, 5, 4, 1, 1,
  5, 11,
  1, 5,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  17, 5, 5, 0, 1,
  5, 11,
  1, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  17, 7, 2, 1, 1,
  5, 9,
  3, 6,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  14, 6, 4, 0, 0,
  5, 10,
  3, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  15, 6, 4, 0, 0,
  8, 11,
  1, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  15, 8, 2, 0, 1,
  8, 14,
  2, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  17, 7, 3, 1, 0,
  8, 13,
  1, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  11, 5, 2, 1, 0,
  8, 9,
  3, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  25,
  @season_id,
  NULL,
  1,
  10, 7, 2, 1, 0,
  5, 14,
  1, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 25
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Julius Randle (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  14, 6, 5, 1, 1,
  8, 10,
  3, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  17, 4, 4, 1, 0,
  8, 14,
  3, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  17, 4, 3, 1, 1,
  5, 11,
  1, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  12, 5, 3, 0, 1,
  8, 13,
  1, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  10, 4, 2, 0, 0,
  8, 13,
  3, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  12, 5, 5, 1, 0,
  6, 13,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  15, 8, 3, 1, 0,
  7, 14,
  2, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  18, 8, 2, 1, 0,
  4, 9,
  2, 3,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  12, 4, 2, 1, 0,
  6, 10,
  1, 6,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  26,
  @season_id,
  NULL,
  1,
  12, 5, 5, 1, 1,
  4, 12,
  2, 5,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 26
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Derrick White (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  12, 4, 4, 0, 0,
  7, 16,
  2, 6,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  18, 5, 6, 0, 0,
  6, 13,
  3, 5,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  20, 4, 4, 2, 0,
  6, 14,
  2, 8,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  18, 2, 4, 2, 1,
  8, 14,
  1, 4,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  18, 3, 7, 1, 1,
  8, 14,
  1, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  13, 4, 6, 1, 0,
  9, 11,
  3, 7,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  19, 5, 7, 0, 1,
  8, 12,
  1, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  13, 3, 3, 2, 0,
  7, 11,
  1, 8,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  20, 3, 6, 2, 1,
  8, 14,
  2, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  27,
  @season_id,
  NULL,
  1,
  18, 2, 6, 1, 0,
  7, 17,
  1, 8,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 27
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jrue Holiday (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  14, 5, 4, 0, 0,
  6, 13,
  3, 8,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  14, 4, 7, 1, 1,
  5, 15,
  1, 7,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  16, 2, 7, 2, 1,
  6, 12,
  2, 7,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  12, 3, 6, 1, 0,
  5, 15,
  1, 4,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  19, 4, 7, 2, 0,
  5, 17,
  2, 7,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  17, 5, 4, 2, 0,
  8, 17,
  1, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  20, 3, 7, 0, 1,
  8, 11,
  2, 6,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  20, 4, 6, 2, 1,
  9, 15,
  3, 8,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  14, 4, 5, 2, 0,
  8, 13,
  3, 4,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  28,
  @season_id,
  NULL,
  1,
  13, 4, 6, 0, 1,
  6, 14,
  2, 5,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 28
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Kristaps Porzingis (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  13, 9, 2, 1, 2,
  5, 11,
  0, 0,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  8, 8, 4, 0, 2,
  4, 7,
  0, 0,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  10, 6, 4, 0, 1,
  6, 13,
  0, 0,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  14, 6, 1, 1, 1,
  5, 9,
  1, 1,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  12, 9, 2, 0, 1,
  6, 7,
  1, 0,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  11, 11, 1, 0, 2,
  4, 11,
  0, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  15, 7, 4, 0, 1,
  4, 9,
  1, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  8, 9, 4, 1, 2,
  7, 12,
  1, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  13, 11, 2, 0, 2,
  5, 7,
  1, 2,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  29,
  @season_id,
  NULL,
  1,
  12, 11, 3, 1, 1,
  5, 8,
  1, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 29
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Al Horford (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  8, 9, 3, 0, 1,
  5, 9,
  1, 0,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  6, 8, 2, 0, 0,
  3, 8,
  1, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  12, 7, 1, 1, 2,
  5, 10,
  1, 0,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  10, 5, 1, 0, 0,
  5, 9,
  0, 2,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  5, 6, 1, 1, 1,
  5, 10,
  0, 1,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  11, 4, 1, 0, 0,
  2, 10,
  1, 1,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  8, 9, 1, 1, 0,
  5, 7,
  0, 0,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  11, 7, 1, 0, 0,
  4, 5,
  1, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  11, 6, 2, 1, 1,
  2, 7,
  1, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  30,
  @season_id,
  NULL,
  1,
  9, 6, 1, 1, 1,
  3, 9,
  0, 0,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 30
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jalen Williams (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  18, 4, 5, 1, 1,
  7, 9,
  1, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  16, 4, 4, 0, 0,
  5, 12,
  1, 2,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  11, 8, 3, 1, 1,
  5, 11,
  1, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  18, 8, 2, 1, 1,
  7, 11,
  1, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  13, 4, 3, 1, 0,
  4, 13,
  3, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  12, 5, 4, 0, 0,
  6, 13,
  2, 6,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  18, 8, 5, 0, 1,
  4, 9,
  3, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  14, 6, 2, 1, 1,
  7, 12,
  3, 2,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  16, 6, 5, 0, 1,
  5, 12,
  3, 6,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  31,
  @season_id,
  NULL,
  1,
  11, 5, 2, 0, 1,
  4, 15,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 31
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Josh Giddey (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  8, 3, 2, 0, 0,
  3, 12,
  1, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  15, 4, 5, 1, 0,
  3, 12,
  1, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  15, 4, 3, 1, 1,
  5, 9,
  2, 7,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  13, 4, 2, 0, 1,
  3, 12,
  1, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  15, 4, 2, 1, 0,
  5, 9,
  3, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  13, 4, 2, 0, 1,
  6, 8,
  3, 6,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  12, 3, 2, 0, 0,
  5, 12,
  3, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  12, 3, 4, 1, 1,
  5, 12,
  1, 7,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  12, 2, 2, 1, 0,
  4, 10,
  1, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  32,
  @season_id,
  NULL,
  1,
  11, 4, 3, 0, 0,
  5, 12,
  1, 7,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 32
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Luguentz Dort (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  11, 4, 4, 1, 1,
  3, 8,
  3, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  9, 4, 4, 1, 1,
  6, 9,
  2, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  15, 2, 3, 1, 1,
  5, 12,
  2, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  10, 4, 4, 1, 1,
  4, 9,
  3, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  12, 3, 2, 1, 1,
  5, 9,
  3, 7,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  8, 4, 2, 0, 1,
  6, 8,
  2, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  12, 3, 4, 1, 0,
  5, 10,
  2, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  9, 2, 4, 0, 1,
  6, 11,
  1, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  10, 3, 4, 1, 1,
  5, 13,
  1, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  33,
  @season_id,
  NULL,
  1,
  11, 2, 5, 0, 0,
  6, 9,
  1, 7,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 33
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jamal Murray (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  13, 2, 3, 1, 1,
  6, 11,
  2, 4,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  13, 3, 3, 0, 1,
  9, 17,
  3, 7,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  12, 3, 3, 0, 1,
  7, 16,
  2, 5,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  18, 5, 3, 0, 1,
  6, 13,
  1, 5,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  12, 4, 3, 2, 0,
  6, 14,
  1, 7,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  12, 4, 4, 0, 1,
  9, 15,
  3, 7,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  13, 3, 4, 2, 0,
  5, 14,
  2, 4,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  16, 2, 3, 1, 1,
  5, 16,
  3, 7,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  14, 2, 3, 2, 0,
  6, 17,
  1, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  34,
  @season_id,
  NULL,
  1,
  18, 5, 5, 2, 0,
  7, 12,
  3, 6,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 34
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Michael Porter Jr. (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  15, 6, 5, 1, 0,
  8, 10,
  2, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  17, 5, 3, 1, 0,
  4, 13,
  3, 5,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  13, 5, 4, 1, 0,
  8, 13,
  2, 6,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  13, 5, 2, 1, 1,
  7, 10,
  1, 2,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  13, 7, 4, 0, 0,
  7, 12,
  2, 4,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  12, 8, 3, 0, 0,
  4, 14,
  2, 4,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  14, 7, 2, 0, 1,
  5, 15,
  3, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  15, 6, 3, 0, 1,
  4, 11,
  2, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  15, 4, 4, 1, 0,
  7, 10,
  2, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  35,
  @season_id,
  NULL,
  1,
  15, 6, 5, 0, 0,
  4, 11,
  2, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 35
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Aaron Gordon (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  10, 4, 2, 0, 0,
  8, 13,
  3, 2,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  17, 6, 2, 0, 1,
  4, 10,
  2, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  10, 8, 4, 1, 1,
  6, 13,
  2, 2,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  15, 8, 3, 1, 1,
  6, 11,
  1, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  17, 6, 3, 1, 0,
  4, 13,
  3, 6,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  11, 6, 5, 0, 0,
  7, 9,
  3, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  14, 7, 4, 1, 0,
  4, 14,
  1, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  11, 7, 2, 0, 1,
  4, 9,
  3, 5,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  15, 6, 4, 0, 0,
  4, 10,
  2, 6,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  36,
  @season_id,
  NULL,
  1,
  18, 5, 4, 0, 1,
  5, 14,
  2, 5,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 36
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Rudy Gobert (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  15, 6, 1, 0, 1,
  4, 8,
  0, 2,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  10, 7, 1, 0, 1,
  5, 12,
  0, 2,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  9, 11, 2, 0, 2,
  5, 13,
  0, 0,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  9, 8, 4, 0, 1,
  6, 12,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  9, 6, 1, 0, 2,
  7, 9,
  0, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  16, 11, 2, 0, 1,
  5, 12,
  0, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  12, 8, 4, 1, 1,
  5, 13,
  0, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  15, 8, 3, 0, 2,
  6, 9,
  1, 2,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  16, 11, 2, 1, 2,
  4, 7,
  1, 2,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  37,
  @season_id,
  NULL,
  1,
  15, 7, 4, 0, 1,
  5, 13,
  0, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 37
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Mike Conley (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  11, 4, 2, 0, 0,
  3, 13,
  1, 7,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  10, 4, 4, 1, 1,
  3, 8,
  2, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  9, 3, 3, 1, 1,
  4, 13,
  1, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  13, 4, 4, 0, 1,
  4, 8,
  1, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  11, 3, 4, 1, 0,
  6, 11,
  3, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  12, 2, 2, 0, 0,
  3, 9,
  3, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  8, 4, 3, 0, 1,
  4, 8,
  2, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  9, 4, 4, 1, 0,
  6, 14,
  2, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  13, 3, 5, 0, 0,
  5, 11,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  38,
  @season_id,
  NULL,
  1,
  15, 3, 5, 1, 1,
  6, 14,
  1, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 38
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Naz Reid (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  12, 6, 3, 1, 1,
  4, 7,
  1, 1,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  8, 6, 3, 0, 2,
  4, 10,
  1, 0,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  12, 9, 1, 1, 1,
  4, 8,
  0, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  12, 4, 1, 1, 1,
  5, 10,
  1, 0,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  11, 9, 1, 1, 2,
  3, 5,
  1, 1,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  11, 6, 2, 1, 0,
  4, 5,
  1, 0,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  12, 9, 1, 0, 2,
  4, 9,
  0, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  7, 8, 1, 0, 2,
  5, 9,
  1, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  6, 6, 1, 0, 0,
  5, 10,
  0, 2,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  39,
  @season_id,
  NULL,
  1,
  5, 8, 2, 0, 0,
  4, 10,
  1, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 39
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Paul George (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  21, 8, 4, 1, 0,
  8, 13,
  3, 7,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  17, 10, 3, 1, 1,
  6, 14,
  1, 4,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  19, 9, 4, 2, 0,
  8, 15,
  3, 7,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  22, 10, 3, 1, 0,
  8, 14,
  2, 4,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  20, 8, 6, 2, 1,
  9, 15,
  1, 3,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  22, 10, 6, 2, 0,
  7, 15,
  3, 5,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  18, 7, 6, 2, 1,
  8, 18,
  3, 6,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  16, 9, 4, 2, 1,
  8, 15,
  3, 5,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  21, 8, 6, 2, 0,
  10, 15,
  1, 6,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  40,
  @season_id,
  NULL,
  1,
  19, 7, 4, 2, 0,
  8, 16,
  2, 6,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 40
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour James Harden (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  19, 6, 8, 2, 1,
  9, 17,
  3, 7,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  25, 4, 8, 1, 1,
  11, 15,
  4, 6,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  23, 6, 6, 2, 1,
  11, 16,
  4, 5,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  18, 4, 6, 1, 1,
  9, 18,
  2, 5,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  22, 6, 8, 1, 0,
  11, 18,
  3, 10,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  20, 3, 8, 1, 0,
  11, 14,
  2, 8,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  23, 5, 7, 2, 1,
  10, 16,
  3, 9,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  26, 6, 5, 1, 0,
  7, 19,
  4, 5,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  22, 5, 6, 2, 0,
  7, 17,
  4, 10,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  41,
  @season_id,
  NULL,
  1,
  24, 3, 8, 1, 1,
  9, 16,
  4, 9,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 41
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Russell Westbrook (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  12, 4, 5, 1, 1,
  6, 8,
  1, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  8, 3, 2, 0, 1,
  4, 12,
  3, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  10, 3, 5, 0, 1,
  6, 10,
  3, 7,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  14, 3, 5, 1, 0,
  6, 13,
  1, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  8, 4, 2, 1, 1,
  3, 8,
  3, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  8, 2, 2, 1, 0,
  6, 10,
  2, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  10, 3, 4, 0, 0,
  5, 13,
  1, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  10, 4, 5, 1, 0,
  4, 11,
  1, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  12, 4, 3, 0, 0,
  6, 13,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  42,
  @season_id,
  NULL,
  1,
  12, 4, 3, 0, 0,
  5, 11,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 42
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Ivica Zubac (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  6, 5, 2, 0, 0,
  2, 9,
  1, 0,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  8, 5, 2, 0, 0,
  5, 8,
  0, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  6, 5, 2, 1, 2,
  3, 8,
  0, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  9, 6, 1, 1, 0,
  3, 8,
  1, 0,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  8, 6, 3, 0, 2,
  5, 6,
  0, 1,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  9, 8, 3, 0, 1,
  3, 7,
  0, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  12, 7, 1, 0, 0,
  2, 5,
  0, 0,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  5, 9, 1, 1, 1,
  2, 10,
  1, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  8, 5, 3, 1, 0,
  2, 10,
  0, 2,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  43,
  @season_id,
  NULL,
  1,
  12, 7, 1, 0, 1,
  2, 10,
  1, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 43
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Kyrie Irving (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  24, 6, 6, 1, 1,
  7, 20,
  2, 10,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  22, 3, 6, 2, 1,
  8, 17,
  3, 9,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  26, 5, 7, 2, 0,
  10, 14,
  3, 8,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  23, 6, 7, 1, 0,
  11, 17,
  2, 10,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  20, 4, 7, 2, 0,
  8, 20,
  4, 5,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  19, 6, 6, 2, 0,
  10, 14,
  3, 6,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  26, 5, 8, 1, 0,
  7, 15,
  4, 6,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  22, 3, 7, 2, 1,
  7, 16,
  4, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  19, 4, 9, 1, 0,
  9, 14,
  2, 6,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  44,
  @season_id,
  NULL,
  1,
  23, 6, 5, 2, 0,
  9, 14,
  2, 7,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 44
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Dereck Lively II (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  6, 6, 3, 0, 0,
  3, 9,
  0, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  7, 8, 1, 0, 0,
  5, 5,
  0, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  10, 5, 1, 1, 2,
  4, 9,
  0, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  11, 7, 2, 1, 2,
  3, 10,
  1, 1,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  12, 7, 2, 1, 2,
  5, 5,
  0, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  10, 9, 3, 1, 2,
  5, 9,
  0, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  9, 6, 2, 1, 0,
  5, 6,
  0, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  5, 4, 2, 1, 1,
  4, 6,
  1, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  5, 5, 1, 0, 2,
  4, 5,
  0, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  45,
  @season_id,
  NULL,
  1,
  10, 9, 2, 0, 1,
  4, 6,
  0, 0,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 45
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Tim Hardaway Jr. (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  15, 4, 2, 1, 0,
  5, 11,
  3, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  11, 4, 4, 1, 1,
  5, 14,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  13, 4, 4, 1, 1,
  3, 8,
  2, 7,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  10, 3, 4, 0, 1,
  4, 14,
  3, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  12, 3, 5, 1, 0,
  4, 12,
  3, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  14, 4, 4, 1, 1,
  4, 11,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  11, 2, 4, 1, 0,
  3, 9,
  1, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  14, 3, 4, 0, 1,
  6, 12,
  2, 6,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  8, 4, 3, 1, 1,
  3, 14,
  3, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  46,
  @season_id,
  NULL,
  1,
  9, 4, 5, 0, 1,
  3, 10,
  1, 7,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 46
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jalen Brunson (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  20, 6, 6, 2, 0,
  9, 14,
  2, 6,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  21, 4, 8, 2, 0,
  10, 17,
  3, 7,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  18, 3, 6, 1, 1,
  7, 16,
  4, 8,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  23, 4, 6, 1, 0,
  7, 19,
  3, 8,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  21, 4, 8, 1, 1,
  8, 20,
  3, 8,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  20, 5, 9, 1, 0,
  10, 20,
  2, 6,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  22, 4, 9, 1, 0,
  7, 19,
  2, 5,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  26, 3, 8, 2, 1,
  7, 15,
  3, 8,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  19, 4, 6, 1, 1,
  9, 16,
  3, 6,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  47,
  @season_id,
  NULL,
  1,
  26, 3, 7, 1, 0,
  10, 18,
  3, 10,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 47
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour OG Anunoby (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  17, 7, 4, 0, 0,
  6, 13,
  3, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  12, 8, 4, 0, 1,
  4, 13,
  3, 6,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  18, 5, 4, 0, 1,
  7, 12,
  1, 5,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  13, 5, 3, 0, 0,
  7, 15,
  3, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  16, 5, 4, 1, 1,
  4, 10,
  1, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  13, 8, 2, 1, 1,
  5, 12,
  2, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  17, 8, 5, 1, 1,
  5, 13,
  3, 6,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  13, 5, 3, 1, 1,
  4, 13,
  3, 5,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  13, 8, 2, 1, 0,
  4, 11,
  1, 6,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  48,
  @season_id,
  NULL,
  1,
  16, 6, 2, 1, 1,
  7, 14,
  2, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 48
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Mitchell Robinson (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  7, 9, 3, 0, 1,
  5, 10,
  1, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  5, 9, 3, 0, 2,
  4, 7,
  0, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  12, 6, 2, 1, 0,
  3, 6,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  5, 5, 1, 1, 2,
  5, 5,
  1, 0,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  7, 6, 1, 1, 0,
  4, 7,
  1, 0,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  9, 5, 2, 1, 0,
  5, 8,
  1, 2,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  10, 7, 3, 1, 2,
  5, 9,
  0, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  7, 7, 2, 1, 2,
  3, 6,
  1, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  5, 8, 3, 0, 1,
  2, 8,
  1, 1,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  49,
  @season_id,
  NULL,
  1,
  10, 5, 2, 0, 0,
  4, 9,
  0, 0,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 49
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Josh Hart (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  10, 3, 5, 1, 1,
  5, 14,
  1, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  8, 2, 3, 1, 0,
  6, 8,
  3, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  12, 4, 5, 1, 1,
  4, 10,
  1, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  8, 2, 2, 0, 1,
  4, 8,
  3, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  10, 2, 2, 1, 0,
  3, 13,
  1, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  8, 4, 4, 1, 0,
  4, 14,
  1, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  15, 4, 3, 1, 0,
  6, 10,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  8, 3, 2, 0, 1,
  3, 13,
  3, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  13, 3, 3, 0, 0,
  6, 14,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  50,
  @season_id,
  NULL,
  1,
  10, 4, 3, 1, 0,
  5, 12,
  1, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 50
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour CJ McCollum (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  10, 2, 2, 0, 1,
  4, 11,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  11, 2, 3, 0, 1,
  5, 13,
  2, 6,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  12, 2, 5, 0, 1,
  6, 11,
  3, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  12, 4, 4, 1, 1,
  3, 12,
  1, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  13, 2, 2, 0, 0,
  3, 14,
  2, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  12, 4, 4, 0, 1,
  6, 12,
  2, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  14, 3, 5, 1, 0,
  6, 12,
  2, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  9, 2, 4, 0, 0,
  3, 9,
  3, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  10, 3, 3, 1, 0,
  5, 12,
  3, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  51,
  @season_id,
  NULL,
  1,
  9, 4, 3, 0, 0,
  6, 14,
  2, 7,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 51
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Herbert Jones (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  8, 6, 2, 1, 1,
  6, 7,
  1, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  13, 4, 1, 0, 0,
  6, 10,
  0, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  12, 6, 3, 0, 0,
  3, 7,
  0, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  10, 3, 2, 1, 0,
  3, 11,
  1, 1,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  12, 5, 3, 1, 0,
  6, 12,
  0, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  6, 5, 2, 0, 1,
  3, 7,
  1, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  7, 3, 2, 0, 0,
  5, 9,
  2, 1,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  12, 5, 1, 0, 0,
  4, 11,
  2, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  11, 3, 2, 0, 1,
  5, 12,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  52,
  @season_id,
  NULL,
  1,
  9, 6, 1, 1, 1,
  5, 12,
  1, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 52
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Trey Murphy III (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  9, 4, 1, 0, 0,
  6, 7,
  2, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  12, 6, 1, 1, 1,
  5, 11,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  12, 3, 1, 1, 0,
  5, 8,
  2, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  10, 5, 2, 1, 0,
  4, 8,
  2, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  10, 6, 2, 0, 1,
  4, 12,
  1, 2,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  12, 4, 1, 1, 1,
  5, 8,
  2, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  7, 6, 2, 1, 1,
  4, 12,
  0, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  7, 5, 3, 0, 0,
  5, 10,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  9, 6, 1, 0, 0,
  6, 8,
  0, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  53,
  @season_id,
  NULL,
  1,
  11, 5, 1, 1, 0,
  3, 10,
  0, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 53
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Bradley Beal (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  19, 5, 7, 1, 1,
  10, 18,
  2, 5,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  18, 3, 7, 2, 0,
  9, 19,
  4, 9,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  24, 5, 5, 1, 0,
  11, 18,
  4, 7,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  25, 6, 7, 2, 0,
  9, 16,
  4, 8,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  18, 5, 7, 2, 1,
  8, 19,
  2, 9,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  26, 3, 6, 1, 0,
  9, 18,
  4, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  26, 6, 6, 1, 0,
  10, 15,
  3, 10,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  20, 4, 8, 2, 1,
  9, 15,
  3, 10,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  26, 5, 7, 2, 0,
  10, 20,
  4, 5,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  54,
  @season_id,
  NULL,
  1,
  24, 5, 7, 1, 0,
  8, 20,
  4, 9,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 54
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jusuf Nurkic (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  8, 7, 3, 1, 2,
  2, 9,
  0, 0,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  5, 9, 1, 0, 1,
  2, 5,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  5, 7, 3, 1, 2,
  2, 10,
  0, 2,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  11, 6, 1, 1, 2,
  2, 9,
  0, 0,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  9, 6, 2, 0, 1,
  5, 7,
  0, 0,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  8, 4, 2, 0, 0,
  4, 9,
  0, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  5, 9, 2, 0, 2,
  4, 10,
  0, 2,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  9, 5, 2, 1, 0,
  2, 5,
  1, 1,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  5, 6, 1, 1, 0,
  2, 6,
  1, 2,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  55,
  @season_id,
  NULL,
  1,
  10, 7, 1, 0, 1,
  2, 5,
  1, 2,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 55
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Grayson Allen (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  8, 4, 4, 1, 0,
  4, 10,
  3, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  9, 3, 3, 0, 0,
  5, 9,
  1, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  11, 2, 3, 1, 0,
  6, 11,
  3, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  15, 2, 2, 0, 1,
  4, 8,
  1, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  13, 3, 4, 0, 0,
  4, 14,
  2, 4,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  10, 3, 4, 0, 0,
  4, 12,
  2, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  14, 4, 3, 0, 0,
  5, 12,
  2, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  10, 2, 3, 1, 1,
  6, 12,
  2, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  12, 2, 3, 0, 1,
  4, 13,
  3, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  56,
  @season_id,
  NULL,
  1,
  13, 4, 2, 0, 0,
  5, 10,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 56
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Damian Lillard (star)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  25, 4, 8, 1, 1,
  8, 16,
  4, 12,
  7, 9
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  28, 7, 10, 1, 0,
  10, 21,
  4, 9,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  22, 3, 10, 1, 0,
  14, 20,
  4, 8,
  6, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  26, 6, 9, 1, 1,
  8, 23,
  3, 6,
  5, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  32, 6, 10, 1, 0,
  8, 17,
  4, 11,
  4, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  32, 7, 9, 1, 0,
  8, 23,
  5, 6,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  26, 4, 8, 1, 0,
  8, 22,
  3, 6,
  7, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  22, 3, 11, 2, 1,
  9, 24,
  4, 8,
  7, 10
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  23, 4, 9, 2, 0,
  8, 16,
  5, 10,
  4, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  57,
  @season_id,
  NULL,
  1,
  24, 3, 6, 1, 1,
  11, 24,
  3, 11,
  8, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 57
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Khris Middleton (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  13, 5, 1, 1, 0,
  4, 8,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  7, 3, 3, 0, 1,
  4, 7,
  0, 1,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  13, 6, 1, 0, 0,
  5, 12,
  2, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  12, 6, 3, 0, 1,
  4, 12,
  1, 4,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  13, 5, 3, 1, 0,
  6, 7,
  0, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  9, 4, 1, 0, 1,
  4, 7,
  1, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  7, 6, 3, 1, 0,
  5, 10,
  2, 1,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  10, 4, 1, 1, 1,
  4, 12,
  0, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  6, 6, 3, 0, 0,
  5, 10,
  1, 4,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  58,
  @season_id,
  NULL,
  1,
  6, 4, 2, 0, 1,
  4, 10,
  0, 2,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 58
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Brook Lopez (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  11, 8, 3, 0, 2,
  2, 8,
  0, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  7, 5, 1, 0, 1,
  2, 9,
  1, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  8, 4, 3, 1, 1,
  5, 8,
  1, 0,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  11, 4, 1, 0, 1,
  4, 5,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  9, 6, 3, 0, 2,
  5, 8,
  1, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  6, 5, 3, 1, 0,
  4, 9,
  1, 0,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  11, 6, 2, 1, 0,
  4, 8,
  1, 1,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  11, 9, 1, 1, 2,
  5, 5,
  0, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  10, 9, 1, 1, 0,
  2, 5,
  1, 1,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  59,
  @season_id,
  NULL,
  1,
  7, 8, 2, 0, 2,
  3, 9,
  0, 1,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 59
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Darius Garland (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  17, 5, 5, 2, 0,
  7, 11,
  3, 7,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  18, 3, 7, 1, 0,
  8, 12,
  3, 6,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  16, 4, 6, 2, 0,
  6, 13,
  1, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  14, 2, 6, 0, 0,
  8, 17,
  1, 4,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  14, 3, 7, 0, 0,
  7, 13,
  2, 7,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  17, 2, 4, 2, 1,
  8, 12,
  1, 7,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  15, 2, 3, 0, 0,
  9, 11,
  1, 8,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  16, 2, 7, 0, 0,
  8, 15,
  2, 4,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  16, 4, 7, 0, 0,
  5, 12,
  3, 7,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  60,
  @season_id,
  NULL,
  1,
  18, 2, 7, 2, 1,
  6, 14,
  2, 5,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 60
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jarrett Allen (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  14, 7, 3, 0, 1,
  5, 7,
  0, 2,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  14, 6, 1, 0, 1,
  5, 12,
  0, 0,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  15, 11, 4, 0, 1,
  4, 11,
  0, 1,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  14, 7, 1, 0, 1,
  4, 13,
  0, 0,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  15, 7, 2, 0, 1,
  4, 13,
  1, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  16, 6, 4, 0, 1,
  7, 9,
  1, 0,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  12, 8, 1, 0, 2,
  6, 10,
  1, 0,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  8, 8, 1, 0, 1,
  7, 10,
  0, 1,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  11, 10, 2, 1, 1,
  4, 7,
  0, 1,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  61,
  @season_id,
  NULL,
  1,
  15, 8, 2, 0, 1,
  5, 11,
  0, 2,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 61
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Evan Mobley (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  11, 4, 4, 1, 1,
  8, 15,
  2, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  12, 8, 5, 0, 0,
  7, 13,
  2, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  14, 6, 2, 0, 1,
  5, 15,
  2, 4,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  14, 8, 2, 0, 1,
  7, 10,
  2, 3,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  18, 5, 2, 1, 1,
  7, 10,
  1, 2,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  18, 8, 3, 1, 1,
  4, 10,
  1, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  11, 7, 4, 0, 0,
  8, 13,
  2, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  11, 8, 4, 1, 1,
  7, 10,
  1, 3,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  11, 7, 2, 1, 1,
  5, 14,
  3, 5,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  62,
  @season_id,
  NULL,
  1,
  12, 8, 4, 0, 1,
  8, 14,
  2, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 62
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Tyrese Haliburton (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  24, 6, 5, 2, 1,
  9, 16,
  4, 6,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  21, 3, 7, 1, 0,
  10, 17,
  3, 5,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  19, 5, 5, 1, 0,
  7, 18,
  4, 6,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  18, 3, 6, 1, 0,
  8, 19,
  3, 7,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  19, 3, 6, 1, 0,
  8, 17,
  3, 10,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  21, 3, 6, 2, 0,
  8, 15,
  3, 6,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  26, 6, 7, 2, 1,
  7, 14,
  2, 9,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  23, 3, 9, 1, 0,
  8, 17,
  4, 8,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  24, 3, 5, 2, 1,
  8, 20,
  4, 7,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  63,
  @season_id,
  NULL,
  1,
  26, 3, 9, 1, 0,
  8, 18,
  4, 5,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 63
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Myles Turner (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  9, 7, 1, 1, 0,
  3, 9,
  1, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  12, 7, 3, 1, 1,
  3, 5,
  1, 1,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  10, 6, 1, 1, 0,
  5, 6,
  1, 0,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  9, 5, 1, 1, 0,
  3, 5,
  0, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  7, 9, 1, 0, 1,
  3, 5,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  11, 4, 3, 0, 2,
  5, 6,
  1, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  8, 8, 2, 0, 2,
  5, 7,
  0, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  10, 6, 2, 1, 1,
  4, 9,
  0, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  7, 7, 1, 0, 0,
  3, 9,
  1, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  64,
  @season_id,
  NULL,
  1,
  9, 7, 2, 0, 1,
  4, 10,
  1, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 64
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Bennedict Mathurin (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  15, 3, 3, 1, 0,
  3, 9,
  3, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  15, 2, 3, 1, 0,
  4, 10,
  2, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  15, 2, 2, 1, 0,
  3, 8,
  1, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  11, 2, 2, 0, 1,
  6, 11,
  2, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  13, 3, 2, 0, 0,
  4, 11,
  3, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  8, 3, 2, 1, 0,
  6, 8,
  3, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  9, 2, 3, 1, 1,
  6, 9,
  2, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  13, 3, 5, 1, 0,
  3, 13,
  2, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  11, 2, 3, 0, 0,
  3, 12,
  2, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  65,
  @season_id,
  NULL,
  1,
  13, 2, 5, 0, 0,
  3, 11,
  1, 4,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 65
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Austin Reaves (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  11, 4, 5, 0, 1,
  4, 9,
  2, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  8, 4, 2, 1, 1,
  4, 9,
  1, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  8, 4, 3, 0, 1,
  4, 8,
  2, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  8, 2, 2, 1, 0,
  5, 9,
  2, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  15, 3, 3, 0, 0,
  4, 13,
  2, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  9, 4, 4, 1, 0,
  3, 10,
  3, 7,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  15, 2, 3, 0, 0,
  6, 14,
  3, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  8, 2, 5, 0, 1,
  3, 14,
  1, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  8, 2, 2, 1, 1,
  4, 11,
  1, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  66,
  @season_id,
  NULL,
  1,
  12, 4, 4, 1, 0,
  6, 13,
  2, 7,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 66
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Rui Hachimura (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  7, 4, 1, 1, 1,
  4, 7,
  1, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  8, 6, 3, 0, 0,
  6, 8,
  1, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  10, 3, 2, 1, 1,
  3, 12,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  12, 5, 2, 0, 1,
  4, 10,
  2, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  12, 4, 2, 0, 1,
  3, 12,
  0, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  13, 5, 2, 1, 1,
  6, 11,
  1, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  8, 5, 3, 1, 0,
  3, 12,
  0, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  13, 5, 3, 0, 0,
  3, 8,
  1, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  10, 6, 2, 0, 0,
  4, 8,
  2, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  67,
  @season_id,
  NULL,
  1,
  9, 6, 2, 1, 1,
  6, 10,
  2, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 67
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour D'Angelo Russell (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  10, 4, 4, 1, 1,
  6, 10,
  2, 6,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  8, 2, 5, 1, 0,
  4, 10,
  1, 4,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  14, 2, 5, 1, 1,
  5, 8,
  1, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  8, 4, 4, 1, 1,
  4, 14,
  2, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  15, 3, 4, 1, 0,
  6, 12,
  1, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  11, 4, 2, 0, 0,
  4, 12,
  3, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  12, 4, 2, 0, 1,
  3, 13,
  3, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  11, 2, 5, 0, 1,
  4, 14,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  15, 4, 3, 0, 1,
  4, 14,
  3, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  68,
  @season_id,
  NULL,
  1,
  9, 2, 4, 1, 0,
  3, 8,
  3, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 68
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Paolo Banchero (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  21, 9, 6, 1, 0,
  6, 16,
  1, 3,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  16, 8, 4, 2, 0,
  10, 14,
  3, 4,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  23, 8, 6, 1, 1,
  9, 18,
  2, 5,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  20, 8, 3, 2, 1,
  6, 16,
  2, 3,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  17, 10, 5, 2, 0,
  7, 15,
  3, 6,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  20, 6, 6, 1, 0,
  9, 17,
  3, 3,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  17, 7, 5, 1, 1,
  10, 15,
  3, 7,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  16, 6, 4, 2, 1,
  10, 14,
  2, 3,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  23, 6, 4, 1, 0,
  10, 18,
  2, 6,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  69,
  @season_id,
  NULL,
  1,
  17, 8, 5, 1, 0,
  6, 14,
  1, 4,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 69
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Franz Wagner (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  17, 6, 4, 0, 0,
  4, 10,
  1, 4,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  18, 6, 3, 0, 0,
  5, 11,
  1, 6,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  12, 4, 2, 1, 1,
  6, 11,
  2, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  17, 5, 3, 1, 0,
  7, 10,
  3, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  11, 4, 3, 1, 1,
  5, 10,
  2, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  10, 5, 5, 1, 0,
  6, 14,
  2, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  18, 8, 3, 0, 1,
  5, 13,
  3, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  15, 4, 4, 0, 1,
  6, 11,
  3, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  17, 4, 2, 0, 1,
  7, 9,
  3, 5,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  70,
  @season_id,
  NULL,
  1,
  14, 6, 3, 1, 1,
  8, 15,
  1, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 70
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jalen Suggs (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  15, 2, 5, 0, 1,
  5, 10,
  3, 4,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  9, 3, 4, 1, 0,
  5, 8,
  3, 7,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  11, 4, 3, 1, 0,
  4, 12,
  2, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  15, 2, 5, 0, 1,
  3, 8,
  2, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  12, 2, 5, 0, 0,
  5, 10,
  3, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  9, 2, 3, 0, 1,
  6, 9,
  3, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  14, 2, 3, 1, 0,
  3, 11,
  1, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  10, 4, 2, 1, 1,
  5, 12,
  3, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  12, 2, 5, 1, 1,
  6, 11,
  1, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  71,
  @season_id,
  NULL,
  1,
  15, 4, 2, 0, 1,
  6, 8,
  2, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 71
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Tyrese Maxey (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  23, 5, 6, 1, 1,
  7, 14,
  3, 9,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  26, 3, 6, 2, 0,
  8, 16,
  2, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  21, 5, 5, 2, 0,
  10, 15,
  2, 9,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  20, 4, 9, 1, 1,
  11, 15,
  3, 8,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  26, 6, 9, 1, 1,
  8, 20,
  3, 6,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  24, 6, 9, 1, 0,
  9, 14,
  4, 5,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  21, 4, 5, 1, 1,
  11, 20,
  2, 9,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  23, 4, 8, 2, 0,
  11, 17,
  3, 6,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  26, 6, 6, 2, 0,
  11, 14,
  2, 9,
  6, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  72,
  @season_id,
  NULL,
  1,
  21, 3, 5, 2, 0,
  11, 19,
  2, 6,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 72
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Tobias Harris (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  13, 5, 3, 0, 1,
  6, 11,
  1, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  6, 5, 1, 0, 0,
  4, 8,
  2, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  7, 6, 2, 0, 1,
  3, 7,
  1, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  9, 6, 2, 0, 0,
  5, 12,
  0, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  13, 6, 1, 1, 0,
  4, 12,
  2, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  13, 4, 2, 1, 0,
  6, 10,
  0, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  10, 6, 2, 1, 1,
  3, 9,
  2, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  11, 4, 3, 0, 0,
  4, 11,
  2, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  11, 5, 1, 1, 0,
  4, 9,
  2, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  73,
  @season_id,
  NULL,
  1,
  8, 6, 2, 1, 1,
  3, 12,
  2, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 73
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Kelly Oubre Jr. (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  11, 4, 3, 1, 1,
  3, 9,
  0, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  6, 5, 2, 0, 0,
  5, 11,
  2, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  7, 5, 3, 1, 1,
  5, 8,
  0, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  8, 6, 3, 1, 0,
  3, 8,
  2, 4,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  13, 5, 1, 1, 1,
  5, 11,
  2, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  11, 4, 3, 1, 0,
  5, 11,
  1, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  9, 3, 2, 0, 1,
  4, 12,
  2, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  12, 4, 1, 0, 1,
  3, 8,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  13, 4, 3, 0, 0,
  3, 10,
  1, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  74,
  @season_id,
  NULL,
  1,
  9, 3, 1, 0, 1,
  6, 11,
  2, 2,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 74
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jimmy Butler (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  17, 8, 6, 2, 1,
  9, 17,
  1, 6,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  21, 7, 6, 2, 0,
  8, 15,
  2, 7,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  22, 6, 5, 1, 0,
  6, 16,
  2, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  17, 8, 3, 2, 0,
  10, 16,
  3, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  18, 7, 4, 1, 0,
  10, 16,
  3, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  18, 6, 6, 2, 1,
  8, 14,
  2, 7,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  24, 7, 4, 2, 1,
  7, 16,
  3, 7,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  18, 10, 5, 2, 1,
  6, 18,
  3, 3,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  24, 9, 4, 1, 0,
  10, 17,
  2, 6,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  75,
  @season_id,
  NULL,
  1,
  21, 6, 6, 1, 1,
  9, 17,
  1, 3,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 75
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Tyler Herro (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  16, 4, 5, 1, 0,
  8, 14,
  1, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  16, 4, 7, 2, 0,
  8, 11,
  3, 6,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  16, 4, 4, 2, 0,
  7, 14,
  1, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  12, 3, 6, 0, 0,
  6, 12,
  1, 5,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  15, 5, 4, 2, 1,
  7, 13,
  3, 7,
  5, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  18, 2, 6, 2, 1,
  6, 17,
  3, 7,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  16, 2, 5, 1, 1,
  8, 13,
  1, 8,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  14, 3, 3, 0, 0,
  6, 16,
  3, 5,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  15, 4, 6, 2, 1,
  5, 12,
  2, 8,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  76,
  @season_id,
  NULL,
  1,
  20, 3, 6, 0, 0,
  5, 17,
  3, 7,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 76
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Klay Thompson (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  12, 3, 5, 1, 0,
  6, 12,
  3, 7,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  9, 4, 3, 1, 0,
  5, 12,
  2, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  11, 4, 4, 0, 0,
  3, 9,
  3, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  13, 4, 2, 1, 1,
  3, 14,
  2, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  11, 4, 5, 0, 0,
  6, 12,
  2, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  14, 4, 5, 1, 1,
  5, 11,
  3, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  10, 3, 5, 1, 0,
  4, 14,
  3, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  11, 4, 4, 0, 0,
  6, 8,
  3, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  12, 2, 4, 0, 0,
  3, 12,
  1, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  77,
  @season_id,
  NULL,
  1,
  15, 3, 3, 0, 0,
  4, 13,
  1, 7,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 77
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Andrew Wiggins (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  7, 6, 2, 0, 0,
  6, 8,
  0, 2,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  10, 4, 2, 0, 0,
  6, 12,
  0, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  9, 5, 3, 1, 0,
  4, 8,
  0, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  10, 4, 2, 0, 0,
  5, 12,
  0, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  9, 3, 3, 0, 0,
  6, 10,
  1, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  11, 3, 2, 1, 0,
  3, 9,
  2, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  9, 4, 2, 0, 0,
  6, 11,
  0, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  6, 5, 2, 1, 1,
  4, 11,
  2, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  9, 3, 3, 0, 0,
  4, 10,
  1, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  78,
  @season_id,
  NULL,
  1,
  9, 5, 3, 1, 1,
  3, 8,
  2, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 78
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jonathan Kuminga (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  8, 6, 2, 0, 1,
  6, 12,
  1, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  8, 4, 1, 0, 1,
  6, 12,
  2, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  10, 6, 3, 0, 0,
  4, 11,
  1, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  9, 6, 1, 0, 0,
  5, 7,
  2, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  10, 4, 3, 1, 1,
  6, 12,
  1, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  9, 3, 2, 1, 0,
  5, 7,
  0, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  10, 4, 3, 1, 0,
  4, 8,
  0, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  13, 3, 3, 0, 1,
  4, 12,
  0, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  9, 6, 3, 1, 1,
  4, 10,
  1, 4,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  79,
  @season_id,
  NULL,
  1,
  12, 5, 3, 0, 1,
  4, 7,
  0, 1,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 79
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour De'Aaron Fox (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  23, 6, 8, 2, 1,
  11, 20,
  3, 9,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  21, 5, 8, 2, 0,
  9, 17,
  4, 7,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  25, 5, 8, 2, 1,
  7, 20,
  2, 7,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  23, 3, 7, 1, 0,
  7, 18,
  3, 10,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  18, 5, 5, 1, 0,
  8, 17,
  2, 10,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  18, 6, 6, 2, 1,
  9, 16,
  4, 6,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  25, 4, 6, 1, 1,
  9, 16,
  2, 9,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  26, 5, 5, 2, 1,
  9, 17,
  3, 7,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  19, 6, 9, 2, 1,
  11, 17,
  3, 10,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  80,
  @season_id,
  NULL,
  1,
  20, 3, 8, 2, 0,
  9, 15,
  3, 7,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 80
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Domantas Sabonis (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  19, 12, 4, 0, 2,
  9, 12,
  1, 1,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  18, 11, 5, 0, 1,
  10, 16,
  1, 1,
  5, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  20, 13, 5, 1, 2,
  8, 11,
  0, 0,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  18, 8, 3, 1, 1,
  10, 13,
  0, 3,
  3, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  18, 8, 5, 1, 2,
  9, 10,
  1, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  20, 9, 2, 1, 1,
  9, 12,
  1, 1,
  6, 8
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  18, 12, 2, 1, 2,
  9, 16,
  0, 2,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  20, 12, 4, 0, 2,
  9, 13,
  0, 3,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  19, 12, 5, 0, 1,
  10, 13,
  1, 1,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  81,
  @season_id,
  NULL,
  1,
  19, 9, 2, 0, 2,
  9, 14,
  1, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 81
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Keegan Murray (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  14, 8, 2, 0, 0,
  8, 15,
  1, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  17, 5, 2, 0, 1,
  6, 11,
  2, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  13, 4, 3, 0, 1,
  4, 15,
  1, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  18, 5, 4, 1, 0,
  5, 11,
  3, 5,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  15, 8, 5, 0, 1,
  7, 10,
  3, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  12, 5, 5, 0, 1,
  4, 13,
  3, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  14, 5, 5, 0, 0,
  8, 12,
  1, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  18, 4, 5, 1, 1,
  4, 12,
  1, 2,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  13, 5, 3, 1, 1,
  8, 15,
  1, 6,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  82,
  @season_id,
  NULL,
  1,
  15, 7, 4, 1, 0,
  6, 12,
  3, 5,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 82
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Alperen Sengun (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  10, 11, 4, 0, 1,
  4, 10,
  1, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  12, 7, 4, 1, 2,
  4, 9,
  1, 2,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  10, 8, 1, 0, 1,
  7, 7,
  0, 1,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  16, 7, 3, 1, 2,
  5, 7,
  1, 1,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  16, 8, 4, 1, 2,
  4, 7,
  0, 1,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  8, 7, 4, 1, 1,
  6, 7,
  0, 1,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  13, 8, 2, 1, 1,
  6, 8,
  1, 0,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  8, 8, 2, 0, 1,
  6, 7,
  1, 2,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  14, 10, 2, 1, 1,
  4, 7,
  0, 0,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  83,
  @season_id,
  NULL,
  1,
  16, 9, 4, 0, 2,
  4, 13,
  0, 1,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 83
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jalen Green (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  20, 2, 3, 2, 0,
  6, 17,
  3, 8,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  18, 2, 4, 1, 0,
  6, 14,
  2, 4,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  18, 3, 5, 1, 1,
  6, 17,
  2, 8,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  14, 5, 7, 1, 1,
  7, 15,
  3, 5,
  2, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  15, 5, 3, 2, 0,
  8, 13,
  2, 7,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  16, 2, 6, 2, 0,
  8, 12,
  1, 7,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  13, 5, 7, 2, 1,
  5, 14,
  2, 5,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  13, 2, 3, 2, 0,
  8, 14,
  1, 6,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  12, 5, 6, 0, 0,
  6, 12,
  2, 6,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  84,
  @season_id,
  NULL,
  1,
  13, 2, 6, 0, 0,
  9, 16,
  2, 8,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 84
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Fred VanVleet (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  14, 4, 4, 0, 0,
  3, 13,
  2, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  10, 2, 3, 1, 0,
  5, 12,
  2, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  9, 2, 2, 0, 0,
  3, 10,
  3, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  13, 3, 4, 1, 0,
  5, 10,
  1, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  8, 3, 4, 1, 1,
  5, 9,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  8, 3, 2, 1, 1,
  6, 14,
  2, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  14, 3, 5, 0, 0,
  5, 14,
  2, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  12, 2, 5, 1, 0,
  3, 8,
  3, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  13, 2, 5, 1, 0,
  5, 13,
  1, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  85,
  @season_id,
  NULL,
  1,
  8, 3, 3, 0, 1,
  3, 10,
  3, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 85
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Zach LaVine (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  12, 4, 2, 1, 0,
  4, 14,
  3, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  12, 2, 5, 0, 1,
  5, 12,
  3, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  12, 3, 2, 1, 1,
  6, 14,
  1, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  10, 4, 5, 0, 0,
  6, 11,
  1, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  9, 3, 3, 0, 0,
  3, 14,
  3, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  12, 4, 4, 0, 0,
  3, 10,
  2, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  11, 4, 5, 1, 1,
  6, 12,
  3, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  9, 2, 3, 1, 1,
  5, 14,
  1, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  12, 4, 5, 1, 0,
  3, 11,
  3, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  86,
  @season_id,
  NULL,
  1,
  12, 3, 5, 1, 0,
  5, 11,
  1, 6,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 86
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Nikola Vucevic (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  6, 5, 1, 1, 0,
  4, 8,
  1, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  5, 6, 2, 0, 1,
  2, 8,
  1, 0,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  9, 7, 3, 1, 2,
  3, 6,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  10, 7, 1, 0, 0,
  4, 8,
  1, 0,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  5, 6, 3, 0, 2,
  3, 10,
  0, 0,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  8, 5, 3, 0, 1,
  4, 9,
  0, 0,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  11, 7, 3, 1, 0,
  3, 5,
  1, 0,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  8, 6, 2, 0, 1,
  4, 5,
  1, 0,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  5, 7, 1, 0, 1,
  5, 9,
  1, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  87,
  @season_id,
  NULL,
  1,
  8, 7, 3, 0, 2,
  5, 5,
  0, 0,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 87
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Coby White (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  9, 2, 4, 1, 1,
  5, 14,
  3, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  14, 4, 4, 1, 0,
  5, 11,
  1, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  14, 4, 2, 0, 1,
  4, 8,
  1, 4,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  8, 4, 4, 0, 1,
  3, 12,
  2, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  15, 3, 4, 1, 1,
  3, 13,
  3, 7,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  12, 3, 2, 0, 1,
  6, 14,
  3, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  15, 3, 3, 0, 1,
  3, 12,
  3, 6,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  11, 2, 4, 0, 1,
  6, 14,
  2, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  14, 2, 3, 0, 0,
  5, 14,
  1, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  88,
  @season_id,
  NULL,
  1,
  11, 3, 3, 0, 1,
  3, 13,
  2, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 88
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Dejounte Murray (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  9, 4, 4, 0, 0,
  6, 13,
  1, 3,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  13, 4, 4, 0, 0,
  5, 14,
  1, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  8, 2, 2, 0, 0,
  5, 14,
  2, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  8, 4, 2, 1, 0,
  3, 10,
  2, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  11, 2, 4, 1, 1,
  6, 12,
  3, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  9, 3, 5, 1, 1,
  5, 8,
  1, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  15, 2, 4, 1, 0,
  5, 13,
  3, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  10, 3, 5, 0, 1,
  5, 12,
  2, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  10, 3, 5, 1, 1,
  5, 8,
  3, 7,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  89,
  @season_id,
  NULL,
  1,
  11, 4, 4, 0, 0,
  6, 10,
  2, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 89
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Clint Capela (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  5, 6, 1, 1, 2,
  2, 6,
  0, 1,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  12, 5, 1, 0, 1,
  5, 7,
  1, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  12, 6, 1, 1, 2,
  4, 7,
  0, 2,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  5, 9, 3, 0, 0,
  3, 10,
  1, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  10, 8, 2, 0, 2,
  4, 5,
  0, 1,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  6, 9, 2, 0, 1,
  3, 6,
  1, 2,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  7, 9, 1, 1, 0,
  4, 6,
  0, 2,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  9, 6, 3, 1, 0,
  2, 8,
  0, 1,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  9, 6, 1, 1, 2,
  5, 8,
  0, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  90,
  @season_id,
  NULL,
  1,
  9, 7, 1, 0, 0,
  3, 10,
  1, 0,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 90
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jalen Johnson (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  6, 6, 3, 1, 1,
  5, 11,
  0, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  11, 6, 1, 0, 1,
  6, 9,
  0, 1,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  7, 3, 2, 0, 1,
  4, 7,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  12, 4, 1, 1, 1,
  4, 7,
  1, 4,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  7, 5, 2, 1, 0,
  3, 8,
  1, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  12, 6, 3, 1, 1,
  5, 8,
  1, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  10, 4, 1, 1, 0,
  5, 12,
  0, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  12, 3, 1, 1, 1,
  3, 10,
  1, 2,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  7, 6, 3, 1, 1,
  6, 9,
  0, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  91,
  @season_id,
  NULL,
  1,
  6, 3, 1, 0, 1,
  3, 7,
  0, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 91
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Mikal Bridges (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  14, 7, 2, 0, 0,
  4, 14,
  1, 3,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  10, 6, 3, 0, 0,
  4, 9,
  3, 4,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  12, 4, 3, 0, 1,
  8, 14,
  3, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  10, 5, 4, 1, 0,
  5, 12,
  2, 3,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  15, 5, 5, 1, 1,
  6, 12,
  3, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  16, 5, 3, 1, 1,
  8, 11,
  1, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  13, 5, 5, 1, 1,
  7, 13,
  3, 2,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  10, 5, 3, 0, 0,
  8, 13,
  3, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  14, 7, 4, 1, 1,
  5, 9,
  2, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  92,
  @season_id,
  NULL,
  1,
  12, 7, 4, 1, 1,
  8, 9,
  3, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 92
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Cam Thomas (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  12, 3, 3, 0, 1,
  6, 12,
  2, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  13, 4, 4, 0, 0,
  5, 14,
  1, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  9, 4, 2, 0, 1,
  3, 9,
  1, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  14, 2, 4, 0, 0,
  3, 8,
  1, 4,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  8, 2, 3, 1, 1,
  3, 10,
  1, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  10, 4, 4, 1, 0,
  4, 9,
  3, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  8, 2, 4, 0, 1,
  5, 13,
  2, 7,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  12, 4, 5, 1, 0,
  4, 14,
  3, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  14, 4, 2, 0, 1,
  3, 11,
  2, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  93,
  @season_id,
  NULL,
  1,
  12, 3, 3, 0, 0,
  6, 13,
  3, 7,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 93
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Nic Claxton (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  12, 4, 1, 0, 0,
  4, 7,
  1, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  12, 6, 1, 1, 1,
  2, 5,
  1, 1,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  8, 8, 1, 0, 1,
  3, 5,
  1, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  5, 4, 2, 1, 0,
  5, 7,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  11, 8, 1, 1, 2,
  3, 7,
  1, 2,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  7, 9, 3, 1, 0,
  3, 8,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  12, 7, 3, 0, 2,
  2, 7,
  1, 1,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  6, 6, 3, 1, 0,
  2, 10,
  0, 1,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  5, 5, 2, 0, 1,
  4, 6,
  0, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  94,
  @season_id,
  NULL,
  1,
  9, 9, 1, 1, 0,
  3, 6,
  1, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 94
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Lauri Markkanen (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  19, 6, 3, 1, 1,
  10, 15,
  3, 6,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  16, 10, 4, 1, 1,
  7, 16,
  2, 6,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  16, 7, 3, 1, 1,
  10, 14,
  2, 6,
  4, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  16, 9, 6, 2, 0,
  7, 17,
  2, 3,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  19, 7, 3, 2, 0,
  9, 16,
  1, 5,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  22, 8, 3, 1, 0,
  9, 13,
  3, 4,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  19, 7, 6, 1, 0,
  7, 14,
  2, 3,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  17, 10, 5, 1, 0,
  7, 17,
  2, 6,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  24, 9, 3, 1, 1,
  10, 16,
  1, 4,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  95,
  @season_id,
  NULL,
  1,
  16, 9, 3, 1, 0,
  9, 16,
  1, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 95
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jordan Clarkson (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  10, 4, 2, 1, 0,
  4, 9,
  3, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  12, 3, 3, 0, 1,
  4, 12,
  3, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  14, 3, 4, 0, 1,
  5, 10,
  2, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  15, 3, 2, 0, 1,
  6, 11,
  1, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  13, 3, 5, 0, 1,
  6, 12,
  2, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  8, 3, 5, 1, 1,
  3, 10,
  1, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  12, 4, 3, 0, 0,
  6, 9,
  3, 7,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  13, 4, 3, 0, 0,
  4, 10,
  3, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  11, 3, 3, 0, 0,
  5, 14,
  1, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  96,
  @season_id,
  NULL,
  1,
  12, 3, 2, 1, 0,
  6, 10,
  2, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 96
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Collin Sexton (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  12, 4, 4, 1, 1,
  6, 13,
  3, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  11, 4, 4, 1, 1,
  4, 12,
  1, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  12, 2, 3, 0, 0,
  5, 8,
  2, 6,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  9, 4, 4, 1, 0,
  3, 14,
  1, 4,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  9, 4, 2, 0, 0,
  3, 10,
  3, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  8, 3, 3, 0, 1,
  4, 12,
  1, 3,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  11, 2, 2, 1, 1,
  5, 11,
  3, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  12, 3, 5, 0, 0,
  3, 12,
  3, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  8, 4, 4, 0, 1,
  3, 13,
  3, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  97,
  @season_id,
  NULL,
  1,
  13, 4, 5, 0, 1,
  3, 9,
  2, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 97
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Desmond Bane (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  13, 5, 6, 0, 1,
  8, 14,
  1, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  13, 5, 5, 0, 1,
  6, 13,
  1, 7,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  20, 4, 6, 1, 1,
  6, 12,
  1, 4,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  18, 5, 7, 0, 1,
  7, 14,
  3, 4,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  17, 5, 6, 1, 1,
  7, 15,
  2, 8,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  20, 4, 3, 2, 1,
  7, 11,
  2, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  13, 2, 4, 1, 1,
  6, 15,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  14, 5, 4, 1, 1,
  6, 15,
  2, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  19, 4, 6, 2, 0,
  7, 15,
  2, 8,
  2, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  98,
  @season_id,
  NULL,
  1,
  17, 3, 3, 1, 1,
  8, 13,
  2, 7,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 98
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jaren Jackson Jr. (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  15, 6, 4, 1, 1,
  8, 13,
  3, 6,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  13, 5, 3, 1, 1,
  6, 15,
  2, 3,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  14, 4, 5, 0, 0,
  8, 13,
  1, 5,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  11, 5, 4, 0, 0,
  7, 15,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  12, 4, 4, 0, 1,
  4, 10,
  2, 6,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  13, 8, 2, 0, 1,
  8, 9,
  2, 2,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  18, 5, 2, 0, 0,
  5, 9,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  15, 8, 2, 1, 1,
  6, 13,
  3, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  11, 8, 3, 1, 0,
  6, 13,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  99,
  @season_id,
  NULL,
  1,
  15, 8, 2, 1, 0,
  6, 14,
  3, 2,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 99
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Marcus Smart (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  9, 3, 2, 0, 1,
  5, 10,
  1, 4,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  10, 3, 2, 0, 1,
  3, 9,
  3, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  12, 3, 2, 0, 0,
  4, 11,
  2, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  15, 4, 3, 0, 0,
  6, 8,
  3, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  15, 2, 5, 1, 0,
  4, 9,
  1, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  15, 4, 2, 1, 1,
  4, 8,
  2, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  11, 4, 5, 0, 1,
  3, 14,
  3, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  14, 4, 5, 0, 0,
  6, 11,
  2, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  12, 2, 3, 0, 0,
  5, 14,
  1, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  100,
  @season_id,
  NULL,
  1,
  8, 2, 5, 1, 0,
  4, 11,
  3, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 100
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Scottie Barnes (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  11, 5, 2, 0, 1,
  7, 15,
  2, 3,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  17, 4, 5, 1, 1,
  5, 14,
  2, 4,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  11, 4, 2, 1, 0,
  5, 11,
  3, 3,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  17, 5, 3, 1, 1,
  6, 10,
  1, 5,
  4, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  11, 4, 2, 1, 0,
  7, 9,
  2, 6,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  18, 7, 3, 1, 0,
  6, 11,
  3, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  13, 5, 5, 1, 0,
  5, 12,
  1, 2,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  16, 5, 4, 1, 1,
  8, 13,
  1, 3,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  11, 8, 4, 0, 1,
  7, 10,
  3, 2,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  101,
  @season_id,
  NULL,
  1,
  13, 7, 4, 0, 0,
  5, 14,
  3, 4,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 101
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour RJ Barrett (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  14, 2, 5, 0, 1,
  6, 12,
  1, 7,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  9, 2, 5, 0, 0,
  5, 13,
  2, 7,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  8, 4, 2, 1, 1,
  4, 13,
  2, 6,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  12, 4, 2, 0, 0,
  5, 12,
  2, 7,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  15, 4, 3, 0, 1,
  4, 14,
  1, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  13, 3, 5, 1, 0,
  5, 12,
  2, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  10, 3, 2, 1, 1,
  5, 8,
  2, 7,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  10, 2, 3, 1, 1,
  3, 10,
  2, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  12, 3, 2, 0, 0,
  6, 11,
  1, 6,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  102,
  @season_id,
  NULL,
  1,
  9, 2, 3, 1, 0,
  4, 8,
  3, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 102
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jakob Poeltl (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  7, 6, 1, 0, 2,
  3, 6,
  0, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  5, 4, 1, 1, 0,
  5, 9,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  12, 8, 3, 1, 0,
  3, 6,
  0, 2,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  6, 9, 2, 0, 1,
  3, 7,
  1, 0,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  8, 6, 1, 1, 0,
  5, 7,
  0, 2,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  9, 5, 3, 0, 0,
  4, 6,
  1, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  6, 8, 2, 1, 0,
  3, 9,
  1, 0,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  8, 4, 3, 1, 1,
  2, 5,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  5, 8, 1, 1, 2,
  5, 10,
  1, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  103,
  @season_id,
  NULL,
  1,
  11, 7, 3, 1, 0,
  5, 10,
  1, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 103
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Devin Vassell (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  14, 3, 3, 1, 0,
  6, 12,
  1, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  8, 3, 4, 0, 1,
  4, 12,
  2, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  9, 2, 4, 1, 0,
  3, 12,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  13, 3, 3, 0, 1,
  4, 11,
  3, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  15, 2, 4, 1, 0,
  4, 11,
  1, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  14, 3, 2, 0, 0,
  5, 10,
  2, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  14, 4, 3, 1, 1,
  5, 13,
  1, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  10, 3, 2, 1, 1,
  4, 14,
  1, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  9, 4, 5, 0, 0,
  5, 13,
  3, 7,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  104,
  @season_id,
  NULL,
  1,
  14, 2, 5, 1, 0,
  3, 12,
  3, 4,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 104
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Keldon Johnson (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  7, 6, 1, 0, 0,
  4, 11,
  2, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  10, 4, 1, 0, 1,
  4, 8,
  1, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  7, 4, 1, 0, 0,
  6, 8,
  0, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  11, 5, 2, 1, 0,
  6, 7,
  1, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  12, 5, 2, 1, 1,
  3, 9,
  2, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  7, 4, 2, 0, 0,
  5, 10,
  1, 3,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  6, 4, 2, 0, 1,
  5, 8,
  0, 1,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  9, 6, 1, 1, 1,
  4, 9,
  1, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  8, 3, 1, 0, 1,
  5, 7,
  2, 4,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  105,
  @season_id,
  NULL,
  1,
  8, 4, 1, 0, 1,
  6, 9,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 105
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jeremy Sochan (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  11, 6, 1, 1, 0,
  3, 11,
  1, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  11, 3, 2, 1, 0,
  5, 9,
  1, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  13, 4, 1, 1, 1,
  3, 8,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  8, 5, 3, 0, 1,
  5, 11,
  1, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  12, 3, 3, 1, 0,
  4, 7,
  2, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  12, 6, 3, 1, 1,
  6, 11,
  0, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  6, 6, 1, 0, 0,
  4, 8,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  12, 4, 2, 1, 0,
  3, 7,
  0, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  11, 5, 1, 1, 1,
  4, 8,
  1, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  106,
  @season_id,
  NULL,
  1,
  11, 4, 3, 0, 1,
  4, 9,
  0, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 106
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour LaMelo Ball (allstar)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  19, 6, 6, 1, 0,
  10, 18,
  3, 8,
  6, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  19, 6, 7, 2, 1,
  10, 20,
  4, 7,
  6, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  26, 4, 7, 2, 1,
  10, 17,
  4, 5,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  19, 4, 8, 2, 1,
  10, 17,
  4, 7,
  3, 7
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  23, 6, 7, 2, 0,
  11, 17,
  2, 8,
  4, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  18, 3, 7, 2, 1,
  9, 16,
  2, 9,
  5, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  26, 4, 6, 1, 0,
  9, 14,
  3, 6,
  6, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  18, 3, 6, 2, 0,
  8, 15,
  2, 7,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  19, 6, 5, 1, 0,
  8, 20,
  3, 6,
  4, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  107,
  @season_id,
  NULL,
  1,
  24, 4, 8, 2, 0,
  11, 17,
  2, 7,
  5, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 107
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Miles Bridges (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  6, 6, 2, 0, 1,
  4, 7,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  11, 3, 3, 1, 1,
  5, 9,
  0, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  9, 3, 2, 1, 1,
  5, 11,
  2, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  9, 3, 1, 0, 0,
  4, 8,
  2, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  8, 6, 3, 1, 1,
  3, 11,
  1, 2,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  7, 6, 1, 1, 0,
  4, 11,
  2, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  7, 3, 1, 0, 1,
  5, 11,
  0, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  13, 5, 3, 1, 1,
  4, 7,
  2, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  10, 6, 2, 1, 0,
  3, 9,
  1, 2,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  108,
  @season_id,
  NULL,
  1,
  10, 3, 1, 0, 0,
  6, 12,
  0, 1,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 108
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Mark Williams (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  5, 7, 1, 1, 2,
  4, 5,
  0, 1,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  12, 6, 2, 0, 0,
  4, 6,
  0, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  10, 9, 3, 0, 0,
  2, 5,
  1, 2,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  8, 6, 1, 0, 1,
  4, 10,
  1, 0,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  7, 7, 2, 0, 1,
  2, 8,
  0, 1,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  9, 8, 3, 0, 2,
  3, 9,
  0, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  6, 6, 3, 1, 0,
  2, 5,
  0, 2,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  9, 8, 1, 0, 2,
  5, 7,
  1, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  10, 5, 2, 0, 1,
  5, 9,
  1, 0,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  109,
  @season_id,
  NULL,
  1,
  9, 8, 3, 1, 0,
  3, 10,
  1, 0,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 109
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Anfernee Simons (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  10, 3, 4, 0, 1,
  5, 8,
  3, 3,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  13, 4, 2, 1, 1,
  4, 13,
  1, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  13, 4, 5, 1, 1,
  3, 11,
  1, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  12, 3, 2, 1, 1,
  6, 10,
  1, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  10, 3, 3, 1, 0,
  5, 8,
  3, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  12, 3, 2, 0, 1,
  4, 12,
  2, 3,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  14, 2, 2, 1, 0,
  6, 8,
  2, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  15, 2, 4, 1, 0,
  3, 8,
  2, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  10, 3, 4, 0, 1,
  6, 10,
  1, 4,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  110,
  @season_id,
  NULL,
  1,
  12, 3, 3, 0, 1,
  4, 13,
  1, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 110
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jerami Grant (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  10, 6, 2, 1, 0,
  5, 12,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  13, 4, 3, 1, 0,
  6, 9,
  0, 1,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  10, 6, 3, 1, 0,
  3, 9,
  0, 5,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  9, 6, 3, 1, 0,
  4, 9,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  9, 4, 3, 0, 1,
  3, 12,
  0, 4,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  12, 3, 3, 0, 0,
  6, 9,
  1, 1,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  11, 5, 3, 0, 1,
  5, 9,
  2, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  13, 6, 1, 0, 0,
  5, 7,
  1, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  13, 3, 2, 1, 0,
  5, 12,
  1, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  111,
  @season_id,
  NULL,
  1,
  11, 5, 1, 1, 1,
  3, 9,
  0, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 111
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Scoot Henderson (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  13, 2, 2, 1, 0,
  4, 14,
  1, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  13, 2, 4, 0, 1,
  3, 14,
  2, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  11, 3, 4, 1, 1,
  6, 11,
  2, 3,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  11, 4, 2, 1, 0,
  4, 10,
  2, 6,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  15, 4, 4, 0, 0,
  6, 12,
  1, 7,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  15, 2, 3, 0, 1,
  4, 11,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  9, 4, 2, 1, 0,
  5, 9,
  3, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  11, 4, 5, 0, 0,
  3, 14,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  13, 2, 2, 1, 0,
  5, 8,
  2, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  112,
  @season_id,
  NULL,
  1,
  15, 2, 2, 0, 1,
  5, 10,
  2, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 112
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jordan Poole (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  13, 4, 3, 1, 0,
  6, 9,
  1, 4,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  10, 3, 3, 0, 1,
  4, 14,
  2, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  10, 2, 2, 0, 0,
  6, 14,
  1, 3,
  3, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  13, 3, 4, 1, 1,
  3, 10,
  3, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  15, 3, 2, 0, 1,
  4, 14,
  3, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  13, 3, 3, 1, 1,
  6, 10,
  3, 4,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  10, 3, 4, 0, 1,
  6, 13,
  3, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  8, 2, 4, 1, 1,
  4, 13,
  1, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  12, 3, 5, 0, 1,
  3, 14,
  1, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  113,
  @season_id,
  NULL,
  1,
  12, 2, 5, 1, 1,
  4, 10,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 113
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Kyle Kuzma (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  11, 5, 1, 1, 1,
  5, 7,
  1, 5,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  9, 3, 3, 1, 1,
  5, 11,
  0, 4,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  13, 3, 1, 0, 0,
  4, 8,
  2, 5,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  10, 5, 2, 1, 0,
  5, 11,
  0, 3,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  10, 6, 2, 1, 1,
  5, 7,
  0, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  6, 6, 3, 1, 1,
  5, 12,
  1, 2,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  11, 4, 1, 1, 1,
  4, 11,
  1, 1,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  12, 6, 2, 0, 0,
  3, 10,
  1, 1,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  11, 4, 1, 0, 0,
  6, 8,
  1, 4,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  114,
  @season_id,
  NULL,
  1,
  7, 5, 1, 1, 1,
  5, 9,
  1, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 114
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Tyus Jones (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  14, 2, 2, 1, 1,
  3, 14,
  1, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  11, 2, 4, 1, 1,
  6, 14,
  1, 6,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  8, 4, 5, 0, 1,
  3, 14,
  3, 7,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  8, 4, 4, 1, 0,
  5, 9,
  3, 6,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  10, 3, 5, 0, 0,
  6, 12,
  2, 5,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  8, 3, 3, 1, 1,
  6, 12,
  2, 7,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  10, 4, 3, 1, 0,
  4, 12,
  3, 5,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  15, 2, 5, 1, 1,
  6, 14,
  2, 5,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  9, 4, 4, 1, 1,
  5, 10,
  2, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  115,
  @season_id,
  NULL,
  1,
  14, 3, 4, 0, 1,
  6, 9,
  1, 6,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 115
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Cade Cunningham (starter)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  20, 5, 4, 0, 1,
  6, 15,
  1, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  15, 5, 4, 1, 1,
  6, 16,
  2, 5,
  5, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  14, 2, 6, 2, 1,
  5, 17,
  2, 7,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  18, 4, 3, 0, 0,
  9, 13,
  2, 4,
  3, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  20, 2, 5, 0, 0,
  7, 11,
  2, 5,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  18, 3, 6, 1, 0,
  9, 16,
  2, 6,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  13, 4, 3, 2, 1,
  7, 16,
  1, 4,
  2, 6
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  17, 2, 6, 2, 0,
  7, 12,
  3, 4,
  4, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  18, 2, 4, 0, 1,
  9, 12,
  2, 8,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  116,
  @season_id,
  NULL,
  1,
  19, 2, 6, 0, 0,
  7, 15,
  2, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 116
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jaden Ivey (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  15, 2, 5, 0, 0,
  4, 8,
  2, 4,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  15, 3, 5, 0, 1,
  6, 8,
  1, 6,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  10, 3, 4, 0, 0,
  3, 9,
  2, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  8, 3, 3, 0, 1,
  5, 8,
  2, 5,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  13, 4, 5, 1, 0,
  5, 11,
  1, 4,
  2, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  9, 2, 4, 0, 0,
  5, 12,
  3, 5,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  8, 3, 2, 0, 1,
  4, 8,
  2, 4,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  15, 2, 5, 0, 0,
  6, 14,
  1, 3,
  1, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  13, 3, 2, 1, 1,
  3, 10,
  2, 3,
  3, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  117,
  @season_id,
  NULL,
  1,
  15, 4, 3, 1, 1,
  5, 12,
  3, 6,
  1, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 117
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Statistiques pour Jalen Duren (role)
INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  8, 9, 3, 1, 2,
  3, 6,
  1, 0,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 1
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  11, 4, 3, 1, 2,
  4, 5,
  0, 2,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 2
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  10, 8, 1, 0, 0,
  3, 6,
  0, 0,
  2, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 3
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  6, 4, 1, 0, 2,
  5, 8,
  0, 0,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 4
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  6, 7, 1, 0, 2,
  3, 6,
  1, 0,
  2, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 5
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  9, 6, 2, 0, 0,
  3, 6,
  1, 1,
  3, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 6
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  8, 9, 2, 1, 1,
  3, 5,
  0, 0,
  1, 2
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 7
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  11, 9, 2, 1, 0,
  2, 8,
  0, 1,
  3, 3
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 8
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  11, 4, 3, 0, 2,
  2, 5,
  1, 0,
  1, 5
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 9
);

INSERT INTO player_stats (
  player_id, season_id, game_id,
  games_played, points, rebounds, assists, steals, blocks,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  118,
  @season_id,
  NULL,
  1,
  12, 6, 1, 1, 0,
  3, 6,
  0, 2,
  2, 4
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = 118
  AND ps.season_id = @season_id
  HAVING COUNT(*) >= 10
);


-- Vérification
SELECT '✅ Statistiques de tous les joueurs créées!' AS message;
SELECT COUNT(DISTINCT player_id) AS joueurs_avec_stats, COUNT(*) AS total_matchs FROM player_stats;
