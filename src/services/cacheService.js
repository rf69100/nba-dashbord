/**
 * Service de cache localStorage pour réduire les appels API
 */

const CACHE_PREFIX = 'nba_cache_';
const CACHE_DURATION = 30 * 60 * 1000; // 30 minutes

/**
 * Sauvegarder des données dans le cache
 */
export const setCache = (key, data) => {
  try {
    const cacheData = {
      data: data,
      timestamp: Date.now(),
      expiresAt: Date.now() + CACHE_DURATION
    };
    localStorage.setItem(CACHE_PREFIX + key, JSON.stringify(cacheData));
  } catch (error) {
    console.warn('Erreur lors de la sauvegarde du cache:', error);
  }
};

/**
 * Récupérer des données du cache
 */
export const getCache = (key) => {
  try {
    const cached = localStorage.getItem(CACHE_PREFIX + key);
    if (!cached) return null;

    const cacheData = JSON.parse(cached);

    // Vérifier si le cache est expiré
    if (Date.now() > cacheData.expiresAt) {
      localStorage.removeItem(CACHE_PREFIX + key);
      return null;
    }

    return cacheData.data;
  } catch (error) {
    console.warn('Erreur lors de la lecture du cache:', error);
    return null;
  }
};

/**
 * Effacer tout le cache
 */
export const clearAllCache = () => {
  try {
    const keys = Object.keys(localStorage);
    keys.forEach(key => {
      if (key.startsWith(CACHE_PREFIX)) {
        localStorage.removeItem(key);
      }
    });
  } catch (error) {
    console.warn('Erreur lors du nettoyage du cache:', error);
  }
};

/**
 * Vérifier si une clé existe dans le cache
 */
export const hasCache = (key) => {
  return getCache(key) !== null;
};

export default {
  setCache,
  getCache,
  clearAllCache,
  hasCache
};
