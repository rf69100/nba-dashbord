import { Link } from "react-router-dom";
import TeamLogo from "../teams/TeamLogo";

/**
 * Composant pour un item d'équipe dans la liste
 * @param {Object} team - Données de l'équipe
 */
export default function TeamListItem({ team }) {
  return (
    <Link
      to={`/team/${team.id}`}
      className="flex items-center gap-3 p-3 rounded-lg bg-white hover:bg-orange-50 transition-all duration-200 hover:scale-105 hover:shadow-md group"
    >
      <div className="w-10 h-10 flex-shrink-0">
        <TeamLogo teamId={team.id} teamName={team.name} />
      </div>
      <span className="text-gray-800 font-medium group-hover:text-red-600 transition truncate">
        {team.name}
      </span>
    </Link>
  );
}
