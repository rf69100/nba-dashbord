/**
 * Filtrage des joueurs
 * 
 * Usage:
 *   import { applyAllFilters } from '../utils/filters';
 *   const filtered = applyAllFilters(players, search, team, position);
 */

// ─────────────────────────────────────────────────────────────
// FILTRES INDIVIDUELS (fonctions pures)
// ─────────────────────────────────────────────────────────────

function bySearch(players, term) {
  if (!term?.trim()) return players;
  const q = term.trim().toLowerCase();
  
  return players.filter(p => 
    (p.display_name || '').toLowerCase().includes(q) ||
    (p.team_name || '').toLowerCase().includes(q) ||
    (p.position || '').toLowerCase().includes(q)
  );
}

function byTeam(players, team) {
  if (!team) return players;
  return players.filter(p => p.team_name === team);
}

function byPosition(players, position) {
  if (!position) return players;
  const pos = position.toLowerCase();
  return players.filter(p => (p.position || '').toLowerCase().includes(pos));
}

// ─────────────────────────────────────────────────────────────
// FONCTION PRINCIPALE
// ─────────────────────────────────────────────────────────────

/**
 * Applique tous les filtres sur une liste de joueurs
 * @param {Array} players - Liste des joueurs
 * @param {string} search - Terme de recherche (nom, équipe, position)
 * @param {string} team - Nom de l'équipe
 * @param {string} position - Position (PG, SG, SF, PF, C)
 * @returns {Array} Joueurs filtrés
 */
export function applyAllFilters(players, search = '', team = '', position = '') {
  let result = players;
  result = bySearch(result, search);
  result = byTeam(result, team);
  result = byPosition(result, position);
  return result;
}
