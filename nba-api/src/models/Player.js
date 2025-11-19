const { pool } = require('../config/database');

class Player {
  /**
   * Récupérer tous les joueurs
   */
  static async findAll(filters = {}) {
    try {
      let query = `
        SELECT
          p.id,
          p.first_name,
          p.last_name,
          p.display_name,
          p.position,
          p.height_cm,
          p.weight_kg,
          p.birth_date,
          p.nationality,
          p.jersey_number,
          p.photo_url,
          p.is_active,
          p.is_rookie,
          p.team_id,
          t.name as team_name,
          t.abbreviation as team_abbreviation,
          t.logo_url as team_logo_url
        FROM players p
        LEFT JOIN teams t ON p.team_id = t.id
        WHERE p.is_active = true
      `;
      const params = [];

      // Filtre par équipe
      if (filters.team_id) {
        query += ' AND p.team_id = ?';
        params.push(filters.team_id);
      }

      // Filtre par position
      if (filters.position) {
        query += ' AND p.position LIKE ?';
        params.push(`%${filters.position}%`);
      }

      query += ' ORDER BY p.last_name ASC';

      const [players] = await pool.query(query, params);

      // Calculer l'âge à partir de la date de naissance
      const playersWithAge = players.map(player => {
        if (player.birth_date) {
          const today = new Date();
          const birthDate = new Date(player.birth_date);
          let age = today.getFullYear() - birthDate.getFullYear();
          const monthDiff = today.getMonth() - birthDate.getMonth();
          if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
            age--;
          }
          player.age = age;
        }
        return player;
      });

      return playersWithAge;
    } catch (error) {
      throw error;
    }
  }

  /**
   * Récupérer un joueur par ID
   */
  static async findById(id) {
    try {
      const [players] = await pool.query(
        `SELECT
          p.id,
          p.first_name,
          p.last_name,
          p.display_name,
          p.position,
          p.height_cm,
          p.weight_kg,
          p.birth_date,
          p.nationality,
          p.jersey_number,
          p.photo_url,
          p.is_active,
          p.is_rookie,
          p.team_id,
          t.name as team_name,
          t.abbreviation as team_abbreviation,
          t.logo_url as team_logo_url
        FROM players p
        LEFT JOIN teams t ON p.team_id = t.id
        WHERE p.id = ?`,
        [id]
      );

      if (!players[0]) return null;

      const player = players[0];

      // Calculer l'âge
      if (player.birth_date) {
        const today = new Date();
        const birthDate = new Date(player.birth_date);
        let age = today.getFullYear() - birthDate.getFullYear();
        const monthDiff = today.getMonth() - birthDate.getMonth();
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getMonth())) {
          age--;
        }
        player.age = age;
      }

      return player;
    } catch (error) {
      throw error;
    }
  }

  /**
   * Récupérer un joueur avec ses statistiques des derniers matchs
   * Pour l'instant, retourne les données statiques jusqu'à implémentation complète
   */
  static async findByIdWithStats(id, limit = 10) {
    try {
      // Récupérer les infos du joueur
      const player = await this.findById(id);
      if (!player) return null;

      // TODO: Récupérer les vraies stats depuis player_stats
      // Pour l'instant, on retourne le joueur sans stats détaillées
      player.lastGames = [];

      return player;
    } catch (error) {
      throw error;
    }
  }

  /**
   * Créer un nouveau joueur
   */
  static async create(playerData) {
    try {
      const [result] = await pool.query(
        `INSERT INTO players (
          first_name, last_name, display_name, position,
          height_cm, weight_kg, birth_date, nationality,
          jersey_number, team_id, photo_url, is_rookie, is_active
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          playerData.first_name,
          playerData.last_name,
          playerData.display_name || `${playerData.first_name} ${playerData.last_name}`,
          playerData.position,
          playerData.height_cm,
          playerData.weight_kg,
          playerData.birth_date,
          playerData.nationality,
          playerData.jersey_number,
          playerData.team_id,
          playerData.photo_url,
          playerData.is_rookie !== undefined ? playerData.is_rookie : false,
          playerData.is_active !== undefined ? playerData.is_active : true
        ]
      );

      return await this.findById(result.insertId);
    } catch (error) {
      throw error;
    }
  }

  /**
   * Mettre à jour un joueur
   */
  static async update(id, playerData) {
    try {
      const updates = [];
      const params = [];

      if (playerData.first_name) {
        updates.push('first_name = ?');
        params.push(playerData.first_name);
      }
      if (playerData.last_name) {
        updates.push('last_name = ?');
        params.push(playerData.last_name);
      }
      if (playerData.display_name) {
        updates.push('display_name = ?');
        params.push(playerData.display_name);
      }
      if (playerData.position) {
        updates.push('position = ?');
        params.push(playerData.position);
      }
      if (playerData.height_cm) {
        updates.push('height_cm = ?');
        params.push(playerData.height_cm);
      }
      if (playerData.weight_kg) {
        updates.push('weight_kg = ?');
        params.push(playerData.weight_kg);
      }
      if (playerData.birth_date) {
        updates.push('birth_date = ?');
        params.push(playerData.birth_date);
      }
      if (playerData.nationality) {
        updates.push('nationality = ?');
        params.push(playerData.nationality);
      }
      if (playerData.jersey_number) {
        updates.push('jersey_number = ?');
        params.push(playerData.jersey_number);
      }
      if (playerData.team_id) {
        updates.push('team_id = ?');
        params.push(playerData.team_id);
      }
      if (playerData.photo_url) {
        updates.push('photo_url = ?');
        params.push(playerData.photo_url);
      }
      if (playerData.is_active !== undefined) {
        updates.push('is_active = ?');
        params.push(playerData.is_active);
      }
      if (playerData.is_rookie !== undefined) {
        updates.push('is_rookie = ?');
        params.push(playerData.is_rookie);
      }

      if (updates.length === 0) {
        throw new Error('No fields to update');
      }

      params.push(id);

      await pool.query(
        `UPDATE players SET ${updates.join(', ')}, updated_at = NOW() WHERE id = ?`,
        params
      );

      return await this.findById(id);
    } catch (error) {
      throw error;
    }
  }

  /**
   * Supprimer un joueur (soft delete)
   */
  static async delete(id) {
    try {
      await pool.query(
        'UPDATE players SET is_active = false, updated_at = NOW() WHERE id = ?',
        [id]
      );
      return true;
    } catch (error) {
      throw error;
    }
  }
}

module.exports = Player;
