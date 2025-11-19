const express = require('express');
const router = express.Router();
const {
  getAllPlayers,
  getPlayerById,
  getPlayerWithStats,
  createPlayer,
  updatePlayer,
  deletePlayer
} = require('../controllers/playerController');

/**
 * @route   GET /api/v1/players
 * @desc    Récupérer tous les joueurs
 * @access  Public
 * @query   ?team_id=1&position=Guard
 */
router.get('/', getAllPlayers);

/**
 * @route   GET /api/v1/players/:id/stats
 * @desc    Récupérer un joueur avec ses statistiques
 * @access  Public
 * @note    IMPORTANT: Cette route doit être AVANT /:id pour éviter les conflits
 */
router.get('/:id/stats', getPlayerWithStats);

/**
 * @route   GET /api/v1/players/:id
 * @desc    Récupérer un joueur par ID
 * @access  Public
 */
router.get('/:id', getPlayerById);

/**
 * @route   POST /api/v1/players
 * @desc    Créer un nouveau joueur
 * @access  Private (à sécuriser plus tard)
 */
router.post('/', createPlayer);

/**
 * @route   PUT /api/v1/players/:id
 * @desc    Mettre à jour un joueur
 * @access  Private (à sécuriser plus tard)
 */
router.put('/:id', updatePlayer);

/**
 * @route   DELETE /api/v1/players/:id
 * @desc    Supprimer un joueur (soft delete)
 * @access  Private (à sécuriser plus tard)
 */
router.delete('/:id', deletePlayer);

module.exports = router;
