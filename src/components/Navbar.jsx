import { Link, useLocation } from "react-router-dom";
import { motion } from "framer-motion";

const NAV_LINKS = [
  { label: "Home", path: "/" },
  { label: "Players", path: "/player" },
  { label: "Teams", path: "/teams" },
  { label: "Stats", path: "/stats" },
];

export default function Navbar() {
  const location = useLocation();

  return (
    <motion.nav
      initial={{ y: -80 }}
      animate={{ y: 0 }}
      transition={{ duration: 0.6 }}
      className="fixed top-0 w-full z-50 backdrop-blur-xl bg-black/40 border-b border-yellow-400/20 shadow-lg"
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
        <div className="flex justify-between items-center">
          <Link to="/" className="flex items-center gap-2 group">
            <img 
              src={`${process.env.PUBLIC_URL}/images/nba-logos/nba-logo.svg`}
              alt="NBA" 
              className="w-8 h-8 group-hover:scale-110 transition-transform"
            />
            <h1 className="text-xl font-black nba-gradient-text group-hover:drop-shadow-lg transition">
              NBA DASH
            </h1>
          </Link>

          <div className="flex gap-1">
            {NAV_LINKS.map(({ label, path }) => {
              const isActive = location.pathname === path;
              return (
                <Link
                  key={path}
                  to={path}
                  className={`px-4 py-2 rounded-lg font-semibold transition-all duration-300 ${
                    isActive
                      ? "bg-yellow-400 text-gray-900 shadow-lg shadow-yellow-400/50"
                      : "text-white hover:bg-white/10 hover:text-yellow-400"
                  }`}
                >
                  {label}
                </Link>
              );
            })}
          </div>
        </div>
      </div>
    </motion.nav>
  );
}
