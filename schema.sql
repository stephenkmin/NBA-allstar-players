DROP TABLE allstar;
DROP TABLE player_stats;

CREATE TABLE allstar (
	id INT PRIMARY KEY,
	season VARCHAR,
	player VARCHAR
);

CREATE TABLE player_stats (
	id INT PRIMARY KEY,
	season VARCHAR,
	games_played INT,
	player VARCHAR,
	points DECIMAL,
	rebounds DECIMAL,
	assists DECIMAL,
	steals DECIMAL,
	blocks DECIMAL,
	turnovers DECIMAL
);

SELECT * FROM allstar;
SELECT * FROM player_stats;

SELECT allstar.season, allstar.player, s.points, s.rebounds, s.assists, s.steals, s.blocks, s.turnovers
FROM allstar
INNER JOIN player_stats AS s
ON allstar.season = s.season
AND allstar.player = s.player;