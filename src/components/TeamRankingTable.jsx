import React from "react";
import { motion } from "framer-motion";
import TeamLogo from "./TeamLogo";

const TeamRankingTable = ({ teams }) => {
  return (
    <div className="overflow-x-auto">
      <div className="min-w-full divide-y divide-gray-200 rounded-2xl shadow-lg">
        
        {/* Header */}
        <div className="grid grid-cols-12 gap-4 p-4 font-bold text-gray-700 bg-gray-100 rounded-t-2xl">
          <span className="col-span-1 text-center">Rang</span>
          <span className="col-span-5">Équipe</span>
          <span className="col-span-2 text-center">Victoires</span>
          <span className="col-span-2 text-center">Défaites</span>
        </div>

        {/* Lignes */}
        {teams.map((team, index) => (
          <motion.div
            key={team.name}
            whileHover={{ scale: 1.01 }}
            className={`grid grid-cols-12 gap-4 p-4 items-center transition-colors rounded-b-xl cursor-pointer
              ${index % 2 === 0 ? "bg-white" : "bg-gray-50"}`}
          >
            {/* Rang */}
            <span className="col-span-1 text-center font-semibold text-lg">{team.rank}</span>

            {/* Équipe avec logo */}
            <div className="col-span-5 flex items-center gap-3">
              <TeamLogo teamName={team.name} />
              <span className="font-medium text-gray-900">{team.name}</span>
            </div>

            {/* Victoires */}
            <span className="col-span-2 text-center font-semibold text-green-600">{team.wins}</span>

            {/* Défaites */}
            <span className="col-span-2 text-center font-semibold text-red-600">{team.losses}</span>
          </motion.div>
        ))}
      </div>
    </div>
  );
};

export default TeamRankingTable;