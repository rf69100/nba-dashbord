/**
 * Composant Avatar de joueur optimisé
 * Gère automatiquement la taille d'image appropriée pour éviter la pixelisation
 */
export default function PlayerAvatar({ 
  photoUrl, 
  playerName, 
  size = 'md', // 'sm' | 'md' | 'lg' | 'xl'
  className = '',
  borderColor = 'border-white'
}) {
  // Mapping des tailles
  const sizeClasses = {
    sm: 'w-10 h-10',
    md: 'w-12 h-12', 
    lg: 'w-16 h-16',
    xl: 'w-32 h-32',
    '2xl': 'w-64 h-64'
  };

  // Taille pour le fallback avatar
  const fallbackSizes = {
    sm: 80,
    md: 96,
    lg: 128,
    xl: 256,
    '2xl': 512
  };

  /**
   * Optimise l'URL de la photo selon la taille d'affichage
   */
  const getOptimizedUrl = (url) => {
    if (!url) return null;
    
    // Pour les petites/moyennes tailles, utiliser 260x190
    // Pour les grandes tailles, garder 1040x760
    if (url.includes('cdn.nba.com/headshots') && ['sm', 'md', 'lg'].includes(size)) {
      return url.replace('1040x760', '260x190');
    }
    return url;
  };

  const optimizedUrl = getOptimizedUrl(photoUrl);
  const containerClass = sizeClasses[size] || sizeClasses.md;
  const fallbackSize = fallbackSizes[size] || 96;

  const handleError = (e) => {
    const name = (playerName || 'NBA').replace(/\s+/g, '+');
    e.target.src = `https://ui-avatars.com/api/?name=${name}&size=${fallbackSize}&background=3b82f6&color=fff&bold=true`;
  };

  return (
    <div className={`${containerClass} flex-shrink-0 ${className}`}>
      <img
        src={optimizedUrl}
        alt={playerName}
        className={`w-full h-full rounded-full object-cover border-2 ${borderColor} shadow-md`}
        style={{ 
          imageRendering: 'auto',
          WebkitBackfaceVisibility: 'hidden',
          backfaceVisibility: 'hidden'
        }}
        loading="lazy"
        onError={handleError}
      />
    </div>
  );
}
