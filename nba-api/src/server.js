require('dotenv').config();
const app = require('./app');
const { testConnection } = require('./config/database');

const PORT = process.env.PORT || 3001;

// Démarrage du serveur
const startServer = async () => {
  try {
    // Test de connexion à la base de données
    const isConnected = await testConnection();
    
    if (!isConnected) {
      console.error('⚠️  Le serveur démarre mais la connexion à la base de données a échoué');
      console.error('⚠️  Vérifiez votre configuration .env et que MariaDB est démarré');
    }

    // Démarrage du serveur Express
    app.listen(PORT, () => {
      console.log('\n🚀 =======================================');
      console.log(`🏀 NBA API is running on port ${PORT}`);
      console.log(`📍 Environment: ${process.env.NODE_ENV || 'development'}`);
      console.log(`🌐 Server: http://localhost:${PORT}`);
      console.log(`💚 Health check: http://localhost:${PORT}/health`);
      console.log(`📚 API Base: http://localhost:${PORT}/api/v1`);
      console.log('🚀 =======================================\n');
    });

  } catch (error) {
    console.error('❌ Erreur au démarrage du serveur:', error);
    process.exit(1);
  }
};

startServer();

// Gestion gracieuse de l'arrêt
process.on('SIGTERM', () => {
  console.log('👋 SIGTERM reçu. Arrêt gracieux du serveur...');
  process.exit(0);
});

process.on('SIGINT', () => {
  console.log('\n👋 SIGINT reçu. Arrêt gracieux du serveur...');
  process.exit(0);
});
