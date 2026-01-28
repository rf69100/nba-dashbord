/**
 * Utilitaires pour les calculs de statistiques NBA
 */

export const calculateAverage = (games, stat) => {
  if (games.length === 0) return 0;
  return (games.reduce((sum, g) => sum + g[stat], 0) / games.length).toFixed(1);
};

export const calculatePercentage = (games, made, attempted) => {
  const totalMade = games.reduce((sum, g) => sum + g[made], 0);
  const totalAttempted = games.reduce((sum, g) => sum + g[attempted], 0);
  return totalAttempted === 0 ? 0 : ((totalMade / totalAttempted) * 100).toFixed(1);
};

export const formatNumber = (num) => {
  if (num >= 1000000) return (num / 1000000).toFixed(1) + "M";
  if (num >= 1000) return (num / 1000).toFixed(1) + "K";
  return num.toString();
};