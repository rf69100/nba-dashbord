// Importation des hooks et composants nécessaires
import { useState } from "react"; // Hook React pour gérer l'état local
import {
  LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer
} from "recharts"; // Librairie pour les graphiques
import { motion } from "framer-motion"; // Pour les animations
import PlayerCard from "./PlayerCard"; // Carte individuelle du joueur

/**
 * Composant d'affichage et de comparaison des statistiques des joueurs sélectionnés.
 * Affiche : recherche, sélection, tableau des matchs, graphiques points et stats secondaires.
 * @param {Array} selectedPlayers - Joueurs sélectionnés
 * @param {Function} togglePlayer - Fonction pour ajouter/retirer un joueur
 * @param {Array} allPlayers - Liste complète des joueurs
 */
export default function PlayerStatsChart({ selectedPlayers, togglePlayer, allPlayers }) {
  // État local pour la barre de recherche
  const [search, setSearch] = useState("");

  // Filtre les joueurs selon la recherche
  const filteredPlayers = allPlayers.filter((p) =>
    p.name.toLowerCase().startsWith(search.toLowerCase())
  );

  // Nombre de matchs affichés
  const maxGames = 10;

  /**
   * Prépare les données pour les graphiques selon la statistique demandée.
   * @param {string} statKey - Clé de la statistique (ex: "PTS")
   * @returns {Array} Données formatées pour le graphique
   */
  const prepareChartData = (statKey) => {
    const data = [];
    for (let i = 0; i < maxGames; i++) {
      const pointObj = { game: `Game ${i + 1}` };
      selectedPlayers.forEach(p => {
        pointObj[p.name] = p.lastGames[i]?.[statKey] || 0;
      });
      data.push(pointObj);  
    }
    return data;
  };

  // Couleurs pour les courbes (max 2 joueurs)
  const COLORS = ["#002affff", "#25ca00ff"];
  // Statistiques secondaires à afficher en mini-graphique
  const miniStats = ["REB", "AST", "STL", "BLK"];

  // Rendu principal du composant
  return (
    <div className="bg-white/30 backdrop-blur-md p-6 rounded-2xl shadow-lg w-full text-gray-900">
      {/* Affichage des joueurs sélectionnés avec bouton de retrait */}
      {selectedPlayers.length > 0 && (
        <div className="flex flex-wrap gap-2 mb-4">
          {selectedPlayers.map((p) => (
            <motion.div
              key={p.id}
              className="flex items-center gap-2 bg-yellow-400/70 px-3 py-1 rounded-full text-black font-semibold"
              initial={{ opacity: 0, y: 10 }}
              animate={{ opacity: 1, y: 0 }}
            >
              <span>{p.name}</span>
              <button
                onClick={() => togglePlayer(p)}
                className="text-red-600 font-bold hover:text-red-800"
              >
                ❌
              </button>
            </motion.div>
          ))}
        </div>
      )}

      {/* Barre de recherche pour filtrer les joueurs */}
      <input
        type="text"
        placeholder="Rechercher un joueur..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className="w-full mb-6 px-4 py-2 border rounded-lg text-gray-900"
      />

      {/* Affichage des résultats filtrés pour sélection rapide */}
      {search && filteredPlayers.length > 0 && (
        <div className="flex flex-wrap gap-2 mb-6 max-h-40 overflow-y-auto">
          {filteredPlayers.map((p) => (
            <button
              key={p.id}
              onClick={() => togglePlayer(p)}
              className="bg-blue-600 text-white px-3 py-1 rounded-full hover:bg-blue-700 font-semibold"
            >
              {p.name}
            </button>
          ))}
        </div>
      )}

      {/* Cartes individuelles des joueurs sélectionnés */}
      {selectedPlayers.length > 0 && (
        <div className="flex flex-wrap justify-center gap-6 mb-10">
          {selectedPlayers.map((p) => (
            <PlayerCard key={p.id} player={p} />
          ))}
        </div>
      )}

      {/* Tableau des derniers matchs pour chaque joueur sélectionné */}
      {selectedPlayers.length > 0 && selectedPlayers.map((p) => (
        <div key={p.id} className="mb-10 overflow-x-auto">
          <h3 className="text-xl font-bold text-white mb-3 text-center drop-shadow-lg">
            Derniers Matchs - {p.name}
          </h3>
          <table className="w-full text-sm text-white border-collapse border border-white/30">
            <thead>
              <tr className="bg-white/10">
                <th className="p-2 border border-white/30">Game</th>
                <th className="p-2 border border-white/30">PTS</th>
                <th className="p-2 border border-white/30">REB</th>
                <th className="p-2 border border-white/30">AST</th>
                <th className="p-2 border border-white/30">STL</th>
                <th className="p-2 border border-white/30">BLK</th>
                <th className="p-2 border border-white/30">FG%</th>
                <th className="p-2 border border-white/30">3P%</th>
                <th className="p-2 border border-white/30">FT%</th>
              </tr>
            </thead>
            <tbody>
              {p.lastGames.map((g, i) => (
                <tr key={i} className="even:bg-white/10">
                  <td className="p-2 border border-white/30">Game {i + 1}</td>
                  <td className="p-2 border border-white/30">{g.PTS}</td>
                  <td className="p-2 border border-white/30">{g.REB}</td>
                  <td className="p-2 border border-white/30">{g.AST}</td>
                  <td className="p-2 border border-white/30">{g.STL}</td>
                  <td className="p-2 border border-white/30">{g.BLK}</td>
                  <td className="p-2 border border-white/30">{((g.FG / g.FGA) * 100).toFixed(1)}%</td>
                  <td className="p-2 border border-white/30">{((g["3P"] / g["3PA"]) * 100).toFixed(1)}%</td>
                  <td className="p-2 border border-white/30">{((g.FT / g.FTA) * 100).toFixed(1)}%</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      ))}

      {/* Graphique principal : points par match */}
      {selectedPlayers.length > 0 && (
        <div className="mb-8">
          <h3 className="text-xl font-bold text-white mb-4 text-center drop-shadow-lg">
            Points par Match
          </h3>
          <ResponsiveContainer width="100%" height={350}>
            <LineChart data={prepareChartData("PTS")} margin={{ top: 5, right: 20, left: 0, bottom: 5 }}>
              <CartesianGrid strokeDasharray="3 3" stroke="#ffffff50" />
              <XAxis dataKey="game" stroke="#ffffff" />
              <YAxis allowDecimals={false} stroke="#ffffff" />
              <Tooltip contentStyle={{ backgroundColor: "white", borderRadius: "10px" }} />
              <Legend />
              {selectedPlayers.map((p, idx) => (
                <Line
                  key={p.id}
                  type="monotone"
                  dataKey={p.name}
                  stroke={COLORS[idx % COLORS.length]}
                  strokeWidth={3}
                  dot={{ r: 5 }}
                  activeDot={{ r: 8 }}
                />
              ))}
            </LineChart>
          </ResponsiveContainer>
        </div>
      )}

      {/* Mini-graphes pour stats secondaires : REB, AST, STL, BLK */}
      {selectedPlayers.length > 0 && miniStats.map((stat) => (
        <div key={stat} className="mb-6 p-4 rounded-xl bg-white/10">
          <h4 className="text-lg font-semibold text-white mb-2 drop-shadow-md text-center">
            {stat} par Match
          </h4>
          <ResponsiveContainer width="100%" height={200}>
            <LineChart data={prepareChartData(stat)} margin={{ top: 5, right: 20, left: 0, bottom: 5 }}>
              <CartesianGrid strokeDasharray="3 3" stroke="#ffffff30" />
              <XAxis dataKey="game" stroke="#ffffff" />
              <YAxis allowDecimals={false} stroke="#ffffff" />
              <Tooltip contentStyle={{ backgroundColor: "white", borderRadius: "10px" }} />
              <Legend />
              {selectedPlayers.map((p, idx) => (
                <Line
                  key={p.id}
                  type="monotone"
                  dataKey={p.name}
                  stroke={COLORS[idx % COLORS.length]}
                  strokeWidth={2}
                  dot={{ r: 3 }}
                  activeDot={{ r: 5 }}
                />
              ))}
            </LineChart>
          </ResponsiveContainer>
        </div>
      ))}
    </div>
  );
}
