// Importation des modules nécessaires
import { motion } from "framer-motion"; // Pour les animations
import { useNavigate } from "react-router-dom"; // Hook pour la navigation

/**
 * Page d'accueil du dashboard NBA.
 * Affiche le logo, le titre, la description et les boutons de navigation vers les principales fonctionnalités.
 */
export default function Home() {
  // Hook pour naviguer entre les pages
  const navigate = useNavigate();

  // Liste des fonctionnalités principales à afficher sur la page d'accueil
  const features = [
    {
      title: "📊 Comparer les joueurs",
      desc: "Sélectionne tes joueurs préférés et compare leurs performances sur les 10 derniers matchs grâce à nos graphiques interactifs.",
      color: "bg-red-500 hover:bg-red-600",
      path: "/player"
    },
    {
      title: "🏀 Classement des équipes",
      desc: "Consulte le classement complet des équipes NBA et découvre les statistiques clés de chaque franchise.",
      color: "bg-orange-500 hover:bg-orange-600",
      path: "/ranking"
    },
  ];

  // Rendu principal de la page d'accueil
  return (
    <motion.div
      className="pt-20 px-5 text-center min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white flex flex-col items-center justify-center"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 1 }}
    >
      {/* Logo NBA animé en haut de la page */}
      <motion.img
        src={`${process.env.PUBLIC_URL}/images/nba-logos/nba-logo.svg`}
        alt="NBA Logo"
        className="mx-auto w-32 sm:w-40 mb-6"
      />

      {/* Titre principal animé */}
      <motion.h1
        className="text-4xl sm:text-5xl md:text-6xl font-extrabold mb-6 tracking-tight drop-shadow-lg"
        initial={{ y: -30, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 1 }}
      >
        Bienvenue sur <span className="text-yellow-300">NBA Dashboard 🏀</span>
      </motion.h1>

      {/* Description de la plateforme */}
      <motion.p
        className="text-sm sm:text-lg md:text-xl mb-10 max-w-3xl mx-auto drop-shadow-md"
        initial={{ y: 20, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ delay: 0.5, duration: 1 }}
      >
        Explore les statistiques des joueurs, compare leurs performances, et découvre le classement complet des équipes NBA saison 2025-2026.
      </motion.p>

      {/* Boutons de navigation vers les fonctionnalités principales */}
      <div className="flex flex-col md:flex-row justify-center items-center gap-6 mb-10 w-full max-w-4xl">
        {features.map((item) => (
          <motion.div
            key={item.title}
            className={`${item.color} p-6 rounded-3xl shadow-xl cursor-pointer text-gray-900 transition-colors duration-300 w-full md:w-96`}
            whileHover={{ 
              scale: 1.05, 
              rotate: 1,
              transition: { type: "spring", stiffness: 300 }
            }}
            whileTap={{ scale: 0.95 }}
            onClick={() => navigate(item.path)}
          >
            {/* Titre et description de la fonctionnalité */}
            <h2 className="text-xl font-bold mb-2">{item.title}</h2>
            <p className="text-sm md:text-base">{item.desc}</p>
          </motion.div>
        ))}
      </div>

      {/* Footer avec informations sur la saison et les données */}
      <motion.p
        className="mt-10 text-sm text-white/80 max-w-md mx-auto"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 1, duration: 1 }}
      >
        Données mises à jour pour la saison NBA 2025-2026. Statistiques et scores en temps réel pour vivre l'expérience du vrai terrain !
      </motion.p>
    </motion.div>
  );
}