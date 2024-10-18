CREATE TABLE pbp_data (
    game_id VARCHAR(50),
    play_id VARCHAR(50),
    season INTEGER,
    week INTEGER,
    home_team VARCHAR(50),
    away_team VARCHAR(50),
    posteam VARCHAR(50),
    defteam VARCHAR(50),
    down INTEGER,
    ydstogo INTEGER,
    yards_gained INTEGER,
    play_type VARCHAR(50),
    passer VARCHAR(100),
    rusher VARCHAR(100),
    receiver VARCHAR(100),
    epa NUMERIC,
    wpa NUMERIC,
    success BOOLEAN
);

CREATE TABLE team_stats (
    team VARCHAR(50),
    season INTEGER,
    week INTEGER,
    points_scored INTEGER,
    points_allowed INTEGER,
    epa NUMERIC
);

CREATE TABLE player_stats (
    player_name VARCHAR(100),
    team VARCHAR(50),
    season INTEGER,
    week INTEGER,
    passing_yards INTEGER,
    rushing_yards INTEGER,
    receiving_yards INTEGER,
    touchdowns INTEGER,
    epa NUMERIC
);