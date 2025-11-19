// Middleware de gestion d'erreurs centralisé
const errorHandler = (err, req, res, next) => {
  console.error('Error:', err);

  // Erreur de base de données
  if (err.code === 'ER_NO_SUCH_TABLE') {
    return res.status(500).json({
      success: false,
      error: 'Database table not found',
      message: 'La table demandée n\'existe pas. Avez-vous exécuté les migrations ?'
    });
  }

  if (err.code && err.code.startsWith('ER_')) {
    return res.status(500).json({
      success: false,
      error: 'Database error',
      message: process.env.NODE_ENV === 'development' ? err.message : 'Erreur de base de données'
    });
  }

  // Erreur de validation
  if (err.name === 'ValidationError') {
    return res.status(400).json({
      success: false,
      error: 'Validation error',
      message: err.message
    });
  }

  // Erreur par défaut
  const statusCode = err.statusCode || 500;
  res.status(statusCode).json({
    success: false,
    error: err.message || 'Internal server error',
    ...(process.env.NODE_ENV === 'development' && { stack: err.stack })
  });
};

// Middleware pour les routes non trouvées
const notFound = (req, res, next) => {
  res.status(404).json({
    success: false,
    error: 'Route not found',
    message: `La route ${req.originalUrl} n'existe pas`
  });
};

module.exports = { errorHandler, notFound };
