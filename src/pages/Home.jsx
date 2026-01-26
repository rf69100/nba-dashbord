import { motion } from "framer-motion";
import { useNavigate } from "react-router-dom";

const FEATURES = [
  {
    title: "Compare Players",
    desc: "Analyze your favorite players' performances across the last 10 games with interactive charts.",
    icon: "📊",
    path: "/player"
  },
  {
    title: "Team Rankings",
    desc: "Explore the complete NBA standings and discover key statistics for each franchise.",
    icon: "🏆",
    path: "/teams"
  },
  {
    title: "Player Profiles",
    desc: "Dive deep into individual player stats, career highlights, and last game performances.",
    icon: "👤",
    path: "/player"
  },
  {
    title: "Advanced Stats",
    desc: "Unlock advanced analytics and performance insights for competitive advantage.",
    icon: "📈",
    path: "/stats"
  },
];

export default function Home() {
  const navigate = useNavigate();

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: { staggerChildren: 0.1, delayChildren: 0.2 }
    }
  };

  const itemVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.8 } }
  };

  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 1 }}
      className="pt-20 pb-20 px-4 min-h-screen bg-white"
    >
      <div className="max-w-6xl mx-auto">
        {/* Header */}
        <motion.div className="text-center mb-16" variants={containerVariants} initial="hidden" animate="visible">
          <motion.img
            src={`${process.env.PUBLIC_URL}/images/nba-logos/nba-logo.svg`}
            alt="NBA"
            className="w-24 h-24 mx-auto mb-6"
            whileHover={{ scale: 1.1 }}
          />
          
          <motion.h1 variants={itemVariants} className="text-5xl font-black mb-4 nba-gradient-text">
            NBA DASHBOARD
          </motion.h1>
          
          <motion.p variants={itemVariants} className="text-lg text-gray-600 max-w-2xl mx-auto mb-3">
            Your ultimate hub for NBA statistics, player comparisons, and team analytics.
          </motion.p>
          
          <motion.p variants={itemVariants} className="text-sm text-gray-500">
            Season 2025-2026 • Real-time Data • Live Performance Metrics
          </motion.p>
        </motion.div>

        {/* Features Grid */}
        <motion.div
          variants={containerVariants}
          initial="hidden"
          animate="visible"
          className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mt-12 mb-16"
        >
          {FEATURES.map((feature) => (
            <motion.button
              key={feature.title}
              variants={itemVariants}
              onClick={() => navigate(feature.path)}
              className="feature-card text-left"
              whileHover={{ y: -4 }}
            >
              <div className="feature-icon">{feature.icon}</div>
              <h3 className="text-lg font-bold mb-2">{feature.title}</h3>
              <p className="text-sm opacity-90">{feature.desc}</p>
            </motion.button>
          ))}
        </motion.div>

        {/* Stats Footer */}
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.8, duration: 0.8 }}
          className="card text-center"
        >
          <h2 className="text-2xl font-bold mb-3">Experience the Game</h2>
          <p className="text-gray-600 max-w-2xl mx-auto text-sm">
            From LeBron's dominance to Curry's three-point revolution. Track every statistic, 
            analyze every move, and experience the NBA like never before.
          </p>
        </motion.div>
      </div>
    </motion.div>
  );
}