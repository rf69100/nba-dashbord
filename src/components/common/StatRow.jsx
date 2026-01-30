/**
 * Composant pour afficher une ligne de statistique
 * @param {string} label - Le label de la statistique
 * @param {string|number} value - La valeur de la statistique
 * @param {boolean} highlight - Met en évidence la valeur
 */
export default function StatRow({ label, value, highlight = false }) {
  return (
    <div className={`flex justify-between items-center py-2 ${highlight ? 'bg-blue-50 px-2 rounded' : ''}`}>
      <span className="text-sm text-gray-600">{label}</span>
      <span className={`font-bold ${highlight ? 'text-xl text-blue-600' : 'text-lg text-red-700'}`}>
        {value ?? '-'}
      </span>
    </div>
  );
}
