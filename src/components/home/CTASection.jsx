import { motion } from 'framer-motion';
import { useNavigate } from 'react-router-dom';

/**
 * Section CTA (Call To Action) - Commencer maintenant
 */
export default function CTASection() {
  const navigate = useNavigate();

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
      className="px-4 sm:px-6 lg:px-8 py-20"
      initial={{ opacity: 0, y: 40 }}
      whileInView={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.8 }}
      viewport={{ once: true }}
    >
      <div className="max-w-3xl mx-auto text-center bg-white/30 backdrop-blur-sm rounded-3xl p-12 border border-white/20">
        <h2 className="text-3xl sm:text-4xl font-bold mb-6 drop-shadow-lg text-white">
          Prêt à Plonger dans l&apos;Univers NBA ?
        </h2>
        <p className="text-lg mb-10 text-white/95 max-w-2xl mx-auto">
          Commence par explorer les joueurs ou découvre le classement actuel des équipes pour trouver ce qui t&apos;intéresse le plus.
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
            onClick={() => navigate('/player')}
          >
            Chercher un Joueur
          </motion.button>
          <motion.button
            className="bg-red-600 text-white font-bold px-8 py-4 rounded-full hover:bg-red-700 transition-all duration-300 shadow-xl text-lg"
            variants={itemVariants}
            whileHover={{ scale: 1.05 }}
            whileTap={{ scale: 0.95 }}
            onClick={() => navigate('/standings')}
          >
            Voir le Classement
          </motion.button>
        </motion.div>
      </div>
    </motion.div>
  );
}
