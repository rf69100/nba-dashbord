import { Link } from 'react-router-dom';
import PlayerAvatar from '../common/PlayerAvatar';

/**
 * Carte affichant les informations d'un joueur
 */
export default function PlayerCardItem({ player }) {
  // Optimise l'URL pour les petites images
  const getSmallPhotoUrl = (url) => {
    if (!url) return null;
    if (url.includes('cdn.nba.com/headshots')) {
      return url.replace('1040x760', '260x190');
    }
    return url;
  };

  return (
    <Link
      to={`/player/${player.id}`}
      className="flex items-center gap-4 p-4 rounded-xl bg-gradient-to-br from-orange-50 to-yellow-50 shadow-lg hover:shadow-xl transition-all duration-200 hover:scale-[1.02]"
    >
      <PlayerAvatar
        photoUrl={getSmallPhotoUrl(player.photo_url || player.info?.photo)}
        playerName={player.display_name || player.name}
        size="lg"
        borderColor="border-orange-200"
      />
      <div className="flex-1 min-w-0">
        <div className="font-bold text-gray-900">{player.display_name}</div>
        <div className="text-sm text-gray-600">
          {player.team_name} • {player.position}
        </div>
      </div>
    </Link>
  );
}
