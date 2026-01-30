/**
 * Component pour filtrer les joueurs par équipe (dropdown)
 */
export default function TeamFilter({
  teams,
  selectedTeam,
  onSelectTeam,
  isOpen,
  onToggle,
}) {
  return (
    <div className="mb-6 relative">
      <label htmlFor="team-filter" className="block text-xs font-semibold text-gray-700 mb-2">
        Filtrer par équipe
      </label>
      <div className="relative" id="team-filter">
        <button
          onClick={onToggle}
          className="w-full rounded-lg border border-gray-300 px-3 py-1.5 text-sm text-gray-900 focus:outline-none focus:ring-2 focus:ring-red-400 bg-white text-left flex justify-between items-center"
        >
          <span>{selectedTeam || 'Toutes les équipes'}</span>
          <span className={`transition-transform ${isOpen ? 'rotate-180' : ''}`}>
            ▼
          </span>
        </button>

        {isOpen && (
          <div className="absolute top-full left-0 right-0 mt-1 bg-white border border-gray-300 rounded-lg shadow-lg z-50 max-h-56 overflow-y-auto">
            <div
              className="px-3 py-1.5 text-sm text-gray-900 hover:bg-red-50 cursor-pointer"
              onClick={() => {
                onSelectTeam('');
                onToggle();
              }}
              role="button"
              tabIndex={0}
              onKeyDown={(e) => {
                if (e.key === 'Enter' || e.key === ' ') {
                  onSelectTeam('');
                  onToggle();
                }
              }}
            >
              Toutes les équipes
            </div>
            {teams.map((team) => (
              <div
                key={team}
                className="px-3 py-1.5 text-sm text-gray-900 hover:bg-red-50 cursor-pointer"
                onClick={() => {
                  onSelectTeam(team);
                  onToggle();
                }}
                role="button"
                tabIndex={0}
                onKeyDown={(e) => {
                  if (e.key === 'Enter' || e.key === ' ') {
                    onSelectTeam(team);
                    onToggle();
                  }
                }}
              >
                {team}
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}
