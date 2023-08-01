-- List all teams
SELECT * FROM teams;

-- List top 3 teams by FIFA rank  
SELECT * FROM teams 
ORDER BY fifa_rank ASC LIMIT 3;

-- Get total matches played by each team
SELECT teams.name, COUNT(matches.match_id) AS total_matches 
FROM teams LEFT JOIN matches 
ON teams.team_id = matches.home_team_id
OR teams.team_id = matches.away_team_id
GROUP BY teams.name
ORDER BY total_matches DESC;

-- Top 5 goal scorers 
SELECT players.name, COUNT(goals.goal_id) AS goals_scored
FROM players LEFT JOIN goals 
ON players.player_id = goals.player_id
GROUP BY players.name
ORDER BY goals_scored DESC
LIMIT 5;

-- Number of goals scored in each match
SELECT matches.match_id, 
COUNT(goals.goal_id) as total_goals
FROM matches LEFT JOIN goals
ON matches.match_id = goals.match_id 
GROUP BY matches.match_id;