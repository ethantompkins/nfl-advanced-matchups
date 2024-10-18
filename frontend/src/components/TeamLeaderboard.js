import React, { useEffect, useState } from 'react';

function TeamLeaderboard({ season, week }) {
  const [leaderboard, setLeaderboard] = useState([]);

  useEffect(() => {
    fetch(`http://localhost:8000/team_leaderboard/${season}/${week}`)
      .then(response => response.json())
      .then(data => setLeaderboard(data.leaderboard));
  }, [season, week]);

  return (
    <div>
      <h2>Team Leaderboard (Week {week}, {season})</h2>
      <ul>
        {leaderboard.map((team, index) => (
          <li key={index}>
            {team[0]} - Points Scored: {team[1]}, EPA: {team[2]}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default TeamLeaderboard;