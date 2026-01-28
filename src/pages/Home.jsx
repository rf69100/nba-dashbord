// Importation des modules nécessaires
import { motion } from "framer-motion"; // Pour les animations
import { useNavigate } from "react-router-dom"; // Hook pour la navigation
import { useState, useEffect } from "react"; // Hooks React
import { getPlayers } from "../services/nbaApi"; // API pour récupérer les joueurs
import { getTeams } from "../services/nbaApi"; // API pour récupérer les équipes

/**
 * Page d'accueil du dashboard NBA.
 * Affiche le logo, le titre, la description, des statistiques en direct et les boutons de navigation.
 */
export default function Home() {
  // Hook pour naviguer entre les pages
  const navigate = useNavigate();

  // États pour les statistiques
  const [stats, setStats] = useState({ players: 0, teams: 0 });

  // Charger les statistiques au montage
  useEffect(() => {
    const loadStats = async () => {
      try {
        const playersData = await getPlayers();
        const teamsData = await getTeams();
        setStats({
          players: playersData.players?.length || 0,
          teams: teamsData.teams?.length || 0
        });
      } catch (err) {
        console.error("Erreur lors du chargement des stats:", err);
      }
    };
    loadStats();
  }, []);

  // Liste des fonctionnalités principales à afficher sur la page d'accueil
  const features = [
    {
      title: "🔎 Rechercher des joueurs",
      desc: "Trouve un joueur rapidement et accède à sa fiche détaillée avec toutes les statistiques.",
      gradient: "from-red-500 to-red-600",
      path: "/player"
    },
    {
      title: "📊 Comparer les joueurs",
      desc: "Sélectionne tes joueurs et compare leurs performances avec des graphiques interactifs.",
      gradient: "from-orange-500 to-orange-600",
      path: "/comparison"
    },
    {
      title: "🏆 Classement des équipes",
      desc: "Découvre le classement complet et les statistiques de chaque franchise NBA.",
      gradient: "from-yellow-400 to-yellow-500",
      path: "/standings"
    },
    {
      title: "👥 Explorer les équipes",
      desc: "Navigue parmi les 30 équipes NBA et consulte leurs rosters complets.",
      gradient: "from-orange-400 to-orange-500",
      path: "/teams"
    }
  ];

  // Stats à afficher
  const statsDisplay = [
    { label: "Joueurs", value: stats.players, icon: "👤" },
    { label: "Équipes", value: stats.teams, icon: "🏢" },
    { label: "Saison", value: "2025-26", icon: "📅" }
  ];

  // Variantes d'animations
  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1,
        delayChildren: 0.2
      }
    }
  };

  const itemVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: {
      opacity: 1,
      y: 0,
      transition: { type: "spring", stiffness: 100 }
    }
  };

  // Rendu principal de la page d'accueil
  return (
    <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white overflow-hidden">
      {/* Section Hero */}
      <motion.div
        className="pt-32 pb-16 px-4 sm:px-6 lg:px-8 text-center relative"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ duration: 0.8 }}
      >
        {/* Décoration de fond animée */}
        <motion.div
          className="absolute top-10 left-10 w-32 h-32 bg-white/10 rounded-full blur-3xl"
          animate={{ 
            scale: [1, 1.2, 1],
            opacity: [0.1, 0.2, 0.1]
          }}
          transition={{ duration: 8, repeat: Infinity }}
        />
        <motion.div
          className="absolute bottom-10 right-10 w-40 h-40 bg-white/10 rounded-full blur-3xl"
          animate={{ 
            scale: [1.2, 1, 1.2],
            opacity: [0.1, 0.2, 0.1]
          }}
          transition={{ duration: 8, repeat: Infinity, delay: 2 }}
        />

        {/* Logo NBA animé */}
        <motion.img
          src={`${process.env.PUBLIC_URL}/images/nba-logos/nba-logo.svg`}
          alt="NBA Logo"
          className="mx-auto w-24 sm:w-32 mb-8 drop-shadow-xl"
          animate={{ 
            rotate: [0, 5, -5, 0],
            scale: [1, 1.05, 1]
          }}
          transition={{ duration: 4, repeat: Infinity }}
        />

        {/* Titre principal */}
        <motion.h1
          className="text-5xl sm:text-6xl lg:text-7xl font-black mb-6 tracking-tighter drop-shadow-2xl leading-tight"
          initial={{ y: -40, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ duration: 0.8 }}
        >
          <span>Bienvenue sur</span>
          <br />
          <span className="text-yellow-300">NBA Dashboard 🏀</span>
        </motion.h1>

        {/* Sous-titre */}
        <motion.p
          className="text-lg sm:text-xl md:text-2xl mb-12 max-w-3xl mx-auto drop-shadow-lg font-semibold"
          initial={{ y: 20, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ delay: 0.3, duration: 0.8 }}
        >
          La plateforme ultime pour explorer les statistiques NBA, comparer les joueurs et suivre les performances de tes équipes préférées.
        </motion.p>

        {/* Stats en direct */}
        <motion.div
          className="grid grid-cols-3 gap-4 mb-12 max-w-2xl mx-auto"
          variants={containerVariants}
          initial="hidden"
          animate="visible"
        >
          {statsDisplay.map((stat) => (
            <motion.div
              key={stat.label}
              className="bg-white/20 backdrop-blur-md rounded-2xl p-6 border border-white/30 hover:bg-white/30 transition-all duration-300"
              variants={itemVariants}
              whileHover={{ scale: 1.05, y: -5 }}
            >
              <div className="text-3xl mb-2">{stat.icon}</div>
              <div className="text-2xl sm:text-3xl font-bold mb-1">{stat.value}</div>
              <div className="text-sm sm:text-base text-white/90">{stat.label}</div>
            </motion.div>
          ))}
        </motion.div>
      </motion.div>

      {/* Section Fonctionnalités */}
      <motion.div
        className="px-4 sm:px-6 lg:px-8 py-16 max-w-7xl mx-auto"
        variants={containerVariants}
        initial="hidden"
        whileInView="visible"
        viewport={{ once: true, margin: "-100px" }}
      >
        <motion.h2
          className="text-4xl sm:text-5xl font-bold text-center mb-16 drop-shadow-lg"
          variants={itemVariants}
        >
          Les Fonctionnalités Principales
        </motion.h2>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {features.map((item) => (
            <motion.div
              key={item.title}
              className={`bg-gradient-to-br ${item.gradient} rounded-3xl shadow-2xl cursor-pointer overflow-hidden group relative h-full p-8 text-gray-900`}
              variants={itemVariants}
              whileHover={{ 
                scale: 1.08,
                transition: { type: "spring", stiffness: 300 }
              }}
              whileTap={{ scale: 0.95 }}
              onClick={() => navigate(item.path)}
            >
              {/* Contenu */}
              <div className="relative h-full flex flex-col justify-between">
                <div>
                  <h3 className="text-xl font-bold mb-3 text-gray-900 drop-shadow-md">
                    {item.title}
                  </h3>
                  <p className="text-sm md:text-base text-gray-800 leading-relaxed">
                    {item.desc}
                  </p>
                </div>
                
                {/* Indicateur */}
                <motion.div
                  className="mt-4 text-sm font-semibold text-gray-900 flex items-center gap-1"
                  whileHover={{ x: 3 }}
                >
                  Explorer →
                </motion.div>
              </div>
            </motion.div>
          ))}
        </div>
      </motion.div>

      {/* Section CTA - Commencer maintenant */}
      <motion.div
        className="px-4 sm:px-6 lg:px-8 py-20"
        initial={{ opacity: 0, y: 40 }}
        whileInView={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.8 }}
        viewport={{ once: true }}
      >
        <div className="max-w-3xl mx-auto text-center bg-white/30 backdrop-blur-sm rounded-3xl p-12 border border-white/20">
          <h2 className="text-3xl sm:text-4xl font-bold mb-6 drop-shadow-lg">
            Prêt à Plonger dans l'Univers NBA ?
          </h2>
          <p className="text-lg mb-10 text-white/95 max-w-2xl mx-auto">
            Commence par explorer les joueurs ou découvre le classement actuel des équipes pour trouver ce qui t'intéresse le plus.
          </p>
          <motion.div
            className="flex flex-col sm:flex-row gap-4 justify-center"
            variants={containerVariants}
            initial="hidden"
            animate="visible"
          >
            <motion.button
              className="bg-yellow-400 text-gray-900 font-bold px-8 py-4 rounded-full hover:bg-yellow-300 transition-all duration-300 shadow-xl text-lg"
              variants={itemVariants}
              whileHover={{ scale: 1.05 }}
              whileTap={{ scale: 0.95 }}
              onClick={() => navigate("/player")}
            >
              🔎 Chercher un Joueur
            </motion.button>
            <motion.button
              className="bg-red-600 text-white font-bold px-8 py-4 rounded-full hover:bg-red-700 transition-all duration-300 shadow-xl text-lg"
              variants={itemVariants}
              whileHover={{ scale: 1.05 }}
              whileTap={{ scale: 0.95 }}
              onClick={() => navigate("/standings")}
            >
              🏆 Voir le Classement
            </motion.button>
          </motion.div>
        </div>
      </motion.div>

      {/* Footer */}
      <motion.div
        className="px-4 sm:px-6 lg:px-8 py-8 text-center border-t border-white/20"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 1.5, duration: 0.8 }}
      >
        <p className="text-white/80 text-sm sm:text-base mb-2">
          🏀 NBA Dashboard - Saison 2025-2026
        </p>
        <p className="text-white/70 text-xs sm:text-sm">
          Statistiques mises à jour en temps réel pour vivre l'expérience du vrai terrain !
        </p>
      </motion.div>
    </div>
  );
}