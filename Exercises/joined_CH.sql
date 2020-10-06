SELECT * FROM players;

Drop view if exists basic_info_table;

--Basic Information Table

Create view basic_info_table as
SELECT p.id, p.player, p.height, p.weight, p.college, p.born, s.tm
FROM seasons_stats s
INNER JOIN players p ON
	p.id = s.player_id;


--Percent Stats
Create view percent_stats as
Select p.id, p.college, s.year, s.position, s.two_point_percentage, s.fg_percentage,
s.ft_percentage, s.ts_percentage 
from seasons_stats s
inner join players p on
	p.id = s.player_id;


SELECT * FROM percent_stats;