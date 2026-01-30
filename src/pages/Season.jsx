import { motion } from "framer-motion";
import PageTitle from "../components/layout/PageTitle";
import PageContainer from "../components/layout/PageContainer";

/**
 * Page Saison 2024-25 - Informations sur la saison actuelle
 */
export default function Season() {
  const seasonStats = [
    {
      label: "Saison en cours",
      value: "2024-2025",
      color: "orange"
    },
    {
      label: "Nombre d'équipes",
      value: "30",
      color: "blue"
    },
    {
      label: "Joueurs actifs",
      value: "450+",
      color: "green"
    },
    {
      label: "Matchs par équipe",
      value: "82",
      color: "purple"
    }
  ];

  const milestones = [
    {
      date: "Octobre 2024",
      title: "Début de la saison régulière",
      description: "Lancement officiel de la saison NBA 2024-2025 avec les matchs d'ouverture."
    },
    {
      date: "Décembre 2024",
      title: "Pause de mi-saison",
      description: "Pause festive de la NBA pour les fêtes de fin d'année."
    },
    {
      date: "Février 2025",
      title: "NBA All-Star Weekend",
      description: "Événement annuel mettant en vedette les meilleurs joueurs de la ligue."
    },
    {
      date: "Avril 2025",
      title: "Fin de la saison régulière",
      description: "Conclusion de la saison régulière et début de la course aux playoffs."
    },
    {
      date: "Mai-Juin 2025",
      title: "Playoffs NBA",
      description: "Séries éliminatoires menant à la finale NBA."
    },
    {
      date: "Juin 2025",
      title: "Finale NBA",
      description: "Détermine le champion de la saison 2024-2025."
    }
  ];

  const conferenceInfo = [
    {
      name: "Conférence Est",
      divisions: ["Atlantic", "Central", "Southeast"]
    },
    {
      name: "Conférence Ouest",
      divisions: ["Northwest", "Pacific", "Southwest"]
    }
  ];

  return (
    <PageContainer>
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.6 }}
      >
        <PageTitle title="Saison NBA 2024-25" />

        <div className="max-w-4xl mx-auto space-y-8">
          {/* Section Stats Clés */}
          <motion.section
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.2 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Statistiques Clés</h2>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
              {seasonStats.map((stat, idx) => (
                <motion.div
                  key={idx}
                  className={`bg-white rounded-lg shadow-lg p-6 text-center border-t-4 border-${stat.color}-500`}
                  initial={{ opacity: 0, scale: 0.9 }}
                  animate={{ opacity: 1, scale: 1 }}
                  transition={{ delay: 0.3 + idx * 0.1 }}
                >
                  <p className="text-gray-600 text-sm mb-2">{stat.label}</p>
                  <p className="text-3xl font-bold text-gray-900">{stat.value}</p>
                </motion.div>
              ))}
            </div>
          </motion.section>

          {/* Section Conférences */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.3 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Organisation de la Ligue</h2>
            <div className="grid md:grid-cols-2 gap-8">
              {conferenceInfo.map((conference, idx) => (
                <motion.div
                  key={idx}
                  className="p-6 border-2 border-gray-200 rounded-lg"
                  initial={{ opacity: 0, x: idx === 0 ? -20 : 20 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: 0.4 + idx * 0.1 }}
                >
                  <h3 className="text-xl font-bold text-gray-900 mb-4">{conference.name}</h3>
                  <ul className="space-y-2">
                    {conference.divisions.map((division) => (
                      <li key={division} className="text-gray-700 flex items-center">
                        <span className="w-2 h-2 bg-orange-500 rounded-full mr-3"></span>
                        {division}
                      </li>
                    ))}
                  </ul>
                </motion.div>
              ))}
            </div>
          </motion.section>

          {/* Section Calendrier */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.4 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Calendrier de la Saison</h2>
            <div className="space-y-4">
              {milestones.map((milestone, idx) => (
                <motion.div
                  key={idx}
                  className="border-l-4 border-orange-500 pl-6 py-4"
                  initial={{ opacity: 0, x: -20 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: 0.5 + idx * 0.1 }}
                >
                  <p className="text-sm text-orange-500 font-semibold">{milestone.date}</p>
                  <h3 className="text-lg font-bold text-gray-900 mt-1">{milestone.title}</h3>
                  <p className="text-gray-600 mt-2">{milestone.description}</p>
                </motion.div>
              ))}
            </div>
          </motion.section>

          {/* Section Info Supplémentaire */}
          <motion.section
            className="bg-gradient-to-r from-orange-50 to-blue-50 rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.5 }}
          >
            <h2 className="text-2xl font-bold text-gray-900 mb-4">À Savoir</h2>
            <ul className="space-y-3 text-gray-700">
              <li className="flex items-start">
                <span className="text-orange-500 font-bold mr-3">•</span>
                <span>Chaque équipe joue 82 matchs au cours de la saison régulière</span>
              </li>
              <li className="flex items-start">
                <span className="text-orange-500 font-bold mr-3">•</span>
                <span>Les 8 meilleures équipes de chaque conférence se qualifient pour les playoffs</span>
              </li>
              <li className="flex items-start">
                <span className="text-orange-500 font-bold mr-3">•</span>
                <span>Les playoffs se jouent au meilleur des 7 matchs pour chaque série</span>
              </li>
              <li className="flex items-start">
                <span className="text-orange-500 font-bold mr-3">•</span>
                <span>La Finale NBA oppose les champions des deux conférences</span>
              </li>
            </ul>
          </motion.section>
        </div>
      </motion.div>
    </PageContainer>
  );
}
