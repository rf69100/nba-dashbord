import { motion } from "framer-motion";
import { Link } from "react-router-dom";
import PlayerAvatar from "../common/PlayerAvatar";

/**
 * Carte d'affichage des informations et statistiques moyennes d'un joueur NBA.
 * @param {Object} player - Données du joueur à afficher
 */
export default function PlayerCard({ player }) {
  // Nombre de matchs pris en compte
  const games = player.lastGames.length;

  // Protection si aucun match n'est disponible
  if (games === 0) {
    return (
      <motion.div
        className="bg-white/10 backdrop-blur-md p-6 rounded-2xl shadow-lg text-white w-full md:w-80 flex flex-col items-center"
        initial={{ opacity: 0, y: 30 }}
        animate={{ opacity: 1, y: 0 }}
      >
        <p className="text-center">Aucune statistique disponible</p>
      </motion.div>
    );
  }

  /**
   * Calcule la moyenne d'une statistique sur les derniers matchs
   * @param {string} stat - Clé de la statistique (ex: "PTS")
   * @returns {string} Moyenne arrondie à 1 décimale
   */
  const avg = (stat) =>
    (player.lastGames.reduce((sum, g) => sum + g[stat], 0) / games).toFixed(1);

  // Pourcentages de réussite
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

  // Rendu de la carte joueur
  return (
    <motion.div
      className="bg-white/10 backdrop-blur-md p-6 rounded-2xl shadow-lg text-white w-full md:w-80 flex flex-col items-center"
      initial={{ opacity: 0, y: 30 }}
      animate={{ opacity: 1, y: 0 }}
    >
      {/* Photo du joueur */}
      <PlayerAvatar
        photoUrl={player.info.photo}
        playerName={player.name}
        size="xl"
        borderColor="border-white"
        className="mb-4"
      />

      {/* Nom & équipe */}
      <h2 className="text-2xl font-bold text-center">{player.name}</h2>
      <p className="text-center text-white/70 mt-2">{player.team}</p>
      <p className="text-sm text-white/60 italic mb-4">
        {player.info.position}
      </p>

      {/* Informations physiques */}
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

      {/* Statistiques moyennes */}
      <div className="grid grid-cols-3 gap-4 text-center text-sm w-full mb-6">
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

      {/* Bouton pour voir le profil complet */}
      <Link
        to={`/player/${player.id}`}
        className="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg transition-colors duration-200 text-center"
      >
        Voir le profil complet
      </Link>
    </motion.div>
  );
}