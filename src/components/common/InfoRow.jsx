/**
 * Composant pour afficher une ligne d'information (label-value)
 * @param {string} label - Le label de l'information
 * @param {string} value - La valeur de l'information
 */
export default function InfoRow({ label, value }) {
  return (
    <div className="flex justify-between items-center py-2 border-b border-gray-100">
      <span className="text-sm font-semibold text-gray-600">{label}</span>
      <span className="text-base font-bold text-gray-900">{value}</span>
    </div>
  );
}
