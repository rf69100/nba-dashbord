-- ============================================
-- AJOUT DES PHOTOS ET STATS DES JOUEURS
-- ============================================

SET @season_id = (SELECT id FROM seasons WHERE year = '2024-25' LIMIT 1);

-- Mise à jour des photos des joueurs
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/2544.png' WHERE display_name = 'LeBron James';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203076.png' WHERE display_name = 'Anthony Davis';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630559.png' WHERE display_name = 'Austin Reaves';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626156.png' WHERE display_name = 'D\'Angelo Russell';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629060.png' WHERE display_name = 'Rui Hachimura';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629020.png' WHERE display_name = 'Jarred Vanderbilt';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627752.png' WHERE display_name = 'Taurean Prince';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629634.png' WHERE display_name = 'Jaxson Hayes';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629216.png' WHERE display_name = 'Gabe Vincent';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631119.png' WHERE display_name = 'Max Christie';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629629.png' WHERE display_name = 'Cam Reddish';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201939.png' WHERE display_name = 'Stephen Curry';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202691.png' WHERE display_name = 'Klay Thompson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203952.png' WHERE display_name = 'Andrew Wiggins';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203110.png' WHERE display_name = 'Draymond Green';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630228.png' WHERE display_name = 'Jonathan Kuminga';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/101108.png' WHERE display_name = 'Chris Paul';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626172.png' WHERE display_name = 'Kevon Looney';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630541.png' WHERE display_name = 'Moses Moody';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641705.png' WHERE display_name = 'Brandin Podziemski';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627780.png' WHERE display_name = 'Gary Payton II';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641712.png' WHERE display_name = 'Trayce Jackson-Davis';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628369.png' WHERE display_name = 'Jayson Tatum';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627759.png' WHERE display_name = 'Jaylen Brown';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201950.png' WHERE display_name = 'Jrue Holiday';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628401.png' WHERE display_name = 'Derrick White';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/204001.png' WHERE display_name = 'Kristaps Porzingis';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201143.png' WHERE display_name = 'Al Horford';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629619.png' WHERE display_name = 'Payton Pritchard';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630573.png' WHERE display_name = 'Sam Hauser';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628436.png' WHERE display_name = 'Luke Kornet';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203507.png' WHERE display_name = 'Giannis Antetokounmpo';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203081.png' WHERE display_name = 'Damian Lillard';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203114.png' WHERE display_name = 'Khris Middleton';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201572.png' WHERE display_name = 'Brook Lopez';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626171.png' WHERE display_name = 'Bobby Portis';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627736.png' WHERE display_name = 'Malik Beasley';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203999.png' WHERE display_name = 'Nikola Jokic';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627750.png' WHERE display_name = 'Jamal Murray';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629008.png' WHERE display_name = 'Michael Porter Jr.';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203932.png' WHERE display_name = 'Aaron Gordon';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203484.png' WHERE display_name = 'Kentavious Caldwell-Pope';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631104.png' WHERE display_name = 'Christian Braun';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629029.png' WHERE display_name = 'Luka Doncic';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202681.png' WHERE display_name = 'Kyrie Irving';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641705.png' WHERE display_name = 'Dereck Lively II';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629655.png' WHERE display_name = 'Daniel Gafford';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628983.png' WHERE display_name = 'Shai Gilgeous-Alexander';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641705.png' WHERE display_name = 'Chet Holmgren';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631116.png' WHERE display_name = 'Jalen Williams';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630581.png' WHERE display_name = 'Josh Giddey';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629652.png' WHERE display_name = 'Luguentz Dort';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203954.png' WHERE display_name = 'Joel Embiid';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630178.png' WHERE display_name = 'Tyrese Maxey';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202699.png' WHERE display_name = 'Tobias Harris';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626162.png' WHERE display_name = 'Kelly Oubre Jr.';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201142.png' WHERE display_name = 'Kevin Durant';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626164.png' WHERE display_name = 'Devin Booker';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203078.png' WHERE display_name = 'Bradley Beal';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203994.png' WHERE display_name = 'Jusuf Nurkic';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628960.png' WHERE display_name = 'Grayson Allen';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202710.png' WHERE display_name = 'Jimmy Butler';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628389.png' WHERE display_name = 'Bam Adebayo';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629639.png' WHERE display_name = 'Tyler Herro';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628378.png' WHERE display_name = 'Donovan Mitchell';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629636.png' WHERE display_name = 'Darius Garland';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628386.png' WHERE display_name = 'Jarrett Allen';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630596.png' WHERE display_name = 'Evan Mobley';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628973.png' WHERE display_name = 'Jalen Brunson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203944.png' WHERE display_name = 'Julius Randle';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628384.png' WHERE display_name = 'OG Anunoby';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629011.png' WHERE display_name = 'Mitchell Robinson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629627.png' WHERE display_name = 'Zion Williamson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627742.png' WHERE display_name = 'Brandon Ingram';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203468.png' WHERE display_name = 'CJ McCollum';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630530.png' WHERE display_name = 'Herbert Jones';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630554.png' WHERE display_name = 'Trey Murphy III';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629630.png' WHERE display_name = 'Ja Morant';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630217.png' WHERE display_name = 'Desmond Bane';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628991.png' WHERE display_name = 'Jaren Jackson Jr.';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203935.png' WHERE display_name = 'Marcus Smart';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631094.png' WHERE display_name = 'Paolo Banchero';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630532.png' WHERE display_name = 'Franz Wagner';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630591.png' WHERE display_name = 'Jalen Suggs';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628976.png' WHERE display_name = 'Wendell Carter Jr.';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641705.png' WHERE display_name = 'Victor Wembanyama';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630170.png' WHERE display_name = 'Devin Vassell';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629640.png' WHERE display_name = 'Keldon Johnson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631102.png' WHERE display_name = 'Jeremy Sochan';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629027.png' WHERE display_name = 'Trae Young';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627749.png' WHERE display_name = 'Dejounte Murray';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203991.png' WHERE display_name = 'Clint Capela';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630556.png' WHERE display_name = 'Jalen Johnson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629631.png' WHERE display_name = 'De\'Andre Hunter';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203992.png' WHERE display_name = 'Bogdan Bogdanovic';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630169.png' WHERE display_name = 'Tyrese Haliburton';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626167.png' WHERE display_name = 'Myles Turner';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631096.png' WHERE display_name = 'Bennedict Mathurin';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628971.png' WHERE display_name = 'Bruce Brown';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630167.png' WHERE display_name = 'Obi Toppin';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630578.png' WHERE display_name = 'Alperen Sengun';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630224.png' WHERE display_name = 'Jalen Green';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627832.png' WHERE display_name = 'Fred VanVleet';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631095.png' WHERE display_name = 'Jabari Smith Jr.';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628415.png' WHERE display_name = 'Dillon Brooks';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628368.png' WHERE display_name = 'De\'Aaron Fox';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627734.png' WHERE display_name = 'Domantas Sabonis';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631097.png' WHERE display_name = 'Keegan Murray';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203084.png' WHERE display_name = 'Harrison Barnes';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628370.png' WHERE display_name = 'Malik Monk';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202695.png' WHERE display_name = 'Kawhi Leonard';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202331.png' WHERE display_name = 'Paul George';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201935.png' WHERE display_name = 'James Harden';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201566.png' WHERE display_name = 'Russell Westbrook';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627826.png' WHERE display_name = 'Ivica Zubac';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626181.png' WHERE display_name = 'Norman Powell';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630162.png' WHERE display_name = 'Anthony Edwards';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626157.png' WHERE display_name = 'Karl-Anthony Towns';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203497.png' WHERE display_name = 'Rudy Gobert';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201144.png' WHERE display_name = 'Mike Conley';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630183.png' WHERE display_name = 'Jaden McDaniels';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629675.png' WHERE display_name = 'Naz Reid';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628969.png' WHERE display_name = 'Mikal Bridges';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630560.png' WHERE display_name = 'Cam Thomas';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629651.png' WHERE display_name = 'Nic Claxton';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203915.png' WHERE display_name = 'Spencer Dinwiddie';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203897.png' WHERE display_name = 'Zach LaVine';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/201942.png' WHERE display_name = 'DeMar DeRozan';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202696.png' WHERE display_name = 'Nikola Vucevic';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629632.png' WHERE display_name = 'Coby White';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630169.png' WHERE display_name = 'Patrick Williams';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630567.png' WHERE display_name = 'Scottie Barnes';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627783.png' WHERE display_name = 'Pascal Siakam';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1627751.png' WHERE display_name = 'Jakob Poeltl';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630163.png' WHERE display_name = 'LaMelo Ball';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628970.png' WHERE display_name = 'Miles Bridges';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631114.png' WHERE display_name = 'Mark Williams';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641738.png' WHERE display_name = 'Brandon Miller';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626179.png' WHERE display_name = 'Terry Rozier';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1630595.png' WHERE display_name = 'Cade Cunningham';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631093.png' WHERE display_name = 'Jaden Ivey';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631105.png' WHERE display_name = 'Jalen Duren';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/202711.png' WHERE display_name = 'Bojan Bogdanovic';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641739.png' WHERE display_name = 'Ausar Thompson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629673.png' WHERE display_name = 'Jordan Poole';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628398.png' WHERE display_name = 'Kyle Kuzma';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1626145.png' WHERE display_name = 'Tyus Jones';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629014.png' WHERE display_name = 'Anfernee Simons';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203924.png' WHERE display_name = 'Jerami Grant';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1641740.png' WHERE display_name = 'Scoot Henderson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629028.png' WHERE display_name = 'Deandre Ayton';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631101.png' WHERE display_name = 'Shaedon Sharpe';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628374.png' WHERE display_name = 'Lauri Markkanen';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/203903.png' WHERE display_name = 'Jordan Clarkson';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1629012.png' WHERE display_name = 'Collin Sexton';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1631098.png' WHERE display_name = 'Walker Kessler';
UPDATE players SET photo_url = 'https://cdn.nba.com/headshots/nba/latest/1040x760/1628381.png' WHERE display_name = 'John Collins';

-- Génération des statistiques des joueurs

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  24.8, 10.7, 4.4, 1.9, 1.8, 2.5,
  11.3, 20.6,
  3.7, 11.3,
  5.0, 5.9
FROM players p
WHERE p.display_name = 'LeBron James'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  23.1, 9.4, 4.1, 1.6, 1.8, 2.5,
  10.5, 19.5,
  3.5, 9.3,
  4.6, 5.4
FROM players p
WHERE p.display_name = 'Anthony Davis'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.4, 3.6, 5.4, 0.5, 0.2, 2.5,
  7.5, 17.7,
  2.5, 6.9,
  3.3, 3.9
FROM players p
WHERE p.display_name = 'Austin Reaves'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  18.0, 4.2, 6.1, 0.4, 1.0, 2.5,
  8.2, 17.3,
  2.7, 7.5,
  3.6, 4.7
FROM players p
WHERE p.display_name = 'D\'Angelo Russell'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.6, 5.8, 1.5, 0.6, 0.8, 2.5,
  4.8, 10.5,
  1.6, 4.7,
  2.1, 2.9
FROM players p
WHERE p.display_name = 'Rui Hachimura'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  31.2, 4.5, 10.4, 1.8, 0.0, 2.5,
  14.2, 30.2,
  4.7, 11.4,
  6.2, 7.7
FROM players p
WHERE p.display_name = 'Stephen Curry'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  14.3, 4.8, 5.7, 0.7, 0.4, 2.5,
  6.5, 13.8,
  2.1, 6.3,
  2.9, 3.6
FROM players p
WHERE p.display_name = 'Klay Thompson'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.3, 7.6, 4.5, 0.9, 0.8, 2.5,
  7.4, 16.0,
  2.4, 7.3,
  3.3, 4.3
FROM players p
WHERE p.display_name = 'Andrew Wiggins'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.0, 7.9, 2.1, 0.7, 0.8, 2.5,
  5.5, 10.8,
  1.8, 5.5,
  2.4, 3.2
FROM players p
WHERE p.display_name = 'Draymond Green'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.6, 3.3, 2.8, 0.3, 0.9, 2.5,
  4.8, 11.1,
  1.6, 5.3,
  2.1, 2.9
FROM players p
WHERE p.display_name = 'Jonathan Kuminga'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  29.4, 9.5, 6.6, 1.6, 1.7, 2.5,
  13.4, 24.6,
  4.4, 13.7,
  5.9, 7.1
FROM players p
WHERE p.display_name = 'Jayson Tatum'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.3, 3.5, 4.1, 0.8, 0.7, 2.5,
  5.6, 12.6,
  1.8, 5.2,
  2.5, 3.1
FROM players p
WHERE p.display_name = 'Jaylen Brown'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  19.7, 3.4, 6.1, 0.5, 0.2, 2.5,
  9.0, 19.6,
  3.0, 7.8,
  3.9, 4.8
FROM players p
WHERE p.display_name = 'Jrue Holiday'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.8, 3.5, 6.7, 0.5, 1.0, 2.5,
  5.8, 12.7,
  1.9, 5.2,
  2.6, 3.1
FROM players p
WHERE p.display_name = 'Derrick White'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  14.7, 7.9, 1.3, 0.7, 1.3, 2.5,
  6.7, 11.8,
  2.2, 9.6,
  2.9, 4.3
FROM players p
WHERE p.display_name = 'Kristaps Porzingis'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  25.6, 11.2, 4.6, 1.8, 1.4, 2.5,
  11.6, 24.2,
  3.8, 11.1,
  5.1, 6.7
FROM players p
WHERE p.display_name = 'Giannis Antetokounmpo'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  31.4, 5.8, 8.7, 1.4, 0.5, 2.5,
  14.3, 30.2,
  4.7, 12.0,
  6.3, 7.2
FROM players p
WHERE p.display_name = 'Damian Lillard'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  11.0, 5.6, 3.3, 0.6, 0.6, 2.5,
  5.0, 10.9,
  1.6, 4.3,
  2.2, 3.0
FROM players p
WHERE p.display_name = 'Khris Middleton'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  13.6, 8.9, 2.4, 0.5, 1.3, 2.5,
  6.2, 11.4,
  2.0, 9.1,
  2.7, 3.9
FROM players p
WHERE p.display_name = 'Brook Lopez'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  23.3, 13.2, 4.0, 0.8, 2.4, 2.5,
  10.6, 16.5,
  3.5, 12.1,
  4.7, 6.1
FROM players p
WHERE p.display_name = 'Nikola Jokic'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  15.6, 4.0, 6.6, 0.3, 0.9, 2.5,
  7.1, 16.0,
  2.3, 6.6,
  3.1, 3.9
FROM players p
WHERE p.display_name = 'Jamal Murray'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  13.4, 7.9, 4.7, 0.5, 0.4, 2.5,
  6.1, 13.5,
  2.0, 5.4,
  2.7, 3.6
FROM players p
WHERE p.display_name = 'Michael Porter Jr.'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  15.7, 7.1, 4.7, 0.6, 0.6, 2.5,
  7.1, 15.2,
  2.4, 6.9,
  3.1, 4.3
FROM players p
WHERE p.display_name = 'Aaron Gordon'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  27.8, 6.0, 7.9, 1.6, 0.2, 2.5,
  12.6, 25.5,
  4.2, 11.6,
  5.6, 6.9
FROM players p
WHERE p.display_name = 'Luka Doncic'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.5, 4.0, 5.1, 0.0, 0.7, 2.5,
  5.7, 12.7,
  1.9, 5.3,
  2.5, 3.1
FROM players p
WHERE p.display_name = 'Kyrie Irving'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  31.3, 6.2, 8.1, 1.5, 0.2, 2.5,
  14.2, 27.5,
  4.7, 12.6,
  6.3, 7.8
FROM players p
WHERE p.display_name = 'Shai Gilgeous-Alexander'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  11.0, 9.6, 1.8, 0.6, 1.1, 2.5,
  5.0, 8.4,
  1.6, 7.9,
  2.2, 3.2
FROM players p
WHERE p.display_name = 'Chet Holmgren'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  13.6, 5.4, 4.1, 0.5, 0.8, 2.5,
  6.2, 13.6,
  2.0, 5.4,
  2.7, 3.6
FROM players p
WHERE p.display_name = 'Jalen Williams'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  23.9, 10.0, 4.8, 0.7, 2.1, 2.5,
  10.9, 17.9,
  3.6, 13.8,
  4.8, 5.7
FROM players p
WHERE p.display_name = 'Joel Embiid'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.0, 3.2, 6.2, 0.6, 0.9, 2.5,
  7.3, 16.0,
  2.4, 7.2,
  3.2, 3.8
FROM players p
WHERE p.display_name = 'Tyrese Maxey'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  23.2, 10.7, 6.1, 1.4, 2.0, 2.5,
  10.5, 19.5,
  3.5, 10.1,
  4.6, 6.2
FROM players p
WHERE p.display_name = 'Kevin Durant'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  28.2, 4.1, 8.2, 1.3, 1.0, 2.5,
  12.8, 27.3,
  4.2, 10.2,
  5.6, 6.6
FROM players p
WHERE p.display_name = 'Devin Booker'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  19.3, 3.5, 4.9, 1.0, 0.1, 2.5,
  8.8, 19.8,
  2.9, 8.0,
  3.9, 5.0
FROM players p
WHERE p.display_name = 'Bradley Beal'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  22.4, 9.3, 4.5, 1.8, 1.1, 2.5,
  10.2, 20.1,
  3.4, 8.8,
  4.5, 5.8
FROM players p
WHERE p.display_name = 'Jimmy Butler'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  14.5, 11.5, 2.8, 0.8, 1.7, 2.5,
  6.6, 11.1,
  2.2, 7.4,
  2.9, 4.2
FROM players p
WHERE p.display_name = 'Bam Adebayo'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.2, 4.8, 6.3, 0.9, 0.2, 2.5,
  5.5, 13.2,
  1.8, 5.1,
  2.4, 2.9
FROM players p
WHERE p.display_name = 'Tyler Herro'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  28.0, 6.7, 8.4, 1.8, 0.9, 2.5,
  12.7, 27.1,
  4.2, 10.3,
  5.6, 6.6
FROM players p
WHERE p.display_name = 'Donovan Mitchell'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  13.3, 3.0, 5.4, 0.7, 0.1, 2.5,
  6.0, 13.4,
  2.0, 5.6,
  2.7, 3.5
FROM players p
WHERE p.display_name = 'Darius Garland'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.9, 10.8, 4.0, 0.7, 1.0, 2.5,
  5.0, 8.9,
  1.6, 8.8,
  2.2, 3.1
FROM players p
WHERE p.display_name = 'Jarrett Allen'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  11.6, 8.0, 4.7, 0.7, 0.8, 2.5,
  5.3, 11.4,
  1.7, 5.4,
  2.3, 2.8
FROM players p
WHERE p.display_name = 'Evan Mobley'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.8, 3.1, 4.8, 0.3, 0.0, 2.5,
  5.8, 12.7,
  1.9, 5.3,
  2.6, 3.4
FROM players p
WHERE p.display_name = 'Jalen Brunson'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  15.4, 8.1, 3.0, 0.6, 0.2, 2.5,
  7.0, 14.3,
  2.3, 7.0,
  3.1, 3.8
FROM players p
WHERE p.display_name = 'Julius Randle'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.9, 8.4, 3.6, 0.7, 0.5, 2.5,
  5.0, 9.8,
  1.6, 5.1,
  2.2, 2.8
FROM players p
WHERE p.display_name = 'Zion Williamson'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.4, 5.3, 4.1, 0.6, 0.4, 2.5,
  5.6, 11.3,
  1.9, 5.9,
  2.5, 3.4
FROM players p
WHERE p.display_name = 'Brandon Ingram'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.4, 3.8, 6.0, 0.8, 0.7, 2.5,
  7.5, 16.8,
  2.5, 7.2,
  3.3, 3.9
FROM players p
WHERE p.display_name = 'CJ McCollum'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.3, 3.1, 4.5, 0.4, 0.4, 2.5,
  7.4, 15.5,
  2.4, 6.7,
  3.3, 4.1
FROM players p
WHERE p.display_name = 'Ja Morant'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  18.1, 3.6, 5.4, 1.0, 0.4, 2.5,
  8.2, 17.4,
  2.7, 8.1,
  3.6, 4.3
FROM players p
WHERE p.display_name = 'Desmond Bane'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  17.1, 5.0, 3.3, 0.5, 0.8, 2.5,
  7.8, 15.2,
  2.6, 7.1,
  3.4, 4.2
FROM players p
WHERE p.display_name = 'Jaren Jackson Jr.'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  11.6, 8.8, 4.5, 0.4, 0.5, 2.5,
  5.3, 11.6,
  1.7, 4.8,
  2.3, 2.9
FROM players p
WHERE p.display_name = 'Paolo Banchero'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.4, 5.5, 2.9, 0.5, 0.7, 2.5,
  4.7, 9.8,
  1.6, 5.0,
  2.1, 2.9
FROM players p
WHERE p.display_name = 'Franz Wagner'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.9, 7.5, 3.4, 0.9, 1.6, 2.5,
  5.0, 9.2,
  1.6, 9.7,
  2.2, 3.3
FROM players p
WHERE p.display_name = 'Victor Wembanyama'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.3, 4.8, 5.8, 1.0, 0.7, 2.5,
  7.4, 16.3,
  2.4, 6.7,
  3.3, 4.0
FROM players p
WHERE p.display_name = 'Trae Young'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  19.3, 3.7, 5.5, 0.9, 1.0, 2.5,
  8.8, 19.8,
  2.9, 8.5,
  3.9, 5.0
FROM players p
WHERE p.display_name = 'Dejounte Murray'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  13.1, 4.9, 5.8, 0.8, 0.1, 2.5,
  6.0, 14.1,
  2.0, 5.9,
  2.6, 3.3
FROM players p
WHERE p.display_name = 'Tyrese Haliburton'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.8, 12.0, 3.2, 0.3, 1.9, 2.5,
  4.9, 8.7,
  1.6, 9.2,
  2.2, 3.1
FROM players p
WHERE p.display_name = 'Myles Turner'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  13.1, 8.9, 3.9, 0.0, 1.2, 2.5,
  6.0, 11.4,
  2.0, 7.9,
  2.6, 3.7
FROM players p
WHERE p.display_name = 'Alperen Sengun'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  14.4, 3.7, 6.0, 0.3, 0.3, 2.5,
  6.5, 14.8,
  2.2, 6.1,
  2.9, 3.8
FROM players p
WHERE p.display_name = 'Jalen Green'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  17.3, 3.2, 6.8, 0.7, 0.5, 2.5,
  7.9, 18.5,
  2.6, 7.1,
  3.5, 4.1
FROM players p
WHERE p.display_name = 'Fred VanVleet'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  19.2, 3.7, 4.4, 0.6, 0.1, 2.5,
  8.7, 20.0,
  2.9, 8.3,
  3.8, 4.6
FROM players p
WHERE p.display_name = 'De\'Aaron Fox'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  15.9, 7.2, 1.8, 0.7, 1.4, 2.5,
  7.2, 12.3,
  2.4, 8.0,
  3.2, 4.7
FROM players p
WHERE p.display_name = 'Domantas Sabonis'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  14.4, 5.5, 3.1, 0.1, 0.2, 2.5,
  6.5, 14.0,
  2.2, 6.7,
  2.9, 3.6
FROM players p
WHERE p.display_name = 'Keegan Murray'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  25.8, 10.9, 6.3, 1.5, 1.1, 2.5,
  11.7, 22.3,
  3.9, 10.2,
  5.2, 6.1
FROM players p
WHERE p.display_name = 'Kawhi Leonard'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.0, 7.5, 4.7, 0.5, 0.3, 2.5,
  7.3, 15.6,
  2.4, 6.6,
  3.2, 4.4
FROM players p
WHERE p.display_name = 'Paul George'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  14.7, 4.4, 6.1, 0.3, 0.3, 2.5,
  6.7, 15.3,
  2.2, 6.7,
  2.9, 3.9
FROM players p
WHERE p.display_name = 'James Harden'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  29.4, 4.9, 8.4, 1.1, 0.7, 2.5,
  13.4, 28.8,
  4.4, 12.2,
  5.9, 7.0
FROM players p
WHERE p.display_name = 'Anthony Edwards'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  9.0, 8.2, 2.1, 0.8, 1.3, 2.5,
  4.1, 7.3,
  1.3, 7.1,
  1.8, 2.6
FROM players p
WHERE p.display_name = 'Karl-Anthony Towns'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  13.6, 7.6, 1.6, 0.2, 1.2, 2.5,
  6.2, 10.9,
  2.0, 8.8,
  2.7, 4.0
FROM players p
WHERE p.display_name = 'Rudy Gobert'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.9, 5.2, 3.8, 0.2, 0.7, 2.5,
  7.7, 16.2,
  2.5, 7.3,
  3.4, 4.3
FROM players p
WHERE p.display_name = 'Mikal Bridges'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.7, 3.3, 7.0, 0.7, 0.1, 2.5,
  7.6, 16.6,
  2.5, 6.7,
  3.3, 4.1
FROM players p
WHERE p.display_name = 'Cam Thomas'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  15.9, 4.1, 4.8, 0.4, 0.6, 2.5,
  7.2, 16.6,
  2.4, 6.7,
  3.2, 4.0
FROM players p
WHERE p.display_name = 'Zach LaVine'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  16.4, 7.6, 5.0, 1.0, 0.2, 2.5,
  7.5, 16.0,
  2.5, 7.8,
  3.3, 4.4
FROM players p
WHERE p.display_name = 'DeMar DeRozan'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  14.4, 10.0, 1.3, 0.5, 1.6, 2.5,
  6.5, 11.2,
  2.2, 10.4,
  2.9, 3.9
FROM players p
WHERE p.display_name = 'Nikola Vucevic'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.1, 5.4, 4.9, 0.6, 0.6, 2.5,
  4.6, 10.1,
  1.5, 4.1,
  2.0, 2.5
FROM players p
WHERE p.display_name = 'Scottie Barnes'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  10.3, 6.3, 4.9, 0.1, 0.6, 2.5,
  4.7, 10.2,
  1.5, 4.5,
  2.1, 2.8
FROM players p
WHERE p.display_name = 'Pascal Siakam'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  18.1, 3.7, 4.6, 0.5, 0.7, 2.5,
  8.2, 18.0,
  2.7, 7.3,
  3.6, 4.3
FROM players p
WHERE p.display_name = 'LaMelo Ball'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  12.4, 6.7, 4.0, 0.7, 0.8, 2.5,
  5.6, 12.3,
  1.9, 6.0,
  2.5, 3.1
FROM players p
WHERE p.display_name = 'Miles Bridges'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  18.7, 3.1, 6.4, 0.6, 0.7, 2.5,
  8.5, 19.1,
  2.8, 7.9,
  3.7, 4.6
FROM players p
WHERE p.display_name = 'Cade Cunningham'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

INSERT INTO player_stats (
  player_id, season_id, games_played, minutes_played,
  points, rebounds, assists, steals, blocks, turnovers,
  field_goals_made, field_goals_attempted,
  three_pointers_made, three_pointers_attempted,
  free_throws_made, free_throws_attempted
)
SELECT
  p.id, @season_id, 82, 32.5,
  19.3, 4.6, 4.8, 0.9, 0.9, 2.5,
  8.8, 19.5,
  2.9, 7.9,
  3.9, 5.1
FROM players p
WHERE p.display_name = 'Jaden Ivey'
AND NOT EXISTS (
  SELECT 1 FROM player_stats ps
  WHERE ps.player_id = p.id AND ps.season_id = @season_id AND ps.game_id IS NULL
);

-- ============================================
-- VÉRIFICATION
-- ============================================

SELECT '✅ Photos et statistiques ajoutées!' AS message;
SELECT COUNT(*) AS players_with_photos FROM players WHERE photo_url IS NOT NULL;
SELECT COUNT(*) AS players_with_stats FROM player_stats WHERE season_id = @season_id;
