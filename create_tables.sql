CREATE TABLE teams (
  team_id int PRIMARY KEY,
  name VARCHAR(50),
  fifa_rank INT
);

CREATE TABLE players (
  player_id INT PRIMARY KEY,
  name VARCHAR(50),
  team_id INT,
  position VARCHAR(20),
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

CREATE TABLE matches (
  match_id INT PRIMARY KEY,
  stage VARCHAR(20),
  date DATE,
  home_team_id INT,
  away_team_id INT,
  FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
  FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);

CREATE TABLE goals (
  goal_id INT AUTO_INCREMENT PRIMARY KEY,
  match_id INT,
  team_id INT,
  player_id INT,
  minute INT,
  FOREIGN KEY (match_id) REFERENCES matches(match_id),
  FOREIGN KEY (team_id) REFERENCES teams(team_id),
  FOREIGN KEY (player_id) REFERENCES players(player_id)
);