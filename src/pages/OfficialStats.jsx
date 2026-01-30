import { motion } from "framer-motion";
import PageTitle from "../components/layout/PageTitle";
import PageContainer from "../components/layout/PageContainer";

/**
 * Page Statistiques Officielles - Informations sur les sources de données
 */
export default function OfficialStats() {
  const statCategories = [
    {
      title: "Statistiques de Base",
      items: ["Points", "Rebonds", "Passes", "Interceptions", "Contres"],
      icon: "📊"
    },
    {
      title: "Statistiques Avancées",
      items: ["PER (Player Efficiency Rating)", "True Shooting %", "Usage Rate", "Win Shares"],
      icon: "📈"
    },
    {
      title: "Statistiques de Tir",
      items: ["Pourcentage au tir global", "Pourcentage à 3 points", "Pourcentage aux lancers-francs"],
      icon: "🎯"
    },
    {
      title: "Statistiques d'Équipe",
      items: ["Différentiel de points", "Efficacité offensive", "Efficacité défensive", "Possession"],
      icon: "🏀"
    }
  ];

  const sources = [
    {
      name: "API NBA Dashboard",
      description: "API personnalisée développée pour récupérer les données officielles de la NBA",
      url: "https://github.com/rf69100/nba-dashbord",
      verified: true
    },
    {
      name: "NBA.com",
      description: "Source officielle des statistiques NBA utilisée par notre API",
      url: "https://www.nba.com",
      verified: true
    }
  ];

  const updates = [
    {
      frequency: "En Temps Réel",
      description: "Les statistiques sont mises à jour pendant et immédiatement après chaque match"
    },
    {
      frequency: "Quotidien",
      description: "Synthèse complète des statistiques de la journée"
    },
    {
      frequency: "Hebdomadaire",
      description: "Analyse des tendances et des performances hebdomadaires"
    },
    {
      frequency: "Mensuel",
      description: "Rapports détaillés des performances mensuelles"
    }
  ];

  return (
    <PageContainer>
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.6 }}
      >
        <PageTitle title="Statistiques Officielles NBA" />

        <div className="max-w-4xl mx-auto space-y-8">
          {/* Section Intro */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.2 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Sources des Données</h2>
            <p className="text-gray-700 text-lg leading-relaxed">
              NBA Dashboard utilise une API personnalisée développée pour récupérer les données 
              officielles de la NBA. Toutes nos statistiques sont basées sur les données officielles 
              de la ligue, garantissant l&apos;exactitude et la fiabilité des informations.
            </p>
          </motion.section>

          {/* Section Sources */}
          <motion.section
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.3 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Nos Sources</h2>
            <div className="grid md:grid-cols-2 gap-6">
              {sources.map((source, idx) => (
                <motion.div
                  key={idx}
                  className="bg-white rounded-lg shadow-lg p-6 border-2 border-gray-200 hover:border-orange-500 transition-colors"
                  initial={{ opacity: 0, scale: 0.9 }}
                  animate={{ opacity: 1, scale: 1 }}
                  transition={{ delay: 0.4 + idx * 0.1 }}
                >
                  <div className="flex items-start justify-between mb-3">
                    <h3 className="text-xl font-bold text-gray-900">{source.name}</h3>
                    {source.verified && (
                      <span className="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">
                        ✓ Vérifiée
                      </span>
                    )}
                  </div>
                  <p className="text-gray-600 mb-4">{source.description}</p>
                  <a
                    href={source.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="text-orange-500 hover:text-orange-600 font-semibold"
                  >
                    Visiter →
                  </a>
                </motion.div>
              ))}
            </div>
          </motion.section>

          {/* Section Catégories de Stats */}
          <motion.section
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.4 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Types de Statistiques Disponibles</h2>
            <div className="grid md:grid-cols-2 gap-6">
              {statCategories.map((category, idx) => (
                <motion.div
                  key={idx}
                  className="bg-white rounded-lg shadow-lg p-6"
                  initial={{ opacity: 0, x: idx % 2 === 0 ? -20 : 20 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: 0.5 + idx * 0.1 }}
                >
                  <div className="flex items-center mb-4">
                    <span className="text-3xl mr-3">{category.icon}</span>
                    <h3 className="text-xl font-bold text-gray-900">{category.title}</h3>
                  </div>
                  <ul className="space-y-2">
                    {category.items.map((item, itemIdx) => (
                      <li key={itemIdx} className="text-gray-600 flex items-center">
                        <span className="w-2 h-2 bg-orange-500 rounded-full mr-3"></span>
                        {item}
                      </li>
                    ))}
                  </ul>
                </motion.div>
              ))}
            </div>
          </motion.section>

          {/* Section Fréquence de Mise à Jour */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.5 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Fréquence de Mise à Jour</h2>
            <div className="grid md:grid-cols-2 gap-6">
              {updates.map((update, idx) => (
                <motion.div
                  key={idx}
                  className="border-l-4 border-orange-500 pl-6 py-4"
                  initial={{ opacity: 0, x: -20 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: 0.6 + idx * 0.1 }}
                >
                  <h3 className="text-lg font-bold text-gray-900 mb-2">{update.frequency}</h3>
                  <p className="text-gray-600">{update.description}</p>
                </motion.div>
              ))}
            </div>
          </motion.section>

          {/* Section Transparence */}
          <motion.section
            className="bg-gradient-to-r from-blue-50 to-purple-50 rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.6 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Engagement envers la Transparence</h2>
            <p className="text-gray-700 mb-4">
              Nous nous engageons à fournir des statistiques précises et à jour. Nos données sont :
            </p>
            <ul className="space-y-3 text-gray-700">
              <li className="flex items-start">
                <span className="text-blue-500 font-bold mr-3">✓</span>
                <span><strong>Vérifiées</strong> auprès des sources officielles</span>
              </li>
              <li className="flex items-start">
                <span className="text-blue-500 font-bold mr-3">✓</span>
                <span><strong>À jour</strong> en temps réel pendant les matchs</span>
              </li>
              <li className="flex items-start">
                <span className="text-blue-500 font-bold mr-3">✓</span>
                <span><strong>Accessible</strong> gratuitement pour tous</span>
              </li>
              <li className="flex items-start">
                <span className="text-blue-500 font-bold mr-3">✓</span>
                <span><strong>Détaillées</strong> et exhaustives</span>
              </li>
            </ul>
          </motion.section>
        </div>
      </motion.div>
    </PageContainer>
  );
}
