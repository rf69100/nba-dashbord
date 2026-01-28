import { motion } from "framer-motion";
import { Link } from "react-router-dom";

/**
 * Composant Footer - Pied de page partagé par toutes les pages
 */
export default function Footer() {
  const currentYear = new Date().getFullYear();

  // Sections du footer
  const footerSections = [
    {
      title: "Navigation",
      links: [
        { label: "Accueil", path: "/" },
        { label: "Joueurs", path: "/player" },
        { label: "Équipes", path: "/teams" },
        { label: "Standings", path: "/standings" }
      ]
    },
    {
      title: "Fonctionnalités",
      links: [
        { label: "Rechercher", path: "/player" },
        { label: "Comparer", path: "/comparison" },
        { label: "Classements", path: "/standings" },
        { label: "Profils", path: "/teams" }
      ]
    },
    {
      title: "À Propos",
      links: [
        { label: "NBA Dashboard", path: "/" },
        { label: "Saison 2025-26", path: "/" },
        { label: "Données en Temps Réel", path: "/" },
        { label: "Statistiques Officielles", path: "/" }
      ]
    }
  ];

  return (
    <motion.footer
      className="bg-gray-900 text-white border-t border-gray-800 w-full"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ delay: 0.5 }}
    >
      <div className="w-full px-4 sm:px-6 lg:px-8">
        <div className="max-w-7xl mx-auto">
        {/* Contenu Principal du Footer */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 py-16">
          {/* Logo et Description */}
          <motion.div
            className="col-span-1"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.6 }}
          >
            <Link to="/" className="inline-block mb-4">
              <h3 className="text-2xl font-bold drop-shadow-lg hover:drop-shadow-xl transition-all">
                NBA Dashboard
              </h3>
            </Link>
            <p className="text-white/90 text-sm leading-relaxed">
              La plateforme complète pour explorer les statistiques NBA, comparer les joueurs et suivre les performances des équipes.
            </p>
          </motion.div>

          {/* Sections de Liens */}
          {footerSections.map((section, idx) => (
            <motion.div
              key={section.title}
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.6, delay: 0.1 * (idx + 1) }}
            >
              <h4 className="text-lg font-bold mb-4 drop-shadow-md">
                {section.title}
              </h4>
              <ul className="space-y-2">
                {section.links.map((link) => (
                  <li key={link.path}>
                    <Link
                      to={link.path}
                      className="text-white/85 hover:text-white text-sm transition-colors duration-200 hover:underline"
                    >
                      {link.label}
                    </Link>
                  </li>
                ))}
              </ul>
            </motion.div>
          ))}
        </div>

        {/* Divider */}
        <div className="border-t border-white/20" />

        {/* Footer Bottom */}
        <motion.div
          className="py-8 flex flex-col md:flex-row justify-between items-center text-center md:text-left text-white/80 text-sm"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 0.6, delay: 0.4 }}
        >
          <p>
            &copy; {currentYear} NBA Dashboard. Tous droits réservés.
          </p>
          <p className="mt-4 md:mt-0">
            Données mises à jour en temps réel - Saison NBA 2025-2026
          </p>
          <div className="flex gap-4 mt-4 md:mt-0">
            <a
              href="#"
              className="hover:text-white transition-colors"
              aria-label="Twitter"
            >
              Twitter
            </a>
            <a
              href="#"
              className="hover:text-white transition-colors"
              aria-label="GitHub"
            >
              GitHub
            </a>
          </div>
        </motion.div>
        </div>
      </div>
    </motion.footer>
  );
}
