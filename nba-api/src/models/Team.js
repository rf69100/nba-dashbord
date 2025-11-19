const { pool } = require('../config/database');

class Team {
  /**
   * Récupérer toutes les équipes
   */
  static async findAll(filters = {}) {
    try {
      let query = `
        SELECT
          id,
          name,
          city,
          abbreviation,
          conference,
          division,
          founded_year,
          arena,
          logo_url,
          is_active,
          created_at,
          updated_at
        FROM teams
        WHERE 1=1
      `;
      const params = [];

      // Filtres optionnels
      if (filters.conference) {
        query += ' AND conference = ?';
        params.push(filters.conference);
      }

      if (filters.division) {
        query += ' AND division = ?';
        params.push(filters.division);
      }

      if (filters.is_active !== undefined) {
        query += ' AND is_active = ?';
        params.push(filters.is_active);
      }

      // Pagination
      const page = parseInt(filters.page) || 1;
      const limit = parseInt(filters.limit) || 30;
      const offset = (page - 1) * limit;

      query += ' ORDER BY name ASC LIMIT ? OFFSET ?';
      params.push(limit, offset);

      const [teams] = await pool.query(query, params);

      // Compter le total pour la pagination
      let countQuery = 'SELECT COUNT(*) as total FROM teams WHERE 1=1';
      const countParams = [];

      if (filters.conference) {
        countQuery += ' AND conference = ?';
        countParams.push(filters.conference);
      }

      if (filters.division) {
        countQuery += ' AND division = ?';
        countParams.push(filters.division);
      }

      if (filters.is_active !== undefined) {
        countQuery += ' AND is_active = ?';
        countParams.push(filters.is_active);
      }

      const [countResult] = await pool.query(countQuery, countParams);
      const total = countResult[0].total;

      return { teams, pagination: { page, limit, total } };
    } catch (error) {
      throw error;
    }
  }

  /**
   * Récupérer une équipe par ID
   */
  static async findById(id) {
    try {
      const [teams] = await pool.query(
        `SELECT
          id,
          name,
          city,
          abbreviation,
          conference,
          division,
          founded_year,
          arena,
          logo_url,
          is_active,
          created_at,
          updated_at
        FROM teams
        WHERE id = ?`,
        [id]
      );

      return teams[0] || null;
    } catch (error) {
      throw error;
    }
  }

  /**
   * Créer une nouvelle équipe
   */
  static async create(teamData) {
    try {
      const [result] = await pool.query(
        `INSERT INTO teams (
          name, city, abbreviation, conference, 
          division, founded_year, arena, is_active
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          teamData.name,
          teamData.city,
          teamData.abbreviation,
          teamData.conference,
          teamData.division,
          teamData.founded_year,
          teamData.arena,
          teamData.is_active !== undefined ? teamData.is_active : true
        ]
      );

      return await this.findById(result.insertId);
    } catch (error) {
      throw error;
    }
  }

  /**
   * Mettre à jour une équipe
   */
  static async update(id, teamData) {
    try {
      const updates = [];
      const params = [];

      if (teamData.name) {
        updates.push('name = ?');
        params.push(teamData.name);
      }
      if (teamData.city) {
        updates.push('city = ?');
        params.push(teamData.city);
      }
      if (teamData.abbreviation) {
        updates.push('abbreviation = ?');
        params.push(teamData.abbreviation);
      }
      if (teamData.conference) {
        updates.push('conference = ?');
        params.push(teamData.conference);
      }
      if (teamData.division) {
        updates.push('division = ?');
        params.push(teamData.division);
      }
      if (teamData.founded_year) {
        updates.push('founded_year = ?');
        params.push(teamData.founded_year);
      }
      if (teamData.arena) {
        updates.push('arena = ?');
        params.push(teamData.arena);
      }
      if (teamData.is_active !== undefined) {
        updates.push('is_active = ?');
        params.push(teamData.is_active);
      }

      if (updates.length === 0) {
        throw new Error('No fields to update');
      }

      params.push(id);

      await pool.query(
        `UPDATE teams SET ${updates.join(', ')}, updated_at = NOW() WHERE id = ?`,
        params
      );

      return await this.findById(id);
    } catch (error) {
      throw error;
    }
  }

  /**
   * Supprimer une équipe (soft delete)
   */
  static async delete(id) {
    try {
      await pool.query(
        'UPDATE teams SET is_active = false, updated_at = NOW() WHERE id = ?',
        [id]
      );
      return true;
    } catch (error) {
      throw error;
    }
  }

  /**
   * Récupérer les standings (classement) avec statistiques
   * JOIN entre teams et team_stats pour avoir wins/losses
   */
  static async getStandings(filters = {}) {
    try {
      let query = `
        SELECT
          t.id,
          t.name,
          t.city,
          t.abbreviation,
          t.conference,
          t.division,
          t.founded_year,
          t.arena,
          t.logo_url,
          ts.wins,
          ts.losses,
          ts.games_played,
          ts.points_per_game,
          ts.points_allowed_per_game,
          ts.rebounds_per_game,
          ts.assists_per_game
        FROM teams t
        LEFT JOIN team_stats ts ON t.id = ts.team_id
        LEFT JOIN seasons s ON ts.season_id = s.id
        WHERE t.is_active = true
        AND s.is_current = true
      `;
      const params = [];

      // Filtre par conférence (East/West)
      if (filters.conference) {
        query += ' AND t.conference = ?';
        params.push(filters.conference);
      }

      // Filtre par division
      if (filters.division) {
        query += ' AND t.division = ?';
        params.push(filters.division);
      }

      // Tri par nombre de victoires (du plus grand au plus petit)
      query += ' ORDER BY ts.wins DESC, ts.losses ASC';

      const [standings] = await pool.query(query, params);

      // Calculer le pourcentage de victoires pour chaque équipe
      const standingsWithPercentage = standings.map(team => ({
        ...team,
        win_percentage: team.games_played > 0
          ? ((team.wins / team.games_played) * 100).toFixed(1)
          : '0.0'
      }));

      return standingsWithPercentage;
    } catch (error) {
      throw error;
    }
  }

  /**
   * Récupérer une équipe avec ses statistiques
   */
  static async findByIdWithStats(id) {
    try {
      const [teams] = await pool.query(
        `SELECT
          t.id,
          t.name,
          t.city,
          t.abbreviation,
          t.conference,
          t.division,
          t.founded_year,
          t.arena,
          t.logo_url,
          t.is_active,
          t.created_at,
          t.updated_at,
          ts.wins,
          ts.losses,
          ts.games_played,
          ts.points_per_game,
          ts.points_allowed_per_game,
          ts.rebounds_per_game,
          ts.assists_per_game,
          s.year as season_year
        FROM teams t
        LEFT JOIN team_stats ts ON t.id = ts.team_id
        LEFT JOIN seasons s ON ts.season_id = s.id
        WHERE t.id = ?
        AND s.is_current = true
        LIMIT 1`,
        [id]
      );

      if (!teams[0]) return null;

      const team = teams[0];
      team.win_percentage = team.games_played > 0
        ? ((team.wins / team.games_played) * 100).toFixed(1)
        : '0.0';

      return team;
    } catch (error) {
      throw error;
    }
  }
}

module.exports = Team;
