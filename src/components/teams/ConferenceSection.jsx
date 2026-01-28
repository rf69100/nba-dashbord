import DivisionCard from "./DivisionCard";

/**
 * Composant pour une section de conférence (East ou West)
 * @param {string} title - Titre de la conférence
 * @param {Object} divisions - Objet contenant les divisions et leurs équipes
 * @param {Object} divisionVariants - Variants Framer Motion pour les divisions
 */
export default function ConferenceSection({ title, divisions, divisionVariants }) {
  return (
    <div className="mb-12 last:mb-0">
      <h2 className="text-3xl font-bold text-gray-800 mb-6 pb-3 border-b-4 border-red-500">
        {title}
      </h2>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8">
        {Object.entries(divisions).map(([divisionName, teams]) => (
          <DivisionCard
            key={divisionName}
            divisionName={divisionName}
            teams={teams}
            variants={divisionVariants}
          />
        ))}
      </div>
    </div>
  );
}
