// Test de base pour vérifier le rendu du composant App
import { render, screen } from '@testing-library/react';
import App from './App';

// Ce test vérifie que le texte "learn react" est présent dans le DOM après le rendu
test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
