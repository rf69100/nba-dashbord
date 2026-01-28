/**
 * Composant de barre de recherche réutilisable
 * @param {string} value - Valeur actuelle de la recherche
 * @param {function} onChange - Callback appelé lors du changement de valeur
 * @param {string} placeholder - Texte du placeholder
 * @param {string} label - Label optionnel au-dessus du champ
 */
export default function SearchBar({ value, onChange, placeholder = "Rechercher...", label = null }) {
  return (
    <div className="mb-6">
      {label && (
        <label className="block text-sm font-semibold text-gray-700 mb-2">
          {label}
        </label>
      )}
      <input
        type="text"
        value={value}
        onChange={(e) => onChange(e.target.value)}
        placeholder={placeholder}
        className="w-full rounded-lg border border-gray-300 px-4 py-3 text-gray-900 focus:outline-none focus:ring-2 focus:ring-red-400"
      />
    </div>
  );
}
