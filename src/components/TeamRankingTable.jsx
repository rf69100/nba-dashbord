import { motion } from "framer-motion";

export default function TeamRankingTable({ teams }) {
  return (
    <div className="overflow-x-auto">
      <div className="min-w-full rounded-2xl overflow-hidden shadow-nba-lg">
        {/* Header */}
        <div className="grid grid-cols-12 gap-4 p-4 font-bold text-gray-900 bg-gradient-to-r from-yellow-400 to-yellow-500 sticky top-0 z-10">
          <span className="col-span-1 text-center">Rank</span>
          <span className="col-span-5">Team</span>
          <span className="col-span-2 text-center">W</span>
          <span className="col-span-2 text-center">L</span>
          <span className="col-span-2 text-center">%</span>
        </div>

        {/* Rows */}
        {teams.map((team, index) => (
          <motion.div
            key={team.id}
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: index * 0.05 }}
            whileHover={{ scale: 1.02, backgroundColor: "rgba(255, 255, 255, 0.05)" }}
            className={`grid grid-cols-12 gap-4 p-4 items-center transition-all cursor-pointer
              ${index % 2 === 0 ? "bg-white/5" : "bg-white/10"} 
              border-b border-white/10 hover:border-yellow-400/30`}
          >
            <div className="col-span-1 text-center">
              <span className={`inline-block w-8 h-8 rounded-full font-bold text-sm flex items-center justify-center
                ${index < 3 
                  ? "bg-yellow-400 text-gray-900" 
                  : "bg-white/20 text-white"
                }`}>
                {team.rank}
              </span>
            </div>

            <div className="col-span-5 flex items-center gap-3">
              <img
                src={`${process.env.PUBLIC_URL}${team.logo_url}`}
                alt={team.name}
                className="w-12 h-12 object-contain hover:scale-110 transition-transform"
                onError={(e) => {
                  e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`;
                }}
              />
              <span className="font-bold text-white group-hover:text-yellow-400 transition">{team.name}</span>
            </div>

            <div className="col-span-2 text-center">
              <span className="font-bold text-green-400">{team.wins}</span>
            </div>

            <div className="col-span-2 text-center">
              <span className="font-bold text-red-400">{team.losses}</span>
            </div>

            <div className="col-span-2 text-center">
              <span className="font-bold text-yellow-300">{team.percentage || team.win_percentage}%</span>
            </div>
          </motion.div>
        ))}
      </div>
    </div>
  );
}