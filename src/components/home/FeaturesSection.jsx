import { motion } from 'framer-motion';
import { useNavigate } from 'react-router-dom';

/**
 * Section des fonctionnalités principales
 */
export default function FeaturesSection() {
  const navigate = useNavigate();

  const features = [
    {
      title: 'Rechercher des joueurs',
      desc: 'Trouve un joueur rapidement et accède à sa fiche détaillée avec toutes les statistiques.',
      gradient: 'from-red-500 to-red-600',
      path: '/player',
    },
    {
      title: 'Comparer les joueurs',
      desc: 'Sélectionne tes joueurs et compare leurs performances avec des graphiques interactifs.',
      gradient: 'from-orange-500 to-orange-600',
      path: '/comparison',
    },
    {
      title: 'Classement des Équipes',
      desc: 'Découvre le classement complet et les statistiques de chaque franchise NBA.',
      gradient: 'from-yellow-400 to-yellow-500',
      path: '/standings',
    },
    {
      title: 'Explorer les équipes',
      desc: 'Navigue parmi les 30 équipes NBA et consulte leurs rosters complets.',
      gradient: 'from-orange-400 to-orange-500',
      path: '/teams',
    },
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
      className="px-4 sm:px-6 lg:px-8 py-16 max-w-7xl mx-auto"
      variants={containerVariants}
      initial="hidden"
      whileInView="visible"
      viewport={{ once: true, margin: '-100px' }}
    >
      <motion.h2
        className="text-4xl sm:text-5xl font-bold text-center mb-16 drop-shadow-lg text-white"
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
              transition: { type: 'spring', stiffness: 300 },
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
  );
}
