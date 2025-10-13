import { motion } from "framer-motion";
import TeamLogo from "./TeamLogo"; // Ajoute cette ligne

export default function PlayerCard({ player }) {
  // calculer les moyennes sur les matchs
  const games = player.lastGames.length;
  const avg = (stat) =>
    (player.lastGames.reduce((sum, g) => sum + g[stat], 0) / games).toFixed(1);

  const fgPct = (
    (player.lastGames.reduce((sum, g) => sum + g.FG, 0) /
      player.lastGames.reduce((sum, g) => sum + g.FGA, 0)) *
    100
  ).toFixed(1);

  const threePct = (
    (player.lastGames.reduce((sum, g) => sum + g["3P"], 0) /
      player.lastGames.reduce((sum, g) => sum + g["3PA"], 0)) *
    100
  ).toFixed(1);

  const ftPct = (
    (player.lastGames.reduce((sum, g) => sum + g.FT, 0) /
      player.lastGames.reduce((sum, g) => sum + g.FTA, 0)) *
    100
  ).toFixed(1);

  return (
    <motion.div
      className="bg-white/10 backdrop-blur-md p-6 rounded-2xl shadow-lg text-white w-full md:w-80 flex flex-col items-center"
      initial={{ opacity: 0, y: 30 }}
      animate={{ opacity: 1, y: 0 }}
    >
      {/* Photo du joueur */}
      <img
        src={player.info.photo}
        alt={player.name}
        className="w-32 h-32 object-cover rounded-full border-4 border-white shadow-md mb-4"
      />

      {/* Nom & équipe avec logo */}
      <h2 className="text-2xl font-bold text-center">{player.name}</h2>
      <div className="flex items-center justify-center gap-2 mt-2">
        <TeamLogo teamName={player.team} />
        <p className="text-center text-white/70">{player.team}</p>
      </div>
      <p className="text-sm text-white/60 italic mb-4">
        {player.info.position}
      </p>

      {/* Le reste du code reste identique */}
      <div className="flex justify-center gap-6 text-sm mb-6">
        <div className="text-center">
          <p className="font-bold">{player.info.age}</p>
          <p className="text-white/60">Âge</p>
        </div>
        <div className="text-center">
          <p className="font-bold">{player.info.height}</p>
          <p className="text-white/60">Taille</p>
        </div>
        <div className="text-center">
          <p className="font-bold">{player.info.weight}</p>
          <p className="text-white/60">Poids</p>
        </div>
      </div>

      <div className="grid grid-cols-3 gap-4 text-center text-sm w-full">
        <div>
          <p className="font-bold">{avg("PTS")}</p>
          <p className="text-white/60">PTS</p>
        </div>
        <div>
          <p className="font-bold">{avg("REB")}</p>
          <p className="text-white/60">REB</p>
        </div>
        <div>
          <p className="font-bold">{avg("AST")}</p>
          <p className="text-white/60">AST</p>
        </div>
        <div>
          <p className="font-bold">{avg("STL")}</p>
          <p className="text-white/60">STL</p>
        </div>
        <div>
          <p className="font-bold">{avg("BLK")}</p>
          <p className="text-white/60">BLK</p>
        </div>
        <div>
          <p className="font-bold">{fgPct}%</p>
          <p className="text-white/60">FG%</p>
        </div>
        <div>
          <p className="font-bold">{threePct}%</p>
          <p className="text-white/60">3P%</p>
        </div>
        <div>
          <p className="font-bold">{ftPct}%</p>
          <p className="text-white/60">FT%</p>
        </div>
      </div>
    </motion.div>
  );
}