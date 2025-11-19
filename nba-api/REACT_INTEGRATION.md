# 🔗 Intégration avec votre Dashboard React

## Exemples concrets pour remplacer votre data.js

### 1️⃣ Service API simple (recommandé)

Créez un fichier `src/services/nbaApi.js` dans votre projet React :

```javascript
// src/services/nbaApi.js
const API_BASE_URL = 'http://localhost:3001/api/v1';

class NbaApiService {
  
  // Méthode générique pour les appels API
  async fetchData(endpoint) {
    try {
      const response = await fetch(`${API_BASE_URL}${endpoint}`);
      const data = await response.json();
      
      if (!data.success) {
        throw new Error(data.message || 'API Error');
      }
      
      return data.data;
    } catch (error) {
      console.error('Erreur API:', error);
      throw error;
    }
  }

  // Récupérer toutes les équipes
  async getTeams(filters = {}) {
    const queryParams = new URLSearchParams(filters).toString();
    const endpoint = queryParams ? `/teams?${queryParams}` : '/teams';
    return this.fetchData(endpoint);
  }

  // Récupérer une équipe spécifique
  async getTeam(id) {
    return this.fetchData(`/teams/${id}`);
  }

  // Récupérer les équipes par conférence
  async getTeamsByConference(conference) {
    return this.fetchData(`/teams?conference=${conference}`);
  }

  // Récupérer les équipes par division
  async getTeamsByDivision(division) {
    return this.fetchData(`/teams?division=${division}`);
  }
}

export default new NbaApiService();
```

---

### 2️⃣ Utilisation dans vos composants

#### Exemple 1 : Liste des équipes

```javascript
// src/components/TeamsList.jsx
import { useState, useEffect } from 'react';
import nbaApi from '../services/nbaApi';

function TeamsList() {
  const [teams, setTeams] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTeams = async () => {
      try {
        setLoading(true);
        const data = await nbaApi.getTeams();
        setTeams(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, []);

  if (loading) return <div>Chargement...</div>;
  if (error) return <div>Erreur : {error}</div>;

  return (
    <div className="teams-list">
      <h2>Équipes NBA</h2>
      <div className="teams-grid">
        {teams.map(team => (
          <div key={team.id} className="team-card">
            <h3>{team.name}</h3>
            <p>{team.city}</p>
            <span className="badge">{team.conference}</span>
          </div>
        ))}
      </div>
    </div>
  );
}

export default TeamsList;
```

#### Exemple 2 : Filtrer par conférence

```javascript
// src/components/TeamsFilter.jsx
import { useState, useEffect } from 'react';
import nbaApi from '../services/nbaApi';

function TeamsFilter() {
  const [teams, setTeams] = useState([]);
  const [conference, setConference] = useState('all');
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    const fetchTeams = async () => {
      setLoading(true);
      try {
        if (conference === 'all') {
          const data = await nbaApi.getTeams();
          setTeams(data);
        } else {
          const data = await nbaApi.getTeamsByConference(conference);
          setTeams(data);
        }
      } catch (error) {
        console.error(error);
      } finally {
        setLoading(false);
      }
    };

    fetchTeams();
  }, [conference]);

  return (
    <div>
      <div className="filters">
        <button onClick={() => setConference('all')}>
          Toutes
        </button>
        <button onClick={() => setConference('East')}>
          Conférence Est
        </button>
        <button onClick={() => setConference('West')}>
          Conférence Ouest
        </button>
      </div>

      {loading ? (
        <p>Chargement...</p>
      ) : (
        <div className="teams-grid">
          {teams.map(team => (
            <div key={team.id} className="team-card">
              <h3>{team.name}</h3>
              <p>{team.city} - {team.conference}</p>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

export default TeamsFilter;
```

#### Exemple 3 : Détail d'une équipe

```javascript
// src/components/TeamDetail.jsx
import { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import nbaApi from '../services/nbaApi';

function TeamDetail() {
  const { id } = useParams();
  const [team, setTeam] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchTeam = async () => {
      try {
        const data = await nbaApi.getTeam(id);
        setTeam(data);
      } catch (error) {
        console.error(error);
      } finally {
        setLoading(false);
      }
    };

    fetchTeam();
  }, [id]);

  if (loading) return <div>Chargement...</div>;
  if (!team) return <div>Équipe non trouvée</div>;

  return (
    <div className="team-detail">
      <h1>{team.name}</h1>
      <div className="team-info">
        <p><strong>Ville :</strong> {team.city}</p>
        <p><strong>Abréviation :</strong> {team.abbreviation}</p>
        <p><strong>Conférence :</strong> {team.conference}</p>
        <p><strong>Division :</strong> {team.division}</p>
        <p><strong>Arène :</strong> {team.arena}</p>
        <p><strong>Fondée en :</strong> {team.founded_year}</p>
      </div>
    </div>
  );
}

export default TeamDetail;
```

---

### 3️⃣ Hook personnalisé (approche avancée)

Créez un hook réutilisable :

```javascript
// src/hooks/useTeams.js
import { useState, useEffect } from 'react';
import nbaApi from '../services/nbaApi';

export function useTeams(filters = {}) {
  const [teams, setTeams] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    let isMounted = true;

    const fetchTeams = async () => {
      try {
        setLoading(true);
        const data = await nbaApi.getTeams(filters);
        
        if (isMounted) {
          setTeams(data);
          setError(null);
        }
      } catch (err) {
        if (isMounted) {
          setError(err.message);
        }
      } finally {
        if (isMounted) {
          setLoading(false);
        }
      }
    };

    fetchTeams();

    return () => {
      isMounted = false;
    };
  }, [JSON.stringify(filters)]);

  return { teams, loading, error };
}

// Utilisation dans un composant
function MyComponent() {
  const { teams, loading, error } = useTeams({ conference: 'West' });
  
  if (loading) return <div>Chargement...</div>;
  if (error) return <div>Erreur : {error}</div>;
  
  return (
    <div>
      {teams.map(team => (
        <div key={team.id}>{team.name}</div>
      ))}
    </div>
  );
}
```

---

### 4️⃣ Migration depuis votre data.js

**Avant (avec data.js) :**
```javascript
import { teams } from './data';

function TeamsPage() {
  return (
    <div>
      {teams.map(team => (
        <div key={team.id}>{team.name}</div>
      ))}
    </div>
  );
}
```

**Après (avec l'API) :**
```javascript
import { useState, useEffect } from 'react';
import nbaApi from './services/nbaApi';

function TeamsPage() {
  const [teams, setTeams] = useState([]);

  useEffect(() => {
    nbaApi.getTeams().then(setTeams);
  }, []);

  return (
    <div>
      {teams.map(team => (
        <div key={team.id}>{team.name}</div>
      ))}
    </div>
  );
}
```

---

### 5️⃣ Gestion des erreurs CORS

Si vous avez des erreurs CORS, vérifiez que votre `.env` contient :

```env
CORS_ORIGIN=http://localhost:3000
```

Si votre React tourne sur un autre port (ex: 5173 avec Vite), modifiez :

```env
CORS_ORIGIN=http://localhost:5173
```

---

### 6️⃣ Avec Axios (alternative à fetch)

Si vous préférez axios :

```bash
npm install axios
```

```javascript
// src/services/nbaApi.js
import axios from 'axios';

const api = axios.create({
  baseURL: 'http://localhost:3001/api/v1',
  timeout: 5000,
});

export const nbaApi = {
  getTeams: async (filters = {}) => {
    const { data } = await api.get('/teams', { params: filters });
    return data.data;
  },
  
  getTeam: async (id) => {
    const { data } = await api.get(`/teams/${id}`);
    return data.data;
  },
};
```

---

## 🎯 Conseils

1. **Gestion du loading** : Toujours afficher un état de chargement
2. **Gestion des erreurs** : Prévoir les cas d'erreur
3. **Cache** : Envisager React Query ou SWR pour le cache
4. **Variables d'environnement** : Utiliser `process.env.REACT_APP_API_URL`

---

**Vous avez maintenant tout ce qu'il faut pour connecter votre dashboard à l'API ! 🚀**
