/**
 * Utilitaires pour calculer les statistiques des joueurs
 */

export function calculateAverage(player, stat) {
  if (!player || !player.lastGames || player.lastGames.length === 0) return 0;
  const sum = player.lastGames.reduce((acc, game) => acc + game[stat], 0);
  return (sum / player.lastGames.length).toFixed(1);
}

export function calculatePercentage(player, made, attempted) {
  if (!player || !player.lastGames || player.lastGames.length === 0) return 0;
  const totalMade = player.lastGames.reduce((acc, game) => acc + game[made], 0);
  const totalAttempted = player.lastGames.reduce(
    (acc, game) => acc + game[attempted],
    0
  );
  if (totalAttempted === 0) return 0;
  return ((totalMade / totalAttempted) * 100).toFixed(1);
}

export function calculateExperience(birthDate) {
  if (!birthDate) return 'N/A';
  const birth = new Date(birthDate);
  const today = new Date();
  const age = today.getFullYear() - birth.getFullYear();
  // Estimation simple: experience ≈ age - 19 (âge moyen draft)
  const experience = Math.max(0, age - 19);
  return experience === 0 ? 'Rookie' : `${experience} Year${experience > 1 ? 's' : ''}`;
}
