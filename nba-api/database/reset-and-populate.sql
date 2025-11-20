-- ============================================
-- NBA DATABASE - RÉINITIALISATION COMPLÈTE
-- Saison 2024-2025
-- ============================================

-- Importer d'abord le schéma et les équipes
SOURCE database/init/01-schema.sql;
SOURCE database/init/02-populate-teams.sql;
SOURCE database/init/03-add-logos.sql;
SOURCE database/init/10-update-real-standings-2024-25.sql;
