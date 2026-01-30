import { motion } from "framer-motion";
import PageTitle from "../components/layout/PageTitle";
import PageContainer from "../components/layout/PageContainer";

/**
 * Page À Propos - NBA Dashboard c'est quoi ?
 */
export default function About() {
  return (
    <PageContainer>
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.6 }}
      >
        <PageTitle title="À Propos de NBA Dashboard" />

        <div className="max-w-4xl mx-auto space-y-8">
          {/* Section Introduction */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.2 }}
          >
            <h2 className="text-3xl font-bold text-gray-900 mb-4">
              Qu&apos;est-ce que NBA Dashboard ?
            </h2>
            <p className="text-gray-700 text-lg leading-relaxed">
              NBA Dashboard est une plateforme complète dédiée aux statistiques NBA. 
              Elle offre une expérience utilisateur fluide et intuitive pour explorer en profondeur 
              les performances des joueurs et des équipes de la National Basketball Association.
            </p>
          </motion.section>

          {/* Section Fonctionnalités */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.3 }}
          >
            <h2 className="text-3xl font-bold text-gray-900 mb-6">
              Nos Fonctionnalités Principales
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div className="p-4 border-l-4 border-orange-500">
                <h3 className="text-xl font-bold text-gray-900 mb-2">Profils Joueurs</h3>
                <p className="text-gray-600">
                  Consultez les statistiques détaillées de chaque joueur, incluant les performances 
                  récentes, les tirs et les tendances.
                </p>
              </div>
              <div className="p-4 border-l-4 border-blue-500">
                <h3 className="text-xl font-bold text-gray-900 mb-2">Profils Équipes</h3>
                <p className="text-gray-600">
                  Explorez les informations complètes de chaque équipe, incluant les rosters, 
                  les statistiques offensives et défensives.
                </p>
              </div>
              <div className="p-4 border-l-4 border-green-500">
                <h3 className="text-xl font-bold text-gray-900 mb-2">Comparaison</h3>
                <p className="text-gray-600">
                  Comparez directement deux joueurs ou deux équipes pour analyser leurs performances 
                  côte à côte.
                </p>
              </div>
              <div className="p-4 border-l-4 border-purple-500">
                <h3 className="text-xl font-bold text-gray-900 mb-2">Classements</h3>
                <p className="text-gray-600">
                  Consultez les standings actuels des conférences Est et Ouest pour suivre le classement 
                  en temps réel.
                </p>
              </div>
            </div>
          </motion.section>

          {/* Section Objectif */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.4 }}
          >
            <h2 className="text-3xl font-bold text-gray-900 mb-4">
              Notre Objectif
            </h2>
            <p className="text-gray-700 text-lg leading-relaxed">
              Notre objectif est de fournir aux fans de basketball une plateforme simple mais puissante 
              pour accéder aux données NBA les plus à jour. Que vous soyez un fan casual ou un analyste passionné, 
              NBA Dashboard vous offre tous les outils dont vous avez besoin pour explorer et comprendre 
              le jeu que vous aimez.
            </p>
          </motion.section>

          {/* Section Technologie */}
          <motion.section
            className="bg-white rounded-lg shadow-lg p-8"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.5 }}
          >
            <h2 className="text-3xl font-bold text-gray-900 mb-4">
              Technologie & Transparence
            </h2>
            <p className="text-gray-700 text-lg leading-relaxed mb-4">
              NBA Dashboard est un projet open-source construit avec les technologies web modernes. 
              Nous croyons en la transparence et encourageons la communauté à contribuer à l&apos;amélioration 
              de la plateforme.
            </p>
            <p className="text-gray-600">
              Retrouvez le code source sur notre{" "}
              <a
                href="https://github.com/rf69100/nba-dashbord"
                target="_blank"
                rel="noopener noreferrer"
                className="text-orange-500 hover:text-orange-600 font-semibold"
              >
                GitHub
              </a>
              .
            </p>
          </motion.section>
        </div>
      </motion.div>
    </PageContainer>
  );
}
