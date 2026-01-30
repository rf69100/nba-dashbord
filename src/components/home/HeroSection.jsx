import { motion } from 'framer-motion';

/**
 * Section Hero de la page d'accueil avec logo, titre et stats
 */
export default function HeroSection({ stats }) {
  const statsDisplay = [
    { label: 'Joueurs', value: stats.players },
    { label: 'Équipes', value: stats.teams },
    { label: 'Saison', value: '2024-2025' },
  ];

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1,
        delayChildren: 0.2,
      },
    },
  };

  const itemVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: {
      opacity: 1,
      y: 0,
      transition: { type: 'spring', stiffness: 100 },
    },
  };

  return (
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
          opacity: [0.1, 0.2, 0.1],
        }}
        transition={{ duration: 8, repeat: Infinity }}
      />
      <motion.div
        className="absolute bottom-10 right-10 w-40 h-40 bg-white/10 rounded-full blur-3xl"
        animate={{
          scale: [1.2, 1, 1.2],
          opacity: [0.1, 0.2, 0.1],
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
          scale: [1, 1.05, 1],
        }}
        transition={{ duration: 4, repeat: Infinity }}
      />

      {/* Titre principal */}
      <motion.h1
        className="text-5xl sm:text-6xl lg:text-7xl font-black mb-6 tracking-tighter drop-shadow-2xl leading-tight text-white"
        initial={{ y: -40, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ duration: 0.8 }}
      >
        <span>Bienvenue sur</span>
        <br />
        <span className="text-yellow-300">NBA Dashboard</span>
      </motion.h1>

      {/* Sous-titre */}
      <motion.p
        className="text-lg sm:text-xl md:text-2xl mb-12 max-w-3xl mx-auto drop-shadow-lg font-semibold text-white"
        initial={{ y: 20, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        transition={{ delay: 0.3, duration: 0.8 }}
      >
        La plateforme ultime pour explorer les statistiques NBA, comparer les
        joueurs et suivre les performances de tes équipes préférées.
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
            <div className="text-2xl sm:text-3xl font-bold mb-1 text-white">
              {stat.value}
            </div>
            <div className="text-sm sm:text-base text-white/90">{stat.label}</div>
          </motion.div>
        ))}
      </motion.div>
    </motion.div>
  );
}
