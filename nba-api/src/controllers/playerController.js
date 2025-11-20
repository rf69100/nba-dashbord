const Player = require('../models/Player');
const { successResponse, errorResponse } = require('../utils/responseFormatter');

/**
 * Récupérer tous les joueurs
 * GET /api/v1/players
 */
const getAllPlayers = async (req, res, next) => {
  try {
    const filters = {
      team_id: req.query.team_id,
      position: req.query.position
    };

    const players = await Player.findAll(filters);

    return successResponse(res, players, 'Players retrieved successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Récupérer un joueur par ID
 * GET /api/v1/players/:id
 */
const getPlayerById = async (req, res, next) => {
  try {
    const player = await Player.findById(req.params.id);

    if (!player) {
      return errorResponse(res, 'Player not found', 404);
    }

    return successResponse(res, player, 'Player retrieved successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Récupérer un joueur avec ses statistiques
 * GET /api/v1/players/:id/stats
 */
const getPlayerWithStats = async (req, res, next) => {
  try {
    const player = await Player.findByIdWithStats(req.params.id);

    if (!player) {
      return errorResponse(res, 'Player not found', 404);
    }

    return successResponse(res, player, 'Player with stats retrieved successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Créer un nouveau joueur
 * POST /api/v1/players
 */
const createPlayer = async (req, res, next) => {
  try {
    const { first_name, last_name, position, team_id } = req.body;

    // Validation basique
    if (!first_name || !last_name || !position || !team_id) {
      return errorResponse(res, 'Missing required fields', 400);
    }

    const player = await Player.create(req.body);

    return successResponse(res, player, 'Player created successfully', 201);
  } catch (error) {
    next(error);
  }
};

/**
 * Mettre à jour un joueur
 * PUT /api/v1/players/:id
 */
const updatePlayer = async (req, res, next) => {
  try {
    const player = await Player.findById(req.params.id);

    if (!player) {
      return errorResponse(res, 'Player not found', 404);
    }

    const updatedPlayer = await Player.update(req.params.id, req.body);

    return successResponse(res, updatedPlayer, 'Player updated successfully');
  } catch (error) {
    next(error);
  }
};

/**
 * Supprimer un joueur (soft delete)
 * DELETE /api/v1/players/:id
 */
const deletePlayer = async (req, res, next) => {
  try {
    const player = await Player.findById(req.params.id);

    if (!player) {
      return errorResponse(res, 'Player not found', 404);
    }

    await Player.delete(req.params.id);

    return successResponse(res, null, 'Player deleted successfully');
  } catch (error) {
    next(error);
  }
};

module.exports = {
  getAllPlayers,
  getPlayerById,
  getPlayerWithStats,
  createPlayer,
  updatePlayer,
  deletePlayer
};
