// Importation des modules nécessaires
import useHomeStats from "../hooks/useHomeStats"; // Hook pour charger les stats
import HeroSection from "../components/home/HeroSection"; // Section Hero
import FeaturesSection from "../components/home/FeaturesSection"; // Section Fonctionnalités
import CTASection from "../components/home/CTASection"; // Section CTA
import HomeFooter from "../components/home/HomeFooter"; // Footer

/**
 * Page d'accueil du dashboard NBA.
 * Affiche le logo, le titre, la description, des statistiques en direct et les boutons de navigation.
 */
export default function Home() {
  const { stats } = useHomeStats();

  // Rendu principal de la page d'accueil
  return (
    <div className="min-h-screen bg-gradient-to-b from-red-600 via-orange-400 to-yellow-300 text-white overflow-hidden">
      <HeroSection stats={stats} />
      <FeaturesSection />
      <CTASection />
      <HomeFooter />
    </div>
  );
}