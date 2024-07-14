select matchid, player from goal 
where teamid = 'GER';

--

SELECT id,stadium,team1,team2
FROM game where id= 1012

--

SELECT g.player, g.teamid, ga.stadium, ga.mdate
FROM game ga
JOIN goal g ON ga.id = g.matchid
WHERE g.teamid = 'GER';

--

select game.team1, game.team2, goal.player 
from game 
join goal 
on game.id = goal.matchid
where player like 'Mario%';

--

SELECT goal.player, goal.teamid, eteam.coach, goal.gtime
FROM goal join eteam on goal.teamid = eteam.id
WHERE goal.gtime<=10 

--

select mdate, teamname from game 
join eteam on game.team1 = eteam.id
where eteam.coach = 'Fernando Santos'

--

select goal.player from goal 
join game on goal.matchid = game.id 
where game.stadium = 'National Stadium, Warsaw'

--

SELECT DISTINCT g.player
FROM game ga
JOIN goal g ON ga.id = g.matchid
WHERE (ga.team1 = 'GER' OR ga.team2 = 'GER')
AND g.teamid != 'GER';

--

SELECT eteam.teamname, count(goal.teamid)
  FROM goal JOIN eteam ON goal.teamid =eteam.id
 group BY eteam.teamname

--

select game.stadium, count(goal.teamid) 
from game join goal 
on game.id = goal.matchid 
group by stadium

--

SELECT g.id , g.mdate, COUNT(goal.matchid) 
FROM game g
JOIN goal ON g.id = goal.matchid
WHERE g.team1 = 'POL' OR g.team2 = 'POL'
GROUP BY g.id, g.mdate;

--

select game.id, game.mdate, count(goal.teamid)
from game join goal on game.id = goal.matchid
where (goal.teamid = 'GER')
group by game.id, game.mdate

--

SELECT 
    g.mdate,
    g.team1,
    SUM(CASE WHEN goal.teamid = g.team1 THEN 1 ELSE 0 END) AS score1,
    g.team2,
    SUM(CASE WHEN goal.teamid = g.team2 THEN 1 ELSE 0 END) AS score2
FROM 
    game g
LEFT JOIN 
    goal ON g.id = goal.matchid
GROUP BY 
    g.mdate, g.team1, g.team2, g.id
ORDER BY 
    g.mdate, g.id, g.team1, g.team2;

--


