/**
 * Composant pour afficher une ligne de statistique
 * @param {string} label - Le label de la statistique
 * @param {string|number} value - La valeur de la statistique
 */
export default function StatRow({ label, value }) {
  return (
    <div className="flex justify-between items-center py-2">
      <span className="text-sm text-gray-600">{label}</span>
      <span className="text-lg font-bold text-red-700">{value}</span>
    </div>
  );
}
