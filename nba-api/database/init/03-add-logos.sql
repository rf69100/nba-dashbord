-- ============================================
-- NBA API - Ajout des logos d'équipes
-- ============================================

-- Ajouter la colonne logo_url si elle n'existe pas
ALTER TABLE teams
ADD COLUMN IF NOT EXISTS logo_url VARCHAR(255) DEFAULT NULL
AFTER arena;

-- Mise à jour des URLs de logos pour chaque équipe
-- Les logos sont servis depuis le frontend React (public/images/nba-logos/)

-- EASTERN CONFERENCE

-- Atlantic Division
UPDATE teams SET logo_url = '/images/nba-logos/boston-celtics.svg' WHERE abbreviation = 'BOS';
UPDATE teams SET logo_url = '/images/nba-logos/brooklyn-nets.svg' WHERE abbreviation = 'BKN';
UPDATE teams SET logo_url = '/images/nba-logos/new-york-knicks.svg' WHERE abbreviation = 'NYK';
UPDATE teams SET logo_url = '/images/nba-logos/philadelphia-76ers.svg' WHERE abbreviation = 'PHI';
UPDATE teams SET logo_url = '/images/nba-logos/toronto-raptors.svg' WHERE abbreviation = 'TOR';

-- Central Division
UPDATE teams SET logo_url = '/images/nba-logos/chicago-bulls.svg' WHERE abbreviation = 'CHI';
UPDATE teams SET logo_url = '/images/nba-logos/cleveland-cavaliers.svg' WHERE abbreviation = 'CLE';
UPDATE teams SET logo_url = '/images/nba-logos/detroit-pistons.svg' WHERE abbreviation = 'DET';
UPDATE teams SET logo_url = '/images/nba-logos/indiana-pacers.svg' WHERE abbreviation = 'IND';
UPDATE teams SET logo_url = '/images/nba-logos/milwaukee-bucks.svg' WHERE abbreviation = 'MIL';

-- Southeast Division
UPDATE teams SET logo_url = '/images/nba-logos/atlanta-hawks.svg' WHERE abbreviation = 'ATL';
UPDATE teams SET logo_url = '/images/nba-logos/charlotte-hornets.svg' WHERE abbreviation = 'CHA';
UPDATE teams SET logo_url = '/images/nba-logos/miami-heat.svg' WHERE abbreviation = 'MIA';
UPDATE teams SET logo_url = '/images/nba-logos/orlando-magic.svg' WHERE abbreviation = 'ORL';
UPDATE teams SET logo_url = '/images/nba-logos/washington-wizards.svg' WHERE abbreviation = 'WAS';

-- WESTERN CONFERENCE

-- Northwest Division
UPDATE teams SET logo_url = '/images/nba-logos/denver-nuggets.svg' WHERE abbreviation = 'DEN';
UPDATE teams SET logo_url = '/images/nba-logos/minnesota-timberwolves.svg' WHERE abbreviation = 'MIN';
UPDATE teams SET logo_url = '/images/nba-logos/oklahoma-city-thunder.svg' WHERE abbreviation = 'OKC';
UPDATE teams SET logo_url = '/images/nba-logos/portland-trail-blazers.svg' WHERE abbreviation = 'POR';
UPDATE teams SET logo_url = '/images/nba-logos/utah-jazz.svg' WHERE abbreviation = 'UTA';

-- Pacific Division
UPDATE teams SET logo_url = '/images/nba-logos/golden-state-warriors.svg' WHERE abbreviation = 'GSW';
UPDATE teams SET logo_url = '/images/nba-logos/los-angeles-clippers.svg' WHERE abbreviation = 'LAC';
UPDATE teams SET logo_url = '/images/nba-logos/los-angeles-lakers.svg' WHERE abbreviation = 'LAL';
UPDATE teams SET logo_url = '/images/nba-logos/phoenix-suns.svg' WHERE abbreviation = 'PHX';
UPDATE teams SET logo_url = '/images/nba-logos/sacramento-kings.svg' WHERE abbreviation = 'SAC';

-- Southwest Division
UPDATE teams SET logo_url = '/images/nba-logos/dallas-mavericks.svg' WHERE abbreviation = 'DAL';
UPDATE teams SET logo_url = '/images/nba-logos/houston-rockets.svg' WHERE abbreviation = 'HOU';
UPDATE teams SET logo_url = '/images/nba-logos/memphis-grizzlies.svg' WHERE abbreviation = 'MEM';
UPDATE teams SET logo_url = '/images/nba-logos/new-orleans-pelicans.svg' WHERE abbreviation = 'NOP';
UPDATE teams SET logo_url = '/images/nba-logos/san-antonio-spurs.svg' WHERE abbreviation = 'SAS';

-- Vérification
SELECT '✅ Logos ajoutés avec succès!' AS message;

-- Afficher un échantillon
SELECT
    name,
    abbreviation,
    logo_url
FROM teams
WHERE logo_url IS NOT NULL
LIMIT 10;
