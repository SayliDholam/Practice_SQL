
SELECT id, title
 FROM movie
 WHERE yr=1962

--

select yr from movie 
where title = 'Citizen Kane'

--

select id, title, yr from movie 
where title like '%Star Trek%' 
order by yr 

--

select id from actor 
where name = 'Glenn Close'

--

select id from movie 
where title = 'Casablanca'

--

SELECT actor.name
FROM actor
JOIN casting ON actor.id = casting.actorid
JOIN movie ON casting.movieid = movie.id
WHERE movie.title = 'Casablanca';

--

SELECT actor.name
FROM actor
JOIN casting ON actor.id = casting.actorid
JOIN movie ON casting.movieid = movie.id
WHERE movie.title = 'Alien';

--

SELECT movie.title
FROM movie
JOIN casting ON movie.id = casting.movieid
JOIN actor ON casting.actorid = actor.id
WHERE actor.name = 'Harrison Ford';

--

SELECT movie.title
FROM movie
JOIN casting ON movie.id = casting.movieid
JOIN actor ON casting.actorid = actor.id
WHERE actor.name = 'Harrison Ford'
AND casting.ord != 1;

--

SELECT movie.title, actor.name AS leading_star
FROM movie
JOIN casting ON movie.id = casting.movieid
JOIN actor ON casting.actorid = actor.id
WHERE movie.yr = 1962
AND casting.ord = 1;

--

SELECT yr,COUNT(title) FROM movie 
JOIN casting ON movie.id=movieid
JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

--

SELECT m.title, COUNT(c.actorid) AS num_actors
FROM movie m
JOIN casting c ON m.id = c.movieid
WHERE m.yr = 1978
GROUP BY m.id, m.title
ORDER BY num_actors DESC, m.title;

--


