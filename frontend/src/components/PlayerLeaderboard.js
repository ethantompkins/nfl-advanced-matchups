import React, { useEffect, useState } from 'react';

function PlayerLeaderboard({ statType }) {
  const [leaderboard, setLeaderboard] = useState([]);

  useEffect(() => {
    fetch(`http://localhost:8000/player_leaderboard/${statType}`)
      .then(response => response.json())
      .then(data => setLeaderboard(data.leaderboard));
  }, [statType]);

  return (
    <div>
      <h2>Player Leaderboard ({statType.replace('_', ' ')})</h2>
      <ul>
        {leaderboard.map((player, index) => (
          <li key={index}>
            {player[0]} ({player[1]}) - {statType.replace('_', ' ')}: {player[2]}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default PlayerLeaderboard;