import { HashRouter as Router, Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar";
import Home from "./pages/Home";
import Player from "./pages/Player";
import PlayerProfile from "./pages/PlayerProfile";
import Teams from "./pages/Teams";
import Stats from "./pages/Stats";

function App() {
  return (
    <Router>
      <div className="min-h-screen bg-gradient-to-br from-black via-gray-900 to-gray-800">
        <Navbar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/player" element={<Player />} />
          <Route path="/player/:id" element={<PlayerProfile />} />
          <Route path="/teams" element={<Teams />} />
          <Route path="/stats" element={<Stats />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;