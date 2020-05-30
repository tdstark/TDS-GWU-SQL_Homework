SELECT 
players.id
, players.player
, players.height
, players.weight
, players.college
, players.born
, seasons_stats.position
, seasons_stats.tm
FROM players
LEFT JOIN seasons_stats ON players.id = seasons_stats.player_id 
;

SELECT
seasons_stats.player_id
, players.college
, seasons_stats.year
, seasons_stats.position
, seasons_stats.two_point_percentage
, seasons_stats.fg_percentage
, seasons_stats.ft_percentage
, seasons_stats.ts_percentage
FROM seasons_stats
LEFT JOIN players ON seasons_stats.player_id = players.id 
;
