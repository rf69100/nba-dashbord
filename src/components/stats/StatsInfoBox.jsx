import InfoBox from "../common/InfoBox";

/**
 * Composant pour la section d'information sur les statistiques
 * Utilise le composant InfoBox réutilisable
 */
export default function StatsInfoBox() {
  return (
    <InfoBox 
      title="À propos" 
      variant="blue"
    >
      <p>
        Statistiques basées sur l&apos;ensemble de la saison NBA 2024-2025.
      </p>
    </InfoBox>
  );
}
