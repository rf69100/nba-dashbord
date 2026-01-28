import { Link } from 'react-router-dom';

/**
 * Carte affichant les informations d'un joueur
 */
export default function PlayerCardItem({ player }) {
  return (
    <Link
      to={`/player/${player.id}`}
      className="flex items-center gap-4 p-4 rounded-xl bg-gradient-to-br from-orange-50 to-yellow-50 shadow-lg hover:shadow-xl transition-all duration-200 hover:scale-[1.02]"
    >
      <img
        src={player.photo_url || player.info?.photo}
        alt={player.display_name}
        className="w-16 h-16 rounded-full object-cover border-2 border-white shadow"
        onError={(e) => {
          const name = (player.display_name || player.name || 'NBA').replace(
            ' ',
            '+'
          );
          e.target.src = `https://ui-avatars.com/api/?name=${name}&size=64&background=F97316&color=fff&bold=true`;
        }}
      />
      <div className="flex-1">
        <div className="font-bold text-gray-900">{player.display_name}</div>
        <div className="text-sm text-gray-600">
          {player.team_name} • {player.position}
        </div>
      </div>
    </Link>
  );
}
