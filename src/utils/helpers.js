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

export const getTeamLogoUrl = (teamName) => {
  const logoMap = {
    "Boston Celtics": "boston-celtics.svg",
    "New York Knicks": "new-york-knicks.svg",
    "Milwaukee Bucks": "milwaukee-bucks.svg",
    "Cleveland Cavaliers": "cleveland-cavaliers.svg",
    "Orlando Magic": "orlando-magic.svg",
    "Indiana Pacers": "indiana-pacers.svg",
    "Philadelphia 76ers": "philadelphia-76ers.svg",
    "Miami Heat": "miami-heat.svg",
    "Chicago Bulls": "chicago-bulls.svg",
    "Atlanta Hawks": "atlanta-hawks.svg",
    "Brooklyn Nets": "brooklyn-nets.svg",
    "Toronto Raptors": "toronto-raptors.svg",
    "Charlotte Hornets": "charlotte-hornets.svg",
    "Detroit Pistons": "detroit-pistons.svg",
    "Washington Wizards": "washington-wizards.svg",
    "Oklahoma City Thunder": "oklahoma-city-thunder.svg",
    "Denver Nuggets": "denver-nuggets.svg",
    "Minnesota Timberwolves": "minnesota-timberwolves.svg",
    "Los Angeles Clippers": "los-angeles-clippers.svg",
    "Dallas Mavericks": "dallas-mavericks.svg",
    "Phoenix Suns": "phoenix-suns.svg",
    "New Orleans Pelicans": "new-orleans-pelicans.svg",
    "Los Angeles Lakers": "los-angeles-lakers.svg",
    "Sacramento Kings": "sacramento-kings.svg",
    "Golden State Warriors": "golden-state-warriors.svg",
    "Houston Rockets": "houston-rockets.svg",
    "Utah Jazz": "utah-jazz.svg",
    "Memphis Grizzlies": "memphis-grizzlies.svg",
    "Portland Trail Blazers": "portland-trail-blazers.svg",
    "San Antonio Spurs": "san-antonio-spurs.svg",
  };
  
  return `${process.env.PUBLIC_URL}/images/nba-logos/${logoMap[teamName] || "default.svg"}`;
};

export const formatNumber = (num) => {
  if (num >= 1000000) return (num / 1000000).toFixed(1) + "M";
  if (num >= 1000) return (num / 1000).toFixed(1) + "K";
  return num.toString();
};