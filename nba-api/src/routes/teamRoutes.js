const express = require('express');
const router = express.Router();
const {
  getAllTeams,
  getTeamById,
  createTeam,
  updateTeam,
  deleteTeam,
  getStandings,
  getTeamWithStats
} = require('../controllers/teamController');

/**
 * @route   GET /api/v1/teams/standings
 * @desc    Récupérer le classement (standings) avec statistiques
 * @access  Public
 * @query   ?conference=East ou ?conference=West
 * @note    IMPORTANT: Cette route doit être AVANT /:id pour éviter les conflits
 */
router.get('/standings', getStandings);

/**
 * @route   GET /api/v1/teams
 * @desc    Récupérer toutes les équipes
 * @access  Public
 * @query   ?conference=East&division=Atlantic&page=1&limit=10
 */
router.get('/', getAllTeams);

/**
 * @route   GET /api/v1/teams/:id/stats
 * @desc    Récupérer une équipe avec ses statistiques
 * @access  Public
 */
router.get('/:id/stats', getTeamWithStats);

/**
 * @route   GET /api/v1/teams/:id
 * @desc    Récupérer une équipe par ID
 * @access  Public
 */
router.get('/:id', getTeamById);

/**
 * @route   POST /api/v1/teams
 * @desc    Créer une nouvelle équipe
 * @access  Private (à sécuriser plus tard)
 */
router.post('/', createTeam);

/**
 * @route   PUT /api/v1/teams/:id
 * @desc    Mettre à jour une équipe
 * @access  Private (à sécuriser plus tard)
 */
router.put('/:id', updateTeam);

/**
 * @route   DELETE /api/v1/teams/:id
 * @desc    Supprimer une équipe (soft delete)
 * @access  Private (à sécuriser plus tard)
 */
router.delete('/:id', deleteTeam);

module.exports = router;
