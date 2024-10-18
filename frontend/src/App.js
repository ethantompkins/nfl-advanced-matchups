import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import TeamLeaderboard from './components/TeamLeaderboard';
import PlayerLeaderboard from './components/PlayerLeaderboard';
import './styles/App.css';

function App() {
  return (
    <Router>
      <div className="App">
        <h1>NFL Analytics Dashboard</h1>
        <Routes>
          <Route path="/team-leaderboard" element={<TeamLeaderboard season={2024} week={7} />} />
          <Route path="/player-leaderboard" element={<PlayerLeaderboard statType="passing_yards" />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
