import { motion } from "framer-motion";
import LoadingSpinner from "./LoadingSpinner";

export default function ErrorBoundary({ error, onRetry }) {
  return (
    <div className="pt-32 px-4 min-h-screen bg-gradient-to-b from-black to-gray-900 flex items-center justify-center">
      <motion.div
        initial={{ opacity: 0, scale: 0.9 }}
        animate={{ opacity: 1, scale: 1 }}
        className="nba-card text-center bg-red-500/20 border-red-500/50 max-w-md"
      >
        <h2 className="text-3xl font-bold mb-4 text-red-400">❌ Error</h2>
        <p className="text-white/70 mb-6">{error}</p>
        <button onClick={onRetry} className="nba-btn-primary">
          Retry
        </button>
      </motion.div>
    </div>
  );
}

export function LoadingScreen() {
  return (
    <div className="pt-32 px-4 min-h-screen bg-gradient-to-b from-black to-gray-900 flex flex-col items-center justify-center gap-8">
      <LoadingSpinner />
      <p className="text-xl text-white font-bold animate-pulse">Loading...</p>
    </div>
  );
}