import { Link } from "react-router-dom";
import { motion } from "framer-motion";

export default function Navbar() {
  return (
    <motion.nav
      initial={{ y: -80 }}
      animate={{ y: 0 }}
      transition={{ duration: 0.6 }}
      className="fixed top-0 left-0 w-full z-50 flex justify-between items-center p-4 bg-gray-900 text-white shadow-lg"
    >
      <h1 className="text-xl font-bold">🏀 NBA Dashboard</h1>
      <div className="flex items-center space-x-6">
        <Link to="/" className="hover:text-yellow-400 transition">Home</Link>
        <Link to="/player" className="hover:text-yellow-400 transition">Players</Link>
        <Link to="/teams" className="hover:text-yellow-400 transition">Teams</Link>
      </div>
    </motion.nav>
  );
}
