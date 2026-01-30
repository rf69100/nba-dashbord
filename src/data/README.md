# 📂 Data - Données statiques React

Ce dossier contient les données statiques utilisées directement par les composants React.

## 📁 Fichiers

| Fichier | Description |
|---------|-------------|
| `quizData.js` | Questions et catégories du quiz NBA |

## 📝 Structure `quizData.js`

```javascript
// Catégories de quiz
export const quizCategories = [
  {
    id: 'season-2024-25',
    name: 'Saison 2024-25',
    description: '...',
    tag: 'Actuel',
    color: 'from-blue-500 to-blue-700',
    questionCount: 15,
  },
  // ...
];

// Questions par catégorie
export const quizQuestions = {
  'season-2024-25': [
    {
      id: 1,
      question: '...',
      options: ['A', 'B', 'C', 'D'],
      correctAnswer: 0,
      difficulty: 'easy', // 'easy' | 'medium' | 'hard'
      explanation: '...'
    },
    // ...
  ],
  // ...
};
```

## ⚠️ Note

Ce dossier est différent du dossier `/data/` à la racine :
- `/data/` → Données **sources** (txt, json) pour les scripts Python
- `/src/data/` → Données **statiques** pour le frontend React
