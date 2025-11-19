const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const morgan = require('morgan');
const rateLimit = require('express-rate-limit');
require('dotenv').config();

const { errorHandler, notFound } = require('./middlewares/errorHandler');
const teamRoutes = require('./routes/teamRoutes');
const playerRoutes = require('./routes/playerRoutes');

const app = express();

// ============================================
// MIDDLEWARES DE SÉCURITÉ
// ============================================

// Helmet pour sécuriser les headers HTTP
app.use(helmet());

// CORS - Configuration pour votre dashboard React
const corsOptions = {
  origin: process.env.CORS_ORIGIN || 'http://localhost:3000',
  credentials: true,
  optionsSuccessStatus: 200
};
app.use(cors(corsOptions));

// Rate limiting - Protection contre les abus
const limiter = rateLimit({
  windowMs: parseInt(process.env.RATE_LIMIT_WINDOW_MS) || 15 * 60 * 1000, // 15 minutes
  max: parseInt(process.env.RATE_LIMIT_MAX_REQUESTS) || 100, // 100 requêtes max
  message: {
    success: false,
    message: 'Too many requests, please try again later.'
  }
});
app.use('/api/', limiter);

// ============================================
// MIDDLEWARES GÉNÉRAUX
// ============================================

// Body parser
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Logger
if (process.env.NODE_ENV === 'development') {
  app.use(morgan('dev'));
}

// ============================================
// ROUTES
// ============================================

// Route de santé
app.get('/health', (req, res) => {
  res.json({
    success: true,
    message: 'NBA API is running!',
    timestamp: new Date().toISOString(),
    uptime: process.uptime()
  });
});

// Documentation basique
app.get('/', (req, res) => {
  res.json({
    success: true,
    message: 'Bienvenue sur l\'API NBA',
    version: '1.0.0',
    documentation: '/api/v1',
    endpoints: {
      teams: '/api/v1/teams',
      players: '/api/v1/players',
      health: '/health'
    }
  });
});

// Routes API v1
app.use('/api/v1/teams', teamRoutes);
app.use('/api/v1/players', playerRoutes);

// ============================================
// GESTION DES ERREURS
// ============================================

// Route non trouvée
app.use(notFound);

// Gestionnaire d'erreurs
app.use(errorHandler);

module.exports = app;
