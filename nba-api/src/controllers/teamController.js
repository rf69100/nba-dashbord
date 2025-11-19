const Team = require('../models/Team');
const { successResponse, paginatedResponse, errorResponse } = require('../utils/responseFormatter');

/**
 * Récupérer toutes les équipes
 * GET /api/v1/teams
 */
const getAllTeams = async (req, res, next) => {
  try {
    const filters = {
      conference: req.query.conference,
      division: req.query.division,
      is_active: req.query.is_active,
      page: req.query.page,
      limit: req.query.limit
    };

    const { teams, pagination } = await Team.findAll(filters);

    return paginatedResponse(res, teams, pagination, 'Teams retrieved successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Récupérer une équipe par ID
 * GET /api/v1/teams/:id
 */
const getTeamById = async (req, res, next) => {
  try {
    const team = await Team.findById(req.params.id);

    if (!team) {
      return errorResponse(res, 'Team not found', 404);
    }

    return successResponse(res, team, 'Team retrieved successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Créer une nouvelle équipe
 * POST /api/v1/teams
 */
const createTeam = async (req, res, next) => {
  try {
    const { name, city, abbreviation, conference, division, founded_year, arena } = req.body;

    // Validation basique
    if (!name || !city || !abbreviation || !conference || !division) {
      return errorResponse(res, 'Missing required fields', 400);
    }

    const team = await Team.create(req.body);

    return successResponse(res, team, 'Team created successfully', 201);
  } catch (error) {
    next(error);
  }
};

/**
 * Mettre à jour une équipe
 * PUT /api/v1/teams/:id
 */
const updateTeam = async (req, res, next) => {
  try {
    const team = await Team.findById(req.params.id);

    if (!team) {
      return errorResponse(res, 'Team not found', 404);
    }

    const updatedTeam = await Team.update(req.params.id, req.body);

    return successResponse(res, updatedTeam, 'Team updated successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Supprimer une équipe (soft delete)
 * DELETE /api/v1/teams/:id
 */
const deleteTeam = async (req, res, next) => {
  try {
    const team = await Team.findById(req.params.id);

    if (!team) {
      return errorResponse(res, 'Team not found', 404);
    }

    await Team.delete(req.params.id);

    return successResponse(res, null, 'Team deleted successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Récupérer les standings (classement) avec statistiques
 * GET /api/v1/teams/standings
 */
const getStandings = async (req, res, next) => {
  try {
    const filters = {
      conference: req.query.conference, // East ou West
      division: req.query.division
    };

    const standings = await Team.getStandings(filters);

    return successResponse(
      res,
      standings,
      `Standings retrieved successfully${filters.conference ? ' for ' + filters.conference + ' conference' : ''}`
    );
  } catch (error) {
    next(error);
  }
};

/**
 * Récupérer une équipe avec ses statistiques
 * GET /api/v1/teams/:id/stats
 */
const getTeamWithStats = async (req, res, next) => {
  try {
    const team = await Team.findByIdWithStats(req.params.id);

    if (!team) {
      return errorResponse(res, 'Team not found', 404);
    }

    return successResponse(res, team, 'Team with stats retrieved successfully');
  } catch (error) {
    next(error);
  }
};

module.exports = {
  getAllTeams,
  getTeamById,
  createTeam,
  updateTeam,
  deleteTeam,
  getStandings,
  getTeamWithStats
};
