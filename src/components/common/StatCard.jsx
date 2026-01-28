import { motion } from "framer-motion";

export default function StatCard({ label, value, icon, variant = "primary", className = "" }) {
  const variants = {
    primary: "from-yellow-400 to-yellow-500 text-gray-900",
    secondary: "from-red-500 to-red-600 text-white",
    tertiary: "from-blue-500 to-blue-600 text-white",
  };

  return (
    <motion.div
      className={`nba-stat group cursor-default ${className}`}
      whileHover={{ scale: 1.05 }}
      transition={{ type: "spring", stiffness: 300 }}
    >
      <div className="text-2xl mb-2 group-hover:scale-125 transition-transform">{icon}</div>
      <div className={`text-2xl font-black bg-gradient-to-r ${variants[variant]} bg-clip-text text-transparent`}>
        {value}
      </div>
      <div className="text-xs text-white/60 uppercase tracking-widest mt-1">{label}</div>
    </motion.div>
  );
}