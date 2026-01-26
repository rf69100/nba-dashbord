import { motion } from "framer-motion";
import { Link } from "react-router-dom";
import StatCard from "./StatCard";
import { calculateAverage, calculatePercentage } from "../utils/helpers";

export default function PlayerCard({ player }) {
  const games = player.lastGames.length;

  if (games === 0) {
    return (
      <motion.div className="nba-card text-center" initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
        <p className="text-white/60">No statistics available</p>
      </motion.div>
    );
  }

  const stats = {
    pts: calculateAverage(player.lastGames, "PTS"),
    reb: calculateAverage(player.lastGames, "REB"),
    ast: calculateAverage(player.lastGames, "AST"),
    fgPct: calculatePercentage(player.lastGames, "FG", "FGA"),
    threePct: calculatePercentage(player.lastGames, "3P", "3PA"),
    ftPct: calculatePercentage(player.lastGames, "FT", "FTA"),
  };

  return (
    <motion.div
      className="nba-card-hover flex flex-col items-center group"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      whileHover={{ y: -5 }}
    >
      {/* Player Photo */}
      <div className="relative mb-6">
        <img
          src={player.photo_url || player.info?.photo}
          alt={player.name}
          className="w-32 h-32 object-cover rounded-full border-4 border-yellow-400 shadow-lg group-hover:scale-110 transition-transform"
          onError={(e) => (e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`)}
        />
        <div className="absolute -bottom-2 -right-2 bg-yellow-400 text-gray-900 font-bold px-3 py-1 rounded-full text-sm">
          #{player.jersey_number || "00"}
        </div>
      </div>

      {/* Player Info */}
      <h2 className="text-2xl font-black text-center nba-gradient-text mb-2">{player.name}</h2>
      <p className="text-yellow-400 font-bold">{player.team_name || player.team}</p>
      <p className="text-sm text-white/60 italic mb-4">{player.position}</p>

      {/* Physical Info */}
      <div className="grid grid-cols-3 gap-4 w-full mb-6 text-xs">
        <div className="nba-stat">
          <div className="font-bold text-yellow-400">{player.age || player.info?.age}</div>
          <div className="text-white/60">AGE</div>
        </div>
        <div className="nba-stat">
          <div className="font-bold text-yellow-400">{player.height_cm || player.info?.height}</div>
          <div className="text-white/60">HT</div>
        </div>
        <div className="nba-stat">
          <div className="font-bold text-yellow-400">{player.weight_kg || player.info?.weight}</div>
          <div className="text-white/60">WT</div>
        </div>
      </div>

      {/* Stats Grid */}
      <div className="grid grid-cols-3 gap-3 w-full mb-6">
        <StatCard label="PPG" value={stats.pts} icon="🎯" />
        <StatCard label="RPG" value={stats.reb} icon="🔄" />
        <StatCard label="APG" value={stats.ast} icon="🎯" />
        <StatCard label="FG%" value={`${stats.fgPct}%`} icon="📊" />
        <StatCard label="3P%" value={`${stats.threePct}%`} icon="🎯" />
        <StatCard label="FT%" value={`${stats.ftPct}%`} icon="✅" />
      </div>

      {/* Profile Link */}
      <Link
        to={`/player/${player.id}`}
        className="nba-btn-secondary w-full text-center group-hover:shadow-lg transition-all"
      >
        View Full Profile
      </Link>
    </motion.div>
  );
}