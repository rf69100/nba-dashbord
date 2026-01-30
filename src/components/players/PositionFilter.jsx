/**
 * Component pour filtrer les joueurs par position (boutons)
 */
const POSITIONS = ['Center', 'Forward', 'Guard'];

export default function PositionFilter({ selectedPosition, onSelectPosition }) {
  return (
    <div className="mb-6">
      <label htmlFor="position-filter" className="block text-xs font-semibold text-gray-700 mb-2">
        Filtrer par poste
      </label>
      <div className="flex gap-2 flex-wrap" id="position-filter">
        <button
          onClick={() => onSelectPosition('')}
          className={`px-4 py-1.5 rounded-lg text-sm font-semibold transition-all ${
            selectedPosition === ''
              ? 'bg-red-600 text-white'
              : 'bg-gray-200 text-gray-900 hover:bg-gray-300'
          }`}
        >
          Tous
        </button>
        {POSITIONS.map((position) => (
          <button
            key={position}
            onClick={() => onSelectPosition(position)}
            className={`px-4 py-1.5 rounded-lg text-sm font-semibold transition-all ${
              selectedPosition === position
                ? 'bg-red-600 text-white'
                : 'bg-gray-200 text-gray-900 hover:bg-gray-300'
            }`}
          >
            {position}
          </button>
        ))}
      </div>
    </div>
  );
}
