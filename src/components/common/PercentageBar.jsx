import { motion } from 'framer-motion';

/**
 * Composant pour afficher une barre de pourcentage
 */
export default function PercentageBar({ label, percentage, color }) {
  const colorClasses = {
    blue: 'bg-blue-500',
    green: 'bg-green-500',
    purple: 'bg-purple-500',
  };

  return (
    <div>
      <div className="flex justify-between items-center mb-2">
        <span className="text-sm font-semibold text-gray-700">{label}</span>
        <span className="text-xl font-bold text-gray-900">{percentage}%</span>
      </div>
      <div className="w-full bg-gray-200 rounded-full h-3">
        <div
          className={`${colorClasses[color]} h-3 rounded-full transition-all duration-500`}
          style={{ width: `${Math.min(100, percentage)}%` }}
        ></div>
      </div>
    </div>
  );
}
